CREATE TABLE cars (
  brand VARCHAR(255),
  model VARCHAR(255),
  year INT
);

INSERT INTO cars (brand, model, year)
VALUES ('Ford', 'Mustang', 1964);

SELECT * FROM cars;
SELECT brand, year FROM cars;
ALTER TABLE cars ADD color VARCHAR(255);
update cars
SET color = 'red'
WHERE brand = 'Volvo';
SELECT * FROM cars;
update cars
SET color = 'red'
WHERE brand = 'Ford';
ALTER TABLE cars
DROP COLUMN color;
DELETE FROM cars
WHERE brand = 'Volvo';
DROP TABLE cars;
ALTER TABLE cars
ALTER COLUMN year TYPE VARCHAR(4);
SELECT * FROM cars;


