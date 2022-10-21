/*Create table Customer*/
create table customer (
	id serial primary key,
	name varchar(30),
	email varchar(30),
	phone_number varchar(30),
	address varchar (50)
);

alter table customer drop column password ;
alter table customer add column password_customer varchar(50); 
select * from customer

update customer 
set password_customer=1234;

/*Create table Toko*/
create table store(
	id serial primary key,
	no_siup int,
	store_name varchar (30),
	store_address varchar (30),
	number_phone varchar (30)
);

/*Create table product*/
create table product(
	id serial primary key,
	id_store int,
	product_name varchar(30),
	price int not null,
	description  varchar(200) not null,
	stock int not null,
	foreign key (id_store) references store(id)
);

select * from product p 

/*Create table Transaction*/
create table transaction_user(
	id serial primary key,
	id_user int,
	id_produk int,
	qty int, 
	subtotal decimal,
	purchase_time timestamp,
	foreign key (id_user) references customer(id),
	foreign key (id_produk) references product(id)
);

/*Insert Table customer*/
insert into customer (name, email, phone_number, address) values 
	('Jonathan', 'jonathan@gmail.com', '08223683434', 'Balige'),
	('Jeremi', 'jeremi@gmail.com', '08223642342', 'Porsea'),
	('Steven', 'steven@gmail.com', '08242364782', 'Uluan'),
	('Peter', 'peter@gmail.com', '08224373653', 'Parmaksian');
	
/*Insert Table Store*/
insert into store (no_siup, store_name, store_address, number_phone) values 
	(2131, 'Jaya Bakti Aman', 'Jakarta Pusat', '4431413'),
	(3321, 'Dijamin Gak Ori', 'Jakarta Selatan', '441231'),
	(2613, 'Ada Harga Ada Barang', 'Jakarta Timur', '44342'),
	(5422, 'Sopiii', 'Jakarta Barat', '776473');

/*Insert Table Suplier*/
insert into product (id_store, product_name, price, description, stock) values 
	(1, 'Shampoo', 40000, 'Zinc', 10),
	(2, 'Soap', 3000, 'Nuvo', 20),
	(3, 'Conditioner', 50000, 'Sunsilk', 15),
	(4, 'Tooth Paste', 13000, 'Sensodyne', 17);

alter table product add column id_suplier_store int;

alter table product add constraint Fk_suplier_idstore foreign key (id_suplier_store) references store(id);

/*Insert Table Transaction*/
insert into transaction_user (id_user, id_produk, qty, subtotal, purchase_time) values 
	(2, 3, 2, 80000, now()),
	(3, 1, 1, 40000, now()),
	(1, 4, 3, 150000, now()),
	(2, 1, 2, 80000, now()),
	(3, 2, 1, 40000, now()),
	(1, 3, 3, 150000, now()),
	(2, 4, 2, 80000, now()),
	(3, 3, 1, 40000, now()),
	(1, 1, 3, 150000, now()),
	(4, 2, 4, 6000, now());


--Soal 1
select customer.id, customer.name, transaction_user.id_produk, transaction_user.qty from
customer left join transaction_user
on customer.id = transaction_user.id_user;

--Soal 2
select customer.name, COUNT(transaction_user.qty) as total_unit
from customer 
left join transaction_user
on customer.id = transaction_user.id_user
group by customer.id;

--Soal 3
select store.id as id_store, product.product_name, 
count (product.stock) as total_unit
from product
left join store
on product.id_store = store.id
group by product.product_name, store.id;

--Soal 4
select product.product_name, transaction_user.id_produk, 
sum (transaction_user.qty) as total_unit
from product
left join transaction_user
on product.id = transaction_user.id
group by product.product_name, transaction_user.id_produk;

--Soal 5
select * from
product left join transaction_user
on transaction_user.id_produk = product.id
where transaction_user.id_produk is null;

--Soal 6
select transaction_user.id_user, customer.id, customer.name, sum(transaction_user.subtotal) as purchase_total
from transaction_user 
left join customer
on transaction_user.id_user = customer.id
group by transaction_user.id_user, customer.id, customer.name
order  by purchase_total desc limit 1;

drop  table customer , transaction_user , store, product 