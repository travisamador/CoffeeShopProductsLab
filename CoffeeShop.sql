--CREATE DATABASE CoffeeShopDB;
--USE CoffeeShopDB;

--CREATE TABLE Products(
--	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
--	Name NVARCHAR(255) NOT NULL,
--	Description NVARCHAR(255) NOT NULL,
--	Price DECIMAL(20,2) NOT NULL,
--	Category NVARCHAR(255) NOT NULL
--);

--INSERT INTO Products
--VALUES ('Regular Coffee', 'Cup of Joe, Can be taken black or with cream and sugar', 1.25, 'Hot Drink'),
--('Decaf', 'Coffee that is missing one key element', 1.00, 'Hot Drink'),
--('Espresso', 'Another all-nighter? A few shots will perk you right up', 2.50, 'Hot Drink'),
--('Latte', 'Creamy drink with a subtle espresso flavor', 3.75, 'Hot Drink'),
--('Tea', 'For those who like a more relaxing drink', 1.00, 'Hot Drink'),
--('Iced Coffee', 'A cold combo of coffee and ice', 1.50, 'Cold Drink'),
--('Water', 'Just add coffee beans', 0.00, 'Cold Drink'),
--('Donut', 'Favorite of police officers everywhere', 0.50, 'Pastry'),
--('Biscuit', 'A great option to pair with a cup of tea', 0.50, 'Pastry'),
--('Scone', 'A sweet pointed pastry', 1.00, 'Pastry'),
--('BLT', 'Classic sandwich with bacon, lettuce, and tomato', 4.99, 'Sandwich'),
--('Reuben', 'An acquired taste for some', 6.00, 'Sandwich'),
--('Grilled Cheese', 'A few simple ingredients. One amazing sandwich', 4.99, 'Sandwich');

--CREATE TABLE Users(
--	ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
--	FirstName NVARCHAR(255) NOT NULL,
--	LastName NVARCHAR(255) NOT NULL,
--	Email NVARCHAR(255) NOT NULL,
--	Password NVARCHAR(255) NOT NULL,
--	FavDrink INT FOREIGN KEY REFERENCES Products(ID) NOT NULL
--);

SELECT * FROM Products;
SELECT * FROM Users;

SELECT * FROM Users
JOIN Products ON Users.FavDrink = Products.id;