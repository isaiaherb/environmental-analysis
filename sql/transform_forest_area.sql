-- SQL transform statements for the forest_area table --
--------------------------------------------------------------------------------------------------------------------------------------------

UPDATE forest_area
SET forest_area_proportion_total_land_area_2020 = NULLIF(forest_area_proportion_total_land_area_2020, '...')
WHERE forest_area_proportion_total_land_area_2020 = '...'; 

UPDATE forest_area
SET forest_area_proportion_total_land_area_2020 = NULLIF(forest_area_proportion_total_land_area_2020, '…')
WHERE forest_area_proportion_total_land_area_2020 = '…';

--------------------------------------------------------------------------------------------------------------------------------------------

UPDATE forest_area
SET forest_area_proportion_total_land_area_2020 = REPLACE(forest_area_proportion_total_land_area_2020, ' ', '')  -- Remove spaces
WHERE forest_area_proportion_total_land_area_2020 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_proportion_total_land_area_2020 TYPE NUMERIC
    USING forest_area_proportion_total_land_area_2020::NUMERIC;
    
--------------------------------------------------------------------------------------------------------------------------------------------

UPDATE forest_area
SET deforestation_2015_2020_ha_per_year = NULLIF(deforestation_2015_2020_ha_per_year, '...')
WHERE deforestation_2015_2020_ha_per_year = '...'; 

UPDATE forest_area
SET deforestation_2015_2020_ha_per_year = NULLIF(deforestation_2015_2020_ha_per_year, '…')
WHERE deforestation_2015_2020_ha_per_year = '…';

--------------------------------------------------------------------------------------------------------------------------------------------

UPDATE forest_area
SET deforestation_2015_2020_ha_per_year = REPLACE(deforestation_2015_2020_ha_per_year, ' ', '')  -- Remove spaces
WHERE deforestation_2015_2020_ha_per_year ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN deforestation_2015_2020_ha_per_year TYPE NUMERIC
    USING deforestation_2015_2020_ha_per_year::NUMERIC;
    
--------------------------------------------------------------------------------------------------------------------------------------------