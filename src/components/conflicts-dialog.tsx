/**
 * Dialog de Resolução de Conflitos
 *
 * Exibe conflitos detectados durante sincronização e permite resolução manual.
 */

'use client';

import { useState, useEffect, useCallback } from 'react';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { ScrollArea } from '@/components/ui/scroll-area';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Alert, AlertDescription, AlertTitle } from '@/components/ui/alert';
import { useConnectionStore } from '@/lib/stores/connection-store';
import {
  getPendingConflicts,
  resolveConflict,
  ignoreConflict,
  autoResolveAllConflicts,
} from '@/lib/services/sync-service';
import { SyncConflict, ConflictResolutionStrategy } from '@/lib/db/offline-db';
import {
  AlertTriangle,
  Check,
  X,
  RefreshCw,
  Smartphone,
  Cloud,
  GitMerge,
  Loader2,
} from 'lucide-react';

interface ConflictsDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
}

export function ConflictsDialog({ open, onOpenChange }: ConflictsDialogProps) {
  const [conflicts, setConflicts] = useState<SyncConflict[]>([]);
  const [selectedConflict, setSelectedConflict] = useState<SyncConflict | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [isResolving, setIsResolving] = useState(false);
  const { setConflictsCount } = useConnectionStore();

  const loadConflicts = useCallback(async () => {
    setIsLoading(true);
    try {
      const pendingConflicts = await getPendingConflicts();
      setConflicts(pendingConflicts);
      setConflictsCount(pendingConflicts.length);
      if (pendingConflicts.length > 0 && !selectedConflict) {
        setSelectedConflict(pendingConflicts[0]);
      }
    } catch (error) {
      console.error('[ConflictsDialog] Erro ao carregar conflitos:', error);
    } finally {
      setIsLoading(false);
    }
  }, [setConflictsCount, selectedConflict]);

  useEffect(() => {
    if (open) {
      loadConflicts();
    }
  }, [open, loadConflicts]);

  const handleResolve = async (strategy: ConflictResolutionStrategy) => {
    if (!selectedConflict?.id) return;

    setIsResolving(true);
    try {
      await resolveConflict(selectedConflict.id, strategy);
      await loadConflicts();
      setSelectedConflict(conflicts.find(c => c.id !== selectedConflict.id) || null);
    } catch (error) {
      console.error('[ConflictsDialog] Erro ao resolver conflito:', error);
    } finally {
      setIsResolving(false);
    }
  };

  const handleIgnore = async () => {
    if (!selectedConflict?.id) return;

    setIsResolving(true);
    try {
      await ignoreConflict(selectedConflict.id);
      await loadConflicts();
      setSelectedConflict(conflicts.find(c => c.id !== selectedConflict.id) || null);
    } catch (error) {
      console.error('[ConflictsDialog] Erro ao ignorar conflito:', error);
    } finally {
      setIsResolving(false);
    }
  };

  const handleAutoResolveAll = async () => {
    setIsResolving(true);
    try {
      const resolved = await autoResolveAllConflicts();
      console.log(`[ConflictsDialog] ${resolved} conflitos resolvidos automaticamente`);
      await loadConflicts();
      setSelectedConflict(null);
    } catch (error) {
      console.error('[ConflictsDialog] Erro ao resolver conflitos:', error);
    } finally {
      setIsResolving(false);
    }
  };

  const getEntityTypeName = (type: string) => {
    const names: Record<string, string> = {
      products: 'Produto',
      categories: 'Categoria',
      customers: 'Cliente',
      sales: 'Venda',
    };
    return names[type] || type;
  };

  const getEntityName = (conflict: SyncConflict) => {
    const localName = (conflict.local_data as { name?: string })?.name;
    const serverName = (conflict.server_data as { name?: string })?.name;
    return localName || serverName || conflict.entity_id.slice(0, 8);
  };

  const formatDate = (dateStr: string) => {
    return new Date(dateStr).toLocaleString('pt-BR', {
      day: '2-digit',
      month: '2-digit',
      year: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
    });
  };

  const renderDataDiff = (local: Record<string, unknown>, server: Record<string, unknown>) => {
    const allKeys = new Set([...Object.keys(local), ...Object.keys(server)]);
    const ignoredKeys = ['_synced', '_last_sync', '_local_id'];
    const relevantKeys = [...allKeys].filter(k => !ignoredKeys.includes(k));

    return (
      <div className="space-y-2 text-sm">
        {relevantKeys.map(key => {
          const localVal = local[key];
          const serverVal = server[key];
          const isDifferent = JSON.stringify(localVal) !== JSON.stringify(serverVal);

          if (!isDifferent) return null;

          return (
            <div key={key} className="grid grid-cols-3 gap-2 p-2 rounded bg-muted/50">
              <div className="font-medium text-muted-foreground">{key}</div>
              <div className="text-blue-600 dark:text-blue-400">
                {localVal !== undefined ? String(localVal) : <span className="italic text-muted-foreground">vazio</span>}
              </div>
              <div className="text-green-600 dark:text-green-400">
                {serverVal !== undefined ? String(serverVal) : <span className="italic text-muted-foreground">vazio</span>}
              </div>
            </div>
          );
        })}
      </div>
    );
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-4xl max-h-[80vh]">
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <AlertTriangle className="h-5 w-5 text-yellow-500" />
            Conflitos de Sincronização
            {conflicts.length > 0 && (
              <Badge variant="destructive">{conflicts.length}</Badge>
            )}
          </DialogTitle>
          <DialogDescription>
            Foram detectados conflitos entre dados locais e do servidor.
            Escolha qual versão manter para cada registro.
          </DialogDescription>
        </DialogHeader>

        {isLoading ? (
          <div className="flex items-center justify-center py-8">
            <Loader2 className="h-8 w-8 animate-spin text-muted-foreground" />
          </div>
        ) : conflicts.length === 0 ? (
          <Alert>
            <Check className="h-4 w-4" />
            <AlertTitle>Nenhum conflito pendente</AlertTitle>
            <AlertDescription>
              Todos os dados estão sincronizados corretamente.
            </AlertDescription>
          </Alert>
        ) : (
          <div className="grid grid-cols-[250px,1fr] gap-4">
            {/* Lista de conflitos */}
            <div className="border rounded-lg">
              <div className="p-2 border-b bg-muted/50">
                <Button
                  variant="outline"
                  size="sm"
                  className="w-full"
                  onClick={handleAutoResolveAll}
                  disabled={isResolving}
                >
                  {isResolving ? (
                    <Loader2 className="h-4 w-4 mr-2 animate-spin" />
                  ) : (
                    <RefreshCw className="h-4 w-4 mr-2" />
                  )}
                  Resolver Todos Automaticamente
                </Button>
              </div>
              <ScrollArea className="h-[400px]">
                <div className="p-2 space-y-1">
                  {conflicts.map(conflict => (
                    <button
                      key={conflict.id}
                      className={`w-full text-left p-2 rounded hover:bg-muted transition-colors ${
                        selectedConflict?.id === conflict.id ? 'bg-muted' : ''
                      }`}
                      onClick={() => setSelectedConflict(conflict)}
                    >
                      <div className="font-medium text-sm">
                        {getEntityName(conflict)}
                      </div>
                      <div className="text-xs text-muted-foreground flex items-center gap-1">
                        <Badge variant="outline" className="text-[10px]">
                          {getEntityTypeName(conflict.entity_type)}
                        </Badge>
                        <span>v{conflict.local_version} vs v{conflict.server_version}</span>
                      </div>
                    </button>
                  ))}
                </div>
              </ScrollArea>
            </div>

            {/* Detalhes do conflito selecionado */}
            {selectedConflict && (
              <div className="border rounded-lg p-4 space-y-4">
                <div className="flex items-center justify-between">
                  <div>
                    <h3 className="font-semibold">
                      {getEntityTypeName(selectedConflict.entity_type)}: {getEntityName(selectedConflict)}
                    </h3>
                    <p className="text-sm text-muted-foreground">
                      Detectado em {formatDate(selectedConflict.detected_at)}
                    </p>
                  </div>
                  <Badge variant="outline">
                    ID: {selectedConflict.entity_id.slice(0, 8)}...
                  </Badge>
                </div>

                <Tabs defaultValue="comparison" className="w-full">
                  <TabsList className="grid w-full grid-cols-2">
                    <TabsTrigger value="comparison">Comparação</TabsTrigger>
                    <TabsTrigger value="details">Detalhes</TabsTrigger>
                  </TabsList>

                  <TabsContent value="comparison" className="space-y-4">
                    <div className="grid grid-cols-3 gap-2 text-sm font-medium text-muted-foreground">
                      <div>Campo</div>
                      <div className="flex items-center gap-1">
                        <Smartphone className="h-3 w-3" />
                        Local (v{selectedConflict.local_version})
                      </div>
                      <div className="flex items-center gap-1">
                        <Cloud className="h-3 w-3" />
                        Servidor (v{selectedConflict.server_version})
                      </div>
                    </div>
                    <ScrollArea className="h-[200px]">
                      {renderDataDiff(selectedConflict.local_data, selectedConflict.server_data)}
                    </ScrollArea>
                  </TabsContent>

                  <TabsContent value="details" className="space-y-2 text-sm">
                    <div className="grid grid-cols-2 gap-2">
                      <div className="p-2 bg-muted/50 rounded">
                        <span className="text-muted-foreground">Última atualização local:</span>
                        <div>{formatDate(selectedConflict.local_updated_at)}</div>
                      </div>
                      <div className="p-2 bg-muted/50 rounded">
                        <span className="text-muted-foreground">Última atualização servidor:</span>
                        <div>{formatDate(selectedConflict.server_updated_at)}</div>
                      </div>
                    </div>
                  </TabsContent>
                </Tabs>

                {/* Ações de resolução */}
                <div className="flex flex-wrap gap-2 pt-4 border-t">
                  <Button
                    variant="default"
                    className="flex-1"
                    onClick={() => handleResolve('local_wins')}
                    disabled={isResolving}
                  >
                    <Smartphone className="h-4 w-4 mr-2" />
                    Manter Local
                  </Button>
                  <Button
                    variant="secondary"
                    className="flex-1"
                    onClick={() => handleResolve('server_wins')}
                    disabled={isResolving}
                  >
                    <Cloud className="h-4 w-4 mr-2" />
                    Manter Servidor
                  </Button>
                  <Button
                    variant="outline"
                    onClick={handleIgnore}
                    disabled={isResolving}
                  >
                    <X className="h-4 w-4 mr-2" />
                    Ignorar
                  </Button>
                </div>
              </div>
            )}
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
