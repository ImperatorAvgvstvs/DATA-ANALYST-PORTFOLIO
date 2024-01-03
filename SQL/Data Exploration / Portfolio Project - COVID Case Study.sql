-- selecting the two tables of data that I am going to start with 

SELECT *
FROM
	CovidDeaths
WHERE
	continent is not NULL
ORDER BY
	continent, location
	
SELECT *
FROM
	CovidVaccinations
WHERE
	continent is not NULL
ORDER BY
	continent, location
	
-- 1) What coutnry has reported the highest death count
-- calculated using the max death count 

SELECT
	location,
	max(total_deaths) AS TotalDeathCount
FROM
	CovidDeaths
WHERE
	continent is not NULL
GROUP BY
	location
ORDER BY
	TotalDeathCount DESC
	
-- 2) What continent has the highest death count?
-- calculated using the the max death count. continent wide counts are registered in the location field, income areas have also been filtered out 

SELECT
	location,
	MAX(total_deaths) as TotalDeathCount
FROM
	CovidDeaths
WHERE
	continent is NULL and location not like '%income%'
GROUP BY 
	location
ORDER BY 
	TotalDeathCount DESC
	
-- 3) What is the likelyhood of you dying if you contract COVID in a certain country on any given day?
-- Calculated as a death rate with (deaths/cases) * 100

SELECT
	location,
	Date,
	total_cases,
	total_deaths,
	(total_deaths/total_cases)*100 AS  DeathPercentage
FROM
	CovidDeaths
WHERE
	continent is not NULL
ORDER BY 
	location, date
	
-- 4) What is the likelyhood of you being hospitalised if you contract COVID in the United Kingdom each day since reporting started
-- Calculated as a hospitalisation rate with (hosp_patients/ total_cases) * 100, 

SELECT
	location,
	date,
	total_cases,
	hosp_patients,
	(hosp_patients/total_cases)*100 AS HospitalisationRate
FROM
	CovidDeaths
WHERE
	continent is not NULL AND location = 'United Kingdom'
ORDER BY 
	date
	
-- 5) What were the infection rates of any given country as a percentage of their population on any given day?
-- Calculated as an infection rate with (total cases/ population) * 100

SELECT
	location,
	date,
	population,
	(total_cases/population)*100 AS InfectionRate
FROM
	CovidDeaths
WHERE 
	continent is not NULL
ORDER BY 
	location, date
	
-- 6) What was the peak infection rate as a percentage of population for each country and when did it happen?
-- Calulated by finding the max number of reported cases, what that would be as a percetage of the population and then grouping by country 

SELECT
	location,
	date,
	max(total_cases) AS HighestTotalCases,
	max((total_cases/population)*100) AS HighestInfectionRate
FROM
	CovidDeaths
WHERE
	continent is not NULL AND total_cases is not NULL
GROUP BY
	location
ORDER BY 
	HighestInfectionRate DESC
	
-- 7) What is the global death rate?
-- this is calculated using the sum aggregate of the new cases and deaths

SELECT
	location,
	sum(new_cases) as TotalCases,
	sum(new_deaths) as TotalDeaths,
	(sum(new_deaths)/sum(new_cases))*100 as TotalDeathRate
FROM
	CovidDeaths
WHERE
	location = 'World'
	
-- 8)  When did the UK start reporting vaccinations, how many new vaccinations were then subsequently adminsitered each day and what was the rolling count?
-- This will use an inner join on both tables and the window function OVER to display a rolling count 

SELECT 
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations,
	sum(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingVaccinationCount
FROM
	CovidDeaths as dea
JOIN
	CovidVaccinations as vac 
ON
	dea.location = vac.location
	AND
	dea.date = vac.date
WHERE
	dea.continent is not NULL
	AND
	dea.location = 'United Kingdom'
	AND
	vac.new_vaccinations is not NULL
ORDER BY
	dea.continent and dea.date
	
-- 9) Add to the table above what the roling vaccinated count is as a percentage of the population
-- This will be done using a CTE as adding this additional new field would require running an arithmetic fuction off of an existing aggregate function which would produce an error, the CTE eliminates this.

WITH RollingVac AS
(
SELECT 
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	vac.new_vaccinations,
	sum(vac.new_vaccinations) OVER (PARTITION BY dea.location ORDER BY dea.location, dea.date) AS RollingVaccinationCount
FROM
	CovidDeaths as dea
JOIN
	CovidVaccinations as vac 
ON
	dea.location = vac.location
	AND
	dea.date = vac.date
WHERE
	dea.continent is not NULL
	AND
	dea.location = 'United Kingdom'
	AND
	vac.new_vaccinations is not NULL
)
SELECT *,
	(RollingVaccinationCount/population)*100 AS RollingVaccinationAsPercentagePopulation
FROM
	RollingVac
	

-- 10) Creating a view to store  the Hospitalisation Rate for the UK
-- leveraging the create view function

Create VIEW UKHospitalisationRate as
SELECT
	location,
	date,
	total_cases,
	hosp_patients,
	(hosp_patients/total_cases)*100 AS HospitalisationRate
FROM
	CovidDeaths
WHERE
	continent is not NULL AND location = 'United Kingdom'
ORDER BY 
	date
