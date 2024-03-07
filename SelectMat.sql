-- Wording and coefficient (expressed as a percentage) of each subject
SELECT Matter.wording,
		CONCAT(Matter.coef,'%')
FROM Matter

--Sum of coefficients of all subject
SELECT SUM(matter.coef) AS TotalCoef 
FROM Matter