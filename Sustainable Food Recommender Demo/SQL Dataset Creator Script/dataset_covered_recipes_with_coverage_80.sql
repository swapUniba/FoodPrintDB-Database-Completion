#coverage of recipes whose ingredients has both cfp and wfp
create or replace view food_print.covered_recipes as
select *  from (
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, r.url, r.static_score, SUM(CASE 
             WHEN i.carbon_foot_print IS not NULL and i.water_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.carbon_foot_print IS  NULL and i.water_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from food_print.recipes r join food_print.ingredients_recipes ir on r.recipe_id = ir.recipe_id join food_print.ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc) c where c.recipe_coverage >= 80;

create or replace view food_print.labeled_covered_recipes as
select 
r.recipe_id,
r.title,
r.url,
GROUP_CONCAT(lower(na.name)) ingredients,
case
when static_score >= 0.5 then 'LOW'
WHEN static_score > 0.1 AND static_score< 0.5 THEN 'MEDIUM'
WHEN static_score <= 0.1  THEN 'HIGH'
END SUSTAINABILITY
 from covered_recipes R 
 join ingredients_recipes ir on r.recipe_id = ir.recipe_id
 join ingredients_name_alias na on ir.ingredient_id = na.ingredient_id
 WHERE static_score IS NOT NULL
 group by ir.recipe_id
 order by static_score asc;