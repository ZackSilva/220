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


