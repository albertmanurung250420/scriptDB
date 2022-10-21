select *  from students where name similar to '%(Joko|joko%)%';

select *  from students where name similar to '%(Joko|joko%)';

select * from grades limit 3;
select * from grades order by id limit 3;
select * from grades offset 4;
select * from grades limit 2 offset 3;
select * from grades;

insert into students (code, name, gender, city, department_code) values 
	('S0009', 'David', 'Male', 'Klaten', 'D0002'),
	('S0010', 'Mano', 'Male', 'Sragen', 'D0004'),
	('S0011', 'philip', 'Male', 'Jakarta', 'D0003'),
	('S0012', 'wira', 'Female', 'Belawan', 'D0001'),
	('S0013', 'albert', 'Male', 'Malang', 'D0003'),
	('S0014', 'bongson', 'Male', 'Klaten', 'D0005'),
	('S0015', 'andrew', 'female', 'Bandung', 'D0001');

select * from students  offset 0 limit 3;
select * from students  offset 3 limit 3;
select * from students  offset 6 fetch next 5 rows only;

select distinct exam_code, grade, exam_count from grades;

create table mst_students (
	name VARCHAR(50),
	birth_place VARCHAR(50),
	birth_date DATE,
	address VARCHAR(50),
	gender VARCHAR(50),
	semester INT,
	email VARCHAR(50)
);
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Colleen Adrain', 'Cifuentes', '5/1/2022', '98218 Melody Parkway', 'Female', 2, 'cadrain1@bluehost.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Bev Kiddle', 'Ermida', '5/5/2022', '7618 Pankratz Park', 'Male', 1, 'bkiddle0@jalbum.net');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Guntar Buzzing', 'Haitou', '7/11/2022', '6 Beilfuss Court', 'Male', 3, 'gbuzzing2@time.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Patricia Rehorek', 'Singa', '9/28/2021', '2905 Kings Trail', 'Female', 4, 'prehorek3@nyu.edu');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Marv Heeron', 'Novaya Mayna', '2/9/2022', '7 Logan Place', 'Male', 5, 'mheeron4@cornell.edu');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Clemens Blindmann', 'Machagai', '3/22/2022', '5 Crest Line Terrace', 'Male', 6, 'cblindmann5@topsy.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Laura Castro', 'Dongjiang Matoukou', '3/31/2022', '6108 Golf Trail', 'Female', 7, 'lcastro6@eepurl.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Clemmie Sapauton', 'Patao', '11/22/2021', '73509 Orin Place', 'Female', 8, 'csapauton7@ted.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Alisander Peyro', 'Bangko', '2/14/2022', '41 Spohn Hill', 'Male', 9, 'apeyro8@canalblog.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Elfrida Kayne', 'Si Satchanalai', '10/1/2021', '21306 Sunfield Circle', 'Female', 10, 'ekayne9@blogtalkradio.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Winny Quoit', 'Otrokovice', '8/23/2022', '892 New Castle Avenue', 'Male', 11, 'wquoita@opensource.org');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Sharia Sellack', 'Red Hill', '1/9/2022', '10857 Dawn Avenue', 'Female', 12, 'ssellackb@goodreads.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Elsy Filmer', 'Sanmiaoqian', '10/14/2021', '41 Schlimgen Way', 'Female', 13, 'efilmerc@scribd.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Farrah Stading', 'Moss', '7/13/2022', '60 Browning Hill', 'Female', 14, 'fstadingd@accuweather.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Dun Delieu', 'Terek', '12/30/2021', '29 Hollow Ridge Junction', 'Male', 15, 'ddelieue@typepad.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Con Assur', 'Karantaba', '2/7/2022', '26205 Jenifer Plaza', 'Male', 16, 'cassurf@chicagotribune.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Courtnay Redford', 'Novodmitriyevskaya', '4/18/2022', '71832 Leroy Circle', 'Female', 17, 'credfordg@bloglines.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Bren Hellsdon', 'Wilamowice', '8/5/2022', '048 Myrtle Point', 'Agender', 18, 'bhellsdonh@tinypic.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Nikolaus Bushe', 'Wugui', '5/30/2022', '6023 Spohn Court', 'Male', 19, 'nbushei@gravatar.com');
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email) values ('Laure Caswell', 'Paphos', '10/15/2021', '916 Bonner Parkway', 'Female', 20, 'lcaswellj@wisc.edu');


select count(name) from mst_students;
select * from mst_students;

select gender from mst_students group by gender;

SELECT MAX(semester)
FROM mst_students;

select gender, count(gender) from mst_students group by gender;

select semester, count(name) as banyak_semester from mst_students group by semester;

select count(0), semester from mst_students group by semester;

SELECT * FROM mst_students ms 
   ORDER BY NAME asc;

	select semester, count(name) * 100.0 / sum(count(semester)) over()
	from mst_students
	group by semester;
	
create table major (
	id serial primary key,
	major_name varchar(150) not null,
	address varchar(200) not null
	);
	
insert into major (major_name, address) values 
	('Information Technology', 'Depok'),
	('Law', 'Salemba'),
	('Civil Engineering', 'Semanggi');
	

alter table mst_students add constraint Fk_major foreign key (major_id) references major(id);

update mst_students set major_id = null where id = 22;

alter table mst_students add column id serial;

insert into mst_students (name, birth_place, birth_date, address, gender, semester, email, major_id) values 
	('Albert Manurung', 'Porsea', '2000-04-25', 'Kecamatan Uluan', 'Male', 8, 'albertmanurung@gmail.com', 2);

select * from mst_students;
select * from major;

select mst_students.name, mst_students.gender, major.address 
from mst_students 
join major 
on major.id = mst_students.major_id;

select mst_students.name, mst_students.birth_place 
from mst_students 
left join major 
on major.id = mst_students.major_id;

/*Query yang tidak tepat dalam menggabungkan 2 table*/
select * from mst_students 
join major 
on mst_students.semester = major.id;

select * from major  
left join mst_students  
on major.id = mst_students.major_id;

select * from mst_students 
inner join major 
on major.id = mst_students.major_id;

insert into major (major_name, address) values 
	('Bioproses', 'Magelang');
	
insert into mst_students (name, birth_place, birth_date, address, gender, semester, email, major_id) values 
	('Jeremi Manurung', 'Balige', '2000-04-22', 'Kecamatan Parmaksian', 'Male', 8, 'albertmanurung@gmail.com', null);

select * from major
left join mst_students
on mst_students.major_id = major.id;

select mst_students.name, mst_students.birth_place 
from mst_students 
where mst_students.major_id = null;

select * from mst_students 
left join major 
on major.id = mst_students.major_id 
where mst_students.major_id 
is null;

select * from mst_students
where mst_students.major_id is null;

select * from major  
left join mst_students
on major.id = mst_students.major_id 
where mst_students.major_id 
is null;

select * from major  
right join mst_students
on major.id = mst_students.major_id 
where mst_students.major_id 
is null;

select * from mst_students
full join major
on major.id = mst_students.major_id;

select * from major;

select major.id, major_name, count(mst_students.major_id) as jumlah_peserta
from major  
left join mst_students
on major.id = mst_students.major_id
group by major.id
order by major.id;

select * from mst_students order by semester asc, name desc;

select * from mst_students where semester = 8 and gender ='M' or email ilike '%gmail%' and major_id =2;

select *  from mst_students where semester >= 6;

create sequence counter_antrian_seq start 1 increment 1;

select nextval('counter_antrian_seq');