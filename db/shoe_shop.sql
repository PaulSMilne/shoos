DROP TABLE shoes;

CREATE TABLE orders (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  quantity INT2,
);

CREATE TABLE shoes (
    id SERIAL4 PRIMARY KEY,
    models VARCHAR(255),
    sizes INT2,
    colors VARCHAR(255)
    );