SELECT CONCAT(directors.first_name, ' ', directors.last_name ) AS "Directors Name", COUNT(DISTINCT genres.name) AS "Jumlah Genre"
FROM movies
JOIN directors ON movies.director_id = directors.id
JOIN genres ON movies.genre_id = genres.id
GROUP BY directors.first_name, directors.last_name;

SELECT CONCAT(actors.first_name, ' ', actors.last_name) AS "Actors Name", COUNT(DISTINCT role)
FROM movies_actors
JOIN actors ON movies_actors.actor_id = actors.id
GROUP BY actors.first_name, actors.last_name
HAVING COUNT(DISTINCT role) > 5;

SELECT COUNT(m.title) AS "Total Movies", CONCAT(d.first_name, ' ', d.last_name) AS "Director Name"
FROM movies m
JOIN directors d ON m.director_id = d.id
GROUP BY d.first_name, d.last_name
ORDER BY COUNT(m.title) DESC
LIMIT 1;

SELECT EXTRACT(YEAR FROM release_date) AS "Year", COUNT(EXTRACT(YEAR FROM release_date)) AS "Total Movies"
FROM movies
GROUP BY EXTRACT(YEAR FROM release_date)
ORDER BY "Total Movies" DESC
LIMIT 1;

SELECT movies.title, STRING_AGG(actors.first_name, ', ') AS "List Actors"
FROM movies_actors
JOIN movies ON movies.id = movies_actors.movie_id
JOIN actors ON actors.id = movies_actors.actor_id
GROUP BY movies.title
ORDER BY movies.title DESC;



