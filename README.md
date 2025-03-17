# 📊 US Household Income Statistics & Geo Locations Analysis

## 📝 Project Overview
This project analyzes **US Household Income Statistics and Geo Locations**, using **MySQL** for **data cleaning and exploratory data analysis (EDA)**. The dataset contains **32,000 records**, offering insights into income distribution across various regions in the United States.

The project consists of two key phases:
1. **Data Cleaning**: Identifying and fixing inconsistencies, duplicates, and missing values.
2. **Exploratory Data Analysis (EDA)**: Extracting meaningful insights from the dataset.

---

## 📂 Dataset Information
The dataset consists of two tables:
- **`us_household_income`**: Contains household income details, location-based attributes (state, city, county), and land/water area statistics.
- **`us_household_income_statistics`**: Provides statistical metrics such as **mean and median income**.

---

## 🛠️ Data Cleaning Process

## ✅ Steps Performed:
### 🔍 Identifying and Removing Duplicates
- Checked for **duplicate records** using `COUNT(id)`, `GROUP BY`, and `ROW_NUMBER()`.
- Removed duplicate records using a **subquery and DELETE operation**.

### 🏷️ Standardizing Data
- Corrected **inconsistent state names and abbreviations** by updating incorrect values.
- Fixed **misclassified geographic types** (e.g., "Boroughs" → "Borough").

### 📌 Handling Missing Values
- Identified **empty or incorrect fields** in location data.
- Updated missing values in **city, county, and place** columns.

### 📏 Validating Area Measurements
- Verified **land and water area values** for anomalies and inconsistencies.

---

## 📊 Exploratory Data Analysis (EDA)
## 📈 Key Insights Explored:
- **Total land and water area** by state.
- **Top 10 states** with the largest land and water areas.
- **Average mean and median income** by state.
- **Income distribution** across geographic regions (state, county, city).
- **Income statistics by location type** (e.g., Boroughs, Communities).

---

## 🚀 Technologies Used
- **Database:** MySQL
- **Techniques:** Data Cleaning, SQL Joins, Aggregations, Subqueries
- **Tools:** SQL Workbench / MySQL CLI

---


