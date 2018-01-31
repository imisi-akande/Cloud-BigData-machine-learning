CREATE DATABASE IF NOT EXISTS grade_spark;

USE grade_spark;

DROP TABLE IF EXISTS Grade;
DROP TABLE IF EXISTS Rating;
DROP TABLE IF EXISTS Prison;
CREATE TABLE IF NOT EXISTS Prison
(
  id varchar(255),
  states varchar(255),
  prisons varchar(255),
  male int,
  female int,
  total int,
  capacity int,
  rating int,
  PRIMARY KEY (ID)
);

CREATE TABLE  IF NOT EXISTS Rating
(
  personId varchar(255),
  prisonId varchar(255),
  rating int,
  PRIMARY KEY(prisonId, personId),
  FOREIGN KEY (prisonId) 
    REFERENCES Prison(id)
);

CREATE TABLE  IF NOT EXISTS Grade
(
  personId varchar(255),
  prisonId varchar(255),
  prediction float,
  PRIMARY KEY(personId, prisonId),
  FOREIGN KEY (prisonId) 
    REFERENCES Prison(id)
);


