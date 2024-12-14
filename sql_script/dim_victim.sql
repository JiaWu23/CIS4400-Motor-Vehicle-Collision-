{{ config(materialized='table', schema='MOTORTEST') }}

-- Create the dimension table for victim types and their related injury/fatality columns
WITH Victim_cte AS (
    -- Add "Pedestrian" victim type
    SELECT 
        '1' AS victim_id, -- Unique ID for victim type (Pedestrian)
        'Pedestrian' AS victim_type, -- Victim type: Pedestrian
        'NUMBER_OF_PEDESTRIANS_INJURED' AS injured_column, -- Column name in fact table for injured pedestrians
        'NUMBER_OF_PEDESTRIANS_KILLED' AS killed_column -- Column name in fact table for killed pedestrians
    UNION ALL
    -- Add "Cyclist" victim type
    SELECT 
        '2' AS victim_id, -- Unique ID for victim type (Cyclist)
        'Cyclist' AS victim_type, -- Victim type: Cyclist
        'NUMBER_OF_CYCLIST_INJURED' AS injured_column, -- Column name in fact table for injured cyclists
        'NUMBER_OF_CYCLIST_KILLED' AS killed_column -- Column name in fact table for killed cyclists
    UNION ALL
    -- Add "Motorist" victim type
    SELECT 
        '3' AS victim_id, -- Unique ID for victim type (Motorist)
        'Motorist' AS victim_type, -- Victim type: Motorist
        'NUMBER_OF_MOTORIST_INJURED' AS injured_column, -- Column name in fact table for injured motorists
        'NUMBER_OF_MOTORIST_KILLED' AS killed_column -- Column name in fact table for killed motorists
    UNION ALL
    -- Add "Total" victim type
    SELECT 
        '4' AS victim_id, -- Unique ID for victim type (Total)
        'Total' AS victim_type, -- Victim type: Total (aggregated across all types)
        'NUMBER_OF_PERSONS_INJURED' AS injured_column, -- Column name in fact table for total injured
        'NUMBER_OF_PERSONS_KILLED' AS killed_column -- Column name in fact table for total killed
)
-- Output the final table
SELECT *
FROM Victim_cte;
