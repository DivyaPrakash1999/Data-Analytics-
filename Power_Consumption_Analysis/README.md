Power Consumption in India (2019-2020) - Data Analysis Project
Project Overview
This project aims to analyze power consumption trends across India from 2019 to 2020, focusing on key metrics such as monthly consumption, total consumption, and demographic trends. Using SQL, Power BI, and Python, this project identifies high-consumption regions and patterns to better understand user preferences and help stakeholders make informed decisions about energy distribution and management.

Key Objectives:
Identify regions with the highest power consumption.
Understand user consumption preferences and trends over time.
Analyze both monthly and total power consumption across different regions and demographics.
Data Sources
The data files used in this analysis include:

Monthly Power Consumption - Monthly power usage per region for 2019-2020.
Total Power Consumption - Overall power consumption figures across the regions.
Average Daily Power Consumption - Daily consumption averages, broken down by region and demographic trends.
Top 5 Consumption by Region - Highlights the five regions with the highest overall power consumption, allowing focused analysis on high-usage areas.
Data was cleaned and imported into SQL tables for structured analysis, with further processing and visualization in Power BI and Python.

Tools & Technologies
SQL: For data storage, queries, and relational analysis.
Power BI: Used to visualize key insights, trends, and regional comparisons.
Python: For data preprocessing, in-depth statistical analysis, and additional visualizations.
Database Setup & Schema
The MySQL database is structured as follows:

Tables:

state_power_usage: Holds state-specific monthly power usage data.
regional_power_usage: Stores average daily power consumption with regional and demographic data.
Each table contains columns for Region, Date, and Consumption metrics.

Data Loading:

Datasets were loaded into MySQL tables using CSV imports and are accessible for analysis via SQL queries.
Data Analysis Workflow
1. Data Cleaning & Preparation
Python was used to clean and preprocess the data, ensuring accurate formats for date and numeric fields.
SQL commands were used to filter, join, and organize data for easier analysis.
2. Data Analysis Using SQL
Monthly and total power consumption: Calculated using SQL aggregation functions.
High-consumption regions: Identified through sorting and filtering SQL queries.
Demographic trends: Analyzed using SQL joins and filters.
3. Data Visualization in Power BI
Monthly Consumption Trends: Visualized using line charts to show variations across months.
Total Consumption by Region: Illustrated with bar charts to highlight regions with high power demand.
Average Daily Consumption by Demographic: Presented in a table or heatmap to uncover patterns by demographics.
4. In-Depth Insights Using Python
Descriptive Statistics: Calculated mean, median, and other statistics for deeper insights.
Correlation Analysis: Investigated the relationship between regions and consumption using Python’s pandas library.
Data Visualizations: Additional charts created with Matplotlib and Seaborn for more granular insights.
Key Insights & Findings
Regions with Highest Consumption: Some regions showed consistently higher consumption, suggesting they are major power users.
Top 5 Consumption Regions: The five regions with the highest power usage are focused on in the analysis, providing insights into demand centers.
Monthly Consumption Patterns: Clear peaks in certain months indicate seasonal trends in power usage.
Demographic Preferences: Insights into demographics showed variations in usage, helping identify unique consumption behaviors.
Installation & Usage
Clone the Repository:

Database Setup:

Ensure MySQL is installed.
Create tables and import datasets using the provided SQL scripts.
Run Python Analysis:

Install required Python libraries (pandas, matplotlib, seaborn).
Execute the analysis scripts for data cleaning and visualizations.
View Power BI Dashboard:

Open the Power BI file Power_Consumption_Report.pbix to view and interact with the dashboard.
Folder Structure
kotlin
Copy code
Power-Consumption-India-2019-2020/
├── analysed data/
│   ├── Monthly_Power_Consumption.csv
│   ├── Total_Power_Consumption.csv
│   ├── Avg_Daily_Power_Consumption.csv
│   ├── Top_5_Regions_Consumption.csv
├── scripts/
│   ├── dataset_tk.csv
│   ├── long_data_.csv
├── scripts/
│   ├── data_cleaning.py
│   ├── data_analysis.sql
├── visuals/
│   ├──analysis (Power BI).pbix
├── README.md
Future Work
Expand Time Frame: Include additional years for a more comprehensive analysis.
Machine Learning Models: Build models to forecast future power consumption patterns.
Enhance Dashboard: Add more interactivity and advanced visuals to the Power BI report.
Conclusion
This project showcases fundamental data analytics skills applied to real-world energy consumption data. By analyzing consumption trends, identifying high-usage regions, and exploring demographic insights, this project provides valuable insights for optimizing power distribution in India.

Author
Divya Prakash
