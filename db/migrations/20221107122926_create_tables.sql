-- migrate:up

CREATE TABLE cities (
	city_id INT AUTO_INCREMENT NOT NULL COMMENT 'Unique city id',
	city_name VARCHAR(50) NOT NULL COMMENT 'Name of the city',
	PRIMARY KEY(city_id)


	ENGINE=InnoDB
	DEFAULT CHARSET=utf8
);


CREATE TABLE persons(
	person_id INT AUTO_INCREMENT NOT NULL COMMENT "Unique person id",
	person_name VARCHAR(50) NOT NULL COMMENT "Person's first name",
	person_surname VARCHAR(50) NOT NULL COMMENT "Person's last name",
	city_id INT "The City Id of the cities table",
	PRIMARY KEY(person_id)

	ENGINE=InnoDB
	DEFAULT CHARSET=utf8
);

-- migrate:down

