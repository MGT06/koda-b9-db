SELECT movies.title, movies.release_date, movies.rating
FROM movies
WHERE EXTRACT(YEAR FROM release_date) = 2020;


SELECT CONCAT(first_name, ' ', last_name)
FROM actors
WHERE first_name LIKE '%s';

SELECT movies.title, movies.release_date, movies.rating
FROM movies
WHERE EXTRACT(YEAR FROM release_date) BETWEEN 2004 AND 2010 AND rating BETWEEN 4 AND 8;
