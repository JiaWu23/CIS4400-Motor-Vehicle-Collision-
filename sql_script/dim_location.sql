{{ config(materialized='table', schema='MOTORTEST') }}

WITH Location_cte AS (
    SELECT 
        MD5(CONCAT(
            COALESCE(BOROUGH, ''), 
            COALESCE(ZIP_CODE, ''), 
            COALESCE(ON_STREET_NAME, ''), 
            COALESCE(OFF_STREET_NAME, ''), 
            COALESCE(CROSS_STREET_NAME, '')
        )) AS location_id,
        BOROUGH AS borough,
        ZIP_CODE AS zip_code,
        ON_STREET_NAME AS on_street_name,
        OFF_STREET_NAME AS off_street_name,
        CROSS_STREET_NAME AS cross_street_name
    FROM "MOTORCOLLISION"."MOTORTEST"."RAW_MOTOR"
)
SELECT *
FROM Location_cte;
