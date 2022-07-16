USE Library

--1. Endeavour to add a new reader with incorrect email format
SELECT *
FROM Readers;

--INSERT INTO Readers 
--VALUES 
--('Иван', 'Иванов', '0000000000', 'София', 'улица Солунска 1', '+359 880000000', 'ii@abv', '2022-05-14', '2023-05-14');

SELECT * 
FROM Readers;

--2. Endeavour to add a new reader with a membership ending before joined 
SELECT * 
FROM Readers;

--INSERT INTO Readers 
--VALUES 
--('Иван', 'Иванов', 0000000000, 'София', 'улица Солунска 1', '+359 880000000', 'ii@abv.bg', '2022-05-14', '2021-05-14');

SELECT * 
FROM Readers;

--3. Endeavour to add a new employee with an already existing citizenship number 
SELECT *
FROM Employees;

--INSERT INTO Employees
--VALUES 
--(1, 'Георги', 'Христов', '7916352443', 'София', 'улица Витоша 6', '+359 880000000', 'gh3@gmail.com', 'DK52929452512808362866');

SELECT *
FROM Employees;

--4. Endeavour to add a book with an author who is not in Authors
SELECT *
FROM Books;

--INSERT INTO Books
--VALUES 
--('Джейн Еър', 'Шарлот Бронте', 1, 'BG', 'Роман', '1847-10-16', '9789542618041');

SELECT *
FROM Books;

--5. Endeavour to add a book copy without giving BranchID 
SELECT *
FROM BookCopies;

--INSERT INTO BookCopies(ID, BookID, Condition)
--VALUES 
--(NEWID(), 18, 'Отлично');

SELECT *
FROM BookCopies;

--6. Demonstrate adding a new constraint
ALTER TABLE Languages
ADD CONSTRAINT ck_lg_code_length
CHECK(LEN(Languages.Code) = 2);

SELECT *
FROM Languages;

--INSERT INTO Languages
--VALUES
--('D', 'Немски');

SELECT *
FROM Languages;

ALTER TABLE Languages
DROP CONSTRAINT ck_lg_code_length;
