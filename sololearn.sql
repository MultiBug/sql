CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);



SELECT PersonID, LastName, FirstName, Address, City
FROM Persons;



INSERT INTO Persons
(PersonID, LastName, FirstName, Address, City)
VALUES(0, 'Alan', 'Don', 'Stive', 'Ben');

