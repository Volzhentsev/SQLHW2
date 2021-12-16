create table if not exists genre (
    id serial primary key,
    genre_name varchar(40) not null
);

create table if not exists artist (
    id serial primary key,
    artist_name varchar(40) unique not null,
    id_genre integer references genre(id)
);

create table if not exists album (
    id serial primary key,
    title varchar(50) not null,
    year_of_release integer,
    artist_id integer references artist(id)
);

create table if not exists track (
   id serial primary key,
   track_name varchar(45) not null,
   duration integer,
   album_id integer references album(id)
);

