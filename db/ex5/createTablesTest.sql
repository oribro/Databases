CREATE TABLE Hobby(
	hnum INTEGER PRIMARY KEY,
	hname VARCHAR NOT NULL
);

CREATE TABLE Person(
	pid INTEGER PRIMARY KEY,
	pname VARCHAR NOT NULL,
	age INTEGER NOT NULL
);

CREATE TABLE Hobbies(
	pid INTEGER NOT NULL,
	hnum INTEGER NOT NULL,
	frequency INTEGER NOT NULL,
	UNIQUE(pid, hnum),
	FOREIGN KEY (pid) REFERENCES Person(pid),
	FOREIGN KEY (hnum) REFERENCES Hobby(hnum)
);
