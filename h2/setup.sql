CREATE ALIAS IF NOT EXISTS H2GIS_SPATIAL FOR "org.h2gis.functions.factory.H2GISFunctions.load";
CALL H2GIS_SPATIAL();

CREATE TABLE session(id UUID PRIMARY KEY, location POINT, status VARCHAR(255));
CREATE SPATIAL INDEX location_index ON session(location);

quit
