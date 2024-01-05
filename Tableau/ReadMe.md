# Tableau Project

Welcome to the Tableau section of the Data Portfolio, here you can find the following project:

## Data Visualisation of Crime Statistics in London

### **Summary**
This Project aims to create a dashboard that displays a number of key data visualisations regarding the crime statistics in London in the Period of April 2023 - November 2023. The Met Police already publishes a dashboard which details aspects of crime in london, but is aimed for public use. Here I seek to create a modified version of this which would be more orientated towards interanl use and includes visualisations of distribution of offences by, Borough, Type and Month. Specifically with regards to charting total crime in London over time, I have sought to make this visual more useful by incorporating a Process Behaviour Chart with a set of Upper and Lower Limits with an adjustable standard deviation filter so statistically significant months could be filtered at user discretion. Moreover, this dashboard incoporates Predictive Data Analytics in order to Forecast upcoming crime levels over the coming months based on historic data.

### **Data Source**
The data used is was extracted from the publically available source from the *MPS Crime Dashboard* on the MPS website, along with the related data definitions. Please note that, this data sets is updated monthly at the on the 6th of the month. Data runs until the end of the month prior.

Specifically, the data set used was the **Total Notifiable Offence** (TNO) data following the Home Office counting rules for recorded crime (https://www.gov.uk/government/publications/counting-rules-for-recorded-crime )

Also used in the creation of this data was a .shp file provided by the Great London Authority on the London Data Store, which provided the Statistical GIS Boundary Files for London Borough visualisation in Tableau.

### **Process and Insights**

1.	Import the raw data in the form of the downloaded .csv file into Excel Power Query
2.	Clean Data in Power Query to make it useable by Tableau by performing the following steps
3.	Create 3 new queries for some prelimenary data exploration that will inform the structure of the dashboard, calculating the sum of offences when grouped by:
- Promoting the first line of data to the Headers
- Setting the Month_Year field as Date Data Type in order to perform any potentuial date related queries
- Filtering the Area Type field to only show Boroughs of London and remove any Safer Neighbourhood Teams in order to not disrupt the dataset
- Filtering the Measure field to only show offences as this is what is being visualised
- Finding and replacing all ampersands (&) in the Bourough_SNT field to ensure a clean join with the GIS Boundary File for London Borough visualisation in Tableau
4.	Duplicate the raw queries and perform the folliwing individual queries to gain further insights
- Sum of Offences Grouped by Borough
- Sum of Offences Grouped by Type
- Sum of Offences Grouped by Month
5.	Load these querties (optionally visualise) and save this file as a .xlsx file for later use
6.	Open Tableau and Connect the new data from the excel file and the aforementioned GIS Boundary file and establish a relationship between the .shp file and the cleaned data query from the excel file joining on the Name field to the Borough SNT field
7.	Build the following views for a map graph of Offences by Borough, a bar chart for Offences by Type, a line chart for Offences by Month and a line chart that plots the Total Offences on each month and forecasts a future plot for upcoming crime levels.
- Bar Chart plotting Sum of Offences by Offence Type
- Bar Chart of the Sum of Offences by Borough
- Line Process Behaviour Chart of the Sum of Offences by Month as a Process Behaviour Chart, with Average, Upper and Lower Bound Lines which can be adjusted by a drop down filter which changes the Desired Standard Deviation of the Bound Lines according to stakeholder needs
- Line Forecast Chart of the Sum of Offences by Month
8.	Assemble as a Dashboard and Publish

### **Insights**

The Following Insights were gleaned from the dashboard:

*Which Bourough experienced the most crime?*

Westminster stood out with the highest levels, at 64,273 offences reported, followed by Newham at 29,763 offences and Camden at 29,399 offences

*Which Month saw the highest number of offences?*

October saw the highest levels of crime with 91,604 offences reported

*Which Type of Offence was the most prominent?*

The most prominent offence seemed to by Theft with 191,058 offences reported across all boroughs in this time period

*What predictions can we make regarding the future crime levels in London in the upcoming months?*

The forecasting graph here is predicting that the next 5 months of crime is not expected to go up siginificantly, with a forecast estimate of around 87.000 reported offences per month in London, ±	roughly 6,400	offences. With the prediction interval set at 95 we can therefore say that according to the histoic data provided with 95% confidence that the crime levels will remain within this above mentioned range. 

*Are there any months that stick out as statistically significant for the offence levels?*

Currently, using the sources 180,000 plus records between April and November 2023 it is advised to measure against two standard deviations. For the msot part the data points seem to be bunched around the average line showing very little volatitlity. However, it is worth noting that the months of June and October seem to be tending more towards the upper boundary while the month of April data point is touching the lower boundary making it significantly low.




