create table Genre(
	id serial primary key,
	genre_name varchar(50) not null 
	
	
	
);


create table Singer(
	id serial primary key,
	nickname varchar(50),
	genre_id integer  references Genre(id)

);


create table Album(
	id serial primary key,
	album_name varchar(50) not null,
	relese_data integer not null,
	singer_id integer references Singer(id)
);


create table Tracs(
	id serial primary key,
	track_name varchar(50) not null,
	duracin integer not null,
	tracs_id integer references Album(id)

);

create table Collection(
	id serial primary key,
	collection_name varchar(40) not null,
	relese_date integer,
	collection_id integer references Tracs(id)
	
);