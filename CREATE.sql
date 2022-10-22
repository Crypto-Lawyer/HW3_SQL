CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Performer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL,
	genre VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year INTEGER NOT NULL,
	CHECK (year > 1960)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	year INTEGER NOT NULL,
	CHECK (year > 1960)
);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL,
	AlbumID INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS GenrePerformer (
	GenreID INTEGER NOT NULL REFERENCES Genre(id),
	PerformerID INTEGER NOT NULL REFERENCES Performer(id),
	CONSTRAINT pk1 PRIMARY KEY (GenreID, PerformerID)
);

CREATE TABLE IF NOT EXISTS PerformerAlbum (
	PerformerID INTEGER NOT NULL REFERENCES Performer(id),
	AlbumID INTEGER NOT NULL REFERENCES Album(id),
	CONSTRAINT pk2 PRIMARY KEY (PerformerID, AlbumID)
);

CREATE TABLE IF NOT EXISTS TrackCollection (
	TrackID INTEGER NOT NULL REFERENCES Track(id),
	CollectionID INTEGER NOT NULL REFERENCES Collection(id),
	CONSTRAINT pk3 PRIMARY KEY (TrackID, CollectionID)
);