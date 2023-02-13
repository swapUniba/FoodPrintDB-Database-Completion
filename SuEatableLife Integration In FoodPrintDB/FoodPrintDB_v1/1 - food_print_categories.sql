create table categories
(
    category_id int auto_increment
        primary key,
    name        varchar(50)                         not null,
    created_at  timestamp default CURRENT_TIMESTAMP not null,
    updated_at  timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP
);

INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (1, 'Alcoholic beverage', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (2, 'Animal fat', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (3, 'Apples', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (4, 'Apricots', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (5, 'Arugula', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (6, 'Asparagus', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (7, 'Avocados', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (8, 'Babyfood', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (9, 'Bacon', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (10, 'Bananas', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (11, 'Beans', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (12, 'Beets', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (13, 'Beverages', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (14, 'Blackberries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (15, 'Blueberries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (16, 'Broccoli', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (17, 'Brussels sprouts', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (18, 'Bulgur', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (19, 'Butter', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (20, 'Cabbage', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (21, 'Candies', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (22, 'Capers', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (23, 'Carrots', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (24, 'Catsup', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (25, 'Cauliflower', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (26, 'Celery', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (27, 'Cereals ready-to-eat', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (28, 'Cheese', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (29, 'Cherries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (30, 'Chicken', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (31, 'Chickpeas (garbanzo beans', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (32, 'Chives', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (33, 'Cocoa', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (34, 'Cookies', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (35, 'Cornstarch', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (36, 'Cranberries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (37, 'Cranberry juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (38, 'Cranberry sauce', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (39, 'Cream', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (40, 'Crustaceans', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (41, 'Currants', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (42, 'Dates', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (43, 'Dulce de Leche', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (44, 'Edamame', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (45, 'Egg', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (46, 'Eggnog', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (47, 'Fennel', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (48, 'Figs', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (49, 'Fish', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (50, 'Fruit syrup', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (51, 'Ginger root', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (52, 'Grapefruit juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (53, 'Grapes', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (54, 'Honey', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (55, 'Horseradish', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (56, 'Ice creams', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (57, 'Kale', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (58, 'Kumquats', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (59, 'Lard', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (60, 'Leavening agents', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (61, 'Leeks', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (62, 'Lemon juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (63, 'Lentils', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (64, 'Lettuce', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (65, 'Lime juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (66, 'Macaroni', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (67, 'Mango', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (68, 'Margarine', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (69, 'Marmalade', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (70, 'Meatballs', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (71, 'Melons', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (72, 'Milk', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (73, 'Miso', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (74, 'Molasses', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (75, 'Mollusks', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (76, 'Mushrooms', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (77, 'Mustard', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (78, 'Nectarines', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (79, 'Nuts', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (80, 'Oat bran', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (81, 'Oil', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (82, 'Okra', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (83, 'Olives', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (84, 'Onions', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (85, 'Orange juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (86, 'Papayas', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (87, 'Parsley', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (88, 'Peaches', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (89, 'Peanut butter', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (90, 'Pears', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (91, 'Pepperoni', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (92, 'Peppers', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (93, 'Phyllo dough', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (94, 'Pickle relish', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (95, 'Pineapple', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (96, 'Plums', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (97, 'Pomegranate juice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (98, 'Pork', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (99, 'Pretzels', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (100, 'Puddings', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (101, 'Pumpkin', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (102, 'Radicchio', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (103, 'Radishes', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (104, 'Raspberries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (105, 'Rice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (106, 'Rice flour', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (107, 'Salisbury steak with gravy', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (108, 'Salt', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (109, 'Sauce', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (110, 'Sauerkraut', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (111, 'Seeds', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (112, 'Sherbet', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (113, 'Shortening', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (114, 'Snacks', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (115, 'Soup', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (116, 'Spices', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (117, 'Spinach', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (118, 'Squash', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (119, 'Strawberries', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (120, 'Sugars', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (121, 'Sweet potato', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (122, 'Sweetener', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (123, 'Syrups', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (124, 'Tamarinds', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (125, 'Tangerines', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (126, 'Tomatoes', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (127, 'Turnips', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (128, 'Vinegar', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (129, 'Water', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (130, 'Watermelon', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (131, 'Wheat flour', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (132, 'Wild rice', '2022-10-24 17:13:35', '2022-10-24 17:13:35');
INSERT INTO food_print.categories (category_id, name, created_at, updated_at) VALUES (133, 'Yogurt', '2022-10-24 17:13:35', '2022-10-24 17:13:35');