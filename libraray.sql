-- STEP 1: Create Database
DROP DATABASE IF EXISTS library_db;
CREATE DATABASE library_db;
USE library_db;

-- STEP 2: Create Tables

-- Books table
CREATE TABLE books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    author VARCHAR(50),
    available_copies INT
);

-- Users table
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

-- Issued Books table
CREATE TABLE issued_books (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    book_id INT,
    issue_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- STEP 3: Insert Data

INSERT INTO books (title, author, available_copies) VALUES
('DBMS', 'Korth', 5),
('Python Basics', 'Guido', 3),
('Java Programming', 'James', 4);

INSERT INTO users (name) VALUES
('Savya'),
('Ravi'),
('Anil');

INSERT INTO issued_books (user_id, book_id, issue_date) VALUES
(1, 1, '2026-04-18'),
(2, 2, '2026-04-18'),
(3, 3, '2026-04-18');

-- STEP 4: Basic Queries

-- View all data
SELECT * FROM books;
SELECT * FROM users;
SELECT * FROM issued_books;

-- STEP 5: Main JOIN Query (Important)

SELECT u.name, b.title, i.issue_date
FROM issued_books i
JOIN users u ON i.user_id = u.user_id
JOIN books b ON i.book_id = b.book_id;

-- STEP 6: Additional Queries

-- Total issued books
SELECT COUNT(*) AS total_issued FROM issued_books;

-- Books with low copies
SELECT * FROM books
WHERE available_copies < 5;

-- Most issued books
SELECT b.title, COUNT(i.book_id) AS times_issued
FROM issued_books i
JOIN books b ON i.book_id = b.book_id
GROUP BY b.title;