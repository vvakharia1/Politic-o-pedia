DROP DATABASE IF EXISTS politicdb;
CREATE DATABASE politicdb;

USE politicdb;

CREATE table user_data (
id int(100) NOT NULL AUTO_INCREMENT,
username VARCHAR(20) NOT NULL,
pw VARCHAR(20),
PRIMARY KEY (id)
);

CREATE table survey_data (
id int(100) NOT NULL AUTO_INCREMENT,
firstname VARCHAR(50) NOT NULL,
lastname VARCHAR(50) NOT NULL, 
party VARCHAR(50) NOT NULL,
location_state VARCHAR(50) NOT NULL,
vote BOOLEAN DEFAULT false,
PRIMARY KEY (id)
);

