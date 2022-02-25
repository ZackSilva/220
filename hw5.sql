create table customers
(
    id               int auto_increment
        primary key,
    firstname        varchar(15) null,
    lastname         varchar(15) null,
    membership_level varchar(10) null,
    constraint id
        unique (id)
);

create table orders
(
    id         int auto_increment
        primary key,
    product    varchar(25) null,
    cost       int         null,
    customerId int         null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references customers (id)
);

create index customerId
    on orders (customerId);

create table products
(
    id                  int auto_increment
        primary key,
    productManufacturer varchar(25) null,
    productName         varchar(25) null,
    productCost         int         null,
    constraint id
        unique (id)
);

create table products_orders_association
(
    id          int auto_increment
        primary key,
    products_id int not null,
    orders_id   int not null,
    constraint id
        unique (id)
);


