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

SELECT current_database();


