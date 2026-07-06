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

