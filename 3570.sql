--3570. Find Books with No Available Copies

SELECT l.book_id, l.title, l.author, l.genre, l.publication_year, l.total_copies as current_borrowers
FROM library_books as l
JOIN borrowing_records as b
using (book_id)
WHERE b.return_date is NULL
GROUP BY b.book_id
HAVING COUNT(b.book_id) = l.total_copies
