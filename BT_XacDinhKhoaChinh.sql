create database bt_khoa_chinh;
use bt_khoa_chinh;
create table customer(
    customer_name int ,
    full_name nvarchar(50) not null ,
    address nvarchar(255) not null ,
    email nvarchar(255)not null ,
    phone int(11)not null

);
create table accounts(
    account_number int,
    account_type varchar(50)not null ,
    date date,
    balance double
);

create table transactions(
    tran_number int,
    account_number int,
    date date,
    amounts double,
    descriptions nvarchar(255)
);

alter table customer
  add primary key (customer_name);

alter table accounts
add primary key (account_number);

alter table transactions
add primary key (tran_number);


alter table accounts
add customer_number int;
alter table accounts
add foreign key (customer_number) references customer(customer_name) ;