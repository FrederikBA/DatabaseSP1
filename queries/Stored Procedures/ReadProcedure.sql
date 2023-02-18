CREATE PROCEDURE GetBookLoansByISBNs
  @ISBNList VARCHAR(MAX)
AS
BEGIN
  DECLARE @ISBNs TABLE (ISBN VARCHAR(255))
  INSERT INTO @ISBNs (ISBN)
  SELECT value FROM STRING_SPLIT(@ISBNList, ',')

  SELECT
    b.Title AS BookName,
    CONCAT(p.First_name, ' ', p.Last_name) AS LoanerName,
    b.Availability,
    bl.Return_date AS ReturnDate
  FROM
    Book AS b
    JOIN BookLoan AS bl ON b.ID = bl.Book_id
    JOIN Patron AS p ON bl.Patron_id = p.ID
    JOIN @ISBNs AS i ON b.ISBN = i.ISBN
  WHERE
    b.ISBN IN (SELECT ISBN FROM @ISBNs)

  UNION ALL

  SELECT
    b.Title AS BookName,
    '' AS LoanerName,
    b.Availability,
    '' AS ReturnDate
  FROM
    Book AS b
    LEFT JOIN BookLoan AS bl ON b.ID = bl.Book_id
  WHERE
    b.ISBN IN (SELECT ISBN FROM @ISBNs)
    AND b.Availability = 1
    AND bl.Book_id IS NULL
END
