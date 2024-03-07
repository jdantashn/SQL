CREATE DATABASE exercises;
USE exercises

CREATE TABLE Student (
    numstud int IDENTITY(1,1) PRIMARY KEY,
    name CHAR (50) NOT NULL,
	firstname CHAR (50) NOT NULL,
	dateofbirth DATE,
	street CHAR (50),
	postalcod CHAR(20),
	city CHAR (50)
);

CREATE TABLE Matter (
    codemat CHAR (50) NOT NULL PRIMARY KEY,
	wording CHAR (50) NOT NULL,
	coef FLOAT
);

CREATE TABLE Test (
    numtest INT IDENTITY(1,1) PRIMARY KEY,
	codemat CHAR (50) NOT NULL,
	testdate DATE,
	place CHAR (50)
	CONSTRAINT FK_codemat FOREIGN KEY (codemat) REFERENCES Matter(codemat)
);


CREATE TABLE Notation (
    numtest INT NOT NULL,
	numstud INT NOT NULL,
	score FLOAT NOT NULL,
	CONSTRAINT FK_numtest FOREIGN KEY (numtest) REFERENCES Test(numtest),
	CONSTRAINT FK_numstud FOREIGN KEY (numstud) REFERENCES Student(numstud)
);
