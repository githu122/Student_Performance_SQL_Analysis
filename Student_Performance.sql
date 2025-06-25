-- Step 1: Create database and use it
CREATE DATABASE student_data;
USE student_data;

-- Step 2: Create table
CREATE TABLE students (
    gender VARCHAR(10),
    race_ethnicity VARCHAR(20),
    parental_education VARCHAR(50),
    lunch VARCHAR(20),
    test_preparation_course VARCHAR(30),
    math_score INT,
    reading_score INT,
    writing_score INT
);

-- Step 3: Preview data
SELECT * FROM students LIMIT 10;

-- Step 4: Average Scores by Gender
SELECT gender,
       AVG(math_score) AS avg_math,
       AVG(reading_score) AS avg_reading,
       AVG(writing_score) AS avg_writing
FROM students
GROUP BY gender;

-- Step 5: Performance by Parental Education
SELECT parental_education,
       AVG(math_score) AS avg_math,
       AVG(reading_score) AS avg_reading,
       AVG(writing_score) AS avg_writing
FROM students
GROUP BY parental_education
ORDER BY avg_math DESC;

-- Step 6: Test Preparation Impact
SELECT test_preparation_course,
       AVG(math_score) AS avg_math,
       AVG(reading_score) AS avg_reading,
       AVG(writing_score) AS avg_writing
FROM students
GROUP BY test_preparation_course;

-- Step 7: Lunch Type vs Scores
SELECT lunch,
       AVG(math_score) AS avg_math,
       AVG(reading_score) AS avg_reading,
       AVG(writing_score) AS avg_writing
FROM students
GROUP BY lunch;

-- Step 8: Top 5 Highest Scoring Students
SELECT *,
       (math_score + reading_score + writing_score) AS total_score
FROM students
ORDER BY total_score DESC
LIMIT 5;

-- Step 9: Race/Ethnicity Group Performance
SELECT race_ethnicity,
       AVG(math_score) AS avg_math,
       AVG(reading_score) AS avg_reading,
       AVG(writing_score) AS avg_writing
FROM students
GROUP BY race_ethnicity
ORDER BY avg_math DESC;

