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


create procedure getCusById (in CusNum int (11))
begin
    select * from customers
        where customerNumber = CusNum;
end;
call getCusById(175);

create procedure getCusCountByCity (in InCity varchar(50), out total int)
begin
    select count(customerNumber) into total
        from customers
            where city = InCity;
end;
call getCusCountByCity('Lyon', @total);
select  @total;

drop procedure getCusCountByCity;

create procedure setCounter (in inc int, inout counter int)
begin
    set counter = counter+ inc;
end;

set @counter = 1;
call setCounter(1, @counter);
select @counter;