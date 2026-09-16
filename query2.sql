SELECT movies.title, genres.name AS "Genres Name", CONCAT(directors.first_name, ' ', directors.last_name ) AS "Directors Name"
FROM movies 
JOIN directors ON movies.director_id = directors.id 
JOIN genres ON movies.genre_id = genres.id
LIMIT 50;

SELECT movies.title, movies.rating, CONCAT(actors.first_name, ' ', actors.last_name) AS "Actors Name", ma.role
from movies_actors ma
JOIN movies ON ma.movie_id = movies.id
JOIN actors ON ma.actor_id = actors.id;