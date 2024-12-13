using my.bookshop as my from '../db/schema';

service CatalogService {
    @readonly entity Books as projection on my.Books;
    entity Emp as projection on my.Emp;
    entity EmpAddress as projection on my.EmpAddress;
    entity EmpAddressType as projection on my.EmpAddressType;
}
