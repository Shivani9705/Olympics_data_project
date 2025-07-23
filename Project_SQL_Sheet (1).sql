create database session10;

use session10;

create table olympics(
ID int,	
Name varchar(255),	
Sex varchar(255),	
Age int,	
Height int,	
Weight int,	
Team varchar(255),	
NOC varchar(255),	
Games varchar(255),	
Year int,	
Season varchar(255),	
City varchar(255),	
Sport varchar(255),	
Event varchar(255),	
Medal varchar(255)
);

show variables like "secure_file_priv";

load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Athletes_Cleaned.csv'
into table olympics
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

-- SQL PROJECT

-- 1. Show how many medal counts present for entire data

select count(medal) from olympics
where medal !='Nomedal';


-- 2. Show count of unique sports present in Olympics

select count(distinct sport) from olympics;


-- 3. Show how many different medals won by team India

select medal,count(medal) from olympics 
where team='India' and medal!='Nomedal'
group by medal;

-- 4. Show event wise medals won by India show from highest to 
-- lowest medals won in order

select event,count(medal) as medalCount from olympics
where team='India' and medal <> 'Nomedal'
group by event
order by medalCount desc;

-- 5. Show event wise medals won by India in order of year
select event,year,count(medal) as medalCount from olympics
where team='India' and medal <> 'Nomedal'
group by event,year
order by year desc;


-- 6. show country who won maximum medals.

select team,count(medal) as medalCount from olympics
where medal <> 'Nomedal'
group by team 
order by medalCount desc
limit 1;

-- 7.show top 10 countries whowon gold



--  8. show in which year did United states won most gold medal



-- 9. In which sports United States has most medals.



-- 10. Find top three players who won most medals along with their sports and country



-- 11. Find player with most gold medals in cycling along with his country.



-- 12.Find player with most medals (Gold+Silver+Bronze) in Basketball also show his country.


-- 13. Find out the count of different medals of the top basketball player Teresa Edwards


-- 14. Find out medals won by male,female each year , Export this data and plot graph in excel


