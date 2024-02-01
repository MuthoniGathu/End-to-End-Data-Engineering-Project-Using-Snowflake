 CREATE WAREHOUSE first_wh

--create file format object
create or replace file format csv_file_format
type = 'csv'
field_delimiter = ','
skip_header = 1
field_optionally_enclosed_by = '"'
null_if = ('NULL', 'null')
empty_field_as_null = true

--creating connection to S3
create or replace storage integration s3_intergration
type = external_stage
storage_provider = s3
enabled = true
storage_aws_role_arn = 'arn:aws:iam::860437963328:role/snowflake-s3-connection3'
storage_allowed_locations= ('s3://tmdb-movie-pipeline/raw-data')

desc integration s3_intergration

create or replace stage movies_stage
url = 's3://tmdb-movie-pipeline/raw-data'
storage_integration = s3_intergration
file_format = csv_file_format

--copy from s3 to snowflake
copy into cast_details(movie_id,cast_id,cast_name,cast_gender,cast_role,character_id,character_name,cast_order)
from @movies_stage/cast_details/cast_details.csv
file_format = (format_name == 'csv_file_format');

select * from cast_details limit 10

copy into genre_details
from @movies_stage/genre_details/genre_details.csv
file_format = (format_name == 'csv_file_format');

select * from genre_details

copy into movie_details
from @movies_stage/movie_details/movie_details.csv
file_format = (format_name == 'csv_file_format');

select * from movie_details limit 10


copy into production_details
from @movies_stage/production_details/production_details.csv
file_format = (format_name == 'csv_file_format');

select * from production_details limit 10

copy into top_rated_movies
from @movies_stage/top_rated_movies/top_rated_movies.csv
file_format = (format_name = 'csv_file_format');

select * from top_rated_movies limit 10