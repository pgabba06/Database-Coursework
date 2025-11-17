DROP TABLE IF EXISTS item CASCADE;
DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS rating CASCADE;
DROP TABLE IF EXISTS invoice CASCADE;

CREATE TABLE item(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price NUMERIC(6,2) NOT NULL CHECK (price >=0),
    seller TEXT NOT NULL
);

CREATE TABLE customer(
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    postcode TEXT NOT NULL

);

CREATE TABLE rating (
    id INTEGER PRIMARY KEY,
    item_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    date_time TIMESTAMP NOT NULL,
    stars INTEGER NOT NULL CHECK (stars >= 0 AND stars <= 5),
    CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES item(id),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(id) 
);

CREATE TABLE invoice (
    id INTEGER PRIMARY KEY,
    item_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK (quantity >=1 AND quantity <=100),
    cost NUMERIC(7,2) NOT NULL CHECK (cost >= 0),
    CONSTRAINT fk_invoice_item FOREIGN KEY (item_id) REFERENCES item(id),
    CONSTRAINT fk_invoice_customer FOREIGN KEY (customer_id) REFERENCES customer(id) 

);
