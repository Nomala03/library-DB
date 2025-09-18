--READ
-- Get all books
SELECT * FROM books;

-- Get a book by title
SELECT * FROM books WHERE title = '1984';

-- Get all books by a specific author
SELECT * FROM books WHERE author_id = 1;

-- Get all available books
SELECT * FROM books WHERE available = TRUE;

--UPDATE
-- Mark a book as borrowed
UPDATE books SET available = FALSE WHERE id = 1;

-- Add a new genre to an existing book
UPDATE books SET genres = array_append(genres, 'Classic') WHERE id = 1;

-- Add a borrowed book to a patron’s record
UPDATE patrons SET borrowed_books = array_append(borrowed_books, 1) WHERE id = 1;

--DELETE
-- Delete a book by title
DELETE FROM books WHERE title = 'Moby-Dick';

-- Delete an author by ID
DELETE FROM authors WHERE id = 5;

--ADVANCED QUERIES
-- Books published after 1950
SELECT * FROM books WHERE published_year > 1950;

-- All American authors
SELECT * FROM authors WHERE nationality = 'American';

-- Set all books as available
UPDATE books SET available = TRUE;

-- Available books published after 1950
SELECT * FROM books WHERE available = TRUE AND published_year > 1950;

-- Authors containing "George"
SELECT * FROM authors WHERE name ILIKE '%George%';

-- Increment published year 1869 by 1
UPDATE books SET published_year = published_year + 1 WHERE published_year = 1869;

