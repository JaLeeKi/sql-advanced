--Find a count of how many tracks there are per genre. Display the genre name with the count.

SELECT COUNT(*), g.name FROM track AS t
JOIN genre AS g ON t.genre_id = g.genre_id
GROUP BY g.name;

--Find a count of how many tracks are the “Pop” genre and how many tracks are the “Rock” genre.

SELECT COUNT(*), g.name FROM track AS t
JOIN genre AS g ON t.genre_id = g.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;

--Find a list of all artists and how many albums they have.

SELECT artist.name, COUNT(*) FROM album
JOIN artist ON artist.artist_id = album.artist_id
GROUP BY artist.name;