use classicmodels;

create procedure findAllCustomer ()
begin
    select * from customers;
end;
call findAllCustomer();
drop procedure findAllCustomer;

create procedure findAllCustomer ()
begin
    select * from customers where customerNumber = 125;
end;

