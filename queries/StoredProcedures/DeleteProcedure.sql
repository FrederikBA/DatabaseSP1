CREATE PROCEDURE DeleteBooksAndBookLoans
    @BookIdsToDelete VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Delete the corresponding book loans first
        DELETE FROM BookLoan
        WHERE Book_id IN (SELECT value FROM STRING_SPLIT(@BookIdsToDelete, ','));

        -- Delete the specified books
        DELETE FROM Book
        WHERE ID IN (SELECT value FROM STRING_SPLIT(@BookIdsToDelete, ','));

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END
