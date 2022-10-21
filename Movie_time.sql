create database movie_time;

/*Membuat Tabel Actor*/
create table actor (
	id serial not null,
	name VARCHAR(50),
	birth_date DATE,
	citizen varchar(50),
	gender VARCHAR(50),
	primary key(id)
);


/*Membuat Tabel Movie*/
create table Movie (
	id serial not null,	
	title VARCHAR(50),
	director varchar(50),
	production_house varchar(50),
	primary key(id)
);

/*Membuat Tabel History Aktor*/
create table if not exists celebrities_movie(
	id SERIAL not null,
	id_actor serial not null,
	id_movie serial not null,
	release_date date not null,
	primary key (id),
	foreign key(id_actor) references actor(id),
	foreign key(id_movie) references movie(id)
);

/*Menambahkan  data ke Aktor*/
insert into actor (id, name, birth_date, citizen, gender) values 
	(1, 'Sutatta Udomsilp', '1997-06-5', 'Thailand', 'Female'),
	(2, 'Jason Statham', '1967-07-26', 'Shirebrook', 'Male'),
	(3, 'Sylvester Stallone', '1946-07-06', 'Amerika', 'Male'),
	(4, 'Paul Walker', '1973-09-12', 'Amerika', 'Male'),
	(5, 'Tyrese Gibson', '1978-12-30', 'Amerika', 'Male'),
	(6, 'Jackie Chan', '1954-04-07', 'China', 'Male'),
	(7, 'Tom Cruise', '1962-07-03', 'Amerika', 'Male');

/*Menambahkan  data ke Movie*/
insert into movie (id, title, director, production_house) values 
	(1, 'Rush Hour', 'Brett Ratner', 'Roger Birnbaum Productions'),
	(2, 'May Who', 'Chayanop Boonprakob', 'Vanridee Pongsittisak'),
	(3, 'Fast And Forious', 'Vin Diesel', 'Universal Studio'),
	(4, 'Fast And Forious', 'Justin Lin', 'Universal Studio'),
	(5, 'First Blood', 'Ted Kotcheff', 'The Wallis Interactive'),
	(6, 'Top Gun', 'Tony Scott', 'Paramount Pictures');


insert into celebrities_movie(id, id_actor, id_movie, release_date) values 
	(1, 1, 2, '2015-10-01'),	
	(2, 2, 3, '2015-04-02'),
	(3, 3, 5, '1982-10-22'),
	(4, 4, 3, '2021-06-16'),
	(5, 5, 4, '2021-06-16'),
	(6, 6, 1, '1998-09-18');

select * from movie;