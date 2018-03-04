SELECT *,
CONCAT(MinPrice, ', ', MaxPrice) AS AllPrices
FROM lombard.sale;