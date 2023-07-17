-- Tables dont il faut ajouter toutes les valeurs :
-- language
INSERT INTO language (language_id)
    VALUE ('fr');
INSERT INTO language (language_id)
    VALUE ('en');
-- test
SELECT *
FROM language;

-- item_category

INSERT INTO item_category (id)
    VALUE ('tshirts');
INSERT INTO item_category (id)
    VALUE ('sweatshirts');
INSERT INTO item_category (id)
    VALUE ('coats');
INSERT INTO item_category (id)
    VALUE ('trousers');
INSERT INTO item_category (id)
    VALUE ('shoes');
INSERT INTO item_category (id)
    VALUE ('skirts');
-- INSERT INTO item_category (id)
-- VALUE ('shirts');
-- INSERT INTO item_category (id)
-- VALUE ('sweaters');
-- INSERT INTO item_category (id)
-- VALUE ('blazers');
-- INSERT INTO item_category (id)
-- VALUE ('jeans');
-- INSERT INTO item_category (id)
-- VALUE ('leggings');
-- INSERT INTO item_category (id)
-- VALUE ('shorts');
-- INSERT INTO item_category (id)
-- VALUE ('dresses');
-- INSERT INTO item_category (id)
-- VALUE ('jumpsuits');


-- test
SELECT *
FROM item_category;

-- translation
INSERT INTO translation (name, language_id, category_id)
VALUES ('T-shirts & Tops', 'en', 'tshirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Sweatshirts', 'en', 'sweatshirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Coats & Jackets', 'en', 'coats');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Trousers', 'en', 'trousers');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Skirts', 'en', 'skirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Shoes', 'en', 'shoes');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Shirts', 'en', 'shirts');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Sweaters', 'en', 'sweaters');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Blazers', 'en', 'blazers');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Jeans', 'en', 'jeans');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Leggings & Joggers', 'en', 'leggings');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Shorts', 'en', 'shorts');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Dresses', 'en', 'dresses');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Jumpsuits & Overalls', 'en', 'jumpsuits');


INSERT INTO translation (name, language_id, category_id)
VALUES ('T-shirts & Tops', 'fr', 'tshirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Sweatshirts', 'fr', 'sweatshirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Vestes & Manteaux', 'fr', 'coats');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Pantalons', 'fr', 'trousers');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Jupes', 'fr', 'skirts');
INSERT INTO translation (name, language_id, category_id)
VALUES ('Chaussures', 'fr', 'shoes');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Chemises', 'fr', 'shirts');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Pulls', 'fr', 'sweaters');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Blazers', 'fr', 'blazers');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Jeans', 'fr', 'jeans');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Leggings & Joggings', 'fr', 'leggings');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Shorts', 'fr', 'shorts');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Robes', 'fr', 'dresses');
-- INSERT INTO translation (name, language_id, category_id)
-- VALUES ('Combinaisons & Salopettes', 'fr', 'jumpsuits');

-- test
SELECT *
FROM translation;

-- item
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('T-shirt pour homme', 9.99, 'tshirt_m1.jpg', 'Superdry', 'L', 'm', 'Les Petits Riens', 'tshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('T-shirt pour femme', 9.99, 'tshirt_f1.jpg', 'Zara', 'XS', 'f', 'Chez Bonne Maman', 'tshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('T-shirt pour enfant', 5, 'tshirt_c1.jpg', 'Petit Bateau', '86', 'c', 'Chez Bonne Maman', 'tshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Sweatshirt pour homme', 12, 'sweatshirt_m1.jpg', 'Lacoste', 'L', 'm', 'Besap', 'sweatshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Sweatshirt pour femme', 11, 'sweatshirt_f1.jpg', 'Nike', 'M', 'f', 'Les Petits Riens', 'sweatshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Sweatshirt pour enfant', 24, 'sweatshirt_c1.jpg', 'Monoprix', '114', 'c', 'Les Petits Riens', 'sweatshirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Veste pour homme', 30, 'coat_m1.jpg', 'G-Star', 'XL', 'm', 'Les Petits Riens', 'coats');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Manteau pour femme', 20, 'coat_f1.jpg', 'Garcia', 'L', 'f', 'Besap', 'coats');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Veste pour enfant', 25, 'coat_c1.jpg', 'Monoprix', '138', 'c', 'Les Petits Riens', 'coats');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Pantalon pour homme', 15, 'trousers_m1.jpg', 'Dockers', 'S', 'm', 'Les Petits Riens', 'trousers');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Pantalon pour femme', 20, 'trousers_f1.jpg', 'Mango', 'XS', 'f', 'Chez Bonne Maman', 'trousers');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Pantalon pour enfant', 12, 'trousers_c1.jpg', 'Petit Bateau', '150', 'c', 'Besap', 'trousers');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Jupe pour femme', 15, 'skirt_f1.jpg', 'Only', 'L', 'f', 'Les Petits Riens', 'skirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Jupe pour enfant', 12, 'skirt_c1.jpg', 'Petit Bateau', '94', 'c', 'Chez Bonne Maman', 'skirts');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Chaussures pour homme', 40, 'shoes_m1.jpg', 'Adidas', '39', 'm', 'Chez Bonne Maman', 'shoes');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Chaussures pour femme', 45, 'shoes_f1.jpg', 'Buffalo', '41', 'f', 'Les Petits Riens', 'shoes');
INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
VALUES ('Chaussures pour enfant', 20, 'shoes_c1.jpg', 'Monoprix', '32', 'c', 'Besap', 'shoes');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Chemise pour homme', 10.5, 'shirt_m1.jpg', 'H&M', 'XL', 'm', 'Besap', 'shirts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Chemise pour femme', 10.5, 'shirt_f1.jpg', 'Shein', 'M', 'f', 'Chez Bonne Maman', 'shirts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Chemise pour enfant', 8.5, 'shirt_c1.jpg', 'Monoprix', '94', 'c', 'Besap', 'shirts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Pull pour homme', 15, 'sweater_m1.jpg', 'Zara', 'S', 'm', 'Les Petits Riens', 'sweaters');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Pull pour femme', 15, 'sweater_f1.jpg', 'Zara', 'XXL', 'f', 'Les Petits Riens', 'sweaters');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Pull pour enfant', 12, 'sweater_c1.jpg', 'Petit Bateau', '102', 'c', 'Besap', 'sweaters');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Blazer pour homme', 20.5, 'blazer_m1.jpg', 'De Fursac', 'S', 'm', 'Besap', 'blazers');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Blazer pour femme', 25, 'blazer_f1.jpg', 'Costes', 'M', 'f', 'Chez Bonne Maman', 'blazers');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Blazer pour enfant', 28, 'blazer_c1.jpg', 'Petit Bateau', '126', 'c', 'Chez Bonne Maman', 'blazers');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Jeans pour homme', 15, 'jeans_m1.jpg', 'Jack & Jones', 'XXL', 'm', 'Besap', 'jeans');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Jeans pour femme', 16, 'jeans_f1.jpg', 'Bershka', 'M', 'f', 'Les Petits Riens', 'jeans');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Jeans pour enfant', 18, 'jeans_c1.jpg', 'Monoprix', '156', 'c', 'Chez Bonne Maman', 'jeans');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Jogging pour homme', 12, 'leggings_m1.jpg', 'Nike', 'M', 'm', 'Besap', 'leggings');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Legging pour femme', 13, 'leggings_f1.jpg', 'ONLY', 'L', 'f', 'Chez Bonne Maman', 'leggings');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Legging pour enfant', 20, 'leggings_c1.jpg', 'Petit Bateau', '162', 'c', 'Les Petits Riens', 'leggings');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Short pour homme', 15, 'shorts_m1.jpg', 'Mango', 'S', 'm', 'Les Petits Riens', 'shorts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Short pour femme', 18, 'shorts_f1.jpg', 'Pull & Bear', 'XL', 'f', 'Chez Bonne Maman', 'shorts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Short pour enfant', 9, 'shorts_c1.jpg', 'Monoprix', '86', 'c', 'Besap', 'shorts');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Robe pour femme', 25, 'dress_f1.jpg', 'Zara', 'XS', 'f', 'Les Petits Riens', 'dresses');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Robe pour enfant', 20, 'dress_c1.jpg', 'Monoprix', '102', 'c', 'Besap', 'dresses');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Salopette pour homme', 35, 'jumpsuit_m1.jpg', 'La Redoute', 'L', 'm', 'Les Petits Riens', 'jumpsuits');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Combinaison pour femme', 37, 'jumpsuit_f1.jpg', 'ASOS', 'M', 'f', 'Besap', 'jumpsuits');
-- INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id)
-- VALUES ('Salopette pour enfant', 35, 'jumpsuit_c1.jpg', 'Petit Bateau', '114', 'c', 'Chez Bonne Maman', 'jumpsuits');

-- test
SELECT *
FROM item;

-- Tables avec quelques valeurs pour les essais :
-- customer
INSERT INTO customer (username, email, password, first_name, last_name, delivery_address, phone_number, birthdate, authorities, account_non_expired, account_non_locked, credentials_non_expired, enabled)
VALUES ('juju', 'etu47233@henallux.be', 'password1', 'Julien', 'Hanquet', 'Rue Jean-Baptiste Fichefet 58, 5100 Namur', '0499637147', '1999-07-17', 'ROLE_USER', true, true, true, true);
INSERT INTO customer (username, email, password, first_name, last_name, delivery_address, phone_number, birthdate, authorities, account_non_expired, account_non_locked, credentials_non_expired, enabled)
VALUES ('mama', 'etu47124@henallux.be', 'password2', 'Marie', 'Howet', 'sais pas', 'sais pas', '2000-07-25', 'ROLE_USER', true, true, true, true);
INSERT INTO customer (username, email, password, first_name, last_name, delivery_address, phone_number, birthdate, authorities, account_non_expired, account_non_locked, credentials_non_expired, enabled)
VALUES ('caro', 'etu45806@henallux.be', 'password3', 'Caroline', 'Dubois', 'sais pas', 'sais pas', '2001-08-03', 'ROLE_USER', true, true, true, true);
INSERT INTO customer (username, email, password, first_name, last_name, delivery_address, phone_number, birthdate, authorities, account_non_expired, account_non_locked, credentials_non_expired, enabled)
VALUES  ('memel', 'melvinparache@hotmail.be','$2a$10$b6NNXDj7f23qRGQHa7H.e.wN4griKtjRGKDt5oKK.lXiKX1slCohK', 'Melvin', 'Parache', 'Rue haynol', '0496', '2002-01-17', 'ROLE-USER', true, true, true, true);
