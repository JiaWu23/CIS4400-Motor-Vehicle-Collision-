{{ config(materialized='table', schema='MOTORTEST') }}

WITH CollisionFacts_cte AS (
    SELECT 
        COLLISION_ID AS collision_id,
        MD5(CONCAT(
            COALESCE(BOROUGH, ''), 
            COALESCE(ZIP_CODE, ''), 
            COALESCE(ON_STREET_NAME, ''), 
            COALESCE(OFF_STREET_NAME, ''), 
            COALESCE(CROSS_STREET_NAME, '')
        )) AS location_id, -- Foreign key to dim_location
        CRASH_DATE AS date_id, -- Foreign key to dim_date
        MD5(CONCAT(
            COALESCE(VEHICLE_TYPE_CODE1, ''), 
            COALESCE(VEHICLE_TYPE_CODE2, ''), 
            COALESCE(VEHICLE_TYPE_CODE3, ''), 
            COALESCE(VEHICLE_TYPE_CODE4, ''), 
            COALESCE(VEHICLE_TYPE_CODE5, '')
        )) AS vehicle_id, -- Foreign key to dim_vehicle
        MD5(CONCAT(
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_1, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_2, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_3, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_4, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_5, '')
        )) AS factor_id, -- Foreign key to dim_contributing_factors
        NUMBER_OF_PERSONS_INJURED AS total_injured,
        NUMBER_OF_PERSONS_KILLED AS total_killed
    FROM "MOTORCOLLISION"."MOTORTEST"."RAW_MOTOR"
)
SELECT *
FROM CollisionFacts_cte;
