UPDATE governance
SET basel_convention = REPLACE(basel_convention, ' ', '')  -- Remove spaces
WHERE basel_convention ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN basel_convention TYPE INTEGER
    USING basel_convention::INTEGER;

UPDATE governance
SET cites = REPLACE(cites, ' ', '')  -- Remove spaces
WHERE cites ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN cites TYPE INTEGER
    USING cites::INTEGER;

UPDATE governance
SET convention_on_biological_diversity = REPLACE(convention_on_biological_diversity, ' ', '')  -- Remove spaces
WHERE convention_on_biological_diversity ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN convention_on_biological_diversity TYPE INTEGER
    USING convention_on_biological_diversity::INTEGER;

UPDATE governance
SET convention_on_migratory_species = REPLACE(convention_on_migratory_species, ' ', '')  -- Remove spaces
WHERE convention_on_migratory_species ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN convention_on_migratory_species TYPE INTEGER
    USING convention_on_migratory_species::INTEGER;

UPDATE governance
SET kyoto_protocol = REPLACE(kyoto_protocol, ' ', '')  -- Remove spaces
WHERE kyoto_protocol ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN kyoto_protocol TYPE INTEGER
    USING kyoto_protocol::INTEGER;

UPDATE governance
SET montreal_protocol = REPLACE(montreal_protocol, ' ', '')  -- Remove spaces
WHERE montreal_protocol ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN montreal_protocol TYPE INTEGER
    USING montreal_protocol::INTEGER;

UPDATE governance
SET paris_agreement = REPLACE(paris_agreement, ' ', '')  -- Remove spaces
WHERE paris_agreement ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN paris_agreement TYPE INTEGER
    USING paris_agreement::INTEGER;

UPDATE governance
SET ramsar_convention = REPLACE(ramsar_convention, ' ', '')  -- Remove spaces
WHERE ramsar_convention ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN ramsar_convention TYPE INTEGER
    USING ramsar_convention::INTEGER;

UPDATE governance
SET rotterdam_convention = REPLACE(rotterdam_convention, ' ', '')  -- Remove spaces
WHERE rotterdam_convention ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN rotterdam_convention TYPE INTEGER
    USING rotterdam_convention::INTEGER;

UPDATE governance
SET stockholm_convention = REPLACE(stockholm_convention, ' ', '')  -- Remove spaces
WHERE stockholm_convention ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN stockholm_convention TYPE INTEGER
    USING stockholm_convention::INTEGER;

UPDATE governance
SET un_convention_on_the_law_of_the_sea = REPLACE(un_convention_on_the_law_of_the_sea, ' ', '')  -- Remove spaces
WHERE un_convention_on_the_law_of_the_sea ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN un_convention_on_the_law_of_the_sea TYPE INTEGER
    USING un_convention_on_the_law_of_the_sea::INTEGER;

UPDATE governance
SET un_convention_to_combat_desertification = REPLACE(un_convention_to_combat_desertification, ' ', '')  -- Remove spaces
WHERE un_convention_to_combat_desertification ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN un_convention_to_combat_desertification TYPE INTEGER
    USING un_convention_to_combat_desertification::INTEGER;

UPDATE governance
SET un_framework_convention_on_climate_change = REPLACE(un_framework_convention_on_climate_change, ' ', '')  -- Remove spaces
WHERE un_framework_convention_on_climate_change ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN un_framework_convention_on_climate_change TYPE INTEGER
    USING un_framework_convention_on_climate_change::INTEGER;

UPDATE governance
SET world_heritage_convention = REPLACE(world_heritage_convention, ' ', '')  -- Remove spaces
WHERE world_heritage_convention ~ '[^-0-9]';  -- Remove non-numeric characters except the minus sign

ALTER TABLE governance
    ALTER COLUMN world_heritage_convention TYPE INTEGER
    USING world_heritage_convention::INTEGER;
