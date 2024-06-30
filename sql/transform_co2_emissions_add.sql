UPDATE co2_emissions_add
SET co2_emissions_latest_year = REPLACE(co2_emissions_latest_year, ' ', '')  -- Remove spaces
WHERE co2_emissions_latest_year ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE co2_emissions_add
    ALTER COLUMN co2_emissions_latest_year TYPE INTEGER
    USING co2_emissions_latest_year::INTEGER;

UPDATE co2_emissions_add
SET percent_change_since_1990 = REPLACE(percent_change_since_1990, ' ', '')  -- Remove spaces
WHERE percent_change_since_1990 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE co2_emissions_add
    ALTER COLUMN percent_change_since_1990 TYPE INTEGER
    USING percent_change_since_1990::INTEGER;

UPDATE co2_emissions_add
SET co2_emissions_per_capita_latest_year = REPLACE(co2_emissions_per_capita_latest_year, ' ', '')  -- Remove spaces
WHERE co2_emissions_per_capita_latest_year ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE co2_emissions_add
    ALTER COLUMN co2_emissions_per_capita_latest_year TYPE INTEGER
    USING co2_emissions_per_capita_latest_year::INTEGER;
