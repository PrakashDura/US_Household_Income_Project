#US Household data cleaning

SELECT * 
FROM us_household_income;

SELECT * 
FROM us_household_income_statistics;

ALTER TABLE us_household_income_statistics 
RENAME COLUMN `ï»¿id` TO `id`;

SELECT COUNT(id) 
FROM us_household_income;

SELECT COUNT(id) 
FROM us_household_income_statistics;

#Finding duplicate id us_household_income table
SELECT id, COUNT(id)
FROM us_household_income
GROUP BY id
HAVING COUNT(id)>1
;

#Finding duplicate id us_household_income_statistics table
SELECT id, COUNT(id)
FROM us_household_income_statistics
GROUP BY id
HAVING COUNT(id)>1
;

#USING SUBQUERY TO FIND THE DUPLICATES
SELECT *
FROM(
SELECT row_id,
      id,
	  ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) AS row_num
	  FROM us_household_income) AS duplicates
	  WHERE row_num > 1
      ;
      
#DELETTING THE DUPLICATES
DELETE FROM us_household_income
WHERE row_id IN(
   SELECT row_id
   FROM(
      SELECT row_id,
      id,
	  ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) as row_num
	  FROM us_household_income) as duplicates
	  WHERE row_num > 1);

#Finding mistake in state name
SELECT DISTINCT State_Name
FROM us_household_income
ORDER BY 1
;

#Updating the name
UPDATE us_household_income
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';

UPDATE us_household_income
SET State_Name = 'Alabama'
WHERE State_Name = 'alabama';

#Finding mistake in state abbreviation
SELECT DISTINCT State_ab
FROM us_household_income
ORDER BY 1
;

#Finding empty value
SELECT *
FROM us_household_income
WHERE County = 'Autauga County'
ORDER BY 1
;

#updating the empty space with correct place
UPDATE us_household_income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont'
;

SELECT Type, COUNT(Type)
FROM us_household_income
GROUP BY Type;

#Updated duplicate value in type
UPDATE us_household_income
SET Type= 'Borough'
WHERE Type = 'Boroughs';

SELECT ALand, AWater
FROM us_household_income
WHERE (ALand = 0 OR ALand = '' OR ALand IS NULL)
;
