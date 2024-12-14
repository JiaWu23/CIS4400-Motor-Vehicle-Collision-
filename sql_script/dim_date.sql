{{ config(materialized='table', schema='MOTORTEST') }}

WITH Date_cte AS (
    SELECT 
        DISTINCT
        CRASH_DATE AS date_id,
        YEAR(CRASH_DATE) AS year,
        MONTH(CRASH_DATE) AS month,
        DAY(CRASH_DATE) AS day,
        DAYNAME(CRASH_DATE) AS day_of_week,
        HOUR(CRASH_TIME) AS hour,
        CASE 
            WHEN DAYOFWEEK(CRASH_DATE) IN (1, 7) THEN TRUE 
            ELSE FALSE 
        END AS is_weekend
    FROM "MOTORCOLLISION"."MOTORTEST"."RAW_MOTOR"
)
SELECT *
FROM Date_cte;
