create table Genre(
	id serial primary key,
	genre_name varchar(50) not null 
);


create table Singer_genre(
	id serial primary key,
	singer_id integer references Singer(id), 
	genre_id integer references Genre(id)
);


create table Singer(
	id serial primary key,
	nickname varchar(50) not null,
	genre_id integer 
);


create table Singer_album(
	id serial primary key,
	singer_id integer references Singer(id),
	album_id integer references album(id)
);


create table album(
	id serial primary key,
	album_name varchar(50),
	albume_date integer,
	singer_id integer
);


create table track(
	id serial primary key,
	track_name varchar(40) not null,
	duration integer,
	album_id integer references album(id)
);

create table Collection_track(
	id serial primary key,
	collection_album_id integer references Collection_album(id),
	track_id integer references track(id)
	
	
);


create table Collection_album(
	id serial primary key,
	collection_album_name varchar(50),
	collection_album_date integer
);
