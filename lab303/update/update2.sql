/*изменяем данные паспорта и номер телефона клиента по PK(в данной таблице PK- это idClient)*/
UPDATE lombard.client SET
Passport="KM2304755", NumberPhone=7669823
WHERE idClient=3;