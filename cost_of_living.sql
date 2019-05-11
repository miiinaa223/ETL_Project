create database QOL_DB;

use QOL_DB;

create table country_codes(
country_code int auto_increment not null primary key,
country varchar(100),
three_letter_code varchar(3),
region varchar(50),
sub_region varchar(50)
);

create table cost_of_living(
country_id int auto_increment not null primary key,
country_name varchar(50),
col_index float,
rent_index float
);

create table wages_by_country(
wage_id int auto_increment not null primary key,
wage_country_code varchar(3),
currency varchar(3),
avg_salary int
);

create table income_groups(
    country_code varchar(3),
    region varchar(40),
    income_group varchar(20)
);

select col.*, wbc.*, cc.three_letter_code from cost_of_living col
join country_codes cc on (col.country_name = cc.country)
join wages_by_country wbc on (wbc.wage_country_code = cc.three_letter_code)

select * from wages_by_country wbc
join country_codes cc on (wbc.wage_country_code = cc.three_letter_code)
order by wage_country_code

delete from country_codes
where country_code is not null

select * from cost_of_living
select * from wages_by_country
order by wage_country_code

select * from country_codes
order by country_code

