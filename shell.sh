#!/bin/bash



if [ $# -eq 2 ]
	then
		mysql --host=ms -uroot --password=pass -e "SELECT person_name, person_surname, city_name
		 										   FROM people.persons INNER JOIN people.cities
		 										   USING(city_id) 
		 										   WHERE person_name='$1' AND person_surname='$2';"
elif [ $# -eq 1 ]
	then 
		mysql --host=ms -uroot --password=pass -e "SELECT person_name, person_surname, city_name
		   										   FROM people.persons INNER JOIN people.cities 
		   										   USING (city_id)
		   										   WHERE person_surname='$1';"
fi 	

