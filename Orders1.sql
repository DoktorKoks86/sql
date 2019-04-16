CREATE TABLE Goods (
    descriptionPro varchar(60) Not null,
    namePro varchar(30),
    price decimal not null,
	quantity int not null, 
);
alter table Goods
add barcod char(11) Primary key;

create table CustomersTab (
	firstname varchar(30) not null,
	lastname varchar(30) not null,
	peselNumb char(11) NOT NULL PRIMARY KEY,
	city varchar(30) not null,
	street varchar(30) not null,
	streetNo int not null,
	postCode char(6),
	birthDate date not null,
);

alter table Goods
alter column namePro varchar(30) not null;

alter table Goods
add barcode char(13) Primary key;

sp_rename 'CustomersTab', 'Customers';

create table Baskets (
	
	totalNumb int IDENTITY(1,1) not null,
	totalamount decimal(1,1) not null,
	done bit not null, 
);

alter table Baskets
add product char(11) not null;

create table Orders (
addressOrd varchar(30) not null,
postcode char(6) not null,
nameCustom varchar(30) not null,
lastName varchar(30) not null,
allItems int not null,
orderStatus int not null, 

);

create table Baskets (
	
	IDBasket int IDENTITY(1,1) primary key not null,
	totalNumb int not null, 
	totalamount decimal(1,1) not null,
	done bit not null, 
	product char(11) not null,
);

create table BasketsProducts (
	BasketId int IDENTITY(1,1) FOREIGN KEY REFERENCES Baskets(IDBasket),
	ProdCode char(13) FOREIGN KEY REFERENCES Products(barcode),
	);

select * from Orders;

alter table Orders
add Numb int IDENTITY(1,1) primary key;

alter table Orders
add CustomId char(11) foreign key references Customers(peselNumb);


insert into Products (descriptionPro, namePro, price, quantity, barcode)
values ('opona bezdentkowa', 'opona dunlop', '10.5', '20', '1234567891234');

insert into Customers (firstname, lastname, peselNumb, city, street, streetNo, postCode, birthDate)
values ('Rafa≥', 'Ciechomski', '86020716455', '£Ûdü', 'Krawiecka', '12', '91-816', '1986-02-07');

alter table Baskets
add productID char(13) foreign key references Products(barcode);

alter table Baskets
alter column totalamount decimal(6,2) not null;

insert into Baskets (totalNumb, totalamount, done, productID)
values (1, 10.5, 1, '1234567891234')

insert into BasketsProducts (ProdCode)
values ('1234567891234')


select * from Products
where namePro like '%%';

insert into BasketsProducts (ProdCode)
values ('1234567891234');  

select * from Baskets; 

select * from BasketsProducts; 

DELETE FROM BasketsProducts WHERE BasketId = '%%';

SELECT peselNumb
FROM Customers
Left JOIN Orders
ON Customers.peselNumb = Orders.CustomId;
