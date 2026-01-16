#DHL Express Shipment Analysis – SQL Project

#Project Overview
This project performs end-to-end SQL analysis on DHL Express shipment and facility pickup data using MySQL. The goal is to analyze shipment volume, pickup performance, location distribution, and time-based trends by applying real-world SQL queries commonly used in logistics and operations analytics.

#Objectives

Understand overall shipment volume and weight handling,
Analyze pickup performance using pickup status and dates,
Perform city-wise, state-wise, and ZIP-wise shipment analysis,
Identify high-volume and high-weight shipments,
Practice core to advanced SQL concepts using a logistics dataset.

#Dataset Description

The dataset represents operational DHL shipment data and includes:
(Shipment ID,
Facility name and address details,
City, state code, and ZIP,
Total packages and total shipment weight,
Pickup status and last pickup date,
Location type and placement attributes).

#Tools & Technologies

Database: MySQL,
Language: SQL,
Data Source: CSV file imported into MySQL.

#SQL Analysis Covered

1. Basic Data Exploration
View all shipments,
Count total shipments,
Identify unique cities and states,
Handle missing address values.

2. Aggregation & KPIs

Total and average shipment weight
Total packages handled,
Shipments by city, state, ZIP,
Pickup status distribution,

3. Date & Time Analysis

Oldest and latest pickup dates,
Monthly and yearly shipment trends,
Shipments in the last 30 days,
Daily pickup activity.

4. Advanced SQL Techniques

Ranking shipments by weight,
Running total of packages,
Percentage contribution to total weight,
Duplicate shipment ID detection,
Shipment classification using CASE.

#Key Insights Generated

Identified cities and states with the highest shipment volume,
Analyzed pickup trends over time,
Flagged heavy vs medium vs light shipments,
Evaluated shipment density by location,
Measured operational performance using pickup status.


#Future Enhancements

Build an interactive Power BI dashboard,
Optimize performance using indexing,
Add advanced trend and operational efficiency analysis.
