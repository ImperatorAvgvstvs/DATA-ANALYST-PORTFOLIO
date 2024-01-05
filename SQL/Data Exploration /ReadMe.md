# Data Exploration of the COVID-19 Pandemic 

## SQL Skills 

Here I demonstrate proficency in the following SQL skills
- Database Creation
- Field Data Formatting
- Aggregate Functions
- Date Time Functions
- Logical Operators
- Arithmetic Operators
- Window Functions
- Aliases
- Joins
- View Creations
- Nested Queries
- CTEs

## Questions

Here I attempt to answer the following questions from the data set:

1. What coutnry has reported the highest death count?
- The USA with 1144877 deaths
2. What continent has the highest death count?
- Europe with 2085294 deaths
3. What is the likelyhood of you dying if you contract COVID in a certain country on any given day?
- A table was created with a daily count of the death rates for each country on each day as the data was reported
4. What is the likelyhood of you being hospitalised if you contract COVID in the United Kingdom each day since reporting started?
- A table was created with a daily count of the hospitalisation rates for each country on each day as the data was reported
5. What were the infection rates of any given country as a percentage of their population on any given day?
- A table was created with a caluclated percentage of the population of each countries infection rates
6. What was the peak infection rate as a percentage of population for each country and when did it happen?
- A Grouped table with the max infection rates was calculated, proving that the worst day was San Marino with a 75% infection rate on 2023-11-21
7. What is the global death rate?
- 0.9%
8. When did the UK start reporting vaccinations, how many new vaccinations were then subsequently adminsitered each day and what was the rolling count?
- The UK started reporting vaccinations on the 2021-01-11, a subsequent rolling count table was created
9. Add to the table above what the roling vaccinated count is as a percentage of the population
- Percentages were added to the table by calculating the percentage from a CTE used to provide the rollong count table
10. Can you create a view to store the Hospitalisation Rate for the UK?
- Visulaisation created
