-- Створення бази даних
--CREATE DATABASE student_grades

-- Створення таблиці "student_grades"
-- CREATE TABLE student_grades (
--     student_id SERIAL PRIMARY KEY,
--     full_name VARCHAR(100),
--     city VARCHAR(50),
--     country VARCHAR(50),
--     date_of_birth DATE,
--     email VARCHAR(100),
--     phone_number VARCHAR(20),
--     group_name VARCHAR(50),
--     average_grade FLOAT,
--     min_subject_name VARCHAR(50),
--     min_subject_grade FLOAT,
--     max_subject_name VARCHAR(50),
--     max_subject_grade FLOAT
-- )

--Показати ПІБ усіх студентів з мінімальною 
--оцінкою у вказаному діапазоні (припустимо, від 60 до 80)
-- SELECT full_name 
-- FROM student_grades 
-- WHERE min_subject_grade BETWEEN 60 AND 80

-- --Показати інформацію про студентів, яким виповнилося 20 років
-- SELECT * 
-- FROM student_grades 
-- WHERE DATE_PART('year', AGE(date_of_birth)) = 20

--Показати інформацію про студентів з віком, у вказаному діапазоні
-- SELECT * 
-- FROM student_grades 
-- WHERE DATE_PART('year', AGE(date_of_birth)) BETWEEN 18 AND 22

--Показати інформацію про студентів із конкретним ім’ям
-- SELECT * 
-- FROM student_grades 
-- WHERE full_name LIKE 'Борис%'

-- Показати інформацію про студентів, 
-- в номері телефону яких є три сімки
-- SELECT * 
-- FROM student_grades 
-- WHERE phone_number LIKE '%777%'

-- показати електронні адреси студентів, 
-- що починаються з конкретної літери
-- SELECT email 
-- FROM student_grades 
-- WHERE email LIKE 'a%'

--завдання2
--Показати мінімальну середню оцінку по всіх студентах
-- SELECT MIN(average_grade) AS min_average_grade 
-- FROM student_grades

--Показати максимальну середню оцінку по всіх студентах
-- SELECT MAX(average_grade) AS max_average_grade 
-- FROM student_grades

--Показати статистику міст
-- SELECT city, COUNT(*) AS student_count 
-- FROM student_grades 
-- GROUP BY city

--Показати статистику студентів
-- SELECT country, COUNT(*) AS student_count 
-- FROM student_grades 
-- GROUP BY country

--Показати кількість студентів з мінімальною 
--середньою оцінкою з математики
-- SELECT COUNT(*) AS student_count 
-- FROM student_grades 
-- WHERE min_subject_name = 'Математика'

--Показати кількість студентів з максимальною 
--середньою оцінкою з математики
-- SELECT COUNT(*) AS student_count 
-- FROM student_grades 
-- WHERE max_subject_name = 'Математика'

--Показати кількість студентів у кожній групі
-- SELECT group_name, COUNT(*) AS student_count 
-- FROM student_grades 
-- GROUP BY group_name

--Показати середню оцінку групи
-- SELECT group_name, AVG(average_grade) AS avg_group_grade 
-- FROM student_grades 
-- GROUP BY group_name