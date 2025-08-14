DROP DATABASE IF EXISTS gender_disparity;
CREATE DATABASE IF NOT EXISTS gender_disparity;
USE gender_disparity;


CREATE TABLE country (
  country_id INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE indicator (
  indicator_id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE,
  unit VARCHAR(50)
);

CREATE TABLE sex (
  sex_id INT PRIMARY KEY,
  description VARCHAR(10)  -- 'male', 'female', 'none'
);

CREATE TABLE year (
  year_id DATE PRIMARY KEY  -- e.g., '2015-01-01'
);


CREATE TABLE country_year_indicator (
  country_id INT NOT NULL,
  year_id DATE NOT NULL,
  indicator_id INT NOT NULL,
  sex_id INT NOT NULL,
  value DECIMAL(16,6) NOT NULL DEFAULT 0,  -- since you're exporting zeros

  PRIMARY KEY (country_id, year_id, indicator_id, sex_id),

  CONSTRAINT fk_cyi_country   FOREIGN KEY (country_id)   REFERENCES country(country_id),
  CONSTRAINT fk_cyi_year      FOREIGN KEY (year_id)      REFERENCES year(year_id),
  CONSTRAINT fk_cyi_indicator FOREIGN KEY (indicator_id) REFERENCES indicator(indicator_id),
  CONSTRAINT fk_cyi_sex       FOREIGN KEY (sex_id)       REFERENCES sex(sex_id)
);