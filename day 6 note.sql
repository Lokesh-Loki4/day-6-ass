#date and string process
select current_date();
select curdate()as today_dt;
# to print date and time
#now used for print the both current date nd time
select now()as dt_time;
#to print only year from date 
select year('2025-10-10')as yr;
select year(curdate())as cur_yr;
select month(curdate())as cur_mnt;
#to print year,month,date seperatly
select day (curdate())as dd,month(curdate())as mm,year(curdate())as yyyy;

select dayname (curdate()) as tdname;
select dayofweek(now()) as weekno;
select datediff('2026-10-10',curdate()) as difference;
select timestampdiff(month,'2026-08-01','20026-12-01') as mn_diff;
select timestampdiff(month,'2026-10-01','20026-10-20') as day_diff;
select timestampdiff(month,'2024-01-01','20026-01-01') as yr_diff;

#replace
select replace("Good Morning","Morning","Afternoon") as replaced;

#concat
select concat("hello","world") as with_sep;
select concat_ws("hello","world",",","hi") as with_sep;

#sub string
select substr("Good Evening",6,7) as sb_str;

#upper case 
select upper("hello") as up_str;
select ucase("evening") as up_str;

select lower("HOW R U") low_str;
select lcase("HOW R U") lstr;
 
#LPAD
select lpad('Hi',5,'#') as left_pad;

#RPAD
select rpad ('hello',7,'*') as right_pad;

select lpad (rpad('hi',4,'*'),6,'#') as result;

#trim
select trim(" welcome ") as trimmed;

#trim and concat
select concat ("hi",trim(" Welcome "),"home") as full_txt;

select concat ("hi",ltrim(" Welcome "),"home") as ltrimmed;

select concat ("hi",rtrim(" Welcome "),"home") as rtrimmed;

select concat("hi",trim(" Welcome "),"home") as full_txt,
concat("hi",ltrim(" Welcome "),"home") as ltrimmed,
concat("hi",rtrim(" Welcome "),"home") as rtrimmed;

select substr(concat("hi",trim(" welcome "),upper("home")),10,4)as full_txt;