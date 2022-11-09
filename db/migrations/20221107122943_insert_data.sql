-- migrate:up

INSERT INTO cities(city_name)
VALUES
	("Tbilisi"),
	("Batumi"),
	("Kutaisi"),
	("London"),
	("New York"),
	("Paris"),
	("Berlin");


INSERT INTO persons(
	person_name,
	person_surname,
	city_id
)
VALUES
	("Giorgi", "Zarandia", 1),
	("Lasha", "Gvari", 3),
	("Nata", "Butkowska", 2),
	("Kidev", "Raginda", 4),
	("Witcher", "Neo", 5),
	("Synechdoche", "NY",6)

-- migrate:down

