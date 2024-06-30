-- Set '...' to Null in database
UPDATE agricultural_land
SET total_area_2013 = NULLIF(total_area_2013, '...')
WHERE total_area_2013 = '...';

UPDATE agricultural_land
SET total_area_percent_change_since_1990 = NULLIF(total_area_percent_change_since_1990, '...')
WHERE total_area_percent_change_since_1990 = '...';

UPDATE agricultural_land
SET percent_total_land_covered_by_agriculture_2013 = NULLIF(percent_total_land_covered_by_agriculture_2013, '...')
WHERE percent_total_land_covered_by_agriculture_2013 = '...';

UPDATE agricultural_land
SET arable_land_2013 = NULLIF(arable_land_2013, '...')
WHERE arable_land_2013 = '...';

UPDATE agricultural_land
SET permanent_crops_2013 = NULLIF(permanent_crops_2013, '...')
WHERE permanent_crops_2013 = '...';

UPDATE agricultural_land
SET permanent_meadows_pastures_2013 = NULLIF(permanent_meadows_pastures_2013, '...')
WHERE permanent_meadows_pastures_2013 = '...';

UPDATE agricultural_land
SET agricultural_area_actually_irrigated_2013 = NULLIF(agricultural_area_actually_irrigated_2013, '…')
WHERE agricultural_area_actually_irrigated_2013 = '…'

-- Set appropriate datatypes
UPDATE agricultural_land
SET total_area_percent_change_since_1990 = REPLACE(total_area_percent_change_since_1990, ' ', '')  -- Remove spaces
WHERE total_area_percent_change_since_1990 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN total_area_percent_change_since_1990 TYPE NUMERIC
    USING total_area_percent_change_since_1990::NUMERIC;

UPDATE agricultural_land
SET percent_total_land_covered_by_agriculture_2013 = REPLACE(percent_total_land_covered_by_agriculture_2013, ' ', '')  -- Remove spaces
WHERE percent_total_land_covered_by_agriculture_2013 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN percent_total_land_covered_by_agriculture_2013 TYPE NUMERIC
    USING percent_total_land_covered_by_agriculture_2013::NUMERIC;

UPDATE agricultural_land
SET arable_land_2013 = REPLACE(arable_land_2013, ' ', '')  -- Remove spaces
WHERE arable_land_2013 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN arable_land_2013 TYPE NUMERIC
    USING arable_land_2013::NUMERIC;

UPDATE agricultural_land
SET permanent_crops_2013 = REPLACE(permanent_crops_2013, ' ', '')  -- Remove spaces
WHERE permanent_crops_2013 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN permanent_crops_2013 TYPE NUMERIC
    USING permanent_crops_2013::NUMERIC;

UPDATE agricultural_land
SET permanent_meadows_pastures_2013 = REPLACE(permanent_meadows_pastures_2013, ' ', '')  -- Remove spaces
WHERE permanent_meadows_pastures_2013 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN permanent_meadows_pastures_2013 TYPE NUMERIC
    USING permanent_meadows_pastures_2013::NUMERIC;

UPDATE agricultural_land
SET agricultural_area_actually_irrigated_2013 = REPLACE(agricultural_area_actually_irrigated_2013, ' ', '')  -- Remove spaces
WHERE agricultural_area_actually_irrigated_2013 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE agricultural_land
    ALTER COLUMN agricultural_area_actually_irrigated_2013 TYPE NUMERIC
    USING agricultural_area_actually_irrigated_2013::NUMERIC;