--Get all invoices where the unit_price on the invoice_line is greater than $0.99.

SELECT unit_price, invoice_line_id FROM invoice_line
WHERE unit_price > .99;

--Get the invoice_date, customer first_name and last_name, and total from all invoices.

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i JOIN customer c ON c.customer_id = i.customer_id;

--Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers.

SELECT c.first_name customer_first_name, c.last_name customer_last_name, e.first_name employee_first_name,
e.last_name employee_last_name
FROM customer c JOIN employee e ON c.support_rep_id = e.employee_id;

--Get the album title and the artist name from all albums.

SELECT al.title, ar.name
FROM album al JOIN artist ar ON al.artist_id = ar.artist_id;

--Get all playlist_track track_ids where the playlist name is Music.

SELECT pt.track_id, p.name FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Music';

--Get all track name`s for `playlist_id 5.

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE pt.track_id = 5;

--Get all track name`s and the playlist `name that they’re on ( 2 joins ).

SELECT t.name track_name, p.name playlist_name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

--Get all track name`s and album `title`s that are the genre `Alternative & Punk ( 2 joins ).

SELECT t.name track_name, a.title album_name FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';