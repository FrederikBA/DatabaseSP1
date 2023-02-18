CREATE PROCEDURE AddBooks
    @BooksToAdd AS dbo.BookListType READONLY
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;
        
        INSERT INTO Book (ID, Title, Author, ISBN, Publisher, Publication_date, Genre, Number_of_pages, Availability)
        SELECT ID, Title, Author, ISBN, Publisher, Publication_date, Genre, Number_of_pages, Availability
        FROM @BooksToAdd;
        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END