# Digital Library Management System (SQL)

## Project Description

This project is a SQL-based Digital Library Management System developed to manage books, users, and book issuing activities. It represents a simplified version of how a real library database works.

The system allows storing book details, maintaining user information, and tracking issued books using structured queries.

---

## Technologies Used

* MySQL
* SQL (DDL, DML, Joins, Aggregate Functions)

---

## Database Design

### Users Table

Stores details of users:

* user_id (Primary Key)
* name
* city

### Books Table

Stores details of books:

* book_id (Primary Key)
* title
* author
* available_copies

### Issued Books Table

Maintains records of issued books:

* issue_id (Primary Key)
* user_id (Foreign Key)
* book_id (Foreign Key)
* issue_date

---

## Features

* Add and manage user records
* Add and manage book records
* Issue books to users
* Track issued books
* Check availability of books
* Perform queries using joins and aggregations

---

## Sample Operations

* Retrieve all books and users
* View issued books along with user details
* Count total number of issued books
* Identify books with low availability

---

## Use Case

This system can be used as a basic model for:

* College library systems
* Small-scale library management
* Learning and practicing SQL concepts

---

## Conclusion

This project demonstrates the use of SQL for designing and managing a relational database system. It covers important concepts such as table creation, relationships using foreign keys, and data retrieval using queries.

---

## Author

Savya Sri
