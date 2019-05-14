ETL Project Proposal
Quinton Butterfield / Minami Imoto


•	Goal: <br/>
o	Attempt to analyze the relationship between average wages and cost of living by country
•	Extract: 
We pulled data from as follows:
o	Average Wages from OECD (1990 – 2016, Country Name)
https://data.world/oecd/average-wages
o	Cost of Living per Country (2016, Country Three Letter Codes)
https://www.kaggle.com/andytran11996/cost-of-living
o	ISO3166 Countries with Regional Codes  (Country Three Letter Codes, Country Name)
https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.csv
o	Income Category (Income Level – Low/Middle//Upper, Country Codes, Region, Three Letter Codes)
http://api.worldbank.org/v2/en/topic/11?downloadformat=csv

•	Transform:
o	Rename each table name to easily join
o	Drop unnecessary columns
o	In Cost of Living, it was the average wages by city so group by country instead of city and calculate average cost of living and rent by country
o	In Average Wages, filter and use only 2016

•	Load:
o	Create tables 
o	Join all four data with country codes table 



