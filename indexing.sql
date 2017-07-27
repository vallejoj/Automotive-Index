DROP DATABASE IF EXISTS indexed_cars;
DROP USER IF EXISTS indexed_cars_user;

CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars;

\c indexed_cars
\i scripts/car_models.sql

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\timing
-- Run a query to get a list of all make_title values from the car_models table where the make_code is 'LAM',
-- without any duplicate rows, and note the time somewhere. (should have 1 result)

SELECT DISTINCT make_title FROM car_models WHERE make_code LIKE 'LAM%';
-- Time: 36.502 ms

-- Run a query to list all model_title values where the make_code is 'NISSAN',
-- and the model_code is 'GT-R' without any duplicate rows, and note the time
-- somewhere. (should have 1 result)

SELECT DISTINCT model_title FROM car_models WHERE make_code LIKE 'NISSAN%' AND model_code LIKE 'GT-R%';
-- Time: 35.185 ms

-- Run a query to list all make_code, model_code, model_title, and year
-- from car_models where the make_code is 'LAM', and note the time somewhere.
-- (should have 1360 rows)
SELECT DISTINCT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM%';
-- Time: 34.376 ms
--
-- Run a query to list all fields from all car_models in years
-- between 2010 and 2015, and note the time somewhere (should have 78840 rows)

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- Create a query to list all fields from all car_models in the year of 2010,
-- and note the time somewhere (should have 13140 rows)

SELECT * FROM car_models WHERE year = 2010
