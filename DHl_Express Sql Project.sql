use dhl_express;

-- 1. View all shipments
select * from dhl;

-- 2. Count total shipments
SELECT COUNT(*) AS total_shipments FROM dhl;

-- 3. Unique cities served
SELECT DISTINCT city FROM dhl;

-- 4. Unique states covered
SELECT DISTINCT `STATE CODE` FROM dhl;

-- 5. Shipments with more than 10 packages
SELECT * FROM dhl WHERE `TOTAL PACKAGES` > 10;

-- 6. Shipments with weight above 100
SELECT * FROM dhl WHERE `TOTAL WEIGHT` > 100;

-- 7. Shipments with missing ADDRESS2
SELECT * FROM dhl WHERE ADDRESS2 IS NULL OR ADDRESS2 = '';

-- 8. Latest pickup date
SELECT MAX(`Last_Pickup Date`) FROM dhl;

-- 9. Total packages handled
SELECT SUM(`TOTAL PACKAGES`) AS total_packages FROM dhl;

-- 10. Total shipment weight
SELECT SUM(`TOTAL WEIGHT`) AS total_weight FROM dhl;

-- 11. Average shipment weight
SELECT AVG(`TOTAL WEIGHT`) AS avg_weight FROM dhl;

-- 12. Packages by city
SELECT CITY, SUM(`TOTAL PACKAGES`) AS packages FROM dhl GROUP BY CITY;

-- 13. Weight by state
SELECT `STATE CODE`, SUM(`TOTAL WEIGHT`) AS weight FROM dhl GROUP BY `STATE CODE`;

-- 14. Shipments by pickup status
SELECT `PICKUP STATUS`, COUNT(*) AS total FROM dhl GROUP BY `PICKUP STATUS`;

-- 15. Shipment count by MATCH_STATUS
SELECT MATCH_STATUS, COUNT(*) FROM dhl GROUP BY MATCH_STATUS;

-- 16. Shipment count by PLACEMENT
SELECT PLACEMENT, COUNT(*) FROM dhl GROUP BY PLACEMENT;

-- 17. Highest weight shipment
SELECT * FROM dhl ORDER BY `TOTAL WEIGHT` DESC LIMIT 1;

-- 18. Lowest package shipment
SELECT * FROM dhl ORDER BY `TOTAL PACKAGES` ASC LIMIT 1;

-- 19. Oldest pickup date
SELECT MIN(`Last_Pickup Date`) AS oldest_pickup FROM dhl;

-- 20. Monthly shipment count
SELECT MONTH(`Last_Pickup Date`) AS month, COUNT(*) AS shipments FROM dhl GROUP BY MONTH(`Last_Pickup Date`);

-- 21. Shipments with no pickup completed
SELECT * FROM dhl WHERE `PICKUP STATUS` <> 'Completed';

-- 22. Shipments picked up today
SELECT * FROM dhl WHERE `Last_Pickup Date` = CURDATE();

-- 23. Oldest pickup record
SELECT * FROM dhl ORDER BY `Last_Pickup Date` LIMIT 1;

-- 24. Pickups per year
SELECT YEAR(`Last_Pickup Date`) AS year, COUNT(*) FROM dhl GROUP BY year;

-- 25. Shipments in last 30 days
SELECT * FROM dhl WHERE `Last_Pickup Date` >= CURDATE() - INTERVAL 30 DAY;

-- 26. Shipments per ZIP code
SELECT ZIP, COUNT(*) FROM dhl GROUP BY ZIP;

-- 27. Facilities by LOCATION_TY
SELECT LOCATION_TY, COUNT(*) FROM dhl GROUP BY LOCATION_TY;

-- 28. Facilities by LOCATION_TH
SELECT LOCATION_TH, COUNT(*) FROM dhl GROUP BY LOCATION_TH;

-- 29. City with highest shipments
SELECT CITY, COUNT(*) AS total FROM dhl GROUP BY CITY ORDER BY total DESC LIMIT 1;

-- 30. State with highest weight handled
SELECT `STATE CODE`, SUM(`TOTAL WEIGHT`) AS weight FROM dhl GROUP BY `STATE CODE` ORDER BY weight DESC LIMIT 1;

-- 31. Average packages per city
SELECT CITY, AVG(`TOTAL PACKAGES`) AS avg_packages FROM dhl GROUP BY CITY;

-- 32. Shipment density by state
SELECT `STATE CODE`, COUNT(*) AS shipments FROM dhl GROUP BY `STATE CODE`;

-- 33. Cities with more than 5 shipments
SELECT CITY, COUNT(*) AS total FROM dhl GROUP BY CITY HAVING total > 5;

-- 34. Rank shipments by weight
SELECT ï»¿Shipment_id, `TOTAL WEIGHT`, RANK() OVER (ORDER BY `TOTAL WEIGHT` DESC) AS weight_rank FROM dhl;

-- 35. Running total of packages
SELECT ï»¿Shipment_id, SUM(`TOTAL PACKAGES`) OVER (ORDER BY `Last_Pickup Date`) AS running_packages FROM dhl;

-- 36. Percentage contribution of each shipment to total weight
SELECT ï»¿Shipment_id, (`TOTAL WEIGHT` / SUM(`TOTAL WEIGHT`) OVER ()) * 100 AS weight_pct FROM dhl;

-- 37. Duplicate shipment IDs
SELECT ï»¿Shipment_id, COUNT(*) FROM dhl GROUP BY ï»¿Shipment_id HAVING COUNT(*) > 1;

-- 38. Shipments with same city & state (self-join)
SELECT  CITY,
    `STATE CODE`,
    COUNT(*) AS shipment_count
FROM dhl
GROUP BY CITY, `STATE CODE`
HAVING COUNT(*) > 1;

-- 38. Top 5 heaviest shipments
SELECT * FROM dhl ORDER BY `TOTAL WEIGHT` DESC LIMIT 5;

-- 39. Shipment performance classification
SELECT ï»¿Shipment_id, 
CASE WHEN `TOTAL WEIGHT` > 100 THEN 'Heavy' 
WHEN `TOTAL WEIGHT` BETWEEN 50 AND 100 THEN 'Medium' 
ELSE 'Light' END AS shipment_category FROM dhl;

-- 








