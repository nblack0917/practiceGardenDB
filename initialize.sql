DROP TABLE IF EXISTS  usersContact, usersAddress, usersCredentials, plantVarieties, zone3, zone4, zone5, zone6, zone7, zone8, zone9, zone10, plantParents, gardenPlants, plantTypes, gardenBeds, users;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  PRIMARY KEY (id)
  );

CREATE TABLE usersContact (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  phone1 VARCHAR(50),
  phone2 VARCHAR(50),
  email VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE usersAddress (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  address VARCHAR(100),
  city VARCHAR(50),
  county VARCHAR(50),
  state VARCHAR(50),
  zip VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE usersCredentials (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  username VARCHAR(25),
  password VARCHAR(100),
  PRIMARY KEY (id),
  UNIQUE KEY (username),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE gardenBeds (
  bed_id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  bed_type TINYINT NOT NULL,
  bed_width INT NOT NULL,
  bed_length INT NOT NULL,
  PRIMARY KEY (bed_id),
  FOREIGN KEY (user_id)
    REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE plantTypes (
  id INT NOT NULL AUTO_INCREMENT,
  plantGroupName VARCHAR(12),
  PRIMARY KEY (id),
  UNIQUE (plantGroupName)
);

CREATE TABLE plantParents (
  id INT NOT NULL AUTO_INCREMENT,
  plantParent_id INT NOT NULL,
  plantGroup_id VARCHAR(12),
  plantParent_name VARCHAR(50),
  plantParent_spacing INT,
  plantParent_sowDepth INT,
  plantParent_sun VARCHAR(24),
  plantParent_soil VARCHAR(24),
  plantParent_watering VARCHAR(24),
  PRIMARY KEY (id),
  KEY (plantParent_id),
  FOREIGN KEY (plantGroup_id)
  REFERENCES plantTypes(plantGroupName)
    ON DELETE CASCADE
);

CREATE TABLE gardenPlants (
  id INT NOT NULL AUTO_INCREMENT,
  bed_id INT NOT NULL,
  plant_variety VARCHAR(24),
  PRIMARY KEY (id),
  KEY (plant_variety),
  FOREIGN KEY (bed_id)
    REFERENCES gardenBeds(bed_id)
    ON DELETE CASCADE
  -- FOREIGN KEY (plant_variety)
  --   REFERENCES plantVarieties(variety_name)
);

CREATE TABLE plantVarieties (
  id INT NOT NULL AUTO_INCREMENT,
  plantParent_id INT NOT NULL,
  variety_name VARCHAR(24),
  variety_description VARCHAR(50),
  height INT,
  daysToHarvest INT,
  PRIMARY KEY (id),
  KEY (plantParent_id),
  KEY (variety_name),
  FOREIGN KEY (plantParent_id)
  REFERENCES plantParents(plantParent_id)
    ON DELETE CASCADE,
  FOREIGN KEY (variety_name)
    REFERENCES gardenPlants(plant_variety)
    ON DELETE CASCADE
);

CREATE TABLE zone3 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone4 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone5 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone6 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone7 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone8 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone9 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);
CREATE TABLE zone10 (
    zone_id INT NOT NULL,
    plant_id INT NOT NULL,
    spring_sow DATE,
    spring_transplant DATE,
    fall_sow DATE,
    fall_transplant DATE,
    PRIMARY KEY (zone_id),
    FOREIGN KEY (plant_id)
    REFERENCES plantParents(plantParent_id)
);

