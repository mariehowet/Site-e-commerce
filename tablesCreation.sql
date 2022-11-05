DROP TABLE IF EXISTS order_row CASCADE;
DROP TABLE IF EXISTS item CASCADE;
DROP TABLE IF EXISTS `order` CASCADE;
DROP TABLE IF EXISTS translation CASCADE;
DROP TABLE IF EXISTS item_category CASCADE;
DROP TABLE IF EXISTS language CASCADE;
DROP TABLE IF EXISTS customer CASCADE;

CREATE TABLE customer(
    email VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL,
    firstName VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    deliveryAdress VARCHAR(255),
    phoneNumber VARCHAR(255),
    birthDate DATE,
    CONSTRAINT CHK_customer CHECK (email LIKE '%@%.%')
);
-- DF customer
-- email -> password
-- email -> firstName
-- email -> lastName
-- email -> deliveryAdress
-- email -> phoneNumber
-- email -> birthdate
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE language(
    language_id VARCHAR(255) PRIMARY KEY
);
-- DF language
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE item_category(
    id VARCHAR(255) PRIMARY KEY
);
-- DF item_category
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE translation(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    language_id VARCHAR(255),
    category_id VARCHAR(255),
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (category_id) REFERENCES item_category(id)
);
-- DF translation
-- id -> name
-- id -> language_id
-- id -> category_id
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE `order`(
    id INT PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    is_paid BOOLEAN NOT NULL,
    customer_id VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(email)
);
-- DF language
-- id -> date
-- id -> is_paid
-- id -> customer_id
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE item(
    id INT PRIMARY KEY AUTO_INCREMENT,
    label VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    picture VARCHAR(255) NOT NULL,
    brand VARCHAR(255) NOT NULL,
    size VARCHAR(255) NOT NULL,
    target VARCHAR(255) NOT NULL,
    thrift_shop VARCHAR(255) NOT NULL,
    category_id VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES item_category(id),
    CONSTRAINT CHK_item CHECK (price >= 0 AND target IN ('m', 'f', 'c'))
);
-- DF language
-- id -> label
-- id -> price
-- id -> picture
-- id -> brand
-- id -> size
-- id -> target
-- id -> thrift_shop
-- id -> category_id
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

CREATE TABLE order_row(
    id INT PRIMARY KEY AUTO_INCREMENT,
    quantity SMALLINT NOT NULL,
    real_price DECIMAL NOT NULL,
    order_id INT,
    item_id INT,
    FOREIGN KEY (order_id) REFERENCES `order`(id),
    FOREIGN KEY (item_id) REFERENCES item(id),
    CONSTRAINT CHK_order_row CHECK (quantity >= 1 AND real_price >= 0)
);
-- DF language
-- id -> quantity
-- id -> real_price
-- id -> order_id
-- id -> item_id
-- 1NF: ok
-- 2NF: ok
-- 3NF: ok

-- Ne pas oublier de mettre l'image en obligatoire