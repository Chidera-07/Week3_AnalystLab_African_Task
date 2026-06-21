---CREATE DATABASE ChinooK;
-- GO
/*USE Chinook;
GO*/

/*SELECT COUNT(*) AS TotalTracks
FROM Track;*/

--SELECT * FROM Track;
--by unitprice desc

/*SELECT *
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE CONSTRAINT_TYPE='PRIMARY KEY';*/

--EXEC sp_help 'customer';

/*SELECT
    OBJECT_NAME(parent_object_id) AS ChildTable,
    OBJECT_NAME(referenced_object_id) AS ParentTable
FROM sys.foreign_keys;*/

/*SELECT COUNT(*) FROM Artist;
SELECT COUNT(*) FROM Album;
SELECT COUNT(*) FROM Customer;
SELECT COUNT(*) FROM Invoice;
SELECT COUNT(*) FROM InvoiceLine;*/


SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country,

    i.InvoiceId,
    i.InvoiceDate,
    i.Total,

    il.InvoiceLineId,
    il.Quantity,
    il.UnitPrice,

    t.TrackId,
    t.Name AS TrackName,
    t.Milliseconds,

    al.Title AS AlbumName,
    ar.Name AS ArtistName,

    g.Name AS Genre,
    mt.Name AS MediaType,

    e.FirstName + ' ' + e.LastName AS SupportRep

FROM Customer c

LEFT JOIN Employee e
    ON c.SupportRepId = e.EmployeeId

LEFT JOIN Invoice i
    ON c.CustomerId = i.CustomerId

LEFT JOIN InvoiceLine il
    ON i.InvoiceId = il.InvoiceId

LEFT JOIN Track t
    ON il.TrackId = t.TrackId

LEFT JOIN Album al
    ON t.AlbumId = al.AlbumId

LEFT JOIN Artist ar
    ON al.ArtistId = ar.ArtistId

LEFT JOIN Genre g
    ON t.GenreId = g.GenreId

LEFT JOIN MediaType mt
    ON t.MediaTypeId = mt.MediaTypeId;





    SELECT al.Title  [Album Name], SUM(il.Quantity*il.UnitPrice) Revenue
        FROM Album al
        JOIN Track tk
        ON al.AlbumId = tk.AlbumId
        JOIN InvoiceLine il
        ON tk.TrackId = il.TrackId
        GROUP BY al.Title   
        ORDER BY Revenue DESC



        SELECT FirstName, LastName
FROM Customer
WHERE CustomerId IN (
    SELECT CustomerId
    FROM Invoice
    GROUP BY CustomerId
    HAVING SUM(Total) > 40
);
