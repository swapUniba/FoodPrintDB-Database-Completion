update recipes set rating = 2.5, rating_count = 1 where 
rating is null and rating_count is null and trust_cfp >= 0.8 and trust_wfp >=0.8;
commit;