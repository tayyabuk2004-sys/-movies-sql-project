-- Movies Analytics Project by Tayyab
-- A SQL project analysing movie data

-- Query 1: Top 5 highest rated movies
SELECT title, rating, director 
FROM movies
ORDER BY rating DESC
LIMIT 5;

-- Query 2: Director with most movies
SELECT director, COUNT(*) as total_movies
FROM movies
GROUP BY director
ORDER BY total_movies DESC;

-- Query 3: Average rating by genre
SELECT genre, AVG(rating) as avg_rating
FROM movies
GROUP BY genre
ORDER BY avg_rating DESC;

-- Query 4: Top 5 longest movies
SELECT title, runtime
FROM movies
ORDER BY runtime DESC
LIMIT 5;

-- Query 5: Movies from outside the USA
SELECT title, country
FROM movies
WHERE country != 'USA'
ORDER BY title DESC;