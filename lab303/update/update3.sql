/*повышаем цену на товары из золота*/
UPDATE goods SET
Price=Price+10
WHERE Category="золото";