-- Clear de la BD
DELETE FROM order_row;
DELETE FROM `order`;
DELETE FROM customer;
DELETE FROM item;
DELETE FROM translation;
DELETE FROM language;
DELETE FROM item_category;

INSERT INTO language (language_id) VALUES
        ('fr'),
        ('en');


INSERT INTO item_category (id) VALUES
('tshirts'),
('sweatshirts'),
('coats'),
('trousers'),
('shoes'),
('skirts'),
('shirts'),
('sweaters'),
('blazers'),
('jeans'),
('leggings'),
('shorts'),
('dresses'),
('jumpsuits');



INSERT INTO translation (name, language_id, category_id) VALUES
('T-shirts & Tops', 'en', 'tshirts'),
('Sweatshirts', 'en', 'sweatshirts'),
('Coats & Jackets', 'en', 'coats'),
('Trousers', 'en', 'trousers'),
('Skirts', 'en', 'skirts'),
('Shoes', 'en', 'shoes'),
('Shirts', 'en', 'shirts'),
('Sweaters', 'en', 'sweaters'),
('Blazers', 'en', 'blazers'),
('Jeans', 'en', 'jeans'),
('Leggings & Joggers', 'en', 'leggings'),
('Shorts', 'en', 'shorts'),
('Dresses', 'en', 'dresses'),
('Jumpsuits & Overalls', 'en', 'jumpsuits');

INSERT INTO translation (name, language_id, category_id) VALUES
 ('T-shirts & Tops', 'fr', 'tshirts'),
 ('Sweatshirts', 'fr', 'sweatshirts'),
 ('Vestes & Manteaux', 'fr', 'coats'),
 ('Pantalons', 'fr', 'trousers'),
 ('Jupes', 'fr', 'skirts'),
 ('Chaussures', 'fr', 'shoes'),
 ('Chemises', 'fr', 'shirts'),
 ('Pulls', 'fr', 'sweaters'),
 ('Blazers', 'fr', 'blazers'),
 ('Jeans', 'fr', 'jeans'),
 ('Leggings & Joggings', 'fr', 'leggings'),
 ('Shorts', 'fr', 'shorts'),
 ('Robes', 'fr', 'dresses'),
 ('Combinaisons & Salopettes', 'fr', 'jumpsuits');



INSERT INTO item (label, price, picture, brand, size, target, thrift_shop, category_id) VALUES
('T-shirt pour homme', 9.99, 'tshirt_m1.jpg', 'Superdry', 'L', 'm', 'Les Petits Riens', 'tshirts'),
('T-shirt pour femme', 9.99, 'tshirt_f1.jpg', 'Zara', 'XS', 'f', 'Chez Bonne Maman', 'tshirts'),
('T-shirt pour enfant', 5, 'tshirt_c1.jpg', 'Petit Bateau', '86', 'c', 'Chez Bonne Maman', 'tshirts'),
('Sweatshirt pour homme', 12, 'sweatshirt_m1.jpg', 'Lacoste', 'L', 'm', 'Besap', 'sweatshirts'),
('Sweatshirt pour femme', 11, 'sweatshirt_f1.jpg', 'Nike', 'M', 'f', 'Les Petits Riens', 'sweatshirts'),
('Sweatshirt pour enfant', 24, 'sweatshirt_c1.jpg', 'Monoprix', '114', 'c', 'Les Petits Riens', 'sweatshirts'),
('Veste pour homme', 30, 'coat_m1.jpg', 'G-Star', 'XL', 'm', 'Les Petits Riens', 'coats'),
('Manteau pour femme', 20, 'coat_f1.jpg', 'Garcia', 'L', 'f', 'Besap', 'coats'),
('Veste pour enfant', 25, 'coat_c1.jpg', 'Monoprix', '138', 'c', 'Les Petits Riens', 'coats'),
('Pantalon pour homme', 15, 'trousers_m1.jpg', 'Dockers', 'S', 'm', 'Les Petits Riens', 'trousers'),
('Pantalon pour femme', 20, 'trousers_f1.jpg', 'Mango', 'XS', 'f', 'Chez Bonne Maman', 'trousers'),
('Pantalon pour enfant', 12, 'trousers_c1.jpg', 'Petit Bateau', '150', 'c', 'Besap', 'trousers'),
('Jupe pour femme', 15, 'skirt_f1.jpg', 'Only', 'L', 'f', 'Les Petits Riens', 'skirts'),
('Jupe pour enfant', 12, 'skirt_c1.jpg', 'Petit Bateau', '94', 'c', 'Chez Bonne Maman', 'skirts'),
('Chaussures pour homme', 40, 'shoes_m1.jpg', 'Adidas', '39', 'm', 'Chez Bonne Maman', 'shoes'),
('Chaussures pour femme', 45, 'shoes_f1.jpg', 'Buffalo', '41', 'f', 'Les Petits Riens', 'shoes'),
('Chaussures pour enfant', 20, 'shoes_c1.jpg', 'Monoprix', '32', 'c', 'Besap', 'shoes'),
('Chemise pour homme', 10.5, 'shirt_m1.jpg', 'H&M', 'XL', 'm', 'Besap', 'shirts'),
('Chemise pour femme', 10.5, 'shirt_f1.jpg', 'Shein', 'M', 'f', 'Chez Bonne Maman', 'shirts'),
('Chemise pour enfant', 8.5, 'shirt_c1.jpg', 'Monoprix', '94', 'c', 'Besap', 'shirts'),
('Pull pour homme', 15, 'sweater_m1.jpg', 'Zara', 'S', 'm', 'Les Petits Riens', 'sweaters'),
('Pull pour femme', 15, 'sweater_f1.jpg', 'Zara', 'XXL', 'f', 'Les Petits Riens', 'sweaters'),
('Pull pour enfant', 12, 'sweater_c1.jpg', 'Petit Bateau', '102', 'c', 'Besap', 'sweaters'),
('Blazer pour homme', 20.5, 'blazer_m1.jpg', 'De Fursac', 'S', 'm', 'Besap', 'blazers'),
('Blazer pour femme', 25, 'blazer_f1.jpg', 'Costes', 'M', 'f', 'Chez Bonne Maman', 'blazers'),
('Blazer pour enfant', 28, 'blazer_c1.jpg', 'Petit Bateau', '126', 'c', 'Chez Bonne Maman', 'blazers'),
('Jeans pour homme', 15, 'jeans_m1.jpg', 'Jack & Jones', 'XXL', 'm', 'Besap', 'jeans'),
('Jeans pour femme', 16, 'jeans_f1.jpg', 'Bershka', 'M', 'f', 'Les Petits Riens', 'jeans'),
('Jeans pour enfant', 18, 'jeans_c1.jpg', 'Monoprix', '156', 'c', 'Chez Bonne Maman', 'jeans'),
('Jogging pour homme', 12, 'leggings_m1.jpg', 'Nike', 'M', 'm', 'Besap', 'leggings'),
('Legging pour femme', 13, 'leggings_f1.jpg', 'ONLY', 'L', 'f', 'Chez Bonne Maman', 'leggings'),
('Legging pour enfant', 20, 'leggings_c1.jpg', 'Petit Bateau', '162', 'c', 'Les Petits Riens', 'leggings'),
('Short pour homme', 15, 'shorts_m1.jpg', 'Mango', 'S', 'm', 'Les Petits Riens', 'shorts'),
('Short pour femme', 18, 'shorts_f1.jpg', 'Pull & Bear', 'XL', 'f', 'Chez Bonne Maman', 'shorts'),
('Short pour enfant', 9, 'shorts_c1.jpg', 'Monoprix', '86', 'c', 'Besap', 'shorts'),
('Robe pour femme', 25, 'dress_f1.jpg', 'Zara', 'XS', 'f', 'Les Petits Riens', 'dresses'),
('Robe pour enfant', 20, 'dress_c1.jpg', 'Monoprix', '102', 'c', 'Besap', 'dresses'),
('Salopette pour homme', 35, 'jumpsuit_m1.jpg', 'La Redoute', 'L', 'm', 'Les Petits Riens', 'jumpsuits'),
('Combinaison pour femme', 37, 'jumpsuit_f1.jpg', 'ASOS', 'M', 'f', 'Besap', 'jumpsuits'),
('Salopette pour enfant', 35, 'jumpsuit_c1.jpg', 'Petit Bateau', '114', 'c', 'Chez Bonne Maman', 'jumpsuits');


INSERT INTO customer (username, email, password, first_name, last_name, delivery_address, phone_number, birthdate, authorities, account_non_expired, account_non_locked, credentials_non_expired, enabled) VALUES
('juju', 'etu47233@henallux.be', '$2a$10$vCrL/M1Ihp9fHFKtx/GpjeBc9lPLtWmiWDTmv0lGE8ZReCiqyICOW', 'Julien', 'Hanquet', 'Rue de la chocolaterie 58, 5000 Namur', '0499999999', '1999-07-17', 'ROLE_USER', true, true, true, true),
('mama', 'etu47124@henallux.be', '$2a$10$vCrL/M1Ihp9fHFKtx/GpjeBc9lPLtWmiWDTmv0lGE8ZReCiqyICOW', 'Marie', 'Howet', 'sais pas', 'sais pas', '2000-07-25', 'ROLE_USER', true, true, true, true),
('caro', 'etu45806@henallux.be', '$2a$10$vCrL/M1Ihp9fHFKtx/GpjeBc9lPLtWmiWDTmv0lGE8ZReCiqyICOW', 'Caroline', 'Dubois', 'sais pas', 'sais pas', '2001-08-03', 'ROLE_USER', true, true, true, true),
('memel', 'melvinparache@hotmail.be','$2a$10$b6NNXDj7f23qRGQHa7H.e.wN4griKtjRGKDt5oKK.lXiKX1slCohK', 'Melvin', 'Parache', 'Rue haynol', '0496', '2002-01-17', 'ROLE-USER', true, true, true, true);
