📊 US Household Income Statistics & Geo Locations Analysis
📝 Project Overview
This project explores US Household Income Statistics and Geo Locations, utilizing MySQL for data cleaning and exploratory data analysis (EDA). The dataset contains 32,000 records, providing insights into income distribution across different states, counties, and cities.

The project consists of two key phases:

Data Cleaning: Handling missing values, duplicates, and inconsistencies.
Exploratory Data Analysis (EDA): Deriving meaningful insights from household income data.
📂 Dataset Information
The dataset consists of two tables:

us_household_income: Contains household income details with location-based attributes (state, city, county, land area, and water area).
us_household_income_statistics: Provides statistical metrics like mean and median income for different regions.

🛠️ Data Cleaning Process
✅ Steps Performed:
Checked for duplicate records using COUNT(id), GROUP BY, and ROW_NUMBER().
Removed duplicate records using a subquery and DELETE operation.
Standardized state names and abbreviations by updating inconsistent values.
Handled missing values by updating incorrect or blank fields.
Corrected misclassified types (e.g., "Boroughs" → "Borough").
Validated land and water area values to ensure data integrity.

📊 Exploratory Data Analysis (EDA)
📈 Key Insights Explored:
Total land and water area by state.
Top 10 states with the largest land and water areas.
Average mean and median income by state.
Income distribution by geographic region (state, county, and city).
Comparing income statistics across different location types (e.g., Boroughs, Communities).

🚀 Technologies Used
Database: MySQL
Techniques: Data Cleaning, SQL Joins, Aggregations, Subqueries
Tools: SQL Workbench
