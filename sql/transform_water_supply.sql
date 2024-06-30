UPDATE water_supply
SET net_freshwater_supplied_by_water_supply_industry_mio_m3 = REPLACE(net_freshwater_supplied_by_water_supply_industry_mio_m3, ' ', '')  -- Remove spaces
WHERE net_freshwater_supplied_by_water_supply_industry_mio_m3 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE water_supply
    ALTER COLUMN net_freshwater_supplied_by_water_supply_industry_mio_m3 TYPE INTEGER
    USING net_freshwater_supplied_by_water_supply_industry_mio_m3::INTEGER;

UPDATE water_supply
SET net_freshwater_supplied_by_water_supply_industry_per_capita_m3 = REPLACE(net_freshwater_supplied_by_water_supply_industry_per_capita_m3, ' ', '')  -- Remove spaces
WHERE net_freshwater_supplied_by_water_supply_industry_per_capita_m3 ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE water_supply
    ALTER COLUMN net_freshwater_supplied_by_water_supply_industry_per_capita_m3 TYPE INTEGER
    USING net_freshwater_supplied_by_water_supply_industry_per_capita_m3::INTEGER;

UPDATE water_supply
SET latest_year_available = REPLACE(latest_year_available, ' ', '')  -- Remove spaces
WHERE latest_year_available ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE water_supply
    ALTER COLUMN latest_year_available TYPE INTEGER
    USING latest_year_available::INTEGER;

UPDATE water_supply
SET total_population_supplied_by_water_supply_industry_percent = REPLACE(total_population_supplied_by_water_supply_industry_percent, ' ', '')  -- Remove spaces
WHERE total_population_supplied_by_water_supply_industry_percent ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE water_supply
    ALTER COLUMN total_population_supplied_by_water_supply_industry_percent TYPE INTEGER
    USING total_population_supplied_by_water_supply_industry_percent::INTEGER;

UPDATE water_supply
SET net_freshwater_supplied_by_water_supply_industry_per_capita = REPLACE(net_freshwater_supplied_by_water_supply_industry_per_capita, ' ', '')  -- Remove spaces
WHERE net_freshwater_supplied_by_water_supply_industry_per_capita ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE water_supply
    ALTER COLUMN net_freshwater_supplied_by_water_supply_industry_per_capita TYPE INTEGER
    USING net_freshwater_supplied_by_water_supply_industry_per_capita::INTEGER;
