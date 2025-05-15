CREATE DATABASE guestbook;

USE guestbook;

CREATE TABLE entries (
  guestName VARCHAR(255),
  content VARCHAR(255),
  entryID INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(entryID)
);

INSERT INTO entries (guestName, content) VALUES ("first guest", "I got here!");
INSERT INTO entries (guestName, content) VALUES ("second guest", "Me too!");

SELECT * FROM entries;