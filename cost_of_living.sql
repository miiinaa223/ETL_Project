create database cost_of_living;

use cost_of_living;

create table country_codes(
country_code int auto_increment not null primary key,
country varchar(50),
three_letter_code varchar(3),
region varchar(50),
sub_region varchar(50)
);

create table cost_of_living(
country_id int auto_increment not null primary key,
country_name varchar(50),
price_index int,
ranking int
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
)