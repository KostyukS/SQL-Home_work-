CREATE TABLE IF NOT EXISTS Genre(
     id serial PRIMARY KEY,
     Name varchar(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS List_of_performers(
     id serial PRIMARY KEY,
     Name varchar(40) NOT NULL
     
);

CREATE TABLE IF NOT EXISTS Album_list(
     id serial PRIMARY KEY,
     Name varchar(40) NOT NULL,
     Year_of_issure integer NOT NULL     
);

CREATE TABLE IF NOT EXISTS Track_list(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL,
     duration integer NOT NULL
);


CREATE TABLE IF NOT exists Compilation(
     id serial PRIMARY KEY,
     name varchar(40) NOT NULL,
     Year_of_issure integer NOT NULL 
);


CREATE TABLE IF NOT EXISTS  Track_Compilation(
     Track_list_id integer references Track_list(id),
     Compilation_id integer references Compilation(id),
     constraint Tr_Co primary key (Track_list_id, Compilation_id) 
);


CREATE TABLE IF NOT EXISTS  Performers_Album(
    Performers_id INTEGER references List_of_performers(id),
    Album_id integer references Album_list(id),
    constraint Pe_Al primary key (Performers_id, Album_id)
);


CREATE TABLE IF NOT EXISTS Genre_Performers(
    Performers_id integer references List_of_performers(id),
    Genre_id integer references Genre(id),
    constraint Ge_Pe primary key (Performers_id, Genre_id)
);
