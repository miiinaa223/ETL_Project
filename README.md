ETL Project Proposal
Quinton Butterfield / Minami Imoto


•	Goal: <br/>
o	Attempt to analyze the relationship between average wages and cost of living by country <br/>
•	Extract: <br/>
We pulled data from as follows:<br/>
o	Average Wages from OECD (1990 – 2016, Country Name)<br/>
https://data.world/oecd/average-wages<br/>
o	Cost of Living per Country (2016, Country Three Letter Codes)<br/>
https://www.kaggle.com/andytran11996/cost-of-living<br/>
o	ISO3166 Countries with Regional Codes  (Country Three Letter Codes, Country Name)<br/>
https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.csv<br/>
o	Income Category (Income Level – Low/Middle//Upper, Country Codes, Region, Three Letter Codes)<br/>
http://api.worldbank.org/v2/en/topic/11?downloadformat=csv<br/>
<br/>
•	Transform:<br/>
o	Rename each table name to easily join<br/>
o	Drop unnecessary columns<br/>
o	In Cost of Living, it was the average wages by city so group by country instead of city and calculate average cost of living and rent by country<br/>
o	In Average Wages, filter and use only 2016<br/>
<br/>
•	Load:<br/>
o	Create tables <br/>
o	Join all four data with country codes table <br/>



