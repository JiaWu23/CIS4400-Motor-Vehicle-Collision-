{{ config(materialized='table', schema='MOTORTEST') }}

WITH Factors_cte AS (
    SELECT 
        MD5(CONCAT(
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_1, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_2, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_3, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_4, ''), 
            COALESCE(CONTRIBUTING_FACTOR_VEHICLE_5, '')
        )) AS factor_id,
        CONTRIBUTING_FACTOR_VEHICLE_1 AS contributing_factor_vehicle_1,
        CONTRIBUTING_FACTOR_VEHICLE_2 AS contributing_factor_vehicle_2,
        CONTRIBUTING_FACTOR_VEHICLE_3 AS contributing_factor_vehicle_3,
        CONTRIBUTING_FACTOR_VEHICLE_4 AS contributing_factor_vehicle_4,
        CONTRIBUTING_FACTOR_VEHICLE_5 AS contributing_factor_vehicle_5
    FROM "MOTORCOLLISION"."MOTORTEST"."RAW_MOTOR"
)
SELECT *
FROM Factors_cte;
