CREATE TABLE Trip(
	tnum INTEGER PRIMARY KEY, 
	location VARCHAR NOT NULL,
	duration INTEGER NOT NULL DEFAULT(5) CHECK(duration >= 3),
	difficulty INTEGER CHECK(difficulty >= 1 and difficulty <= 7)
	CHECK (duration > 6 and difficulty >= 3)
);

CREATE TABLE Company(
	cid INTEGER PRIMARY KEY,
	name VARCHAR NOT NULL,
	estYear INTEGER NOT NULL
);

CREATE TABLE Offer(
	cid INTEGER,
	FOREIGN KEY (cid)
	 REFERENCES Company(cid),
	tnum INTEGER,
	FOREIGN KEY (tnum)
	 REFERENCES Trip(tnum)
);
