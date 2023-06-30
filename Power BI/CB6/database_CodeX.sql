CREATE TABLE dim_repondents (
  Respondent_ID int8 PRIMARY KEY,
  Name VARCHAR(255),
  Age VARCHAR(10),
  Gender VARCHAR(20),
  City_ID VARCHAR(10)
);
COPY dim_repondents(respondent_id,name,age,gender,city_id)
FROM 'D:\dim_repondents.csv'
DELIMITER ','
CSV HEADER; 

CREATE TABLE dim_cities (
    City_ID varchar(10) PRIMARY KEY,
    City VARCHAR(50),
    Tier varchar(10)
);
COPY dim_cities (City_ID, City, Tier)
FROM 'D:\dim_cities.csv'
DELIMITER ','
CSV HEADER;

CREATE TABLE fact_survey_responses (
    Response_ID INTEGER PRIMARY KEY,
    Respondent_ID INTEGER,
    Consume_frequency VARCHAR(200),
    Consume_time VARCHAR(200),
    Consume_reason VARCHAR(100),
    Heard_before VARCHAR(50),
    Brand_perception VARCHAR(100),
    General_perception VARCHAR(100),
    Tried_before VARCHAR(100),
    Taste_experience INTEGER,
    Reasons_preventing_trying VARCHAR(100),
    Current_brands VARCHAR(100),
    Reasons_for_choosing_brands VARCHAR(100),
    Improvements_desired VARCHAR(100),
    Ingredients_expected VARCHAR(500),
    Health_concerns VARCHAR(100),
    Interest_in_natural_or_organic VARCHAR(100),
    Marketing_channels VARCHAR(100),
    Packaging_preference VARCHAR(500),
    Limited_edition_packaging VARCHAR(100),
    Price_range VARCHAR(100),
    Purchase_location VARCHAR(100),
    Typical_consumption_situations VARCHAR(100)
);
COPY fact_survey_responses (Response_ID, Respondent_ID, Consume_frequency, Consume_time, Consume_reason, Heard_before, Brand_perception, General_perception, Tried_before, Taste_experience, Reasons_preventing_trying, Current_brands, Reasons_for_choosing_brands, Improvements_desired, Ingredients_expected, Health_concerns, Interest_in_natural_or_organic, Marketing_channels, Packaging_preference, Limited_edition_packaging, Price_range, Purchase_location, Typical_consumption_situations)
FROM 'D:\fact_survey_responses.csv'
DELIMITER ','
CSV HEADER;
