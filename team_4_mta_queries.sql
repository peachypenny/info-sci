USE mta_inst_final;

CREATE OR REPLACE VIEW amenity_access_scores AS

SELECT station_name, does_exist, amenity_type, SUM(ped_access_score + bike_access_score) AS total_access
FROM stations
	JOIN station_amenities USING(station_ID)
	JOIN amenities USING(amenity_id)
	JOIN station_access USING(station_id)
GROUP BY station_name, does_exist, amenity_type
ORDER BY station_name;

USE mta_inst_final; 

CREATE OR REPLACE VIEW jursidiction_access AS

SELECT jurisdiction, COUNT(station_name) AS number_of_stations, SUM(bike_access_score + ped_access_score) AS total_access
FROM stations
	JOIN station_type USING(station_type_id)
    JOIN station_access USING(station_id)
    JOIN jurisdiction USING(jurisdiction_id)
GROUP BY jurisdiction;

USE mta_inst_final;

CREATE OR REPLACE VIEW place_type_construction_permits AS

SELECT station_name, tod_place_type, permit_type, number_of_permits
FROM stations
	JOIN tod USING(tod_id)
    JOIN station_permits USING(station_id)
    JOIN construction_permits USING(construction_permit_id)
WHERE number_of_permits != 0
ORDER BY station_name, number_of_permits;  

USE mta_inst_final;

CREATE OR REPLACE VIEW rail_line_access_scores AS

SELECT station_name, rail_type, SUM(ped_access_score + bike_access_score) AS total_access
FROM stations
	JOIN station_lines USING(station_id)
    JOIN rail_lines USING(rail_type_id)
    JOIN station_access USING(station_id)
GROUP BY station_name, rail_type
HAVING total_access > 0
ORDER BY station_name;

USE mta_inst_final;

CREATE OR REPLACE VIEW station_improvement AS

SELECT station_name, SUM(bike_access_score + ped_access_score) AS total_access, permit_type, number_of_permits
FROM stations
	JOIN station_access USING(station_id)
    JOIN station_permits USING(station_id)
    JOIN(
		SELECT permit_type
        FROM construction_permits
        )permits
GROUP BY station_name, permit_type, number_of_permits
HAVING number_of_permits != 0
ORDER BY permit_type, number_of_permits;

USE mta_inst_final;

CREATE OR REPLACE VIEW station_parking_capacity AS

SELECT station_name, regular_parking_spots, parking_spots_ada, SUM(ped_access_score + bike_access_score) AS total_access
FROM stations
	JOIN parking USING(parking_id)
    JOIN station_access USING(station_id)
WHERE parking_fee = FALSE
GROUP BY station_name, regular_parking_spots, parking_spots_ada
ORDER BY regular_parking_spots DESC;

USE mta_inst_final;

CREATE OR REPLACE VIEW station_type_access AS 

SELECT station_name, station_type, SUM(ped_access_score + bike_access_score) AS total_access
FROM stations
	JOIN station_type USING(station_type_id)
    JOIN station_access USING(station_id)
GROUP BY station_name, station_type
ORDER BY station_name;

