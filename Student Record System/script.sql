CREATE DATABASE student_db;

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    roll INT UNIQUE NOT NULL,
    department VARCHAR(50),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (name, roll, department, email)
VALUES
('Ladduguddu', 1362, 'CSE', 'rahim101@gmail.com'),
('Rahim Uddin', 1001, 'CSE', 'rahim1001@diu.edu.bd'),
('Karim Khan', 1002, 'EEE', 'karim1002@diu.edu.bd'),
('Nusrat Jahan', 1003, 'CSE', 'nusrat1003@diu.edu.bd'),
('Sakib Hasan', 1004, 'BBA', 'sakib1004@diu.edu.bd'),
('Tania Akter', 1005, 'CSE', 'tania1005@diu.edu.bd'),
('Mehedi Hasan', 1006, 'EEE', 'mehedi1006@diu.edu.bd'),
('Ayesha Rahman', 1007, 'CSE', 'ayesha1007@diu.edu.bd'),
('Tanvir Ahmed', 1008, 'BBA', 'tanvir1008@diu.edu.bd'),
('Rafiq Islam', 1009, 'CSE', 'rafiq1009@diu.edu.bd'),
('Shila Akter', 1010, 'EEE', 'shila1010@diu.edu.bd'),

('Abdul Karim', 1011, 'CSE', 'abdul1011@diu.edu.bd'),
('Jannat Ara', 1012, 'BBA', 'jannat1012@diu.edu.bd'),
('Nayeem Hossain', 1013, 'EEE', 'nayeem1013@diu.edu.bd'),
('Sadia Noor', 1014, 'CSE', 'sadia1014@diu.edu.bd'),
('Rakib Hasan', 1015, 'CSE', 'rakib1015@diu.edu.bd'),
('Farhan Ali', 1016, 'BBA', 'farhan1016@diu.edu.bd'),
('Mim Akter', 1017, 'EEE', 'mim1017@diu.edu.bd'),
('Hasan Mahmud', 1018, 'CSE', 'hasan1018@diu.edu.bd'),
('Ritu Saha', 1019, 'BBA', 'ritu1019@diu.edu.bd'),
('Imran Hossain', 1020, 'EEE', 'imran1020@diu.edu.bd'),

('Nabila Islam', 1021, 'CSE', 'nabila1021@diu.edu.bd'),
('Arif Khan', 1022, 'BBA', 'arif1022@diu.edu.bd'),
('Sumaiya Akter', 1023, 'EEE', 'sumaiya1023@diu.edu.bd'),
('Kamal Uddin', 1024, 'CSE', 'kamal1024@diu.edu.bd'),
('Tahsina Rahman', 1025, 'BBA', 'tahsina1025@diu.edu.bd'),
('Shuvo Das', 1026, 'EEE', 'shuvo1026@diu.edu.bd'),
('Nusrat Akter', 1027, 'CSE', 'nusrat1027@diu.edu.bd'),
('Jahid Hasan', 1028, 'BBA', 'jahid1028@diu.edu.bd'),
('Fariha Islam', 1029, 'EEE', 'fariha1029@diu.edu.bd'),
('Saif Ahmed', 1030, 'CSE', 'saif1030@diu.edu.bd'),

('Rumana Jahan', 1031, 'BBA', 'rumana1031@diu.edu.bd'),
('Shakil Ahmed', 1032, 'EEE', 'shakil1032@diu.edu.bd'),
('Tasnim Khan', 1033, 'CSE', 'tasnim1033@diu.edu.bd'),
('Mahir Islam', 1034, 'BBA', 'mahir1034@diu.edu.bd'),
('Rafi Hasan', 1035, 'EEE', 'rafi1035@diu.edu.bd'),
('Nafisa Noor', 1036, 'CSE', 'nafisa1036@diu.edu.bd'),
('Alamin Hossain', 1037, 'BBA', 'alamin1037@diu.edu.bd'),
('Sajid Khan', 1038, 'EEE', 'sajid1038@diu.edu.bd'),
('Toma Akter', 1039, 'CSE', 'toma1039@diu.edu.bd'),
('Riyad Hossain', 1040, 'BBA', 'riyad1040@diu.edu.bd'),

('Farzana Rahman', 1041, 'EEE', 'farzana1041@diu.edu.bd'),
('Asif Iqbal', 1042, 'CSE', 'asif1042@diu.edu.bd'),
('Mushfiq Hasan', 1043, 'BBA', 'mushfiq1043@diu.edu.bd'),
('Nadia Sultana', 1044, 'EEE', 'nadia1044@diu.edu.bd'),
('Shihab Uddin', 1045, 'CSE', 'shihab1045@diu.edu.bd'),
('Rashid Khan', 1046, 'BBA', 'rashid1046@diu.edu.bd'),
('Sabrina Akter', 1047, 'EEE', 'sabrina1047@diu.edu.bd'),
('Touhid Hasan', 1048, 'CSE', 'touhid1048@diu.edu.bd'),
('Anika Islam', 1049, 'BBA', 'anika1049@diu.edu.bd'),
('Zubair Ahmed', 1050, 'EEE', 'zubair1050@diu.edu.bd');

