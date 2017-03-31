USE dbBookLibrary
GO
--How many copies of the book titled The Last Tribe are owned by the library branch whose name is "Shaprstown"?
SELECT BOOK.Bookid, BOOK_COPIES.Branchid, No_Of_Copies, BranchName, Title
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK.bookid=BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid=LIBRARY_BRANCH.Branchid
WHERE BranchName='Sharpstown' AND Title='The Last Tribe'
GO
--Above code is for the first query. 
--How many copies of the book titled The Last Tribe are owned by each library branch?
SELECT BOOK.Bookid, BOOK_COPIES.Branchid, No_Of_Copies, BranchName, Title
FROM BOOK_COPIES
INNER JOIN BOOK ON BOOK.bookid=BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid=LIBRARY_BRANCH.Branchid
WHERE Title='The Last Tribe'
GO
--Above code is for the second query.
--Retrieve the names of all borrowers who do not have ny books checked out.
SELECT Name, BOOK_LOANS.CardNo
FROM BOOK_LOANS
LEFT OUTER JOIN BORROWER ON BORROWER.CardNo=BOOK_LOANS.CardNo
WHERE BORROWER.CardNo is null
--WHERE DueDate IS NULL
--Above is the code for the third query. 
--For Each bok that is loaned out from the "Sharpstown" branch and whose Due Date is today, retrieve the book title, the borrower's name, and the borrower's address. 
SELECT BOOK.Title, BORROWER.Name, BORROWER.Address
FROM BOOK_LOANS
INNER JOIN BORROWER ON BORROWER.CardNo=BOOK_LOANS.CardNo
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.Branchid=BOOK_LOANS.Branchid
INNER JOIN BOOK ON BOOK.Bookid=BOOK_LOANS.Bookid
WHERE DueDate='4/28/2017'
--WHERE Due Date='3/28/2017'
--ABOVE is query number four code.
--For each library branch, retrieve the branch name and the total number of books loaned out from that branch. 
SELECT BranchName, DateOut
FROM BOOK_LOANS
INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.Branchid=BOOK_LOANS.Branchid
SELECT COUNT (*) FROM BOOK_LOANS
INNER JOIN BOOK_COPIES ON BOOK_COPIES.Bookid=BOOK_LOANS.Bookid
--Above is the query code for number 5. 
--Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.
SELECT BORROWER.Name, BORROWER.Address, COUNT (BORROWER.CardNo)
FROM BORROWER
INNER JOIN BOOK_LOANS ON BOOK_LOANS.CardNo=BORROWER.CardNo
GROUP BY  BORROWER.Name, BORROWER.Address, BORROWER.CardNo
HAVING COUNT(BORROWER.CardNo) > 5
--Above is the query question 6
--For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"
SELECT BOOK.Title, BOOK_AUTHORS.AuthorName, BOOK_COPIES.No_Of_Copies
FROM BOOK_AUTHORS
INNER JOIN BOOK ON BOOK_AUTHORS.Bookid=BOOK.Bookid
INNER JOIN BOOK_COPIES ON BOOK.Bookid=BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid=LIBRARY_BRANCH.Branchid
WHERE BranchName='Central' AND BOOK_AUTHORS.AuthorName='Stephen King'
--This code is for query number 7.
--Create a stored procedure that will execute one or more of those queries, based on user choice.  
CREATE PROC SearchCentral @AuthorName VARCHAR(150)
AS
SELECT BOOK.Title, BOOK_AUTHORS.AuthorName, BOOK_COPIES.No_Of_Copies
FROM BOOK_AUTHORS
INNER JOIN BOOK ON BOOK_AUTHORS.Bookid=BOOK.Bookid
INNER JOIN BOOK_COPIES ON BOOK.Bookid=BOOK_COPIES.Bookid
INNER JOIN LIBRARY_BRANCH ON BOOK_COPIES.Branchid=LIBRARY_BRANCH.Branchid
WHERE BranchName='Central' AND BOOK_AUTHORS.AuthorName= @AuthorName

EXEC SearchCentral @AuthorName='Stephen King'
--Create Stored Procedure is above
