/* Selects */
SELECT * FROM Book;
SELECT * FROM Magazine;
SELECT * FROM Patron;
SELECT * FROM BookLoan;
SELECT * FROM MagazineLoan;

/* Insert StoredProcedure */
DECLARE @BooksToAdd dbo.BookListType;

INSERT INTO @BooksToAdd (ID, Title, Author, ISBN, Publisher, Publication_date, Genre, Number_of_pages, Availability)
VALUES
(1001, 'The Great Gatsby', 'F. Scott Fitzgerald', '978-0-7432-7356-5', 'Scribner', '2004-09-30', 'Fiction', 180, 5),
(1002, 'To Kill a Mockingbird', 'Harper Lee', '978-0-446-31078-0', 'Grand Central Publishing', '2002-05-23', 'Fiction', 281, 3),
(1003, '1984', 'George Orwell', '978-0-452-28423-4', 'Signet Classic', '1961-08-01', 'Fiction', 328, 7);

EXEC AddBooks @BooksToAdd;

/* Update StoredProcedure */
EXEC sp_UpdateBooks '1,2', 'NewBookTitle';

/* Delete StoredProcedure */
EXEC DeleteBooksAndBookLoans @BookIdsToDelete = '1,2,3';

/* Read StoredProcedure*/
EXEC GetBookLoansByISBNs '294435408-6,549034588-8,798098042-5,324599895-3,395767222-8'