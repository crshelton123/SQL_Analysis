CREATE TABLE card_holder (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE credit_card (
    card VARCHAR(20),
    cardholder_id INT, 
    PRIMARY KEY (card),
    FOREIGN KEY (cardholder_id) REFERENCES card_holder(id)
);

CREATE TABLE merchant_category(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE merchant(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    id_merchant_category INT, 
    FOREIGN KEY (id_merchant_category) REFERENCES merchant_category(id)
);

CREATE TABLE transactions(
    id SERIAL PRIMARY KEY,
   date TIMESTAMP, 
   amount FLOAT,
   card VARCHAR(20),
   id_merchant INT,
   FOREIGN KEY (card) REFERENCES credit_card(card),
   FOREIGN KEY (id_merchant) REFERENCES merchant(id)
);
