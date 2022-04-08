# Insert Statements
insert into customers (id, firstname, lastname, membership_level) values (1, 'Zackary', 'Silva', 'Premium');
insert into customers (id, firstname, lastname, membership_level) values (2, 'Diane', 'Silva', 'Premium');
insert into customers (id, firstname, lastname, membership_level) values (3, 'Don', 'Johnson', 'Standard');

insert into products (id, productManufacturer, productName, productCost) values (1, 'MSI', 'RTX 3070 Ti', '849');
insert into products (id, productManufacturer, productName, productCost) values (2, 'AsRock', 'Radeon VII', '549');
insert into products (id, productManufacturer, productName, productCost) values (3, 'EVGA', 'GTX 1070 Ti', '349');

insert into orders (product, cost, customerId) values ('RTX 3070 Ti', '849', 1);
insert into orders (product, cost, customerId) values ('Radeon VII', '549', 2);
insert into orders (product, cost, customerId) values ('GTX 1070 Ti', '349', 3);

insert into products_orders_association (id, products_id, orders_id) values (1, 1, 1);
insert into products_orders_association (id, products_id, orders_id) values (2, 2, 2);
insert into products_orders_association (id, products_id, orders_id) values (3, 3, 3);

# Select Queries
select * from customers;
select * from orders;
select * from products;
select * from products_orders_association;

select firstname, lastname from store.customers;
select productManufacturer, productName from products;
select product, cost from store.orders;
select products_id, orders_id from products_orders_association;