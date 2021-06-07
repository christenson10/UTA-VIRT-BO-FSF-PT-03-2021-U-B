-- Selecting books table, using books.book_name values for book_name collumn and prices.price as price collumn
SELECT
  books.book_name AS book_name, prices.price AS price
  -- pulling data from books
FROM books
-- linking the the prices with the books using prices.id
JOIN prices ON books.price = prices.id;
