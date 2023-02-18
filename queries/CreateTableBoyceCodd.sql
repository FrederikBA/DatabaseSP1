-- Create Book table
CREATE TABLE Book (
    ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    ISBN VARCHAR(255) NOT NULL,
    Publisher VARCHAR(255) NOT NULL,
    Publication_date DATE NOT NULL,
    Genre VARCHAR(255) NOT NULL,
    Number_of_pages INT NOT NULL,
    Availability INT NOT NULL
);

-- Create Magazine table
CREATE TABLE Magazine (
    ID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Publisher VARCHAR(255) NOT NULL,
    Publication_date DATE NOT NULL,
    Genre VARCHAR(255) NOT NULL,
    Number_of_pages INT NOT NULL,
    Availability INT NOT NULL
);

-- Create Patron table
CREATE TABLE Patron (
    ID INT PRIMARY KEY,
    First_name VARCHAR(255) NOT NULL,
    Last_name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Phone_number VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    Date_of_birth DATE NOT NULL
);

-- Create BookLoan table
CREATE TABLE BookLoan (
    ID INT PRIMARY KEY,
    Patron_id INT NOT NULL,
    Book_id INT NOT NULL,
    Loan_date DATE NOT NULL,
    Due_date DATE NOT NULL,
    Return_date DATE,
    FOREIGN KEY (Patron_id) REFERENCES Patron(ID),
    FOREIGN KEY (Book_id) REFERENCES Book(ID)
);

-- Create MagazineLoan table
CREATE TABLE MagazineLoan (
    ID INT PRIMARY KEY,
    Patron_id INT NOT NULL,
    Magazine_id INT NOT NULL,
    Loan_date DATE NOT NULL,
    Due_date DATE NOT NULL,
    Return_date DATE,
    FOREIGN KEY (Patron_id) REFERENCES Patron(ID),
    FOREIGN KEY (Magazine_id) REFERENCES Magazine(ID)
);
