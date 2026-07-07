CREATE DATABASE library_management_system;

CREATE TABLE students
(
    student_id SERIAL PRIMARY KEY,

    full_name VARCHAR(100) NOT NULL,

    roll INTEGER UNIQUE NOT NULL,

    department VARCHAR(50) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    phone VARCHAR(20),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE authors
(
    author_id SERIAL PRIMARY KEY,

    full_name VARCHAR(100) NOT NULL,

    country VARCHAR(50),

    birth_date DATE
);

CREATE TABLE categories
(
    category_id SERIAL PRIMARY KEY,

    category_name VARCHAR(50) UNIQUE NOT NULL
);


CREATE TABLE books
(
    book_id SERIAL PRIMARY KEY,

    title VARCHAR(200) NOT NULL,

    isbn VARCHAR(20) UNIQUE NOT NULL,

    publication_year INTEGER,

    total_copies INTEGER NOT NULL
        CHECK(total_copies>=0),

    available_copies INTEGER NOT NULL
        CHECK(available_copies>=0),

    author_id INTEGER NOT NULL,

    category_id INTEGER NOT NULL,

    CONSTRAINT fk_author

        FOREIGN KEY(author_id)

        REFERENCES authors(author_id)

        ON DELETE RESTRICT

        ON UPDATE CASCADE,

    CONSTRAINT fk_category

        FOREIGN KEY(category_id)

        REFERENCES categories(category_id)

        ON DELETE RESTRICT

        ON UPDATE CASCADE
);

CREATE TABLE borrow_records
(
    borrow_id SERIAL PRIMARY KEY,

    student_id INTEGER NOT NULL,

    book_id INTEGER NOT NULL,

    borrow_date DATE NOT NULL,

    due_date DATE NOT NULL,

    return_date DATE,

    status VARCHAR(20)
    CHECK(status IN ('Borrowed','Returned','Late')),

    CONSTRAINT fk_student

        FOREIGN KEY(student_id)

        REFERENCES students(student_id)

        ON DELETE CASCADE

        ON UPDATE CASCADE,

    CONSTRAINT fk_book

        FOREIGN KEY(book_id)

        REFERENCES books(book_id)

        ON DELETE RESTRICT

        ON UPDATE CASCADE
);



INSERT INTO students (full_name, roll, department, email)
SELECT 
    'Student_' || g,
    1000 + g,
    CASE 
        WHEN g % 3 = 0 THEN 'CSE'
        WHEN g % 3 = 1 THEN 'EEE'
        ELSE 'BBA'
    END,
    'student' || g || '@diu.edu.bd'
FROM generate_series(1,150) g;


INSERT INTO authors (full_name, country, birth_date)
SELECT 
    'Author_' || g,
    CASE 
        WHEN g % 3 = 0 THEN 'Bangladesh'
        WHEN g % 3 = 1 THEN 'India'
        ELSE 'USA'
    END,
    (DATE '1970-01-01' + (g * 365))
FROM generate_series(1,20) g;


INSERT INTO categories (category_name)
SELECT 
    CASE g
        WHEN 1 THEN 'Programming'
        WHEN 2 THEN 'Database'
        WHEN 3 THEN 'Networking'
        WHEN 4 THEN 'AI'
        WHEN 5 THEN 'Data Science'
        WHEN 6 THEN 'Mathematics'
        WHEN 7 THEN 'Physics'
        WHEN 8 THEN 'Security'
        WHEN 9 THEN 'Web Development'
        WHEN 10 THEN 'Mobile Apps'
        WHEN 11 THEN 'Operating Systems'
        WHEN 12 THEN 'Software Engineering'
        WHEN 13 THEN 'Cloud Computing'
        WHEN 14 THEN 'Machine Learning'
        ELSE 'General Knowledge'
    END
FROM generate_series(1,15) g;


INSERT INTO books (title, isbn, publication_year, total_copies, available_copies, author_id, category_id)
SELECT 
    'Book_' || g,
    'ISBN-' || (100000 + g),
    2000 + (g % 25),
    5 + (g % 10),
    5 + (g % 10),
    (g % 20) + 1,
    (g % 15) + 1
FROM generate_series(1,200) g;


INSERT INTO borrow_records (student_id, book_id, borrow_date, due_date, return_date, status)
SELECT 
    (g % 150) + 1,
    (g % 200) + 1,
    CURRENT_DATE - (g % 30),
    CURRENT_DATE + (10 - (g % 5)),
    CASE 
        WHEN g % 3 = 0 THEN CURRENT_DATE
        ELSE NULL
    END,
    CASE 
        WHEN g % 3 = 0 THEN 'Returned'
        WHEN g % 7 = 0 THEN 'Late'
        ELSE 'Borrowed'
    END
FROM generate_series(1,350) g;


SELECT * FROM students;
SELECT full_name, email FROM students;

SELECT * FROM students
WHERE department = 'CSE';

SELECT * FROM students
ORDER BY full_name ASC;

SELECT * FROM students
LIMIT 10;

SELECT * FROM students
WHERE full_name LIKE 'Student_1%';

SELECT * FROM students
WHERE email LIKE '%@diu.edu.bd';

SELECT * FROM students
WHERE roll
BETWEEN 1020 AND 1050;

SELECT * FROM students
WHERE department IN ('CSE','EEE');

SELECT COUNT(*)
FROM students;


SELECT * FROM books;
SELECT * FROM books
WHERE publication_year > 2018;

SELECT * FROM books
ORDER BY publication_year DESC;

SELECT * FROM books
ORDER BY available_copies DESC;

SELECT * FROM books
ORDER BY publication_year DESC
LIMIT 5;

SELECT * FROM books
WHERE title LIKE 'Book_2%';

SELECT * FROM books
WHERE publication_year
BETWEEN 2010 AND 2020;

SELECT SUM(total_copies)
FROM books;

SELECT AVG(total_copies)
FROM books;

SELECT MAX(publication_year)
FROM books;

SELECT MIN(publication_year)
FROM books;





SELECT * FROM borrow_records
WHERE status = 'Borrowed';


SELECT * FROM borrow_records
WHERE status IN ('Borrowed','Late');


SELECT DISTINCT department
FROM students;

SELECT DISTINCT country
FROM authors;


SELECT department,
COUNT(*)
FROM students
GROUP BY department;


SELECT status,
COUNT(*)
FROM borrow_records
GROUP BY status;


SELECT publication_year,
COUNT(*)
FROM books
GROUP BY publication_year
ORDER BY publication_year;


SELECT department,
COUNT(*)
FROM students
GROUP BY department
HAVING COUNT(*) > 30;


SELECT publication_year,
COUNT(*)
FROM books
GROUP BY publication_year
HAVING COUNT(*) > 5;


SELECT status,
COUNT(*)
FROM borrow_records
GROUP BY status
HAVING COUNT(*) > 50;



