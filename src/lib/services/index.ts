/**
 * Exportação centralizada dos serviços
 */

export { createBaseService, type ListOptions, type ListResult, type BaseEntity } from './base-service';
export { authService, type LoginCredentials, type RegisterData, type AuthResult } from './auth-service';
export { productsService, categoriesService, type Product, type ProductCategory, type CreateProductInput, type UpdateProductInput, type StockMovementInput } from './products-service';
export { customersService, type Customer, type CreateCustomerInput, type UpdateCustomerInput } from './customers-service';
export { salesService, type Sale, type SaleItem, type SaleWithItems, type CreateSaleInput, type CreateSaleItemInput, type SaleStatus, type PaymentMethod, type PaymentDetails } from './sales-service';
