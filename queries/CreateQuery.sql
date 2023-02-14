CREATE DATABASE Library;

USE Library;

CREATE TABLE Book (
    ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    ISBN VARCHAR(13),
    Publisher VARCHAR(255),
    Publication_Date DATE,
    Genre VARCHAR(255),
    Number_of_Pages INT,
    Availability BIT
);

CREATE TABLE Magazine (
    ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Publisher VARCHAR(255),
    Publication_Date DATE,
    Genre VARCHAR(255),
    Number_of_Pages INT,
    Availability BIT
);

CREATE TABLE Patron (
    ID INT PRIMARY KEY,
    First_Name VARCHAR(255),
    Last_Name VARCHAR(255),
    Email VARCHAR(255),
    Phone_Number VARCHAR(20),
    Address VARCHAR(255),
    Date_of_Birth DATE
);

CREATE TABLE Loan (
    ID INT PRIMARY KEY,
    Patron_ID INT,
    Book_Magazine_ID INT,
    Loan_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Patron_ID) REFERENCES Patron(ID),
    FOREIGN KEY (Book_Magazine_ID) REFERENCES 
    (SELECT ID FROM Book UNION ALL SELECT ID FROM Magazine) AS BM(ID)
);
