# Dashboard Projects

## Cool Beans Coffee Sales Summary

In this project I created an interactive dashboard which visualises some key sales metrics for the fictonal Coffe Bean Retailer "Cool Beans". It utilises a variety of excel features including the XLOOKUP and INDEX functions in conjunction with Pivot Tables, Pivot Charts, Slicers and Pivot Timeines. 

### Process

1. Read through the three data sets for orders, customers and products, get some familiarity with the data sets and identify the primary keys of the data sets; here they would be both the Order ID and Customer ID fields
2. Use both Index and XLOOKUP functions to retrieve data from the customer and products data sets and bring them into the order data set. The fields retrieved include:
    - Customer Name
    - Email
    - Country
    - Coffee Type
    - Roast Type
    - Size
    - Unit Price
3. Use a simple multiplcation to find the sale value from the Unit Price and the Quantity
4. Next I did some brief data cleaning, using excels in built "Remove Duplicates" feature to remove any potential duplicates by selecting the whole data set (there were no duplicates to be found)
5. Following this I converted the Unit Price and Sale Amounts to currency data types and included the £ symbol for clarity in the later visuals
6. I also formatted the Weight field to a custom data type to show a numeric value with the accompanying SI unit
7. After this I created two new columns with IF functions to provide full names for the abbreviated columns of Roast Type and Coffee Type
8. I then used on final XLOOKUP function to determine whether the customer was using a Loyalty Card or not in each transaction.
9. The final step before proceeding to visualisation was to format all of the data in mentioned above into a Table so any potential additions or redactions would auto update in the visuals
10. Following this I then created a  new sheet containing pivot tables which displayed the grouped total sale data by each Roast Type accross each month of the data set
11. From this I created a Pivot Line Chart, formatted the chart to the desired colour scheme, altered the colour of some of the lines for clarity against the background, and formatted the Y axis to include the £ symbol.
12. I then created a second sheet to add in another pivot table this time displaying simply the total sales by country with a Pivot Chart Bar Graph to visualise the data. This too was formatted to fit the colour scheme, and the sale amounts in the table was ordered in ascending order so this would be inverted in the chart
13. The final pivot table was created in another tab and this time displayed the top 5 customers by total sale amount. I ensured that the data in the table was filtered to only show the top 5 results and that these were then filtered into ascending order so that the Pivot Chart Bar Graph would be inverted.
14. I brought all of these visuals into a new Dashboard tab and created 3 slicers, one for Weight, one for Roast Type Name and a final one for Loyalty Cards. I then ensured to connect these to all three pivot tables which fed the three visuals created, and formatted them to match the colour scheme.
15. Finally I checked that all of these filtering items worked before proceeding forward.
16. I then formatted the Dashboard, inserting a rectangle shape for the header, and snapping this alongside any of the visuals, slivers and the timeline to the cells to achieve a uniform spacing, adjusting various column and row heights and width as needed and removing the gridlines.
