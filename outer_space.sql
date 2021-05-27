-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space


CREATE TABLE galaxy(
  id SERIAL PRIMARY KEY,
  galaxy_name TEXT NOT NULL
)

CREATE TABLE planets(
  id SERIAL PRIMARY KEY,
  planet TEXT NOT NULL
)

CREATE TABLE moons(
  id SERIAL PRIMARY KEY,
  moon TEXT,
  planet_id REFERENCES planets(id)
)
 
CREATE TABLE orbits_around(
  id SERIAL PRIMARY KEY,
  orbits_around TEXT NOT NULL
)
CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around int REFERENCES orbits_around(id),
  galaxy_id int REFERENCES galaxy(id),
  moons TEXT[]
);

Insert INTO galaxy (galaxy_name) VALUES ('Milky Way')

INSERT INTO planets (planet)  VALUES ('Earth'),('Mars'),('Venus'),('Neptune'),('Proxima Centauri b'),
                                      ('Gliese 876 b')

INSERT INTO moons(moon,planet_id) 
            VALUES ('{"The Moon"}',1),('{"Phobos", "Deimos"}',2),
                   ('{}',3),('{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}',4),
                   ('{}',5),('{}',6)

INSERT INTO orbits_around(orbits_around) VALUES ('The Sun'),('Proxima Centauri') ,('Gliese 876')

INSERT INTO planets_details
  (name, orbital_period_in_years, orbits_around, galaxy_id, moons)
VALUES
  (1, 1.00, 1, 1, 1),
  (2, 1.88, 1, 1, 2),
  (3, 0.62, 1, 1, ),
  (4, 164.8, 1, 1, 4),
  (5, 0.03, 2,1, 5),
  (6, 0.23, 3, 1, 6);