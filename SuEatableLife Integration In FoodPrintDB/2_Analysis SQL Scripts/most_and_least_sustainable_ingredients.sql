select * from ingredients order by carbon_foot_print desc LIMIT 10;
select * from ingredients WHERE carbon_foot_print IS NOT NULL order by carbon_foot_print ASC LIMIT 10;

select * from ingredients order by water_foot_print desc LIMIT 10;
select * from ingredients WHERE water_foot_print IS NOT NULL order by water_foot_print ASC LIMIT 10;