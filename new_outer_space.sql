CREATE  TABLE constellation ( 
	id                   SERIAL PRIMARY KEY,
	name                 VARCHAR(100)  NOT NULL ,
 );

CREATE  TABLE galaxy ( 
	id                   SERIAL PRIMARY KEY,
	designation          VARCHAR(100)  NOT NULL ,
 );

CREATE  TABLE star ( 
	id                   SERIAL PRIMARY KEY,
	right_asc            DOUBLE PRECISION  NOT NULL ,
	declination          DOUBLE PRECISION  NOT NULL ,
	orbital_period       FLOAT,
	galaxy_id            INTEGER REFERENCES galaxy( id )  ON UPDATE CASCADE ,
	constellation_id     INTEGER REFERENCES constellation( id )  ON UPDATE CASCADE 
 );

CREATE  TABLE planets ( 
	id                   SERIAL PRIMARY KEY,
	name                 TEXT  NOT NULL ,
	orbital_period_in_years float8  NOT NULL ,
	star_id              INTEGER REFERENCES star( id )   
 );

CREATE  TABLE moons ( 
	id                   SERIAL PRIMARY KEY,
	planet_id            INTEGER REFERENCES planets( id )  ON UPDATE CASCADE 
 );