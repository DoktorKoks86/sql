SELECT * FROM Bikes

SELECT * FROM Persons

SELECT * FROM Rents

DELETE FROM Bikes

INSERT INTO Persons (PeselNumb, Addres, Firstname, LastName)
Values ('86020716455', 'krawiecka 12a', 'Rafal', 'Ciechomski')
INSERT INTO Persons (PeselNumb, Addres, Firstname, LastName)
Values ('87031803637', 'Tylna 2a','Micha³','Czerski')
INSERT INTO Persons (PeselNumb, Addres, Firstname, LastName)
Values ('88101103352','Roweckiego 11','Dominik','Grzedowski')
INSERT INTO Persons (PeselNumb, Addres, Firstname, LastName)
Values ('93061410930','Tyrmanda 8','Krzysztof','Orzechowski')
INSERT INTO Persons (PeselNumb, Addres, Firstname, LastName)
Values ('86122202683','Tylna 2a', 'Izabela','Czerska')

SELECT Firstname, LastName FROM Persons
WHERE Addres like 'Ty%' and LastName like 'Cze%'

update Persons
SET Addres = 'Tyrmanda 9'
Where PeselNumb = '93061410930'

SELECT * From Persons

insert into Persons (PeselNumb, [Address], Firstname, LastName)
values ('00000000000', 'kubusia puchatka 69', 'Genady', 'Golovkin')

Select * FROM Persons

Delete FROM Persons
Where PeselNumb = '00000000000'

SELECT * From Persons

INSERT INTO Persons (PeselNumb, [Address], Firstname, LastName)
Values ('           ', '      ', '   ', '   ')

update Persons
SET [Address] = 'Beverly hills'
Where PeselNumb = '           '

update Persons
SET PeselNumb = '11111111111'
Where [Address] = 'Beverly hills'

update Persons
SET Firstname = 'John'
Where [Address] = 'Beverly hills'

update Persons
SET LastName = 'Travolta'
Where [Address] = 'Beverly hills'

update Persons
SET [Address] = 'Los Angeles'
Where [Address] = 'Beverly hills'

update Persons
SET Firstname = 'adolf', LastName = 'hitler', [Address] = 'Miami'
where [Address] = 'Los Angeles'

Delete FROM Persons
Where LastName = 'hitler'

