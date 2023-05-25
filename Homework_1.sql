CREATE DATABASE mobile_phones;
USE mobile_phones;

CREATE TABLE phones
(Id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount VARCHAR(30) NOT NULL,
Price VARCHAR(30) NOT NULL
);

# 1. Заполнить БД данными:
INSERT phones(ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone X', 'Apple', 3, '76000'),
('iPhone 8', 'Apple', 2, '51000'),
('Galaxy S8', 'Samsung', 2, '56000'),
('Galaxy S9', 'Samsung', 1, '41000'),
('P20 Pro', 'Huawei', 5, '36000');

SELECT * FROM phones;

# 2. Вывести название, производителя и цену для товаров, количество которых превышает 2:
SELECT ProductName, Manufacturer, Price 
FROM phones
WHERE ProductCount > 2;

# 3. Вывести весь ассортимент товаров марки “Samsung”:
SELECT * FROM phones WHERE Manufacturer = 'Samsung';

# 4. С помощью регулярных выражений найти:
# 4.1. Товары, в которых есть упоминание "Iphone":
SELECT * FROM phones WHERE ProductName REGEXP 'Iphone' || Manufacturer REGEXP 'Iphone';

# 4.2. "Samsung":
SELECT * FROM phones WHERE ProductName REGEXP 'Samsung' || Manufacturer REGEXP 'Samsung';

# 4.3. Товары, в которых есть ЦИФРА "8":
SELECT * FROM phones WHERE ProductName REGEXP '[[8]]' = 1 || Manufacturer REGEXP '[[8]]' = 1;
