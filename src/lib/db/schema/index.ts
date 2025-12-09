/**
 * Exportação centralizada de todos os schemas do banco de dados
 *
 * Este arquivo é usado pelo Drizzle Kit para gerar migrations
 * e pelo runtime para criar as conexões com type-safety.
 */

// Schemas de usuários
export {
  users,
  usersRelations,
  userRoleEnum,
  userStatusEnum,
  type User,
  type NewUser,
} from './users';

// Schemas de clientes
export {
  customers,
  customersRelations,
  documentTypeEnum,
  type Customer,
  type NewCustomer,
} from './customers';

// Schemas de produtos
export {
  products,
  productsRelations,
  productCategories,
  productCategoriesRelations,
  stockMovements,
  stockMovementsRelations,
  stockMovementTypeEnum,
  type Product,
  type NewProduct,
  type ProductCategory,
  type NewProductCategory,
  type StockMovement,
  type NewStockMovement,
} from './products';

// Schemas de vendas
export {
  sales,
  salesRelations,
  saleItems,
  saleItemsRelations,
  saleStatusEnum,
  paymentMethodEnum,
  type Sale,
  type NewSale,
  type SaleItem,
  type NewSaleItem,
  type PaymentDetailsJson,
} from './sales';

// Schemas de sincronização (apenas SQLite local)
export {
  syncQueue,
  syncLogs,
  syncConflicts,
  localSettings,
  syncOperationTypeEnum,
  syncStatusEnum,
  syncLogStatusEnum,
  conflictResolutionEnum,
  type SyncQueueItem,
  type NewSyncQueueItem,
  type SyncLog,
  type NewSyncLog,
  type SyncConflict,
  type NewSyncConflict,
  type LocalSetting,
  type NewLocalSetting,
  type SyncLogDetail,
} from './sync';
