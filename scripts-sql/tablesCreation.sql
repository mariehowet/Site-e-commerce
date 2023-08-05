DROP TABLE IF EXISTS order_row CASCADE;
DROP TABLE IF EXISTS item CASCADE;
DROP TABLE IF EXISTS `order` CASCADE;
DROP TABLE IF EXISTS translation CASCADE;
DROP TABLE IF EXISTS item_category CASCADE;
DROP TABLE IF EXISTS language CASCADE;
DROP TABLE IF EXISTS customer CASCADE;

CREATE TABLE customer(
    username VARCHAR(255) PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(60) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    delivery_address VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255),
    birthdate DATE NOT NULL,
    authorities varchar(45) NOT NULL,
    account_non_expired BOOLEAN NOT NULL,
    account_non_locked BOOLEAN NOT NULL,
    credentials_non_expired BOOLEAN NOT NULL,
    enabled BOOLEAN DEFAULT NULL,
    CONSTRAINT CHK_customer CHECK (email LIKE '%@%.%')
);

CREATE TABLE language(
    language_id VARCHAR(255) PRIMARY KEY
);

CREATE TABLE item_category(
    id VARCHAR(255) PRIMARY KEY
);

CREATE TABLE translation(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    language_id VARCHAR(255),
    category_id VARCHAR(255),
    FOREIGN KEY (language_id) REFERENCES language(language_id),
    FOREIGN KEY (category_id) REFERENCES item_category(id)
);


CREATE TABLE `order`(
    id INT PRIMARY KEY AUTO_INCREMENT,
    `date` DATE NOT NULL,
    is_paid BOOLEAN NOT NULL,
    discount DECIMAL NOT NULL,
    customer_id VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES customer(username),
    CONSTRAINT CHK_order CHECK (discount >= 0)
);

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
