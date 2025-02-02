USE act3;

CREATE TABLE University(
ID INT(16) NOT NULL PRIMARY KEY AUTO_INCREMENT,
UniversityName CHAR(64) NOT NULL,
Address VARCHAR(128) NOT NULL
);

CREATE TABLE Program(
ID VARCHAR(16) NOT NULL AUTO_INCREMENT PRIMARY KEY,
Name CHAR(64) NOT NULL, 
ID INT(16) NOT NULL,
FOREIGN KEY(ID) REFERENCES School(ID) 
);

CREATE TABLE School(
ID INT(16) NOT NULL AUTO_INCREMENT PRIMARY KEY,
SchoolName VARCHAR(64) NOT NULL,
ID INT(16) NOT NULL,
FOREIGN KEY(ID) REFERENCES Program(ID) 
);

CREATE TABLE Courses(
ID VARCHAR(8) NOT NULL PRIMARY KEY,
CName CHAR(64) NOT NULL,
Faculties_ID VARCHAR(8) NOT NULL,
ID VARCHAR(16) NOT NULL,
FOREIGN KEY(Faculties_ID) REFERENCES Faculties(ID), 
FOREIGN KEY(ID) REFERENCES Program(ID) 
);

CREATE TABLE Student(
StudentID VARCHAR(16) NOT NULL AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR (32) NOT NULL,
LastName VARCHAR(16) NOT NULL,
Program_ID INT(16) NOT NULL,
Courses_ID VARCHAR(8) NOT NULL,
FOREIGN KEY(Program_ID) REFERENCES Program(ID), 
FOREIGN KEY(Courses_ID) REFERENCES Courses(ID)
);

CREATE TABLE Faculties(
ID VARCHAR(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(32) NOT NULL,
LastName VARCHAR(16) NOT NULL,
FacultRank CHAR(32) NOT NULL,
University_ID INT(16) NOT NULL,
School_ID INT(16) NOT NULL,
Courses_ID VARCHAR(8) NOT NULL,
FOREIGN KEY(University_ID) REFERENCES University(ID), 
FOREIGN KEY(School_ID) REFERENCES School(ID), 
FOREIGN KEY(Courses_ID) REFERENCES Courses(ID)
);
