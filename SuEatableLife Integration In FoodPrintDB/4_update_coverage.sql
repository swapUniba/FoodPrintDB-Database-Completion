update recipes set trust_cfp = null, trust_wfp = null where 1;

#coverage of recipes whose ingredients has cfp
with cfp_cov as(
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, SUM(CASE 
             WHEN i.carbon_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.carbon_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from recipes r join ingredients_recipes ir on r.recipe_id = ir.recipe_id join ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc), 
wfp_cov as(
select d.*, (d.n_with_footprint*100/d.total) as recipe_coverage from (
select r.recipe_id, r.title, SUM(CASE 
             WHEN i.water_foot_print is not null THEN 1
             ELSE 0
           END) AS n_with_footprint,
       SUM(CASE 
             WHEN i.water_foot_print is  null THEN 1
             ELSE 0
           END) AS n_without_footprint, count(i.ingredient_id) as total  from recipes r join ingredients_recipes ir on r.recipe_id = ir.recipe_id join ingredients i on i.ingredient_id = ir.ingredient_id   
		   group by r.recipe_id order by n_without_footprint desc, n_with_footprint asc) d order by recipe_coverage desc)
update recipes r join cfp_cov cc on r.recipe_id = cc.recipe_id join wfp_cov wc on r.recipe_id = wc.recipe_id set trust_cfp = cc.recipe_coverage, trust_wfp = wc.recipe_coverage where 1;
commit;