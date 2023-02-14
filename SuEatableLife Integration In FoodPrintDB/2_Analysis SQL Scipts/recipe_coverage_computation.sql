#cfp coverage recipes
select count(*) from food_print.recipes where trust_cfp >= 80;

select count(*) from food_print.recipes where trust_cfp >= 90;

select count(*) from food_print.recipes where trust_cfp >= 100;

#wfp coverage recipes
select count(*) from food_print.recipes where trust_wfp >= 80;

select count(*) from food_print.recipes where trust_wfp >= 90;

select count(*) from food_print.recipes where trust_wfp >= 100;

#cfp and wfp coverage recipes
select count(*) from food_print.recipes where trust_cfp >= 80 and trust_wfp >= 80;

select count(*) from food_print.recipes where trust_cfp >= 90 and trust_wfp >= 90;

select count(*) from food_print.recipes where trust_cfp >= 100 and trust_wfp >= 100;