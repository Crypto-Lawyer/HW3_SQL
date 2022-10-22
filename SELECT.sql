--название и год выхода альбомов, вышедших в 2018 году;
SELECT name, year FROM Album
WHERE year = 2018;

--название и продолжительность самого длительного трека;
SELECT name, duration FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);

--название треков, продолжительность которых не менее 3,5 минуты;
SELECT name FROM Track
WHERE  duration >= 3.50;

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name FROM Collection
WHERE year BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова;
SELECT name FROM Performer
WHERE name NOT LIKE '% %';

--название треков, которые содержат слово "мой"/"my".
SELECT name FROM Track
WHERE name LIKE '%Mой%' OR name LIKE '%My%';