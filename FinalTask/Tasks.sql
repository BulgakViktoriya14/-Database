Use hr;
set @id = 0;
insert into  `locations` (street_address, postal_code, city, state_province, country_id) select DISTINCT  street_address, postal_code, city, state_province, country_id from REPORT where city is not null;

select * from `locations`;

set @id=0;
insert into  departments(DEPARTMENT_NAME) select distinct DEPARTMENT_NAME from REPORT where DEPARTMENT_NAME is not null;

insert into employees
( first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct) 
select distinct  first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct
from report 
where last_name is not null and hire_date is not null  and salary is not null and job_id is not null and email is not null;

UPDATE `employees`
SET `salary` = `salary` + 100
WHERE `job_id` NOT LIKE '%MGR' AND `job_id` NOT LIKE '%MAN';

UPDATE `employees`
SET `email`=concat(left(`first_name`,5),left(`last_name`, 5));

