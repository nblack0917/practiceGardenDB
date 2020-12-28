INSERT INTO users
	(first_name, last_name)
VALUES 
    ("Nick", "Black"),
    ("Jenny", "Black"),
    ("Cindy", "Aneweer"),
    ("Tom", "Aneweer"),
    ("Shaun", "Funk");

INSERT INTO usersContact
    (user_id, phone1, phone2, email)
VALUES
    (1, "813-391-1123", "", "nickablack@gmail.com"),
    (2, "512-945-3354", "", "jenniferblack0917@gmail.com"),
    (3, "512-555-6666", "512-555-7778", "cindy@gmail.com"),
    (4, "512-555-6666", "512-555-7779", "tom@gmail.com"),
    (5, "973-625-6427", "973-454-5631", "skunkfunk@gmail.com");

INSERT INTO usersAddress
    (user_id, address, city, county, state, zip)
VALUES
    (1, "15267 Dashwood Creek Dr", "Pflugerville", "Travis", "Texas", "78460"),
    (2, "15267 Dashwood Creek Dr", "Pflugerville", "Travis", "Texas", "78460"),
    (3, "333 Woodcrest Dr", "Georgetown", "Williamson", "Texas", "78652"),
    (4, "333 Woodcrest Dr", "Georgetown", "Williamson", "Texas", "78652"),
    (5, "23453 Dripping St. Apt 22134", "Gonzales", "Dallas", "Texas", "76793");

INSERT INTO usersCredentials
    (user_id, username, password)
VALUES
    (1, "nlack123", "Password123!"),
    (2, "jennyZam", "PassGo34"),
    (3, "CindyWeer", "Word123!"),
    (4, "tommyBoy", "Password6234!!"),
    (5, "funktheskunk", "skunkworks.");

INSERT INTO plantTypes
    (plantGroupName)
VALUES
    ("Fruit"),
    ("Vegetable"),
    ("Greens"),
    ("Gourds"),
    ("Herbs");

INSERT INTO plantParents
    (plantParent_id, plantGroup_id, plantParent_name, plantParent_spacing, plantParent_sowDepth, plantParent_sun, plantParent_soil, plantParent_watering)
VALUES
    (1, "Fruit", "Tomatoes", 18, 0.5, "Full Sun", "Loam", "Moist, well-drained"),
    (2, "Fruit", "Squash", 12, 1, "Full Sun", "Loam", "Moist, well-drained"),
    (3, "Fruit", "Beans", 12, 1, "Full Sun", "Loam", "Moist, well-drained"),
    (4, "Greens", "Lettuce", 12, 0.5, "Full Sun", "Loam", "Moist, well-drained"),
    (5, "Herbs", "Basil", 8, 0.5, "Full Sun", "Loam", "Moist, well-drained"),
    (6, "Vegetable", "Carrots", 6, 0.5, "Full Sun", "Loam", "Moist, well-drained");

INSERT INTO plantVarieties
    (plantParent_id, variety_name, variety_description, height, daysToHarvest)
VALUES
    (1, "Cherry", "Small sweet tomatoes", 24, 85),
    (2, "Yellow", "8 inches long. Yellow in color", 24, 85),
    (1, "Beefsteak", "Large firm tomatoes", 24, 85),
    (4, "Dinosaur Kale", "Wide leaves", 18, 65),
    (6, "Orange Carrot", "2 - 8 inches long", 10, 90);

INSERT INTO gardenBeds
    (user_id, bed_width, bed_length, plant_1, plant_2, plant_3, plant_4, plant_5, plant_6, plant_7, plant_8, plant_9, plant_10)
VALUES
    (1, 48, 72, "Cherry", "Yellow", "Orange", "Orange", "Orange", "Dinosaur Kale", "Dinosaur Kale", "Dinosaur Kale", "Dinosaur Kale", "Dinosaur Kale"),
    (1, 48, 48, "Cherry", "Cherry", "Beefsteak", "Beefsteak", "", "", "", "", "", ""),
    (4, 24, 48, "Cherry", "Cherry", "Cherry", "Cherry", "Cherry", "", "", "", "", "");