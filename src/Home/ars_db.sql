create database ars_db;
use ars_db;

create table register(
id int(20) AUTO_INCREMENT PRIMARY KEY,
fname varchar(20),
lname varchar(20),
uname varchar(20),
pass varchar(20),
email varchar(20)
);

select * from register;