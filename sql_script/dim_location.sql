CREATE OR REPLACE TABLE MOTORCOLLISION.MOTORTEST.DIM_LOCATION AS
SELECT 
    MD5(CONCAT(
        COALESCE(BOROUGH, ''), 
        COALESCE(ZIP_CODE, ''), 
        COALESCE(ON_STREET_NAME, ''), 
        COALESCE(OFF_STREET_NAME, ''), 
        COALESCE(CROSS_STREET_NAME, '')
    )) AS LOCATION_ID, -- Unique ID for each location
    BOROUGH,
    ZIP_CODE,
    ON_STREET_NAME,
    OFF_STREET_NAME,
    CROSS_STREET_NAME
FROM MOTORCOLLISION.MOTORTEST.RAW_MOTOR
WHERE BOROUGH IS NOT NULL OR ZIP_CODE IS NOT NULL OR ON_STREET_NAME IS NOT NULL;
