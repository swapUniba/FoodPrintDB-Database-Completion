# SuEatableLife

This folder contains working files used by the scripts in the folder on the previous level.
The folder is so organized:
*   "_Finalized" contains the final "cfp_wfp_ingredients.csv" that represent the CSEL dataset, is the final result of the [SuEatableLife_data_extractor.ipynb](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_working_folder%20(includes%20colab%20notebooks)/SuEatableLife_data_extractor.ipynb) scripts in the previous level. Once regenerated must be use to replace the same file in the [CSEL_dataset](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/tree/main/SuEatableLife%20Database/CSEL_dataset) folder.

*   "co2.csv" is the csv version of the sheet "SEL CF for users" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.

* 	"co2_filtered.csv" is the filterd version of the previous file obtained using [SuEatableLife_data_extractor.ipynb](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_working_folder%20(includes%20colab%20notebooks)/SuEatableLife_data_extractor.ipynb). It contains only the valid information about carbon footprint.
 
*	"co2_median_sub_typology.csv" is the csv version of the sheet "SEL CF sub-Typologies STAT" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.

*	"co2_median_typology.csv" is the csv version of the sheet "SEL CF Typologies STAT" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.

*	"food_print_ingredients.csv" is the csv version of the [ingredients](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Integration%20In%20FoodPrintDB/0_FoodPrintDB_v1(DB%20creation)/2%20-%20food_print_ingredients.sql) table of FoodPrintDB_v1, derived extracting the csv file using MySql. Is used by the [SuEatableLife_FoodPrintDB_data_joiner.ipynb](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_working_folder%20(includes%20colab%20notebooks)/SuEatableLife_FoodPrintDB_data_joiner.ipynb) notebook to catch matches between ingredients in FoodPrintDB_v1 and CSEL dataset or SEL cfp/wfp typologies.

*   "wfp.csv" is the csv version of the sheet "SEL WF for users" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.

* 	"wfp_filtered.csv" is the filterd version of the previous file obtained using [SuEatableLife_data_extractor.ipynb](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_working_folder%20(includes%20colab%20notebooks)/SuEatableLife_data_extractor.ipynb). It contains only the valid information about water footprint.
 
*	"wfp_median_sub_typology.csv" is the csv version of the sheet "SEL WF sub-Typologies STAT" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.

*	"wfp_median_typology.csv" is the csv version of the sheet "SEL WF Typologies STAT" in the [original SEL database file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Database/SuEatableLife_Food_Footprint_database.xlsx). This conversion was done by hand.


