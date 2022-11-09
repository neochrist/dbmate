-- migrate:up

CREATE TABLE cities (
	city_id INT AUTO_INCREMENT NOT NULL COMMENT 'Unique city id',
	city_name VARCHAR(50) NOT NULL COMMENT 'Name of the city',
	PRIMARY KEY(city_id)
);


CREATE TABLE persons(
	person_id INT AUTO_INCREMENT NOT NULL COMMENT "Unique person id",
	person_name VARCHAR(50) NOT NULL COMMENT "Person's first name",
	person_surname VARCHAR(50) NOT NULL COMMENT "Person's last name",
	city_name VARCHAR(50) COMMENT "The city name",
	PRIMARY KEY(person_id)
);

-- migrate:down

