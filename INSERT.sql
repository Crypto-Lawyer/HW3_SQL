INSERT INTO Genre (name) values
	('Jazz'),
	('Rock and Roll'),
	('Soft Rock'),
	('Pop'),
	('Disco'),
	('R&B'),
	('Latin Pop'),
	('Electropop');

INSERT INTO Performer (name, genre) values
	('Louis Armstrong', 'Jazz'), 
	('Elvis Presley', 'Rock and Roll'), 
	('Elton John', 'Soft Rock'), 
	('Michael Jackson', 'Pop'), 
	('ABBA', 'Disco'),
	('Justin Timberlake', 'R&B'), 
	('Enrique Iglesias', 'Latin Pop'), 
	('Lady Gaga', 'Electropop');

INSERT INTO Album (name, year) values
	('What A Wonderful World', 1967),
	('Almost in Love', 1970),
	('Elton John', 1970),
	('Honky Château', 1972),
	('Thriller', 1982),
	('Arrival', 1976),
	('FutureSex/LoveSounds', 2006),
	('Final', 2018),
	('One in a Million', 2018),
	('A Star Is Born', 2018),
	('Chromatica', 2020);

INSERT INTO Track (name, duration, AlbumID) values
	('What a Wonderful World', 2.21, 1), 
	('A Little Less Conversation', 2.28, 2), 
	('Your Song', 4.00, 3), 
	('Rocket Man', 4.41, 4), 
	('Billie Jean', 4.50, 5), 
	('Thriller', 5.58, 5), 
	('Dancing Queen', 3.51, 6), 
	('My Love', 4.43, 7), 
	('El Baño',	3.48, 8), 
	('I Do not Dance Without You', 2.57, 9), 
	('Shallow', 3.37, 10), 
	('Always Remember Us This Way', 3.30, 10), 
	('Music to My Eyes', 3.19, 10), 
	('Rain on Me', 3.02, 11), 
	('Babylon', 2.41, 11), 
	('911', 2.52, 11);

INSERT INTO Collection (name, year) values
	('Jazz 1967', 1967), 
	('Rock and Roll 1970', 1970), 
	('Soft Rock 1970', 1970),
	('Soft Rock 1972', 1972),
	('Pop 1982', 1982), 
	('Disco 1976', 1976),
	('R&B 2006', 2006),
	('Latin Pop 2018', '2018'),
	('Electropop 2018', '2018'),
	('Electropop 2020', 2020);

INSERT INTO GenrePerformer (GenreID, PerformerID) values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);
	
INSERT INTO PerformerAlbum (PerformerID, AlbumID) values
	(1, 1),
	(2, 2),
	(3, 3),
	(3, 4),
	(4, 5),
	(5, 6),
	(6, 7),
	(7, 8),
	(7, 9),
	(8, 10),
	(8, 11);

INSERT INTO TrackCollection (TrackID, CollectionID) values
	(1, 1), 
	(2, 2), 
	(3, 3), 
	(4, 4), 
	(5, 5),
	(6, 5), 
	(7, 6), 
	(8, 7), 
	(9, 8), 
	(10, 8),
	(11, 9), 
	(12, 9), 
	(13, 9), 
	(14, 10), 
	(15, 10), 
	(16, 10);