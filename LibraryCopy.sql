--DROP DATABASE dbBookLibrary
GO
CREATE DATABASE dbBookLibrary
GO
USE dbBookLibrary
GO
CREATE TABLE BORROWER 
(CardNo varchar(15),
Name varchar(150),
Address varchar(150),
Phone varchar(150),
)
GO
SELECT * 
FROM BORROWER
--Above is the database & borrower table
CREATE TABLE LIBRARY_BRANCH
(Branchid int, 
BranchName varchar(150),
Address varchar(50),
)
GO
SELECT *
FROM LIBRARY_BRANCH
--Above is the Library_branch 
CREATE TABLE PUBLISHER
(Name varchar(150),
Address varchar(150),
Phone varchar(15),
)
GO
SELECT*
FROM PUBLISHER
--Above is the Publisher table
CREATE TABLE BOOK
(Bookid int,
Title varchar(150),
PublisherName varchar(150),
)
GO
SELECT*
FROM BOOK
--Above is the Book table
CREATE TABLE BOOK_AUTHORS
(Bookid int,
AuthorName varchar (150),
)
GO
SELECT*
FROM BOOK_AUTHORS
--Above is the book_authors table
CREATE TABLE BOOK_LOANS
(Bookid int,
Branchid int,
CardNo varchar (30),
DateOut varchar (30),
DueDate varchar (30),
)
GO
SELECT*
FROM BOOK_LOANS
--Above is the book loan table 
create table BOOK_COPIES (
	Bookid INT,
	No_Of_Copies INT,
	Branchid INT
)--Above is the Book copies table 

--Everything Below is the Data to be added to each table. 

GO
USE dbBookLibrary

SELECT *
FROM BOOK

INSERT INTO BOOK (Bookid, Title, PublisherName)
VALUES
(1, 'The Last Tribe', 'Picador USA'),
(2, 'The Shining', 'Anchor'),
(3, 'The Universe Next Door', 'IVP Academic'),
(4, 'The Lion,The Witch and the Wardrobe', 'Harper Collins'),
(5, 'A Grief Observed', 'Haper Collins'),
(6, 'The Book With No Pictures', 'Dial Books'),
(7, 'Getting away with Murder', 'Dial Books'),
(8, 'Dragons Love Tacos', 'Dial Books'),
(9, 'Snowman At Night', 'Dial Books'),
(10, 'The Divine Conspiracy', 'Harper Collins'), 
(11, 'The Reason For God', 'Penguin Books'),
(12, 'Christian Apologetics', 'Baker Academic'),
(13, 'Switch On Your Brain', 'Baker Academic'),
(14, 'IF', 'Baker Academic'),
(15, 'Grieving With Hope', 'Baker Academic'),
(16, 'On Guard', 'David C. Cook'),
(17, 'Brave Is the New Beautiful', 'David C. Cook'),
(18, 'Unchained', 'David C. Cook'),
(19, 'Reasonable Faith', 'Crossway'),
(20, 'A Peculiar Glory', 'Crossway');

--Table

GO
USE dbBookLibrary

SELECT *
FROM PUBLISHER

INSERT INTO PUBLISHER (Name, Address, Phone)
VALUES
('Picador USA', '175 Fifth Ave, New York, NY 10010', '800-221-7945'),
('Anchor', '1745 Broadway, New York, NY 10019', '212-940-7390'),
('IVP Academic', 'P.O. Box 1400, Downers Grove, IL 60559', '800-843-9487'),
('Harper Collins', '195 Broadway, New York, NY 10007', '800-242-7737'),
('Harper Collins', '195 Broadway, New York, NY 10007', '800-242-7737'),
('Penguin Books', '345 Hudson St, New York, NY 10014', '978-750-8400'),
('Penguin Books', '345 Hudson St, New York, NY 10014', '978-750-8400'),
('Penguin Books', '345 Hudson St, New York, NY 10014', '978-750-8400'),
('Penguin Books', '345 Hudson St, New York, NY 10014', '978-750-8400'),
('Harper Collins', '195 Broadway, New York, NY 10007', '800-242-7737'),
('Penguin Books', '345 Hudson St, New York, NY 10014', '978-750-8400'),
('Baker Publishing Group', '6030 East Fulton Road, Ada, MI 99301', '616-676-9185'),
('Baker Publishing Group', '6030 East Fulton Road, Ada, MI 99301', '616-676-9185'),
('Baker Publishing Group', '6030 East Fulton Road, Ada, MI 99301', '616-676-9185'),
('Baker Publishing Group', '6030 East Fulton Road, Ada, MI 99301', '616-676-9185'),
('David C Cook', '4050 Lee Vence Drive, Colorado Springs, CO 80918', '800-708-5550'),
('David C Cook', '4050 Lee Vence Drive, Colorado Springs, CO 80918', '800-708-5550'),
('David C Cook', '4050 Lee Vence Drive, Colorado Springs, CO 80918', '800-708-5550'),
('Crossway', '1300 Crescent Street, Wheaton, IL 60187', '800-543-1659'),
('Crossway', '1300 Crescent Street, Wheaton, IL 60187', '800-543-1659');

--Table

USE dbBookLibrary
GO
SELECT * 
FROM BOOK_AUTHORS
GO
INSERT INTO BOOK_AUTHORS (Bookid, AuthorName)
VALUES
(1, 'Mark Lee'),
(2, 'Stephen King'),
(3, 'James W. Sire'),
(4, 'C.S. Lewis'),
(5, 'C.S. Lewis'),
(6, 'B.J. Novak'),
(7, 'Chris Crowe'),
(8, 'Adam Rubin'),
(9, 'Caralyn Buehner'),
(10, 'Dallas Willard'),
(11, 'Timothy Keller'),
(12, 'Norman Giesler'),
(13, 'Caroline Leaf'),
(14, 'Mark Batterson'),
(15, 'Samuel J. Hodges IV'),
(16, 'William Lane Craig'), 
(17, 'Lee Wolfe Blum'),
(18, 'Noel Jesse Heikkinen'),
(19, 'William Lane Craig'),
(20, 'John Piper');

--Table

USE dbBookLibrary
GO
SELECT *
FROM LIBRARY_BRANCH
GO
INSERT INTO LIBRARY_BRANCH (Branchid, BranchName, Address)
VALUES
(8675, 'Sharpstown', '8675 Main St, Sharpstown, MN 93004'),
(309, 'Central', '309 Broadway, Central, MN 99001'),
(2468, 'West', '2468 Telegraph Rd, Ventura, MN 93001'),
(3579, 'Olympia', '3579 Thompson Blvd, Olympia, MN 99003');

--Table

USE dbBookLibrary
GO
SELECT *
FROM BOOK_COPIES

insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 5, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 7, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 2, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 2, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 7, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 8, 8675);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 6, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 3, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 3, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 2, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 309);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 2, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 4, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 2, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 4, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 2468);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 2, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 8, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 8, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 7, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 7, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 3, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 2, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 3579);
GO

--Table

USE dbBookLibrary
GO
SELECT *
FROM BOOK_COPIES

insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 5, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 7, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 2, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 2, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 8, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 4, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 6, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 7, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 3, 8675);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 8, 8675);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 6, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 3, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 3, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 2, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 4, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 7, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 5, 309);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 309);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 2, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 8, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 6, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 4, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 3, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 2, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 4, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 7, 2468);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 2468);
GO
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (1, 2, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (2, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (3, 8, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (4, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (5, 8, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (6, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (7, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (8, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (9, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (10, 5, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (11, 7, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (12, 6, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (13, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (14, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (15, 7, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (16, 3, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (17, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (18, 2, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (19, 4, 3579);
insert into BOOK_COPIES (Bookid, No_Of_Copies, Branchid) values (20, 7, 3579);
GO

--Table

USE dbBookLibrary
GO
SELECT *
FROM BORROWER
GO
insert into BORROWER (CardNo, Name, Address, Phone) values ('22499936710', 'Kenneth Richardson', '51 Park Meadow Alley', '52-(678)581-7170');
insert into BORROWER (CardNo, Name, Address, Phone) values ('8986675544', 'Donald Diaz', '6593 Crownhardt Point', '359-(555)503-7184');
insert into BORROWER (CardNo, Name, Address, Phone) values ('2247280188', 'Robin Warren', '0285 Dorton Way', '86-(198)119-1126');
insert into BORROWER (CardNo, Name, Address, Phone) values ('7375553343', 'Jessica Boyd', '36859 Jana Alley', '63-(411)111-1383');
insert into BORROWER (CardNo, Name, Address, Phone) values ('9684102844', 'Amanda Stevens', '65349 Oriole Terrace', '48-(411)540-8029');
insert into BORROWER (CardNo, Name, Address, Phone) values ('92656660310', 'Brandon Morgan', '19 Raven Junction', '62-(544)533-7352');
insert into BORROWER (CardNo, Name, Address, Phone) values ('0514484403', 'Doris Hicks', '0 Bultman Trail', '351-(311)432-5486');
insert into BORROWER (CardNo, Name, Address, Phone) values ('3352434247', 'Nicole Fields', '92 Lyons Center', '55-(799)679-1438');

--Table

USE dbBookLibrary
GO
SELECT *
FROM BOOK_LOANS
GO
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (1, 8675, '22499936710', '4/15/2017', '5/11/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (2, 8675, '22499936710', '4/1/2017', '5/3/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (3, 8675, '22499936710', '4/11/2017', '5/12/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (4, 8675, '22499936710', '3/26/2017', '5/24/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (5, 8675, '22499936710', '4/21/2017', '4/25/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (6, 8675, '22499936710', '4/2/2017', '5/8/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (7, 8675, '22499936710', '4/19/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (8, 8675, '22499936710', '4/19/2017', '5/16/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (9, 8675, '22499936710', '4/15/2017', '5/3/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (10, 8675, '22499936710', '4/9/2017', '5/18/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (11, 8675, '8986675544', '3/31/2017', '4/25/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (12, 8675, '8986675544', '4/8/2017', '4/30/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (13, 8675, '8986675544', '4/9/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (14, 8675, '8986675544', '4/13/2017', '5/20/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (15, 8675, '8986675544', '4/15/2017', '5/8/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (16, 8675, '8986675544', '3/26/2017', '5/13/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (17, 8675, '8986675544', '4/7/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (18, 8675, '8986675544', '4/3/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (19, 8675, '8986675544', '4/22/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (20, 8675, '8986675544', '4/17/2017', '5/20/2017');
GO
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (1, 309, '2247280188', '4/10/2017', '4/25/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (2, 309, '2247280188', '4/20/2017', '5/21/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (3, 309, '2247280188', '4/3/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (4, 309, '2247280188', '4/16/2017', '5/20/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (5, 309, '2247280188', '3/31/2017', '5/5/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (6, 309, '2247280188', '4/18/2017', '5/15/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (7, 309, '2247280188', '4/14/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (8, 309, '2247280188', '4/17/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (9, 309, '2247280188', '4/15/2017', '5/7/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (10, 309, '2247280188', '4/8/2017', '4/28/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (11, 309, '7375553343', '4/11/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (12, 309, '7375553343', '4/18/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (13, 309, '7375553343', '4/3/2017', '5/16/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (14, 309, '7375553343', '3/26/2017', '4/26/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (15, 309, '7375553343', '4/21/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (16, 309, '7375553343', '3/25/2017', '5/19/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (17, 309, '7375553343', '4/19/2017', '5/22/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (18, 309, '7375553343', '3/31/2017', '5/16/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (19, 309, '7375553343', '4/19/2017', '4/26/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (20, 309, '7375553343', '4/1/2017', '5/13/2017');
GO
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (1, 2468, '9684102844', '4/15/2017', '5/18/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (2, 2468, '9684102844', '4/8/2017', '5/24/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (3, 2468, '9684102844', '3/30/2017', '4/27/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (4, 2468, '9684102844', '4/11/2017', '5/6/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (5, 2468, '9684102844', '4/7/2017', '5/13/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (6, 2468, '9684102844', '3/28/2017', '5/18/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (7, 2468, '9684102844', '4/1/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (8, 2468, '9684102844', '4/21/2017', '5/21/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (9, 2468, '9684102844', '3/28/2017', '5/12/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (10, 2468, '9684102844', '4/11/2017', '5/23/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (11, 2468, '92656660310', '4/11/2017', '5/11/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (12, 2468, '92656660310', '3/28/2017', '5/9/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (13, 2468, '92656660310', '4/5/2017', '5/11/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (14, 2468, '92656660310', '4/13/2017', '5/17/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (15, 2468, '92656660310', '3/31/2017', '5/3/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (16, 2468, '92656660310', '4/5/2017', '5/21/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (17, 2468, '92656660310', '3/26/2017', '5/7/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (18, 2468, '92656660310', '4/7/2017', '5/10/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (19, 2468, '92656660310', '4/12/2017', '4/30/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (20, 2468, '92656660310', '4/10/2017', '5/6/2017');
GO
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (1, 3579, '0514484403', '4/19/2017', '5/23/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (2, 3579, '0514484403', '3/28/2017', '5/24/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (3, 3579, '0514484403', '4/9/2017', '5/22/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (4, 3579, '0514484403', '4/2/2017', '5/14/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (5, 3579, '0514484403', '4/5/2017', '5/20/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (6, 3579, '0514484403', '4/14/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (7, 3579, '0514484403', '3/25/2017', '4/26/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (8, 3579, '0514484403', '3/25/2017', '4/25/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (9, 3579, '0514484403', '3/29/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (10, 3579, '0514484403', '4/10/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (11, 3579, '3352434247', '4/10/2017', '5/10/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (12, 3579, '3352434247', '4/23/2017', '5/13/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (13, 3579, '3352434247', '4/23/2017', '5/8/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (14, 3579, '3352434247', '4/16/2017', '5/3/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (15, 3579, '3352434247', '4/9/2017', '4/29/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (16, 3579, '3352434247', '4/3/2017', '5/2/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (17, 3579, '3352434247', '3/28/2017', '5/4/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (18, 3579, '3352434247', '4/21/2017', '5/24/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (19, 3579, '3352434247', '4/13/2017', '5/14/2017');
insert into BOOK_LOANS (Bookid, Branchid, CardNo, DateOut, DueDate) values (20, 3579, '3352434247', '3/26/2017', '4/26/2017');
GO

--Table