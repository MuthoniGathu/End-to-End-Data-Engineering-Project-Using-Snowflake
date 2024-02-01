create or replace schema tmdb_movies_schema_analytics;
use schema tmdb_movies_schema_analytics;
show tables;


--create dimMovies
create or replace table dimMovies as (
        select id as movie_id,
               original_language,
               original_title,
               title,
               adult
               from tmdb_movies_db.tmdb_movies_schema.top_rated_movies

)

select * from dimMovies limit 10

--create dimProduction
create or replace table dimProduction as (
       select distinct production_id,
              production_name,
              origin_country
              from tmdb_movies_db.tmdb_movies_schema.production_details
);

select * from dimProduction 

--create a junction table between movies and production table
create or replace table moviesprod as (
       select id as movie_id,
              production_id
             from tmdb_movies_db.tmdb_movies_schema.top_rated_movies as t
             join tmdb_movies_db.tmdb_movies_schema.production_details pd on t.id = pd.movie_id
);

select * from moviesprod;

--create dimGenres
create or replace table dimGenres as (
        select distinct genre_id,
               genre_name
               from tmdb_movies_db.tmdb_movies_schema.genre_details
);
select * from dimGenres 

--create junction table between movies and genres table
create or replace table moviesgenres as(
           select id as movie_id,
           genre_id
           from tmdb_movies_db.tmdb_movies_schema.top_rated_movies as t
           join tmdb_movies_db.tmdb_movies_schema.genre_details as gd on t.id = gd.movie_id
);

select * from moviesgenres;

--create dimCast
create or replace table dimCast as (
         select distinct cast_id,
                cast_name,
                cast_gender,
                cast_role,
                character_id,
                character_name,
                cast_order
                from tmdb_movies_db.tmdb_movies_schema.cast_details
);
select * from dimCast 

--create junction table between movies and cast table
create or replace table moviescast as (
       select id as movie_id,
       cast_id
       from tmdb_movies_db.tmdb_movies_schema.top_rated_movies as t
       join tmdb_movies_db.tmdb_movies_schema.cast_details as cd on t.id = cd.movie_id
);

select * from moviescast;

--create dimDates
create or replace table dimDate as(
          select to_char(release_date, 'ddmmyyyy') as date_id,
           release_date,
           year(release_date) as year,
           monthname(release_date) as month,  
           month(release_date) as month_no, 
           dayname(release_date) as day_of_week
           from tmdb_movies_db.tmdb_movies_schema.top_rated_movies          
);

select * from dimDate

-- create factMovies
create or replace table factMovies as(
      select id,
             to_char(release_date, 'ddmmyyyy') as date_id,
             movie_budget,	
             movie_revenue,	
             movie_runtime,
             popularity,	
             vote_average,	
             vote_count
      from tmdb_movies_db.tmdb_movies_schema.top_rated_movies as t
      join tmdb_movies_db.tmdb_movies_schema.movie_details as md on t.id = md.movie_id
      
);

select * from factMovies;
