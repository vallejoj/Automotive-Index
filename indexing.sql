CREATE USER indexed_cars_user;
CREATE DATABASE indexed_cars;

\c indexed_cars
\i scripts/car_models.sql

\i scripts/car_model_data.sql //ten times
