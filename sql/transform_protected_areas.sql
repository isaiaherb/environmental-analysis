UPDATE protected_areas
SET latest_year_available = REPLACE(latest_year_available, ' ', '')  -- Remove spaces
WHERE latest_year_available ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE protected_areas
    ALTER COLUMN latest_year_available TYPE INTEGER
    USING latest_year_available::INTEGER;

UPDATE protected_areas
SET percent_protected_areas = REPLACE(percent_protected_areas, ' ', '')  -- Remove spaces
WHERE percent_protected_areas ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE protected_areas
    ALTER COLUMN percent_protected_areas TYPE INTEGER
    USING percent_protected_areas::INTEGER;
