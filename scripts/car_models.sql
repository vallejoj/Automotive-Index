-- db indexed_cars

CREATE TABLE IF NOT EXISTS car_models
(
 id serial,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL,
 PRIMARY KEY (id)
)

CREATE INDEX car_models_make_code_idx ON car_models (make_code);

CREATE INDEX car_models_model_title_idx ON car_models (model_code);


-- No indexed times.
-- Time: 28.818 ms
-- Time: 77.515 ms
-- Time: 39.622 ms
