SELECT Botanical_Name, Common_Name, COUNT (*) AS n
FROM Species
GROUP BY Botanical_Name, Common_Name;