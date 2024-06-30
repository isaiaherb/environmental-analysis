UPDATE forest_area
SET forest_area_1990_ha = REPLACE(forest_area_1990_ha, ' ', '')  -- Remove spaces
WHERE forest_area_1990_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_1990_ha TYPE INTEGER
    USING forest_area_1990_ha::INTEGER;

UPDATE forest_area
SET forest_area_2000_ha = REPLACE(forest_area_2000_ha, ' ', '')  -- Remove spaces
WHERE forest_area_2000_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_2000_ha TYPE INTEGER
    USING forest_area_2000_ha::INTEGER;

UPDATE forest_area
SET forest_area_2010_ha = REPLACE(forest_area_2010_ha, ' ', '')  -- Remove spaces
WHERE forest_area_2010_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_2010_ha TYPE INTEGER
    USING forest_area_2010_ha::INTEGER;

UPDATE forest_area
SET forest_area_2015_ha = REPLACE(forest_area_2015_ha, ' ', '')  -- Remove spaces
WHERE forest_area_2015_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_2015_ha TYPE INTEGER
    USING forest_area_2015_ha::INTEGER;

UPDATE forest_area
SET forest_area_2020_ha = REPLACE(forest_area_2020_ha, ' ', '')  -- Remove spaces
WHERE forest_area_2020_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_2020_ha TYPE INTEGER
    USING forest_area_2020_ha::INTEGER;

UPDATE forest_area
SET total_land_area_2020_ha = REPLACE(total_land_area_2020_ha, ' ', '')  -- Remove spaces
WHERE total_land_area_2020_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN total_land_area_2020_ha TYPE INTEGER
    USING total_land_area_2020_ha::INTEGER;

UPDATE forest_area
SET forest_area_proportion_total_land_area_2020 = REPLACE(forest_area_proportion_total_land_area_2020, ' ', '')  -- Remove spaces
WHERE forest_area_proportion_total_land_area_2020 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN forest_area_proportion_total_land_area_2020 TYPE INTEGER
    USING forest_area_proportion_total_land_area_2020::INTEGER;

UPDATE forest_area
SET deforestation_2015_2020_ha_per_year = REPLACE(deforestation_2015_2020_ha_per_year, ' ', '')  -- Remove spaces
WHERE deforestation_2015_2020_ha_per_year ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN deforestation_2015_2020_ha_per_year TYPE INTEGER
    USING deforestation_2015_2020_ha_per_year::INTEGER;

UPDATE forest_area
SET total_forest_area_affected_by_fire_2015_ha = REPLACE(total_forest_area_affected_by_fire_2015_ha, ' ', '')  -- Remove spaces
WHERE total_forest_area_affected_by_fire_2015_ha ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE forest_area
    ALTER COLUMN total_forest_area_affected_by_fire_2015_ha TYPE INTEGER
    USING total_forest_area_affected_by_fire_2015_ha::INTEGER;
