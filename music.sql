-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE producers(
  id SERIAL PRIMARY KEY,
  producer[] TEXT NOT NULL
)

CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  artist[] Text Not Null
  producer_id REFERENCES producers(id)
)

CREATE TABLE album(
  id SERIAL PRIMARY KEY,
  album Text NOT NULL,
  artists_id REFERENCES artists(id)
)


CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artist_id  REFERENCES artists(id),
  album_id REFERENCES album(id),
  producer_id REFERENCES producers(id)
);


INSERT INTO producer(producer[]) 
    VALUES ('{"Dust Brothers", "Stephen Lironi"}'),('{"Roy Thomas Baker"}'),
           ('{"Walter Afanasieff"}'),('{"Benjamin Rice"}'),('{"Rick Parashar"}'),
           ( '{"Al Shux"}'),('{"Max Martin", "Cirkut"}'),( '{"Shellback", "Benny Blanco"}'),
           ('{"The Matrix"}'),('{"Darkchild"}')

INSERT INTO artists(artist[],producer_id) 
          VALUES ('{"Hanson"}',1),('{"Queen"}',2),('{"Mariah Cary", "Boyz II Men"}',3),
                  ('{"Lady Gaga", "Bradley Cooper"}',4),('{"Nickelback"}',5),
                  ('{"Jay Z", "Alicia Keys"}',6),('{"Katy Perry", "Juicy J"}',7),
                  ('{"Maroon 5", "Christina Aguilera"}',8),
                  ('{"Avril Lavigne"}',9),('{"Destiny''s Child"}',10)

INSERT INTO album(album,artist_id) 
            VALUES ('Middle of Nowhere',1),('A Night at the Opera',2),
                   ('Daydream',3),('A Star Is Born',4),('Silver Side Up',5),
                   ('The Blueprint 3',6),('Prism',7),('Hands All Over',8),
                   ('Let Go',9),('The Writing''s on the Wall',10)
                                                  
INSERT INTO songs
  (title, duration_in_seconds, release_date, artists_id, album_id, producer_id)
VALUES
  ('MMMBop', 238, '04-15-1997', 1, 1, 1),
  ('Bohemian Rhapsody', 355, '10-31-1975', 2, 2, 2),
  ('One Sweet Day', 282, '11-14-1995', 3, 3, 3),
  ('Shallow', 216, '09-27-2018', 4, 4, 4),
  ('How You Remind Me', 223, '08-21-2001', 5, 5, 5),
  ('New York State of Mind', 276, '10-20-2009', 6, 6,6),
  ('Dark Horse', 215, '12-17-2013', 7, 7, 7),
  ('Moves Like Jagger', 201, '06-21-2011', 8, 8,8),
  ('Complicated', 244, '05-14-2002', 9, 9, 9),
  ('Say My Name', 240, '11-07-1999', 10, 10, 10);
