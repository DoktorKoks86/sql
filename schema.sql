create database BikeRents;

create table Bikes (
ID int IDENTITY(1,1) PRIMARY KEY,
color varchar(20) not null, 
size decimal(18,0) not null,
brand varchar(30) not null,
);





