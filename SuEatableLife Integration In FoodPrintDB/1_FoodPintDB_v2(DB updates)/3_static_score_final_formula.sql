ALTER TABLE food_print.ingredients ADD COLUMN normalized_water_foot_print float;
ALTER TABLE food_print.ingredients ADD COLUMN normalized_carbon_foot_print float;

CREATE OR REPLACE VIEW food_print.min_max_ingredients AS 
SELECT 
  MIN(water_foot_print) min_wfp, 
  MAX(water_foot_print) max_wfp, 
  MIN(carbon_foot_print) min_cfp, 
  MAX(carbon_foot_print) max_cfp 
FROM food_print.ingredients;

UPDATE food_print.ingredients 
SET normalized_water_foot_print = (water_foot_print-(SELECT min_wfp FROM food_print.min_max_ingredients))/(SELECT max_wfp - min_wfp FROM food_print.min_max_ingredients), 
normalized_carbon_foot_print= (carbon_foot_print-(SELECT min_cfp FROM food_print.min_max_ingredients))/(SELECT max_cfp - min_cfp FROM food_print.min_max_ingredients) 
WHERE 1;

create or replace view food_print.recipes_score as
select r.recipe_id, r.title, sum(ing_score) score from (
select b.*, sum*EXP(-weigh) ing_score from(
select a.*, ROW_NUMBER() 
OVER ( partition by recipe_id order by sum desc ) -1 weigh from (
select ir.*, name, normalized_carbon_foot_print, normalized_water_foot_print, normalized_carbon_foot_print*0.8 + normalized_water_foot_print*0.2  sum
from food_print.ingredients i join food_print.ingredients_recipes  ir on i.ingredient_id = ir.ingredient_id order by recipe_id, sum desc
)a
)b
)c join food_print.recipes r on c.recipe_id = r.recipe_id group by recipe_id having score is not null order by score desc;

update food_print.recipes set static_score = null where 1;
update food_print.recipes r join food_print.recipes_score rs on r.recipe_id = rs.recipe_id 
set static_score =  (score - (select min(score) from food_print.recipes_score))/((select max(score) from food_print.recipes_score)-(select min(score) from food_print.recipes_score));
update food_print.recipes set mcfp = null, mwfp = null where 1;
commit;