select ir.ingredient_id, 
i.name,
count(ir.ingredient_id)/(select count(*) from recipes) relative_freq, 
case 
	when i0.carbon_foot_print is not null and i0.water_foot_print is not null
    then 'Y'
    else 'N'
end valid_in_foodprint_v1 ,
case 
	when i.carbon_foot_print is not null and i.water_foot_print is not null
    then 'Y'
    else 'N'
end valid_in_foodprint_v2 
 from ingredients_recipes ir 
 join ingredients i on ir.ingredient_id = i.ingredient_id
 join ingredients_0 i0 on ir.ingredient_id = i0.ingredient_id 
 group by ir.ingredient_id 
order by relative_freq desc;