PRAGMA table_info('uk_accidents_table');

SELECT COUNT(*) AS total_records FROM uk_accidents_table;

SELECT Accident_Index, COUNT(*) AS duplicate_count --duplicate records
FROM uk_accidents_table
GROUP BY Accident_Index
HAVING COUNT(*) > 1;

SELECT Accident_Severity, COUNT(*) AS accident_count
FROM uk_accidents_table
GROUP BY Accident_Severity;

SELECT *   --invalid combinations
FROM uk_accidents_table
WHERE Weather_Conditions = 'Raining without high winds' AND Road_Surface_Conditions = 'Dry';

SELECT * -- invalid values in accident severity
FROM uk_accidents_table
WHERE Accident_Severity NOT IN (1, 2, 3);

SELECT *   --invalid values in number of vehicles
FROM uk_accidents_table
WHERE Number_of_Vehicles < 0;

SELECT Police_Force, COUNT(*) AS accident_count
FROM uk_accidents_table
GROUP BY Police_Force
ORDER BY accident_count DESC
LIMIT 10;

SELECT Day_of_Week, COUNT(*) AS accident_count
FROM uk_accidents_table
GROUP BY Day_of_Week
ORDER BY accident_count DESC;

SELECT AVG(Number_of_Vehicles) AS average_vehicles_involved
FROM uk_accidents_table;

SELECT Weather_Conditions, COUNT(*) AS accident_count
FROM uk_accidents_table
GROUP BY Weather_Conditions
ORDER BY accident_count DESC
LIMIT 5;

SELECT COUNT(*) AS NULL_COUNTS
FROM uk_accidents_table
WHERE Accident_Index IS NULL
   OR Location_Easting_OSGR IS NULL
   OR Location_Northing_OSGR IS NULL
   OR Longitude IS NULL
   OR Latitude IS NULL
   OR Police_Force IS NULL
   OR Accident_Severity IS NULL
   OR Number_of_Vehicles IS NULL
   OR Number_of_Casualties IS NULL
   OR Date IS NULL
   OR Day_of_Week IS NULL
   OR Time IS NULL
   OR Road_Type IS NULL
   OR Speed_limit IS NULL
   OR Junction_Detail IS NULL
   OR Junction_Control IS NULL
   OR Light_Conditions IS NULL
   OR Weather_Conditions IS NULL
   OR Road_Surface_Conditions IS NULL
   OR Special_Conditions_at_Site IS NULL
   OR Carriageway_Hazards IS NULL
   OR Urban_or_Rural_Area IS NULL
   OR Did_Police_Officer_Attend_Scene_of_Accident IS NULL
   OR LSOA_of_Accident_Location IS NULL
   OR Year IS NULL;