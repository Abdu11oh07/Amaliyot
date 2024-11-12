DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS comments CASCADE;


CREATE TABLE if NOT EXISTS categories(
    id SERIAL PRIMARY KEY,
    name VARCHAR(250)
);

INSERT INTO categories(name) VALUES
('Suv'),
('Shirinlik'),
('Meva');

CREATE TABLE if NOT EXISTS products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(250),
    descriptions VARCHAR,
    price INT,
    quantity int,
    added DATE DEFAULT CURRENT_DATE,
    categoria_id INTEGER REFERENCES categories(id)
);


INSERT INTO products(name, descriptions, price, quantity, categoria_id) VALUES
('Pepsi', 'Gazlangan', 15000, 20, 1),
('Snikers', 'Shirin', 14000, 15, 2),
('Banan', 'Yangi uzilgan', 12000, 20, 3);


CREATE TABLE comments(
        text_c VARCHAR,
        user_k VARCHAR,
        created DATE DEFAULT CURRENT_DATE,
        product_id INT REFERENCES products(id)
);

INSERT INTO comments(text_c, user_k, product_id) VALUES
('Gap yoo', 'Toxir', 1),
('Yoqmadi', 'Sobir', 2),
('Yaxshi', 'Jalil', 3);


SELECT * FROM categories;
SELECT * FROM products;
SELECT * FROM comments;