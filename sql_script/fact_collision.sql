CREATE OR REPLACE TABLE MOTORCOLLISION.MOTORTEST.FACT_COLLISION AS
SELECT 
    -- Fact table keys
    COLLISION_ID, -- Unique collision identifier
    MD5(CONCAT(
        COALESCE(BOROUGH, ''), 
        COALESCE(ZIP_CODE, ''), 
        COALESCE(ON_STREET_NAME, ''), 
        COALESCE(OFF_STREET_NAME, ''), 
        COALESCE(CROSS_STREET_NAME, '')
    )) AS LOCATION_ID, -- Foreign key to DIM_LOCATION
    CRASH_DATE AS DATE_ID, -- Foreign key to DIM_DATE
    MD5(CONCAT(
        COALESCE(VEHICLE_TYPE_CODE1, ''), 
        COALESCE(VEHICLE_TYPE_CODE2, ''), 
        COALESCE(VEHICLE_TYPE_CODE_3, ''), 
        COALESCE(VEHICLE_TYPE_CODE_4, ''), 
        COALESCE(VEHICLE_TYPE_CODE_5, '')
    )) AS VEHICLE_ID, -- Foreign key to DIM_VEHICLE
    MD5(CONCAT(
        COALESCE(CONTRIBUTING_FACTOR_VEHICLE_1, ''), 
        COALESCE(CONTRIBUTING_FACTOR_VEHICLE_2, ''), 
        COALESCE(CONTRIBUTING_FACTOR_VEHICLE_3, ''), 
        COALESCE(CONTRIBUTING_FACTOR_VEHICLE_4, ''), 
        COALESCE(CONTRIBUTING_FACTOR_VEHICLE_5, '')
    )) AS FACTOR_ID, -- Foreign key to DIM_CONTRIBUTING_FACTORS

    -- Metrics
    NUMBER_OF_PERSONS_INJURED AS TOTAL_INJURED, -- Total persons injured in the collision
    NUMBER_OF_PERSONS_KILLED AS TOTAL_KILLED, -- Total persons killed in the collision
    NUMBER_OF_PEDESTRIANS_INJURED,
    NUMBER_OF_PEDESTRIANS_KILLED,
    NUMBER_OF_CYCLIST_INJURED,
    NUMBER_OF_CYCLIST_KILLED,
    NUMBER_OF_MOTORIST_INJURED,
    NUMBER_OF_MOTORIST_KILLED

FROM MOTORCOLLISION.MOTORTEST.RAW_MOTOR;
