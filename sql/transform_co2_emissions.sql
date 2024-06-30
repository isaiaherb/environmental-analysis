-- Set '...' to Null
UPDATE co2_emissions
SET value = NULLIF(value, '...')
WHERE value = '...'

UPDATE co2_emissions
SET value = NULLIF(value, '…')
WHERE value = '…'

-- Set appropriate datatypes
UPDATE co2_emissions
SET year = REPLACE(year, ' ', '')  -- Remove spaces
WHERE year ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE co2_emissions
    ALTER COLUMN year TYPE FLOAT
    USING year::FLOAT;

UPDATE co2_emissions
SET value = REPLACE(value, ' ', '')  -- Remove spaces
WHERE value ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE co2_emissions
    ALTER COLUMN value TYPE FLOAT
    USING value::FLOAT;
