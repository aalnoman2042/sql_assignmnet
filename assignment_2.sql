-- Active: 1748160063025@@127.0.0.1@5432@conservation_db

-- PROBLEM 01
INSERT INTO rangers (name, region) VALUES ('Derek Fox', 'Coastal Plains');

-- PROBLEM 02
SELECT count(DISTINCT species_id) from sightings;

-- PROBLEM 03
SELECT * FROM sightings
WHERE LOCATION  LIKE '%Pass%';
-- PROBLEM 04
SELECT rangers.name, count(sightings.sighting_id) as total_sightings from rangers JOIN sightings on rangers.ranger_id = sightings.ranger_id group BY rangers.name;

-- PROBLEM 05
SELECT species.common_name FROM species
LEFT JOIN sightings ON species.species_id = sightings.species_id
WHERE sightings.species_id IS NULL;

-- PROBLEM 06
SELECT species.common_name, sightings.sighting_time, rangers.name  from sightings
 JOIN rangers on sightings.ranger_id = rangers.ranger_id
 JOIN species on sightings.species_id = species.species_id
 ORDER BY
sighting_time DESC
LIMIT 2;

-- PROBLEM 7
UPDATE species set conservation_status = 'historic' where extract(YEAR FROM discovery_date) <1800;

-- PROBLEM 08
SELECT sighting_id,
CASE 
    WHEN extract(HOUR FROM sighting_time) <12 THEN  'morning'
    WHEN extract(HOUR FROM sighting_time) BETWEEN 12 AND 17 THEN  'afternoon'
    ELSE  'evening'
END
from sightings ;

-- PROBLEM 09
    DELETE FROM rangers
WHERE ranger_id NOT IN (
    SELECT ranger_id FROM sightings
);



SELECT * from species;
SELECT * from sightings;
SELECT * from rangers;


