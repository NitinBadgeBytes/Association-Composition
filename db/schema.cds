namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
}

entity Emp {
    key empId            : Integer;
    empName              : String;
    empDesignation       : String;
    addresses            : Composition of many EmpAddress on addresses.empId = $self.empId;
}

entity EmpAddress {
    key id               : Integer;
    empId                : Integer;
    at                   : String;
    po                   : String;
    dist                 : String;
    addressType          : Association to EmpAddressType;
}

entity EmpAddressType {
    key ID               : Integer;
    type                 : String; // Example: "India", "Germany"
}