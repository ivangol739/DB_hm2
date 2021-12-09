create table if not exists genre (
	genre_id integer primary key,
	genre_name varchar(80)
);

create table if not exists performer (
	performer_id integer primary key,
	performer_name varchar(80),
	genre_id integer not null references genre(genre_id)
);

create table if not exists album (
	album_id integer primary key,
	album_name varchar(200),
	album_year integer,
	performer_id integer not null references performer(performer_id)
);

create table if not exists track (
	track_id integer primary key,
	track_name varchar(200),
	track_duration integer,
	almum_id integer not null references album(album_id)
);