--create db and schema
create or replace database tmdb_movies_db;
use database tmdb_movies_db;
create or replace schema tmdb_movies_schema;
use schema tmdb_movies_schema;
show tables;

--create top_rated_movies table
create or replace table top_rated_movies(
id number,
original_language varchar,
original_title varchar,
title varchar,
release_date timestamp_ntz,
adult varchar,
popularity int,
vote_average int,
vote_count int
);

--create cast_details table
create or replace table cast_details(
movie_id int,
cast_id int,
cast_name varchar,
cast_gender int,
cast_role varchar,
character_id int,
character_name varchar,
cast_order int
);

--create genre details table
create or replace table genre_details(
movie_id int,
genre_id int,
genre_name varchar
);

--create movie_details table
create or replace table movie_details(
movie_id int,
movie_budget int,
movie_revenue int,
movie_runtime int
)

--create production_details table
create or replace table production_details(
movie_id int,
production_id int,
production_name varchar,
origin_country varchar
);
