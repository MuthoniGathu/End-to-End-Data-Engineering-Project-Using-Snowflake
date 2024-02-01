--create profit_per_movie view
create or replace view profit_per_movie as (
select  id, 
        title as movie_title, 
        movie_budget as movie_budget,
        movie_revenue as movie_revenue,
       (movie_revenue-movie_budget) as profit,
from factmovies as f
join dimmovies as dm on f.id = dm.movie_id
order by profit desc);

select * from profit_per_movie;

--create profit_per_genre view
create or replace view profit_per_genre as(
select --id, 
       dm.genre_name as genre_name,
       sum(movie_budget) as movie_budget,
       sum(movie_revenue) as movie_revenue,
       sum((movie_revenue-movie_budget) as profit, 
from factmovies as f
join moviesgenres as mg on f.id = mg.movie_id
join dimgenres as dm  on dm.genre_id = mg.genre_id
--where id = '238'
group by dm.genre_name
order by profit desc
)

select * from profit_per_genre;

--create profit_per_prod_company view
create or replace view profit_per_prod_company as(
select --id, 
       dp.production_name as production_name,
       sum(movie_budget) as movie_budget,
       sum(movie_revenue) as movie_revenue,
       sum((movie_revenue-movie_budget)) as profit
from factmovies as f
join moviesprod as mp on f.id = mp.movie_id
join dimproduction as dp  on dp.production_id = mp.production_id
--where id = '238'
group by dp.production_name
order by profit desc) 

select * from profit_per_prod_company;

--create profit_per_month view
create or replace view profit_per_month as(
select  --id, 
        month as Month,
        month_no as Month_No,
       -- title, 
        sum(movie_budget) as movie_budget,
        sum(movie_revenue) as movie_revenue,
        sum((movie_revenue-movie_budget)) as profit
from factmovies as f
join dimmovies as dm on f.id = dm.movie_id
join dimdate as d on d.date_id = f.date_id
group by month,month_no
order by month_no )

select * from profit_per_month;

--create aggregates view
create or replace view aggregates as(
select  --id, 
        --title, 
         AVG(movie_budget) as AVG_Budget,
         AVG(movie_revenue) as AVG_Revenue,
        AVG(movie_revenue-movie_budget) as AVG_profit
from factmovies as f
join dimmovies as dm on f.id = dm.movie_id);

Select * from aggregates;