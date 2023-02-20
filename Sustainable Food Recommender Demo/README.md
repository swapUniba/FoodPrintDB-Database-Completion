# Sustainable Food Recommender Demo

This folder is so organized:
*    "SQL Dataset Creator Script" folder contains an SQL file for discretizing the sustainability column.
*    "dataset_covered_recipes.csv" is a dataset of recipes with their titles, ingredients, and sustainability index.
*    "embedding_mid_sus_recipes.pkl" is the pickle file containing the embeddings of the recipes in the dataset with medium sustainability value.
*    "embedding_sus_recipes.pkl" is the pickle file containing the embeddings of the recipes in the dataset with high sustainability value.
*    "Neo_gpt_hint_generation.ipynb" generates a recommendation in natural language using Neo-GPT model.
*    "recipes_recommender_GPT3_based.ipynb" generates a recommendation in natural language using GPT-3 model.
*    "roberta-base classification.ipynb" contain a script that uses the "roberta-base" model to classify recipes sustainability.

---

How to use this folder:

The notebooks in this folder use the same path to access the dataset_covered_recipes.csv dataset. Be sure to align the path before running the notebooks to ensure they are working properly.
