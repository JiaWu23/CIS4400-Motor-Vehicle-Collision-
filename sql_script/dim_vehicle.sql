CREATE OR REPLACE TABLE MOTORCOLLISION.MOTORTEST.DIM_VEHICLE AS
SELECT 
    MD5(CONCAT(
        COALESCE(VEHICLE_TYPE_CODE1, ''), 
        COALESCE(VEHICLE_TYPE_CODE2, ''), 
        COALESCE(VEHICLE_TYPE_CODE_3, ''), 
        COALESCE(VEHICLE_TYPE_CODE_4, ''), 
        COALESCE(VEHICLE_TYPE_CODE_5, '')
    )) AS VEHICLE_ID, -- Unique ID for each vehicle configuration
    VEHICLE_TYPE_CODE1,
    VEHICLE_TYPE_CODE2,
    VEHICLE_TYPE_CODE_3,
    VEHICLE_TYPE_CODE_4,
    VEHICLE_TYPE_CODE_5
FROM MOTORCOLLISION.MOTORTEST.RAW_MOTOR
WHERE VEHICLE_TYPE_CODE1 IS NOT NULL;