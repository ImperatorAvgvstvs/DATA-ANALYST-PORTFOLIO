# Python Projects

Welcome to the Python Section of my Portfolio!

## **Data Visualisation of The Global Terrorism Database (GTD)**

### **Summary**
This Project attempts to answer, with an array of simple and complex data visualisations a variety of question on key statistics from the Global Terrorism Database (GTD), an open-source database recording information on terrorist attacks around the world from 1970 to 2017 (except 1993). The GTD includes systematic data on domestic and international terrorist incidents that have occurred during this time period and now includes more than 180,000 attacks.

Throughout the project I make use of a variety of libararies including Pandas, Cufflinks and Plotly Express within a Jupyter Notebook

### **Data Source**
The database is maintained by researchers at the National Consortium for the Study of Terrorism and Responses to Terrorism (START), headquartered at the University of Maryland. The Global Terrorism Database is funded through START, by the US Department of State (Contract Number: SAQMMA12M1292) and the US Department of Homeland Security Science and Technology Directorate’s Office of University Programs (Award Number 2012-ST-061-CS0001, CSTAB 3.1). The coding decisions and classifications contained in the database are determined independently by START researchers and should not be interpreted as necessarily representing the official views or policies of the United States Government.


### **Data Preperation**

1. Import Libraries for Data Manipulation including; Pandas, NumPy, Plotly, PlotlyExpress, Seaborn, Cufflinks and Matplotlib
2. Import raw data as csv into a Data Frame
3. Preliminary assessment of Data info including shape, size, field headers and types of data included
4. Data Cleaning
  - Renaming field headers for easier reading, consulting the Codebook for any queries on what field headers mean
  - Setting any entries with unknown dates to first of the month
  - Dropping columns that are not going to be analysed to speed up code run time
  - Finding number of null entries per field and replacing numeric values with 0.5 and string values with 'Unknown'

### **Exploratory Data Analysis Findings and Visualisations**
1. ***Identifying the 10 Deadliest Attacks by Death Toll in the database***
- The deadliest attack by death toll took place 12/06/14 in Tikrit, Iraq, a hostage taking that killed 1570 people
- 3 of the deadliest attacks have taken place in Iraq, with 5 in total taking place in the Middle East
- Only 1 of the top 10 took place before 2000
- Explosives and Firearms were the two most commanly used Weapon Types, with 4 and 3 incidents respectively
- 9/11 is treated in this Database as 4 seperate attacks, with 2 of them (the impacts on the North and South Towers) making up the second and third deadliest attacks by death toll. 
2. ***Finding out the 10 countries with the highest count of terrorist attacks***
- Iraq had the highest number of Attacks over this period, with a total count of 24,636
- 6 of these top 10 are countries in Asia
- 3 of these top 10 are countries in South America
- The United Kingdom stands out as the only European country in the top 10
3. ***Identifying the number of Attacks Globally Each Year***
- Global Attack numbers see a signficant spike in the period of 2011 - 2014, reaching a peak in 2014 of 16,903 attacks
- This is preceeded by a shallower increase and short plateau between 2004 - 2010. 
- Global Attack numbers see a gradual rise from a low of 471 attack in 1971 up to an initial peak of 5,071 in 1992 before gradually decreasing again to 1999.
4. ***Identifying the number of wounded vs number killed each year***
- Between 1995 and 2017, the number of people killed only exceeded the number of people wounded in terrorist attacks in a given year in 1997, 2014 and 2015
- The year with the largest difference in the number of wounded vs the number of killed is 2001 where 15,089 more people were wounded than killed
- The number of people killed exceeded the number of people wounded by the greatest margin in 1984 by 5,144
5. ***Identifying the number of Attacks Globally Each Year by Region***
- Since the the year 2004 we see a significant rise in the number of attacks in the regions of South Asia and Middle East & North Africa which correlates to ramp up of the War on Terror
- After the year 2014, attacks in these two regions begin to drop into a downward trend
- The Highest number of attacks of any region at any point in time is 6,939 attacks in the Middle East & North Africa Region in 2014
- Between 1980 and 1990 attacks are most frequent in Central America & Carribean and South America, correlating to the active years of the South and Central American Contras
- Between 1972 and 1979 attacks are most frequent in Western Europe, which can be correlated to the harshest years of the Northern Ireland Troubles
6. ***Identifying the 5 most common Attack Types during Incidents***
- Bombings and explosions make up nearly half of all attacks in the data set at 48.6% with a total count of 88,255
- This is closely followed by Armed Assault making up 23.5% of attacks with a total count of 42,669
- The Data Set is unclear on the Attack Type of 4% of its incidents marked as Unknown
7. ***Creating an animated Map of the World displaying Attacks by City every year over the time period 1970-2017***
- Several significant attacks stand out such as the Gikoro attack which killed 1180 people in 1994 during the Rwanda genocide in an armed assault
- Specific areas of conflict can be monitored over their whole chronological period to observe spikes in certain types of activity such as in Northern Ireland during the Troubles
- Wider regional conflicts can be viewed more broadly in their context by observing the magnitude and frequency of attack types in the build up to the beginning of a conflict in addition to the cool down. This kind of data may be useful in predicting future build up to conflict.
8. ***What Type of Targets are attacked the most***
- Private Citizens and property are by far the most frequently attacked Target Type with 43,511 attacks
- The top 5 most frequently attacked Target Types are significantly more targeted than the rest, for example the 5th most attacked Target Type, Businesses, at 20669 attacks, whereas the 6th most attacked Target Type, Transportation, has only been attacked 6799 times
- Terrorist on Terrorist Attacks number at 3039 attacks
9. ***Ratio of the average number Killed to number Wounded by Target Type***
- The number of people killed on average exceed the average number of people wounded in 7 out of 22 categories. These include Airports & Aircraft, Maratime, Military, NGOs, Terrorist/Non-State Militias, Utilities and "Other" Targets.
- The largest difference in the average number of people Wounded vs Killed are in attacks on transports, where on average 2 people are killed per attack vs 6 people wounded
- Abortion Related Targets and Utilities Targets have some of the lowest averages for both number of people killed and wounded, with 0.04 people killed vs 0.18 people wounded and 0.36 people killed vs 0.29 people wonded repectively.
10. ***Creating a heat density map of deaths against Target Types and Region subplotted against Weapon Type***
- The deadliest attacks appear to happen with Explosives in North Africa and the Middle East targetting Private Citizens and Property killing 30,850
- Deaths from Firearms attacks against Military targets in Central America and the Carribean are also quite high, standing at 18,116
- Biological, Chemical and Radiological attacks appear to be extremely rare against all target types in all regions of the database 
