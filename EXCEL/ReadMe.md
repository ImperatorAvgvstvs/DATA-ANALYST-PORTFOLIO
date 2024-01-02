## Data Cleaning in Excel – Cycle Shop Sales Analysis

### Data Cleaning Steps
1.	Formatted as table including headers. This is to see our full range of values in each field without having to scroll
2.	Apply conditional formatting to the ID field to highlight duplicates. This is because the ID field should be the unique field and thus will show if any entries have been entered multiple times 
3.	Remove duplicates in ID field through remove duplicates function. This will ensure no duplicate values affect subsequent calculations
4.	Ensured the income field was formatted to a currency data type and reduce 0 decimal places. Ensured all calculations would read records in this field as currency not text. Annual gross salary income for the purposes of this analysis does not need to have pence included and thus reducing it makes the data more readable
5.	Find and replace letter entries in the marital status and gender fields to the full word. This is to ensure no confusion in subsequent analysis as the M for married and M for male may be confusing to read for stakeholders, this step therefore increases readability 
6.	Find and replace the “10+ miles” record with “More than 10 miles”. This field uses a text data type and so to ensure a more readable pivot table later on where all distances will be ordered in actual descending order I have renamed these entries. This is to mimic a potential scenario where a business rule or a requirement for a database prohibits the use of number data types in this field
7.	Inserting a new field to capture age categories. This is replicating a hypothetical business rule to assign predefined and agreed upon age categories to the survey respondents. Here I have used the 6 most typically used age categories in surveys. This is achieved through inserting a new field and leveraging nested “IF” and “AND” functions, which as a result will allow for easier subsequent data visualisation by reducing the number of individual points needed to be represented and thus allowing for a more macro level analysis
8.	Insert Pivot tables to represent different views of the data to support the building of charts to go into the dashboard
