SELECT idGood, NameGood, Description, Price
FROM lombard.goods
GROUP BY Price
HAVING MIN(Price)>100;