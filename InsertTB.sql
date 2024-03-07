USE exercises

INSERT INTO Student (name, firstname, dateofbirth, street, postalcod, city)
VALUES 
('Dupont', 'Badjoraz', '2000-01-01', 'Street very nice', '2000-20', 'llaillay'),
('Durand', 'Badjoraz2', '2000-02-02', 'Street very nice2', '2002-22', 'llaillay'),
('Martin', 'Badjoraz3', '2000-03-03', 'Street very nice3', '2002-23', 'llaillay'),
('Jose', 'Badjoraz4', '2000-04-04', 'Street very nice4', '2002-24', 'lleida'),
('Joao', 'Badjoraz5', '2000-05-05', 'Street very nice5', '2002-25', 'Lisboa'),
('Duarte', 'Badjoraz6', '2000-06-06', 'Street very nice6', '2002-26', 'Porto'),
('Afonso', 'Badjoraz7', '2000-06-07', 'Street very nice7', '2002-27', 'Setúbal');

INSERT INTO Matter (codemat, wording, coef)
VALUES 
('Math', 'Mathematics', 1),
('Chem', 'Chemestry', 3),
('Phys', 'Physics', 2);


INSERT INTO Test (codemat, testdate, place)
VALUES	('Math', '2014-01-01', 'place1'),
		('Math', '2014-03-25', 'place2'),
		('Chem', '2014-06-30', 'place3'),
		('Chem', '2015-01-02', 'place 1'),
		('Phys', '2016-02-01', 'place 4')

INSERT INTO Notation (numtest, numstud, score)
VALUES (1 ,1, 20),
		(1,2,20),
		(1,3,15),
		(1,4,14),
		(1,5,15),--5
		(1,6,12),
		(1,7,11),
		(2,1,10),
		(2,2,10),
		(2,3,14),--10
		(2,4,13),
		(2,5,16),
		(2,6,18),
		(2,7,19),
		(3,1,10),--15
		(3,2,12),
		(3,3,13),
		(3,4,14),
		(3,5,9),
		(3,6,5),--20
		(3,7,4),
		(4,1,2),
		(4,2,3),
		(4,3,4),
		(4,4,2),--25
		(4,5,6),
		(4,6,3),
		(4,7,7),
		(5,1,5),
		(5,2,3)--30


