# SuEatableLife_working_folder (includes colab notebooks)

The folder is so organized:
*   "SuEatableLife" contains the working files for the two followings python notebook. Don't change the name of the folder since is referred by the notebooks.

    Refer to the internal md file for more informations.

*   "SuEatableLife_data_extractor.ipynb" contains the scripts used for filtering and merging the SEL Database obtaining the CSEL dataset.

*   "SuEatableLife_FoodPrintDB_data_joiner.ipynb" contains the scripts used to fid matches between the ingredients name in the FoodPrintDB_v1 and the food item name in the CSEL dataset or the SEL cfp/wfp typology. The so obtained matches are explained by this [file](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/Docs/Mapping_foodprintDB_sueatable.xlsx). The obtained sql insert and updates are available [here](https://github.com/aiacovazzi/FoodPrintDB-Database-Completion/blob/main/SuEatableLife%20Integration%20In%20FoodPrintDB/1_FoodPintDB_v2(DB%20updates)/2_update_cfp_wfp_from_sueatable.sql).

---

How to use this folder:

Copy the entire content of this directory into a folder called "Semantics In Intelligent Information Access" and place the obtained folder in the root of a Google Drive storage, then you will able to use the notebooks.
