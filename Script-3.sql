create table  mst_product(
	id serial primary key,
	name varchar(200) not null,
	description  varchar(200) not null,
	price int not null,
	stock int not null
);

create table  trx_purchase(
	id serial primary key,
	product_id int not null,
	qty int not null,
	subtotal decimal,
	purchase_time timestamp
);

insert into trx_purchase (product_id, qty, subtotal, purchase_time)
values (2, 3,13000, now());

select * from trx_purchase;

update mst_product set price = '10000' where id = 2;

delete from mst_product where id=2;
update mst_product set stock = stock -1 where  id = 2;

