#coverage of recipes whose ingredients has cfp
select count(*)  from (
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, SUM(CASE 
             WHEN i.carbon_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.carbon_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from recipes r join ingredients_recipes ir on r.recipe_id = ir.recipe_id join ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc) c where c.recipe_coverage >= 100;


#coverage of recipes whose ingredients has wfp
select count(*)  from (
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, SUM(CASE 
             WHEN i.water_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.water_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from recipes r join ingredients_recipes ir on r.recipe_id = ir.recipe_id join ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc) c where c.recipe_coverage >= 100;


#coverage of recipes whose ingredients has both cfp and wfp
select count(*)  from (
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, SUM(CASE 
             WHEN i.carbon_foot_print IS not NULL and i.water_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.carbon_foot_print IS  NULL and i.water_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from recipes r join ingredients_recipes ir on r.recipe_id = ir.recipe_id join ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc) c where c.recipe_coverage >= 100;
