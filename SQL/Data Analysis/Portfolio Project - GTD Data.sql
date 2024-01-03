-- Selecting the table of DATA

SELECT *
FROM
	globalterrorismdb_0718dist
WHERE
	eventid is not NULL
Order By
	eventid
	
-- Global Analysis 
	
-- The 10 most dangerous days by fatalities 1970-2017

SELECT
	idate AS 'Date',
	sum(nkill) AS 'TotalKilled'
FROM
	globalterrorismdb_0718dist
WHERE
	idate is not NULL
GROUP BY
	idate
ORDER BY
	nkill DESC
LIMIT
	10

-- Top 10 countrie with the most terrorist attacks 1970-2017

SELECT
	country_txt AS 'Country',
	count(country_txt) AS 'NumberOfAttacks'
FROM
	globalterrorismdb_0718dist
WHERE
	eventid is not NULL
GROUP BY 
	country_txt
ORDER BY
	count(country_txt) DESC
LIMIT
	10
	
-- UK Specific Analysis

-- Total Number of Attempted or Successful Terrorist Attacks in the UK 1970-2017

SELECT
	count(eventid)
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	
-- How many attacks have occured each year 1970-2017

SELECT
	iyear,
	count(iyear) AS 'TotalThatYear'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
GROUP BY 
	iyear
ORDER BY
	iyear

-- Most Prominent Terrorist Groups in the UK 1970-2017
 
 SELECT
	gname AS 'Group',
	count(gname) AS 'NumberOfAttacks'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
GROUP BY 
	gname
ORDER BY
	count(gname) DESC
	
-- Total Fatalities vs Injured in UK per year 1970-2017

SELECT
	iyear AS 'Year',
	sum(nkill) AS 'TotalDeaths',
	sum(nwound) AS 'TotalWounded'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
GROUP BY 
	iyear
ORDER BY
	iyear
	
-- Top 10 cities in the UK with the most terrorist attacks this time period

SELECT
	city AS 'City',
	count(city) AS 'NumberOfAttacks'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	city is not 'Unknown'
GROUP BY 
	city
ORDER BY
	count(city) DESC
LIMIT 
	10
	
--  How many attacks have there been in Londonderry, Belfast and London each year, provide a rolling count for each year

SELECT
	city AS 'City',
	iyear,
	count(city) AS 'NumberOfAttacks',
	sum(count(city)) OVER (PARTITION BY city ORDER BY city, iyear) AS 'RollingAttackCount'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	city = 'Londonderry' OR city = 'Belfast' OR city = 'London'
GROUP BY
	city, iyear
HAVING
	iyear >=1997
ORDER BY
	city ASC
	
-- Frequency of Attack Types comittied in the UK across the last 20 years

SELECT
	attacktype1_txt AS 'AttackType',
	count(attacktype1_txt) AS 'Count'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	attacktype1
ORDER BY
	count(attacktype1_txt) DESC
	
--  Which types of attacks produce the highest death count in the UK in the last 20 years

SELECT
	attacktype1_txt AS 'AttackType',
	sum(nkill) AS 'DeathToll'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	attacktype1_txt
ORDER BY
	sum(nkill) DESC

-- Frequency of Target Types in the uk the last 20 years

SELECT
	targtype1_txt AS 'TargetType',
	count(targtype1_txt) AS 'Count'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	targtype1_txt
ORDER BY 
	count(targtype1_txt) DESC
	
-- Highest and Lowest Fatalities by Target Types in the UK in the last 20 years

SELECT
	targtype1_txt AS 'TargetType',
	max(nkill) AS 'HighestFatalities',
	min(nkill) AS 'LowestFatalities'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	targtype1_txt
ORDER BY
	targtype1_txt
	
-- Frequency of Weapon Type used in Terroirst Attacks in the UK the last 20 years

SELECT
	weaptype1_txt AS 'WeaponType',
	count(weaptype1_txt) AS 'Count'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	weaptype1_txt
ORDER BY 
	count(weaptype1_txt) DESC
	
-- Average Fatality by Weapon type in the last 20 years

SELECT
	weaptype1_txt AS 'WeaponType',
	avg(nkill) AS 'Average Fatalities'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
GROUP BY
	weaptype1_txt
ORDER BY 
	avg(nkill) DESC
	
-- What proportion of Terrorist Attacks have been successful in the UK in the last 20 Years

SELECT
	success AS 'Success',
	count(success) AS 'NumberOfAttacks'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
	AND
	idate BETWEEN '1997-01-01' AND '2017-12-31'
	AND
	success is not NULL
GROUP BY 
	success
ORDER BY 
	count(success) DESC


-- What were the 10 Deadliest Attacks in this period in the UK 1970-2017

SELECT
	idate AS 'Date',
	city AS 'City',
	attacktype1_txt AS 'AttackType',
	weapsubtype1_txt AS 'Weapon',
	nkill AS 'Fatalities',
	nwound AS 'Wounded',
	summary AS 'Summary'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
ORDER BY 
	nkill DESC
LIMIT
	10

-- Creating a view for the above

CREATE VIEW MostDeadlyAttacksToDate AS 
SELECT
	idate AS 'Date',
	city AS 'City',
	attacktype1_txt AS 'AttackType',
	weapsubtype1_txt AS 'Weapon',
	nkill AS 'Fatalities',
	nwound AS 'Wounded',
	summary AS 'Summary'
FROM
	globalterrorismdb_0718dist
WHERE
	country_txt is 'United Kingdom'
ORDER BY 
	nkill DESC
LIMIT
	10
	