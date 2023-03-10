CREATE PROCEDURE sp_UpdateBooks
    @BooksToUpdate VARCHAR(MAX),
    @Title VARCHAR(50)
AS
BEGIN TRY

BEGIN TRAN

UPDATE Book
SET Book.Title = @Title
WHERE ID IN (SELECT value
FROM STRING_SPLIT(@BooksToUpdate, ','));

COMMIT TRAN

END TRY

BEGIN CATCH

ROLLBACK TRAN

END CATCH
GO

