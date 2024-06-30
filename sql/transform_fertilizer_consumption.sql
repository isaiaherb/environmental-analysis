UPDATE fertilizer_consumption
SET nitrogen = REPLACE(nitrogen, ' ', '')  -- Remove spaces
WHERE nitrogen ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE fertilizer_consumption
    ALTER COLUMN nitrogen TYPE INTEGER
    USING nitrogen::INTEGER;

UPDATE fertilizer_consumption
SET phosphate = REPLACE(phosphate, ' ', '')  -- Remove spaces
WHERE phosphate ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE fertilizer_consumption
    ALTER COLUMN phosphate TYPE INTEGER
    USING phosphate::INTEGER;

UPDATE fertilizer_consumption
SET potash = REPLACE(potash, ' ', '')  -- Remove spaces
WHERE potash ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE fertilizer_consumption
    ALTER COLUMN potash TYPE INTEGER
    USING potash::INTEGER;
