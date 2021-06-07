-- If db exists delete it
DROP DATABASE IF EXISTS inventory_db;
-- Creating db
CREATE DATABASE inventory_db;

-- use this db
USE inventory_db;

-- Creating table named prices
CREATE TABLE prices (
  -- Setting value as id that is an integer, that cannot be null, that increments itself and is the primary key for the prices table
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  -- Setting value as prices that is a decimal (total number of digits is 10, number of digits after decimal is 2 .00) and it is not null
  price DECIMAL(10,2) NOT NULL
);

-- Creating table named books
CREATE TABLE books(
  -- Setting value as id that is an integer, that cannot be null, that increments itself and is the primary key for the books table
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  -- Setting value as book_name, it will be text (max 30 characters), not null
  book_name VARCHAR(30) NOT NULL,
  -- Setting value as price that is an integer
  price INTEGER,
  -- The foreign key is price from the prices table using the id.
  FOREIGN KEY (price)
  REFERENCES prices(id)
  -- If the part of the table is deleted in prices the default value is NULL
  ON DELETE SET NULL
);
