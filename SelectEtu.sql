--List of all students
SELECT *
FROM Student

--List of all students, sorted in reverse alphabetical order
SELECT * 
FROM Student
ORDER BY name DESC

--Last name and first name of students domiciled in Lyon
SELECT Student.name,
		Student.firstname
FROM Student
WHERE Student.city = 'Lyon'

--Last name, first name and city of students whose city contains the string « LL »
SELECT	Student.name,
		Student.firstname,
		Student.city
FROM Student
WHERE Student.city LIKE '%ll%'

--First name of students with Dupont, Durand or Martin names

SELECT Student.firstname
FROM Student
WHERE	Student.name LIKE '%Dupont%' OR
		Student.name LIKE '%Durand%' OR
		Student.name LIKE '%Martin%'