create or replace view recipes_score as
select r.recipe_id, r.title, sum(ing_score) score from (
select b.*, sum*EXP(-weigh) ing_score from(
select a.*, ROW_NUMBER() 
OVER ( partition by recipe_id order by sum desc ) -1 weigh from (
select ir.*, name, normalized_carbon_foot_print, normalized_water_foot_print, normalized_carbon_foot_print*0.8 + normalized_water_foot_print*0.2  sum
from ingredients i join ingredients_recipes  ir on i.ingredient_id = ir.ingredient_id order by recipe_id, sum desc
)a
)b
)c join recipes r on c.recipe_id = r.recipe_id group by recipe_id having score is not null order by score desc;

#Three Cheese Cauliflower Gratin
#Poached Salmon
update recipes set static_score = null where 1;
update recipes r join recipes_score rs on r.recipe_id = rs.recipe_id 
set static_score =  (score - (select min(score) from recipes_score))/((select max(score) from recipes_score)-(select min(score) from recipes_score));
commit;

select * from recipes where static_score is not null order by static_score desc;