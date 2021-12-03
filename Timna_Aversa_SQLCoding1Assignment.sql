-- Student name: Timna Costa Aversa
USE grading_system;

-- 1.Display a list of all students with all attributes in the students table.
SELECT * FROM students;

-- 2.Display a list of all students with only the first name, last name, class standing and gpa attributes. 
-- Sort your results by student last name and then first name.
SELECT first_name, last_name, class_standing, cumulative_gpa
	FROM students 
		ORDER BY last_name, first_name;
        
-- 3.Display a list of students with all attributes. Sort your results by major ID, GPA, then last name and first name.
SELECT * FROM students
	ORDER BY major_id, cumulative_gpa, last_name, first_name;
    
-- 4.Display a list of all CSIS classes in the course catalog. Display only the department abbreviation, course number and course name. 
-- Sort your results by the course number in descending order.
SELECT dept_abbrv, course_number, course_name
	FROM course_catalog 
		WHERE dept_abbrv = 'CSIS'
			ORDER BY course_number DESC;
            
-- 5. Use a compound condition to display a list of students who are seniors and whose GPA is greater than or equal to 3.0. 
-- Sort your results by GPA descending, then last name and first name.
SELECT * FROM students
	WHERE class_standing = 'Senior' AND cumulative_gpa >= 3.0
		ORDER BY cumulative_gpa DESC, last_name, first_name;
        
-- 6.Use BETWEEN to display a list of all courses from the catalog whose course number is between 1 and 2000. 
-- Sort your results by the course abbreviation and course number.
SELECT * FROM course_catalog
	WHERE course_number BETWEEN 1 AND 2000
		ORDER BY dept_abbrv, course_number;
        
-- 7.Use LIKE to display a list of all majors that contain the letters 'ology' in their name.
SELECT * FROM majors
	WHERE major_name LIKE '%ology%';
    
-- 8.Use IN to display a list of all courses from the course catalog that are from the departments COMM, FILM and SOC. 
-- Sort your results by the course abbreviation and course number.
SELECT * FROM course_catalog
	WHERE dept_abbrv IN ('COMM', 'FILM', 'SOC');
