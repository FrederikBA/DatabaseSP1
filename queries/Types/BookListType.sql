CREATE TYPE dbo.BookListType AS TABLE (
    ID VARCHAR(255) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    ISBN VARCHAR(255) NOT NULL,
    Publisher VARCHAR(255) NOT NULL,
    Publication_date DATE NOT NULL,
    Genre VARCHAR(255) NOT NULL,
    Number_of_pages INT NOT NULL,
    Availability INT NOT NULL
);