DROP TABLE orders;
DROP TABLE shoes;

CREATE TABLE orders (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  quantity INT2
);

CREATE TABLE shoes (
    id SERIAL4 PRIMARY KEY,
    model VARCHAR(255),
    size INT2,
    color VARCHAR(255)
    );