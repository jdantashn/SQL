--Total number of tests  
SELECT COUNT(*)
FROM Test

--List of score, specifying for each the name and first name of the student who obtained it 
SELECT	Notation.score,
		Student.name,
		Student.firstname
FROM Notation
INNER JOIN Student ON Student.numstud = Notation.numstud

--List of score, specifying for each the name and first name of the student who obtained 
--it and the wording of the matter concerned
SELECT	Notation.score,
		Student.name,
		Student.firstname,
		Matter.wording
FROM Notation
INNER JOIN Student ON Student.numstud = Notation.numstud
INNER JOIN Test ON Test.numtest = Notation.numtest
INNER JOIN Matter ON Matter.codemat = Test.codemat


--List of score greater than or equal to 10
SELECT *
FROM Notation
WHERE Notation.score >= 10

--Last name and first name of the students who obtained at least a score equal to 20 

SELECT Student.name,
		Student.firstname
FROM Notation
INNER JOIN Student ON Student.numstud = Notation.numstud
WHERE Notation.score >= 20

--Average scores for each student (indicate name and first name)

SELECT	AVG(Notation.score) AS AverageScore,
		Student.name,
		Student.firstname
FROM Student
INNER JOIN Notation ON Notation.numstud = Student.numstud
GROUP BY Student.name,Student.firstname

--List of tests whose date is between January 1 and June 30, 2014
SELECT *
FROM Test
WHERE test.testdate BETWEEN '2014-01-01' AND '2014-06-30';

--List of tests (number, date and place) including the matter of the subject
SELECT	test.numtest,
		Test.testdate,
		test.place,
		Matter.wording
FROM Test
INNER JOIN Matter ON Matter.codemat = Test.codemat

--Average scores for each student (indicate name and first name), ranked from best to worst
SELECT AVG(Notation.score) AS AverageNotation,
		Student.name,
		Student.firstname
FROM Notation
INNER JOIN Student ON Student.numstud = Notation.numstud
GROUP BY Student.name,Student.firstname
ORDER BY AVG(Notation.score) DESC

-- Average scores for matter (indicate the wording) comprising more than one test
SELECT AVG(Notation.score) AS AverageNotation,
		Matter.wording
FROM Notation
INNER JOIN Test ON Test.numtest = Notation.numtest
INNER JOIN Matter ON Matter.codemat = Test.codemat
GROUP BY Matter.wording
HAVING COUNT(Test.numtest) > 1

--Average of score obtained in the tests (indicate the number of the test) where less than 6 students were rated
SELECT AVG(Notation.score) AS AverageNotation,
		Test.numtest
FROM Notation
INNER JOIN  Test ON test.numtest = Notation.numtest
GROUP BY Test.numtest
HAVING COUNT(Notation.numstud) < 6

