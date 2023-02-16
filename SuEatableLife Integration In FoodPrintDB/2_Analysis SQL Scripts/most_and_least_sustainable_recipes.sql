select * from food_print.recipes where static_score is not null order by static_score desc LIMIT 10;

select * from food_print.recipes where static_score is not null order by static_score asc LIMIT 10;