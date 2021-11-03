DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE table passenger (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);
create table airline (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

create table city (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country_id REFERENCES country(id)
);
create table country (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

create table tickets(
    id SERIAL PRIMARY KEY,
    passenger_id REFERENCES passenger(id),
    airline_id REFERENCES airline(id),
    origin_city_id REFERENCES city(id),
    destination_city_id REFERENCES city(id),
    departure TIMESTAMP NOT NULL,
    seat TEXT NOT NULL    
);