INSERT INTO genre (title, slug)
SELECT 'Pop', 'pop'
WHERE NOT EXISTS (SELECT 1 FROM genre WHERE title = 'Pop');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Taylor Swift', '../src/img/taylor-artiest.jpg', 'taylor-swift'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Taylor Swift');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Carly Rae Jepsen', '../src/img/carly-artiest.jpg', 'carly-rae-jepsen'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Carly Rae Jepsen');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Miley Cyrus', '../src/img/miley-artiest.jpg', 'miley-cyrus'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Miley Cyrus');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Katy Perry', '../src/img/katy-artiest.jpg', 'katy-perry'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Katy Perry');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Bruno Mars', '../src/img/bruno-artiest.jpg', 'bruno-mars'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Bruno Mars');

INSERT INTO artist (name, img_artist, slug)
SELECT 'Rachel Platten', '../src/img/rachel-artiest.jpg', 'rachel-platten'
WHERE NOT EXISTS (SELECT 1 FROM artist WHERE name = 'Rachel Platten');

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'Shake It Off', '00:03:39', '2014-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Taylor Swift'), '../src/img/taylor-nummer.jpg', 'shake-it-off'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'Shake It Off' AND artist_id = (SELECT id FROM artist WHERE name = 'Taylor Swift')
);

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'Call Me Maybe', '00:03:13', '2011-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Carly Rae Jepsen'), '../src/img/carly-nummer.jpg', 'call-me-maybe'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'Call Me Maybe' AND artist_id = (SELECT id FROM artist WHERE name = 'Carly Rae Jepsen')
);

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'Party in the U.S.A.', '00:03:22', '2009-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Miley Cyrus'), '../src/img/miley-nummer.jpg', 'party-in-the-usa'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'Party in the U.S.A.' AND artist_id = (SELECT id FROM artist WHERE name = 'Miley Cyrus')
);

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'Teenage Dream', '00:03:47', '2010-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Katy Perry'), '../src/img/katy-nummer.jpg', 'teenage-dream'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'Teenage Dream' AND artist_id = (SELECT id FROM artist WHERE name = 'Katy Perry')
);

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'That''s What I Like', '00:03:26', '2017-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Bruno Mars'), '../src/img/bruno-nummer.jpg', 'thats-what-i-like'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'That''s What I Like' AND artist_id = (SELECT id FROM artist WHERE name = 'Bruno Mars')
);

INSERT INTO single (title, duration, release_date, genre_id, artist_id, img, slug)
SELECT 'Flight Song', '00:03:24', '2015-01-01', (SELECT id FROM genre WHERE title = 'Pop'), (SELECT id FROM artist WHERE name = 'Rachel Platten'), '../src/img/rachel-nummer.jpg', 'flight-song'
WHERE NOT EXISTS (
  SELECT 1 FROM single WHERE title = 'Flight Song' AND artist_id = (SELECT id FROM artist WHERE name = 'Rachel Platten')
);