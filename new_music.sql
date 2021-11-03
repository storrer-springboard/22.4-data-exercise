DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists REFERENCES artist_song_junction(id),
  album_id REFERENCES album(id),
  producers REFERENCES producer_song_junction(id)
);



CREATE  TABLE artist_song_junction ( 
	id                   SERIAL PRIMARY KEY,   ,
	song_id              INTEGER  REFERENCES songs(id), ,
	artist_one_id        INTEGER  REFERENCES artist(id) ,
	artist_two_id        INTEGER  REFERENCES artist(id) ,
	artist_three_id      INTEGER  REFERENCES artist(id) ,
	artist_four_id       INTEGER  REFERENCES artist(id) ,
	artist_five_id       INTEGER  REFERENCES artist(id) ,
	artist_six_id        INTEGER  REFERENCES artist(id) 
 );
CREATE  TABLE artist ( 
	id                   serial PRIMARY KEY  ,
	name                 varchar(100)  NOT NULL 
 );

 CREATE  TABLE producer_song_junction ( 
	id                   SERIAL PRIMARY KEY,   ,
	song_id              INTEGER   REFERENCES songs(id), ,
	producer_one_id        INTEGER  REFERENCES producer(id) ,
	producer_two_id        INTEGER  REFERENCES producer(id) ,
	producer_three_id      INTEGER  REFERENCES producer(id) ,
	producer_four_id       INTEGER  REFERENCES producer(id) ,
	producer_five_id       INTEGER  REFERENCES producer(id) ,
	producer_six_id        INTEGER  REFERENCES producer(id) 
 );
 CREATE  TABLE artist ( 
	id                   serial  PRIMARY KEY ,
	name                 varchar(100)  NOT NULL 
 );
  CREATE  TABLE album ( 
	id                   serial  PRIMARY KEY ,
	name                 varchar(100)  NOT NULL 
 );
 CREATE TABLE producer (
     id serial PRIMARY KEY,
     name varchar(100) NOT NULL
 );