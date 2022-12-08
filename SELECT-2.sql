SELECT g."name",COUNT(*) FROM genre_singers gs
LEFT JOIN genre g ON g.genre_id = gs.genre_id 
GROUP BY  g.name ;


SELECT COUNT(*)  FROM tracks t
WHERE album_id IN (SELECT album_id  FROM albums a WHERE a."date"  BETWEEN 2018 AND 2019);


SELECT album_id ,AVG(t.duration) FROM tracks t
GROUP BY album_id  
ORDER BY album_id;


SELECT name FROM singers s 
WHERE singer_id IN (SELECT singer_id FROM singers_album sa WHERE album_id IN (SELECT album_id FROM albums a WHERE date != 2020));


SELECT DISTINCT c."name"  FROM tracks t 
LEFT JOIN albums a ON a.album_id = t.album_id
LEFT JOIN singers_album sa ON a.album_id = sa.album_id
LEFT JOIN singers s ON s.singer_id = sa.singer_id
LEFT JOIN compilation_traks ct ON t.track_id = ct.track_id
LEFT JOIN compilation c ON c.compilation_id = ct.compilation_id 
GROUP BY t.track_id, s."name", c."name"
HAVING s."name" = 'Morgenshtern';


SELECT a.name FROM albums a 
LEFT JOIN singers_album sa ON a.album_id = sa.album_id 
LEFT JOIN singers s ON s.singer_id = sa.singer_id 
LEFT JOIN genre_singers gs ON s.singer_id = gs.singer_id
GROUP BY  a."name"
HAVING COUNT(gs.singer_id) > 1;


SELECT name FROM tracks t 
WHERE track_id  NOT IN (SELECT track_id FROM compilation_traks ct);


SELECT s."name"  FROM tracks t 
LEFT JOIN albums a ON a.album_id = t.album_id
LEFT JOIN singers_album sa ON a.album_id = sa.album_id
LEFT JOIN singers s ON s.singer_id = sa.singer_id 
WHERE t.duration  = (SELECT MIN(duration) FROM tracks)
GROUP BY s."name";


SELECT a."name"  FROM tracks t
LEFT JOIN albums a ON a.album_id = t.album_id
GROUP BY a."name" 
HAVING count(t.album_id) = (SELECT MIN(c) m FROM (SELECT t.album_id , COUNT(t.album_id) c FROM tracks t GROUP BY t.album_id) AS foo);










