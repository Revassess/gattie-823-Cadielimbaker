CREATE DATABASE revassess; 

CREATE TABLE Users (
	Id INTEGER,
	Username VARCHAR(50),
	PASSWORD VARCHAR(50),
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	User_Role_ID INTEGER
);
DROP TABLE IF EXISTS Users;
--USER ROLE id 0 = BASIC_USER, 1= PREMIUM_USER

INSERT INTO Users (Id, Username, PASSWORD, First_Name, Last_Name, User_Role_ID)
VALUES (1, 'Adams', 'melissaadams', 'first', 'last',0
);

--could have put more users

--this is the line that would give the answer
SELECT* FROM Users WHERE User_Role_ID = 0;