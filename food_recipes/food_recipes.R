library(tidyverse)

raw_df <- read_csv("food_recipes/RAW_food_recipes.csv")

raw_df %>% 
  count(cuisine, sort = TRUE) %>% View

cuisines <- c("French", "Italian Recipes", "Mexican", "Greek")

df <- raw_df %>% 
  filter(cuisine %in% cuisines) %>% 
  mutate(cuisine = if_else(cuisine == "Italian Recipes", "Italian", cuisine)) %>% 
  mutate(
    # Удалить уточнения в скобках
    ingredients = str_remove_all(ingredients, "\\([A-Za-z /&]*\\)"),
    # Заменить | на запятую
    ingredients = str_replace_all(ingredients, " *\\|", ", ")) %>% 
  filter(!row_number() %in% c(170, 171, 177, 224, 286, 447)) %>% 
  select(recipe_title, ingredients, cuisine, course, diet, prep_time, cook_time, rating, vote_count) %>% 
  drop_na()

write_tsv(df, "food_recipes/food_recipes.tsv")
