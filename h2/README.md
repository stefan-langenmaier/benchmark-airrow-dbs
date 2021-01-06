# Postgres

## Setup

  docker build . -t h2-bench
  docker run --name h2 --rm -p 8082:8082 -p 9092:9092 -d h2-bench
  docker exec -i h2 java -cp /h2gis-standalone/h2gis.jar org.h2.tools.Shell -url "jdbc:h2:/h2-data/test" -driver "org.h2.Driver" < setup.sql


## JMeter Run

Make sure that you have added the location of the `h2gis-dist-1.5.0.jar` to the classpath in the `Test plan`.


## Tips

### shell access

  java -cp bin/h2-1.4.197.jar org.h2.tools.Shell -url "jdbc:h2:tcp://localhost/test" -driver "org.h2.Driver"


### queries
// insert point

INSERT INTO SESSION (id, location, status) VALUES (RANDOM_UUID(), ST_GeomFromText('POINT(7 52)', 4326), '🎯')

// update point

UPDATE SESSION SET location =  ST_GeomFromText('POINT(${latitude} ${longitude})', 4326), status = 'x' WHERE id = '${customUuid}';

// search point

SELECT * FROM Session ORDER BY ST_DistanceSphere(location, ST_GeomFromText('POINT(${latitude} ${longitude})', 4326)) DESC LIMIT 10;

