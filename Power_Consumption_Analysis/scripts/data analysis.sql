CREATE DATABASE power_consumption;
USE power_consumption;

-- Table 1: state_power_usage
CREATE TABLE IF NOT EXISTS state_power_usage (
    Date DATE,
    Punjab FLOAT,
    Haryana FLOAT,
    Rajasthan FLOAT,
    Delhi FLOAT,
    UP FLOAT,
    Uttarakhand FLOAT,
    HP FLOAT,
    J_and_K FLOAT,
    Chandigarh FLOAT,
    Chhattisgarh FLOAT,
    Gujarat FLOAT,
    MP FLOAT,
    Maharashtra FLOAT,
    Goa FLOAT,
    DNH FLOAT,
    Andhra_Pradesh FLOAT,
    Telangana FLOAT,
    Karnataka FLOAT,
    Kerala FLOAT,
    Tamil_Nadu FLOAT,
    Pondy FLOAT,
    Bihar FLOAT,
    Jharkhand FLOAT,
    Odisha FLOAT,
    West_Bengal FLOAT,
    Sikkim FLOAT,
    Arunachal_Pradesh FLOAT,
    Assam FLOAT,
    Manipur FLOAT,
    Meghalaya FLOAT,
    Mizoram FLOAT,
    Nagaland FLOAT,
    Tripura FLOAT
);

-- Table 2: regional_power_usage
CREATE TABLE IF NOT EXISTS regional_power_usage (
    States VARCHAR(50),
    Regions VARCHAR(50),
    latitude FLOAT,
    longitude FLOAT,
    Date DATE,
    consumption FLOAT
);

-- Import data into state_power_usage
LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\cleaned_dataset_tk.csv'
INTO TABLE state_power_usage
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Import data into regional_power_usage
LOAD DATA LOCAL INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\cleaned_long_data.csv'
INTO TABLE regional_power_usage
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM regional_power_usage;
SELECT * FROM state_power_usage;

-- Total Power Consumption by State (Across Entire Period)
SELECT
    SUM(Punjab) AS Punjab, 
    SUM(Haryana) AS Haryana,
    SUM(Rajasthan) AS Rajasthan,
    SUM(Delhi) AS Delhi,
    SUM(UP) AS UP,
    SUM(Uttarakhand) AS Uttarakhand,
    SUM(HP) AS HP,
    SUM(J_and_K) AS J_and_K,
    SUM(Chandigarh) AS Chandigarh,
    SUM(Chhattisgarh) AS Chhattisgarh,
    SUM(Gujarat) AS Gujarat,
    SUM(MP) AS MP,
    SUM(Maharashtra) AS Maharashtra,
    SUM(Goa) AS Goa,
    SUM(DNH) AS DNH,
    SUM(Andhra_Pradesh) AS Andhra_Pradesh,
    SUM(Telangana) AS Telangana,
    SUM(Karnataka) AS Karnataka,
    SUM(Kerala) AS Kerala,
    SUM(Tamil_Nadu) AS Tamil_Nadu,
    SUM(Pondy) AS Pondy,
    SUM(Bihar) AS Bihar,
    SUM(Jharkhand) AS Jharkhand,
    SUM(Odisha) AS Odisha,
    SUM(West_Bengal) AS West_Bengal,
    SUM(Sikkim) AS Sikkim,
    SUM(Arunachal_Pradesh) AS Arunachal_Pradesh,
    SUM(Assam) AS Assam,
    SUM(Manipur) AS Manipur,
    SUM(Meghalaya) AS Meghalaya,
    SUM(Mizoram) AS Mizoram,
    SUM(Nagaland) AS Nagaland,
    SUM(Tripura) AS Tripura
FROM state_power_usage;

-- Monthly Power Consumption Trend by State
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Punjab) AS Punjab,
    SUM(Haryana) AS Haryana,
    SUM(Rajasthan) AS Rajasthan,
    SUM(Delhi) AS Delhi,
    SUM(UP) AS UP,
    SUM(Uttarakhand) AS Uttarakhand,
    SUM(HP) AS HP,
    SUM(J_and_K) AS J_and_K,
    SUM(Chandigarh) AS Chandigarh,
    SUM(Chhattisgarh) AS Chhattisgarh,
    SUM(Gujarat) AS Gujarat,
    SUM(MP) AS MP,
    SUM(Maharashtra) AS Maharashtra,
    SUM(Goa) AS Goa,
    SUM(DNH) AS DNH,
    SUM(Andhra_Pradesh) AS Andhra_Pradesh,
    SUM(Telangana) AS Telangana,
    SUM(Karnataka) AS Karnataka,
    SUM(Kerala) AS Kerala,
    SUM(Tamil_Nadu) AS Tamil_Nadu,
    SUM(Pondy) AS Pondy,
    SUM(Bihar) AS Bihar,
    SUM(Jharkhand) AS Jharkhand,
    SUM(Odisha) AS Odisha,
    SUM(West_Bengal) AS West_Bengal,
    SUM(Sikkim) AS Sikkim,
    SUM(Arunachal_Pradesh) AS Arunachal_Pradesh,
    SUM(Assam) AS Assam,
    SUM(Manipur) AS Manipur,
    SUM(Meghalaya) AS Meghalaya,
    SUM(Mizoram) AS Mizoram,
    SUM(Nagaland) AS Nagaland,
    SUM(Tripura) AS Tripura
FROM state_power_usage
GROUP BY Month
ORDER BY Month;

 -- Top 5 Regions by Total Usage (Regional Analysis)
 
 SELECT 
    Regions, 
    SUM(Consumption) AS Total_Usage
FROM regional_power_usage
GROUP BY Regions
ORDER BY Total_Usage DESC
LIMIT 5;

 -- Average Daily Usage Across Regions
 
 SELECT 
    Regions,
    AVG(Consumption) AS Avg_Daily_Usage
FROM regional_power_usage
GROUP BY Regions
ORDER BY Avg_Daily_Usage DESC;

 