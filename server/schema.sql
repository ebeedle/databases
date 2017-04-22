CREATE DATABASE chat;

USE chat;

CREATE TABLE Users (

  ID int NOT NULL PRIMARY KEY,
  name VARCHAR(20)
 );

CREATE TABLE Rooms (
  ID int NOT NULL PRIMARY KEY,
  roomName VARCHAR(20)
  );


CREATE TABLE messages (
  ID int NOT NULL PRIMARY KEY,
  created_at datetime,
  usersID int, 
  roomsID int,
  message VARCHAR(30),
  FOREIGN KEY (usersID) REFERENCES Users(ID),
  FOREIGN KEY (roomsID) REFERENCES Rooms(ID)
  /* table that will keep track of each messag's id, time, user, room, and message*/
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

