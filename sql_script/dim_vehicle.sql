{{ config(materialized='table', schema='MOTORTEST') }}

WITH Vehicle_cte AS (
    SELECT 
        MD5(CONCAT(
            COALESCE(VEHICLE_TYPE_CODE1, ''), 
            COALESCE(VEHICLE_TYPE_CODE2, ''), 
            COALESCE(VEHICLE_TYPE_CODE3, ''), 
            COALESCE(VEHICLE_TYPE_CODE4, ''), 
            COALESCE(VEHICLE_TYPE_CODE5, '')
        )) AS vehicle_id,
        VEHICLE_TYPE_CODE1 AS vehicle_type_code1,
        VEHICLE_TYPE_CODE2 AS vehicle_type_code2,
        VEHICLE_TYPE_CODE3 AS vehicle_type_code3,
        VEHICLE_TYPE_CODE4 AS vehicle_type_code4,
        VEHICLE_TYPE_CODE5 AS vehicle_type_code5
    FROM "MOTORCOLLISION"."MOTORTEST"."RAW_MOTOR"
)
SELECT *
FROM Vehicle_cte;
