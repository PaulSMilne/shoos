DROP TABLE shoes;

CREATE TABLE shoes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  quantity INT2,
  size VARCHAR(255)
);