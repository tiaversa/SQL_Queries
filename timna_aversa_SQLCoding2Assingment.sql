-- Timna Costa Aversa

-- 1.Use an aggregate function to find how many seniors, whose major is Architecture, and have a cumulative GPA of 4.00?
-- SELECT department_id From majors Where major_name = 'architecture'; Discover the major id
SELECT COUNT(cumulative_gpa) AS num_sen_arq_4gpa FROM students WHERE major_id = 2 AND cumulative_gpa = 4 AND class_standing = 'Senior';

-- 2.Use an aggregate function to find the number of students whose GPA is greater than or equal to 3.50.
SELECT COUNT(cumulative_gpa) AS num_stu_highgpa FROM students WHERE cumulative_gpa >= 3.50;

-- 3.Use an aggregate function to find the average cumulative GPA whose major is Biology.
 -- SELECT department_id From majors Where major_name = 'biology'; Discover the major id
SELECT AVG(cumulative_gpa) AS avg_stu_biology FROM students WHERE major_id = 4;

-- 4.Use an aggregate function and grouping to create a list of every letter grade and how many of each grade 
-- exists in the database. Sort the results by letter grade.
SELECT grade, COUNT(grade) AS num_by_grade FROM registration GROUP BY grade ORDER BY grade;

-- 5.Use an aggregate function and grouping to create a list from the course_catalog table based on the dept_abbrv 
-- that lists each abbrv and how many courses are in each. Sort the results by the dept_abbrv.
SELECT dept_abbrv, COUNT(dept_abbrv) AS num_by_abbrv FROM course_catalog GROUP BY dept_abbrv ORDER BY dept_abbrv;

-- 6.Use grouping and aggregation to create a list of average GPAs for each of the 4 class standings (Freshman, Sophomore, Junior and Senior).
SELECT class_standing, AVG(cumulative_gpa) AS avg_class_gpa FROM students GROUP BY class_standing;

-- 7.Use an aggregate function along with HAVING to generate a list from the registration table that shows 
-- all letter grades that appear more than 25 times in the table.
SELECT grade FROM registration GROUP BY grade HAVING(COUNT(grade)>25) ORDER BY grade;

-- 8.Use DISTINCT to generate a list of distinct catalog_id values in the classes table, and sort your result by catalog_id.
SELECT DISTINCT catalog_id FROM classes ORDER BY catalog_id;