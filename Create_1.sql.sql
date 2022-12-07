CREATE TABLE IF NOT EXISTS genre(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS list_of_performers(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL UNIQUE 
     
);

CREATE TABLE IF NOT EXISTS album_list(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL UNIQUE ,
     year_of_issure integer check(year_of_issure>1960 AND year_of_issure<2025)     
);

CREATE TABLE IF NOT EXISTS track_list(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL UNIQUE ,
     album_id integer REFERENCES album_list (id),
     duration integer check(duration>0)
);


CREATE TABLE IF NOT exists compilation(
     id serial primary key,
     name varchar(40) NOT NULL  UNIQUE ,
     year_of_issure integer check(year_of_issure>1960 AND year_of_issure<2025) 
);


CREATE TABLE IF NOT exists track_compilation(
     track_list_id  integer references track_list (id),
     compilation_id integer references compilation(id),
     constraint tr_comp primary key (track_list_id , compilation_id) 
);


create table if not exists performers_album(
    album_id INTEGER references album_list (id),
    performers_id  INTEGER  references list_of_performers(id),
    constraint pe_al primary key (album_id, performers_id)
);


create table if not exists genre_performers(
    performers_id  INTEGER  references list_of_performers (id),
    genre_id INTEGER  references Genre(id),
    constraint ge_pe primary key (performers_id , genre_id)
);
