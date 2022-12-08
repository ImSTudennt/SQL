INSERT INTO singers
VALUES(1,'Loboda'),
      (2, 'Oxxy'),
      (3, 'Markul'),
      (4, 'Maks Korzh'),
      (5, 'Pharaon'),
      (6, 'Lizer'),
      (7, 'NKOHA'),
      (8, 'Morgenshtern');

     
INSERT INTO genre
VALUES(1, 'rap'),
      (2, 'pop'),
      (3, 'electro'),
      (4, 'Шансон'),
      (5, 'rock');

     
INSERT INTO albums
VALUES(1, 'Вечный жид', 2015),
      (2, 'Горгород', 2015),
      (3, 'Syrena', 2021),
      (4, 'Занесло', 2021),
      (5, 'Genesis', 2022),
      (6, 'Жить в кайф', 2013),
      (7, 'Philarmonia', 2021),
      (8, 'Hate me', 2018);

     
INSERT INTO tracks
VALUES(1, 'Восточный Мордор', 2.49, 1),
      (2, 'Судьба Моралиста', 1.53, 1),
      (3, 'Крокодиловы слёзы', 2.41, 1),
      (4, 'Полигон', 3.40, 2),
      (5, 'Слово Мэра', 4.00, 2),
      (6, 'Занесло', 3.20, 4),
      (7, 'Мотылёк', 3.57, 6),
      (8, 'Сеть', 3.17, 6),
      (9, 'Эндорфин', 4.28, 6),
      (10, 'Время', 3.38, 6),
      (11, 'Дикий', 1.23, 8),
      (12, 'Insomnia', 2.29, 8),
      (13, 'Hermit', 2.19, 8),
      (14, 'Деньги', 3.08, 8),
      (15, 'Соната ей', 2.17, 7);

     
INSERT INTO tracks
VALUES(16, 'my', 2.55, 1),
      (17, 'мой', 1.33, 1);

     
INSERT INTO compilation
VALUES(1, 'My1', 2022),
      (2, 'My2', 2022),
      (3, 'My3', 2022),
      (4, 'My4', 2022),
      (5, 'My5', 2022),
      (6, 'My6', 2022),
      (7, 'My7', 2022),
      (8, 'My8', 2022);

     
INSERT INTO genre_singers(singer_id, genre_id)
VALUES(1, 2),
      (2, 1),
      (3, 1),
      (4, 1),
      (5, 1),
      (6, 1),
      (7, 3),
      (8, 1),
      (8, 2);

     
INSERT INTO singers_album(singer_id,album_id)
VALUES(2, 1),
      (2, 2),
      (3, 3),
      (1, 4),
      (7, 5),
      (4, 6),
      (5, 7),
      (8, 8);

     
INSERT INTO compilation_traks(track_id,compilation_id)
VALUES(1, 1),
      (2, 1),
      (3, 1),
      (6, 2),
      (7, 2),
      (4, 3),
      (3, 3),
      (9, 4),
      (11, 4),
      (14, 5),
      (12, 5),
      (1, 6),
      (10, 6),
      (13, 7),
      (2, 7),
      (5, 8),
      (7, 8); 

     
-- Дз №2 --

     
INSERT INTO albums
VALUES(9, 'Вечный', 2019);


INSERT INTO tracks
VALUES(18, 'Восточный', 2.49, 9);


INSERT INTO singers_album 
VALUES(9, 6, 9);