After I upload the data to Azure, I connected with Snowflake and I building all of the facts and dimension in snowflake. The sql code of each table will show in this folder. 

Addtionally, the data dictionary has been updated after I clean the data during the extraction. Below is the new data dictionary. 



## Data Dictionary Updated: 
BOROUGH:	Borough where collision occurred
COLLISION_ID:	Unique record code generated by system
CONTRIBUTING FACTOR VEHICLE 1:	Contributing factor for the first vehicle.
CONTRIBUTING FACTOR VEHICLE 2:	Contributing factor for the second vehicle.
CONTRIBUTING FACTOR VEHICLE 3:	Contributing factor for the third vehicle.
CONTRIBUTING FACTOR VEHICLE 4:	Contributing factor for the fourth vehicle.
CONTRIBUTING FACTOR VEHICLE 5:	Contributing factor for the fifth vehicle.
CRASH_DATE:	Occurrence date of collision
CRASH_TIME:	Occurrence time of collision
CROSS_STREET_NAME:	Nearest cross street to the collision
LATITUDE:	Latitude coordinate for Global Coordinate System, WGS 1984, decimal degrees (EPSG 4326) 
LOCATION:	Latitude , Longitude pair
LONGITUDE:	Longitude coordinate for Global Coordinate System, WGS 1984, decimal degrees (EPSG 4326)
NUMBER_OF_CYCLIST_INJURED:	Total cyclists injured in the collision.
NUMBER_OF_CYCLIST_KILLED:	Total cyclists killed in the collision.
NUMBER_OF_MOTORIST_INJURED:	Total motorist injured in the collision.
NUMBER_OF_MOTORIST_KILLED:	Total motorist killed in the collision.
NUMBER_OF_PEDESTRIANS_INJURED:	Total pedestrains injured in the collision.
NUMBER_OF_PEDESTRIANS_KILLED:	Total pedestrains killed in the collision.
NUMBER_OF_PERSONS_INJURED:	Total people injured in the collision.
NUMBER_OF_PERSONS_KILLED:	Total people killed in the collision.
OFF_STREET_NAME:	Street address if known
ON_STREET_NAME:	Street on which the collision occurred
VEHICLE_TYPE_CODE1:	Type of the first vehicle.
VEHICLE_TYPE_CODE2:	Type of the second vehicle.
VEHICLE_TYPE_CODE3:	Type of the third vehicle.
VEHICLE_TYPE_CODE4:	Type of the fourth vehicle.
VEHICLE_TYPE_CODE5:	Type of the fifth vehicle.
ZIP_CODE:	ZIP code of the collision.
