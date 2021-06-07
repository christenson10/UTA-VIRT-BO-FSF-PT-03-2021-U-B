DROP DATABASE IF EXISTS inventory_db;
CREATE DATABASE inventory_db;

USE inventory_db;
-- creating table of prices
CREATE TABLE prices (
  -- Setting value to id, which will be a integer that auto-increments and is this tables primary key. It cannot be null
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  -- Setting value to price, which will be a decimal and not null (can be a max of 10 digits, and only has 2 after the decimal point)
  price DECIMAL(10,2) NOT NULL
);

-- creating a table of books
CREATE TABLE books(
  -- Setting value to id, which is an integer that will auto increment, cannot be null, and is the primary key of the table
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  -- Setting value to book_name which will be characters (no more than 30) and cannot be null
  book_name VARCHAR(30) NOT NULL,
  -- Setting value to price which is an integer
  price INTEGER,
  -- Setting value to in_stock which will be a boolean 
  in_stock BOOLEAN,
  FOREIGN KEY (price)
  REFERENCES prices(id)
  ON DELETE SET NULL
);
