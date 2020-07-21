create database b2csdl;

use b2csdl;
create table customers(
    id int auto_increment primary key ,
    name nvarchar(40) not null ,
    address nvarchar(255) not null,
    email nvarchar(255) not null
);
create table orders(
    id int auto_increment primary key ,
    staff nvarchar(255) not null ,
    customer_id int,
    foreign key (customer_id) references customers(id)
);
select * from customers;
select * from orders;
