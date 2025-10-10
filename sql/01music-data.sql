INSERT INTO genre (title) VALUES ('Pop');

INSERT INTO artist (name) VALUES 
('Taylor Swift'),
('Carly Rae Jepsen'),
('Miley Cyrus'),
('Katy Perry'),
('Bruno Mars'),
('Rachel Platten');

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img) VALUES
('Shake It Off', '00:03:39', '2014-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Taylor Swift'), './img/taylor-nummer.jpg'),
('Call Me Maybe', '00:03:13', '2011-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Carly Rae Jepsen'), './img/carly-nummer.jpg'),
('Party in the U.S.A.', '00:03:22', '2009-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Miley Cyrus'), './img/miley-nummer.jpg'),
('Teenage Dream', '00:03:47', '2010-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Katy Perry'), './img/katy-nummer.jpg'),
('That''s What I Like', '00:03:26', '2017-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Bruno Mars'), './img/bruno-nummer.jpg'),
('Flight Song', '00:03:24', '2015-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Rachel Platten'), './img/rachel-nummer.jpg');