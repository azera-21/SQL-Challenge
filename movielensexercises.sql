USE movielens;

#1
-- SELECT title, release_date 
-- FROM movies 
-- WHERE release_date 
-- BETWEEN '1983-01-01' 
-- AND '1993-12-31'
-- ORDER BY release_date
-- DESC;

#2
-- SELECT title, rating FROM movies m
-- JOIN ratings r ON m.id=r.id
-- WHERE rating = 1

#3 
-- SELECT * FROM movies
-- JOIN genres_movies ON genres_movies.movie_id = movies.id
-- JOIN genres ON genres.id = genres_movies.genre_id
-- JOIN ratings ON ratings.movie_id = movies.id
-- JOIN users ON users.id = ratings.user_id
-- JOIN occupations ON occupations.id = users.occupation_id
-- WHERE genres.name = 'Sci-Fi'
-- AND users.age = 24
-- AND users.gender = 'M'
-- AND ratings.rating = 5
-- AND occupations.name = 'student';

#4
-- SELECT title FROM movies 
-- WHERE release_date =(
-- 	SELECT release_date FROM movies
-- 	GROUP BY release_date ORDER BY COUNT(release_date) DESC 
-- 	LIMIT 1
-- );

#5
-- SELECT genres.`name`, COUNT(movies.title) FROM genres_movies
-- JOIN movies ON genres_movies.movie_id = movies.id
-- JOIN genres ON genres_movies.genre_id = genres.id
-- GROUP BY genres.`name`
-- ORDER BY count(movies.title) ASC;








