IF NOT EXISTS:
CREATE DATABASE environment;

\c environment;

CREATE TABLE country (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE agricultural_land (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    total_area_2013 VARCHAR(50),
    total_area_percent_change_since_1990 VARCHAR(50),
    percent_total_land_covered_by_agriculture_2013 VARCHAR(50),
    arable_land_2013 VARCHAR(50),
    permanent_crops_2013 VARCHAR(50),
    permanent_meadows_pastures_2013 VARCHAR(50),
    agricultural_area_actually_irrigated_2013 VARCHAR(50),
    CONSTRAINT fk_country_agriculture FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE forest_area (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    forest_area_1990_ha VARCHAR(50),
    forest_area_2000_ha VARCHAR(50),
    forest_area_2010_ha VARCHAR(50),
    forest_area_2015_ha VARCHAR(50),
    forest_area_2020_ha VARCHAR(50),
    total_land_area_2020_ha VARCHAR(50),
    forest_area_proportion_total_land_area_2020 VARCHAR(50),
    deforestation_2015_2020_ha_per_year VARCHAR(50),
    total_forest_area_affected_by_fire_2015_ha VARCHAR(50),
    CONSTRAINT fk_country_forest FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE water_supply (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    net_freshwater_supplied_by_water_supply_industry_mio_m3 VARCHAR(50),
    net_freshwater_supplied_by_water_supply_industry_per_capita_m3 VARCHAR(50),
    latest_year_available VARCHAR(50),
    total_population_supplied_by_water_supply_industry_percent VARCHAR(50),
    net_freshwater_supplied_by_water_supply_industry_per_capita VARCHAR(50),
    CONSTRAINT fk_country_water FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE governance (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    basel_convention VARCHAR(50),
    cites VARCHAR(50),
    convention_on_biological_diversity VARCHAR(50),
    convention_on_migratory_species VARCHAR(50),
    kyoto_protocol VARCHAR(50),
    montreal_protocol VARCHAR(50),
    paris_agreement VARCHAR(50),
    ramsar_convention VARCHAR(50),
    rotterdam_convention VARCHAR(50),
    stockholm_convention VARCHAR(50),
    un_convention_on_the_law_of_the_sea VARCHAR(50),
    un_convention_to_combat_desertification VARCHAR(50),
    un_framework_convention_on_climate_change VARCHAR(50),
    world_heritage_convention VARCHAR(50),
    CONSTRAINT fk_country_governance FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE fertilizer_consumption (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    nitrogen VARCHAR(50),
    phosphate VARCHAR(50),
    potash VARCHAR(50),
    CONSTRAINT fk_country_fertilizer FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE protected_areas (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    latest_year_available VARCHAR(50),
    percent_protected_areas VARCHAR(50),
    CONSTRAINT fk_country_protected_areas FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE co2_emissions (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    year VARCHAR(50),
    value VARCHAR(50),
    CONSTRAINT fk_country_co2 FOREIGN KEY (country_name) REFERENCES country(country_name)
);

CREATE TABLE co2_emissions_add (
    id SERIAL PRIMARY KEY,
    country_name VARCHAR(255) NOT NULL,  
    co2_emissions_latest_year VARCHAR(50),
    percent_change_since_1990 VARCHAR(50),
    co2_emissions_per_capita_latest_year VARCHAR(50),
    CONSTRAINT fk_country_co2_add FOREIGN KEY (country_name) REFERENCES country(country_name)
);





