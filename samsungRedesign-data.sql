DROP DATABASE IF EXISTS samsungRedesign_db;

CREATE DATABASE samsungRedesign_db;

USE samsungRedesign_db;

CREATE TABLE Home(
home_id INT AUTO_INCREMENT NOT NULL,
home_name VARCHAR(255),
URL VARCHAR(255),
PRIMARY KEY(home_id)
);

INSERT INTO Home(home_name, URL)
VALUES 
("Banner1", "./homeImages/GalaxyBanner1.jpg"),
("Banner2", "./homeImages/GalaxyBanner2.jpg"),
("Banner3", "./homeImages/GalaxyBanner3.jpg"),
("Banner4", "./homeImages/GalaxyBanner4.jpg"),
("Events1", "./homeImages/Events1.jpg"),
("Deals1", "./homeImages/Deals1.jpg"),
("Phones", "./homeImages/Phone.jpg"),
("Computing", "./homeImages/Computing.jpg"),
("Tvs", "./homeImages/TVs.jpg"),
("Appliances", "./homeImages/Appliances.jpg");

-- ------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE HomeAppliances(
homeAppliance_id INT AUTO_INCREMENT NOT NULL,
homeAppliance_name VARCHAR(255),
homeAppliance_category VARCHAR(255),
URL VARCHAR(255),
PRIMARY KEY(homeAppliance_id)
);

INSERT INTO HomeAppliances(homeAppliance_category, homeAppliance_name, URL)
VALUES 
("Laundry", "Front Load Washer & Dryer set with Steam in Champagne", "/HomeAppliancesImages/ChampagneWasher&Dryer.webp"),
("Laundry", "Bixby enabled Front Load Washer & Dryer set in Black Stainless Steel", "/HomeAppliancesImages/BixyWasher&Dryer.webp"),
("Laundry", "Top Load Washer & Dryer set with Active Water Jet and Sensor Dry in White", "/HomeAppliancesImages/TopLoadWasher&Dryer.webp"),
("Refrigerator", "18 cu. ft. Top Freezer Refrigerator with FlexZone™ and Ice Maker in Stainless Steel", "/HomeAppliancesImages/TopFreezeRefrigerator.webp"),
("Refrigerator", "22 cu. ft. Family Hub™ Counter Depth 4-Door Flex™ Refrigerator in Black Stainless Steel", "/HomeAppliancesImages/4DoorFlexRefrigerator.webp"),
("Refrigerator", "26.5 cu. ft. Large Capacity 3-Door French Door Refrigerator with Family Hub", "/HomeAppliancesImages/3DoorFrenchRefrigerator.webp"),
("Refrigerator", "25 cu. ft. Side-by-Side Refrigerator with LED Lighting in White", "/HomeAppliancesImages/2DoorRefrigerator.webp"),
("Ranges", "5.9 cu. ft. Freestanding Electric Range with Convection in Stainless Steel", "/HomeAppliancesImages/FreestandingElectricRange.webp"),
("Ranges", "5.8 cu. ft. Freestanding Gas Range with Flex Duo™ & Dual Door in Stainless Steel", "/HomeAppliancesImages/FreestandingGasRange.webp"),
("Ranges", "5.8 cu. ft. Slide-in Dual Fuel Range with Flex Duo™ & Dual Door in Stainless Steel", "/HomeAppliancesImages/DualFuelRange.webp"),
("DishWasher", "Digital Touch Control 55 dBA Dishwasher in Stainless Steel", "/HomeAppliancesImages/DigitalDishwasher.webp"),
("DishWasher", "Linear Wash 39 dBA Dishwasher in Tuscan Stainless Steel", "/HomeAppliancesImages/LinearDishwasher.webp"),
("Microwave", "Over-the-Range Microwave with 1.7 cu. ft. Capacity in Stainless Steel", "/HomeAppliancesImages/MicrowaveOverTheRange.webp"),
("Microwave", "1.4 cu. ft. Countertop Microwave with Sensor Cooking in Fingerprint Resistant Black Stainless Steel", "/HomeAppliancesImages/MicrowaveCountertop.webp"),
("Microwave", "1.2 cu. ft. PowerGrill Duo™ Countertop Microwave with Power Convection and Built-In Application in Black", "/HomeAppliancesImages/MicrowaveBuiltIn.webp"),
("Microwave", "1.7 cu. ft. Over-the-Range Convection Microwave in Fingerprint Resistant Stainless Steel", "/HomeAppliancesImages/Microwave1.7.webp");

CREATE TABLE HomeAppliancesDescriptions(
homeApplianceDescription_id INT AUTO_INCREMENT NOT NULL,
homeAppliance_id INT, 
homeApplianceDescription VARCHAR(255),
PRIMARY KEY(homeApplianceDescription_id),
FOREIGN KEY(homeAppliance_id) REFERENCES HomeAppliances(homeAppliance_id)
);

INSERT INTO HomeAppliancesDescriptions (homeAppliance_id, homeApplianceDescription)
VALUES
(1, "Laundry set includes a 4.5 Cu. ft. Front Load Washer with Steam in Champagne, 7.5 cu. ft. Electric Dryer with Steam Sanitize in Champagne. Energy Star Certified, ADA Compliant, Smart Care and more features."),
(2, "Laundry set includes a Smart Front Load Washer with Super Speed in Black Stainless Steel, Smart Electric Dryer with Steam Sanitize+ in Black Stainless Steel"),
(3, "Laundry set includes a Top Load Washer with Active Water Jet in White, 7.4 cu. ft. Electric Dryer with Sensor Dry in White."),
(4, "The FlexZone™ compartment adjusts from refrigerator to freezer temperatures, while the Twin Cooling Plus™ technology helps keep produce fresher longer."),
(5, "The Smart way to keep food and drinks fresh – our Family Hub™ feature lets you and your family leave notes, sync calendars, and display photos."),
(6, "Samsung’s 26.5 cu. ft. large capacity, 3-Door French Door Family Hub™ Refrigerator, is beautifully designed with a minimal dispenser and sleek-edge doors with modern handles."),
(7, "With an extra-large capacity, this sleek refrigerator features high-efficiency LEDs which beautifully illuminate everything inside."),
(8, "Cook multiple dishes at once with a large capacity and bake and broil food faster and more evenly with Fan Convection."),
(9, "This Flex Duo™ oven lets you cook two dishes at different temperatures, while the Dual Door allows you to access just the top oven or the full oven."),
(10, "Boasting the best of both worlds, this range features a gas cooktop with an electric Flex Duo™ oven that can cook two dishes at different temperatures."),
(11, "Digital touch controls let you easily select dishwashing functions, while an adjustable rack accommodates larger dishes."),
(12, "Our Linear Wash System combined with Whisper Quiet Cleaning brings remarkable cleaning results and a virtually silent performance to your kitchen."),
(13, "A stylish design for a seamless and modern look, this over-the-range microwave features large 1.7 cu. ft. capacity and a fingerprint resistant finish."),
(14, "Designed with a scratch-resistant interior, this modern microwave features our Sensor Cooking options which conveniently provide optimal cooking results."),
(15, "Our PowerGrill Duo™ technology crisps the outside of food without drying the inside, while the Power Convection cooks food quickly and evenly."),
(16, "The convection oven and microwave combination features Slim Fry™ technology, which keeps food crisp on the outside and evenly cooked on the inside.");

CREATE TABLE HomeAppliancesPrices(
homeAppliancePrice_id INT AUTO_INCREMENT NOT NULL,
homeAppliance_id INT, 
homeApplianceOrder_id INT,
homeAppliancePrice DECIMAL(10,2),
homeAppliancePrice_range VARCHAR (255),
PRIMARY KEY(homeAppliancePrice_id),
FOREIGN KEY(homeAppliance_id) REFERENCES HomeAppliances(homeAppliance_id)
);

INSERT INTO HomeAppliancesPrices (homeAppliance_id, homeAppliancePrice, homeAppliancePrice_range)
VALUES
(1, 1258.00, "600.00-1499.99"),
(2, 1398.00, "600.00-1499.99"),
(3, 1258.00, "600.00-1499.99"),
(4, 699.99, "600.00-1499.99"),
(5, 2999.00, "1500.00-2999.99"),
(6, 2199.00, "1500.00-2999.99"),
(7, 999.99, "600.00-1499.99"),
(8, 599.99, "300.00-599.99"),
(9, 1199.99, "600.00-1499.99"),
(10, 2699.00, "1500.00-2999.99"),
(11, 399.99, "300.00-599.99"),
(12, 849.99, "600.00-1499.99"),
(13, 199.99, "1.00-299.99"),
(14, 179.99, "1.00-299.99"),
(15, 449.99, "300.00-599.99"),
(16, 449.99, "300.00-599.99");

-- SELECT HomeAppliances.homeAppliance_category, 
-- HomeAppliances.homeAppliance_name, 
-- HomeAppliancesDescriptions.homeApplianceDescription , 
-- HomeAppliancesPrices.homeAppliancePrice
-- FROM HomeAppliances 
-- INNER JOIN HomeAppliancesPrices ON HomeAppliances.homeAppliance_id = HomeAppliancesPrices.homeAppliance_id
-- INNER JOIN HomeAppliancesDescriptions ON HomeAppliances.homeAppliance_id = HomeAppliancesDescriptions.homeAppliance_id; 

-- ------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE MobileProducts(
mobileProduct_id INT AUTO_INCREMENT NOT NULL,
mobileProduct_name VARCHAR(255),
mobileProduct_category VARCHAR(255),
URL VARCHAR(255),
PRIMARY KEY(mobileProduct_id)
);

INSERT INTO MobileProducts (mobileProduct_category, mobileProduct_name, URL)
VALUES
("MobilePhones", "Galaxy Z Flip", "/MobileProductsImages/GalaxyZFlip.png"),
("MobilePhones", "Galaxy S20 5G", "/MobileProductsImages/GalaxyS20.webp"),
("MobilePhones", "Galaxy S10 5G", "/MobileProductsImages/GalaxyS10.png"),
("MobilePhones", "Galaxy Note 10", "/MobileProductsImages/GalaxyNote10.jpg"),
("Tablets", "Galaxy Tab S6 Lite", "/MobileProductsImages/TabS6Lite.jpeg"),
("Tablets", "Galaxy Tab S5e 10.5", "/MobileProductsImages/TabS5e.jpg"),
("Watches", "Galaxy Watch Active2", "/MobileProductsImages/WatchActive2.jpg"),
("Watches", "Galaxy Watch", "/MobileProductsImages/GalaxyWatch.webp"),
("Watches", "Galaxy Fit", "/MobileProductsImages/GalaxyFit.webp"),
("PersonalAudio", "Galaxy Buds+", "/MobileProductsImages/BudsPlus.webp"),
("PersonalAudio", "Galaxy Buds+ BTS Edition", "/MobileProductsImages/BudsPlusBts.webp"),
("PersonalAudio", "AKG N700NC M2 Wireless Headphones", "/MobileProductsImages/AkgHeadphones.webp"),
("PersonalAudio", "Active InEar Headphones", "/MobileProductsImages/RegHeadphones.webp"),
("Laptops", "Galaxy Chromebook", "/MobileProductsImages/Chromebook.jpg"),
("Laptops", "Galaxy Book Flex", "/MobileProductsImages/BookFlex.webp"),
("Laptops", "Galaxy Book Ion", "/MobileProductsImages/BookION.jpeg");

CREATE TABLE MobileProductsDescriptions(
mobileProductDescription_id INT AUTO_INCREMENT NOT NULL,
mobileProduct_id INT, 
mobileProductDescription VARCHAR(500),
PRIMARY KEY(mobileProductDescription_id),
FOREIGN KEY(mobileProduct_id) REFERENCES MobileProducts(mobileProduct_id)
);

INSERT INTO MobileProductsDescriptions (mobileProduct_id, mobileProductDescription)
VALUES
(1, "The full screen phone that folds to fit in your pocket with revolutionary flexible glass, a camera made to stand on its own, and a Hideaway Hinge to capture your life from every angle."),
(2, "Meet Galaxy S20 5G. With revolutionary 8K Video Snap, 5G connectivity and Space Zoom up to 30x, the way you capture and share your life will never be the same. Shots you never even knew were there are suddenly just a tap away."),
(3, "More screen and more power. Samsung Galaxy S10's premium performance utilizes a pro-grade camera with optical zoom for effortless capture, and ultrasonic fingerprint ID gives improved security, unlocking with a tap of the screen."),
(4, "Intelligent power that learns from how you work and play to optimize battery life. With nearly invisible bezels, Galaxy Note10's cinema-quality display elevates everything you watch."),
(5, "Its expansive display and sleek, lightweight build makes it perfect for entertainment on-the-go.The included S Pen lets you effortlessly create, edit, and navigate through your work."),
(6, "The incredibly slim Galaxy Tab S5e is perfect for your on-the-go life. Watch your favorite shows and movies come to life on a corner-to-corner 10.5in Super AMOLED display."),
(7, "Get more out of every mile thanks to built-in pace coaching. Advanced sensors keep your pace to help you achieve your run goals. Comfortably sleek The Galaxy Watch Active2 is light enough to wear anywhere comfortably."),
(8, "Stylish Watch that Balances your mind and body with sleep cycle tracking, reminders to keep moving, calorie tracking, guided meditation and breathing exercises for stress management."),
(9, "All goals. No limits. Look and feel your best with the lightweight yet durable Samsung Galaxy Fit.1."),
(10, "The next generation of Galaxy Buds is here, taking sound quality and control to new harmonic heights. From automatically tuning out unwanted noise¹, to a battery built to go all day², the way you experience sound is about to change."),
(11, "Show your BTS pride and listen to your favorite BTS hits with the solid purple Galaxy Buds+ BTS Edition. And the BTS love goes beyond the Buds, including 7 unique BTS photo cards."),
(12, "Feel every layer of audio just as the artist intended with the luxuriously comfortable AKG N700NC M2 Wireless noise cancelling headphones. Automatically tune out surrounding distractions with adaptive noise cancelling technology and, thanks to a long-lasting battery, immerse yourself in exquisite sound for up to 23 hours."),
(13, "Winged ear gels for in-ear stability and improved sound Ultra-soft, contoured gels reduce unwanted noise and improve audio quality."),
(14, "Beautiful performance, even better looks. With its 4K AMOLED touchscreen, powerful processor, 360° convertible design and built-in pen, the new Chromebook's ready to knock any project out of the park."),
(15, "Shockingly vivid QLED touchscreens. A 2-in-1 convertible design. Formidable 10th generation Intel® Core™ processors. From creating and knocking out projects to unwinding with a show, the revolutionary Galaxy Book Flex and Galaxy Book Flex ⍺ will defy your expectations and dazzle your senses."),
(16, "The brilliance of QLED is coming to the world of laptops. Introducing the new Samsung Galaxy Book Ion. With up to 22 hours of battery life, a trackpad that wirelessly charges your phone and more, it defies everything you expect from a PC.");

CREATE TABLE MobileProductsPrices(
mobileProductPrice_id INT AUTO_INCREMENT NOT NULL,
mobileProduct_id INT, 
mobileProductOrder_id INT,
mobileProductPrice DECIMAL(10,2),
mobileProductPrice_range VARCHAR (255),
PRIMARY KEY(mobileProductPrice_id),
FOREIGN KEY(mobileProduct_id) REFERENCES MobileProducts(mobileProduct_id)
);

INSERT INTO MobileProductsPrices (mobileProduct_id, mobileProductPrice, mobileProductPrice_range)
VALUES
(1, 1380.00, "1000.00-1500.00"),
(2, 999.99, "499.99-999.99"),
(3, 549.99, "499.99-999.99"),
(4, 950.00, "499.99-999.99"),
(5, 349.99, "150.00-499.99"),
(6, 399.99, "150.00-499.99"),
(7, 299.99, "150.00-499.99"),
(8, 259.99, "150.00-499.99"),
(9, 99.99, "1.00-149.99"),
(10, 149.99, "1.00-149.99"),
(11, 199.99, "150.00-499.99"),
(12, 299.99, "150.00-499.99"),
(13, 29.99, "1.00-149.99"),
(14, 299.99, "150.00-499.99"),
(15, 1349.99, "1000.00-1500.00"),
(16, 1199.99, "1000.00-1500.00");

-- SELECT MobileProducts.mobileProduct_category, 
-- MobileProducts.mobileProduct_name, 
-- MobileProductsDescriptions.mobileProductDescription , 
-- MobileProductsPrices.mobileProductPrice
-- FROM MobileProducts 
-- INNER JOIN MobileProductsPrices ON MobileProducts.mobileProduct_id = MobileProductsPrices.mobileProduct_id
-- INNER JOIN MobileProductsDescriptions ON MobileProducts.mobileProduct_id = MobileProductsDescriptions.mobileProduct_id; 

-- ------------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE TvAudio(
tvAudio_id INT AUTO_INCREMENT NOT NULL,
tvAudio_name VARCHAR(255),
tvAudio_category VARCHAR(255),
URL VARCHAR(255),
PRIMARY KEY(tvAudio_id)
);

INSERT INTO TvAudio (tvAudio_category, tvAudio_name, URL)
VALUES
("TV", "65in Class TU8000 Crystal UHD 4K Smart TV", "/TvAudioImages/75inTV.webp"),
("TV", "85in Class Q90T QLED 4K UHD HDR Smart TV", "/TvAudioImages/65inTV.webp"),
("TV", "43in Class TU7000 Crystal UHD 4K Smart TV", "/TvAudioImages/65inTV.webp"),
("TV", "75in Class Q60T QLED 4K UHD HDR Smart TV", "/TvAudioImages/43inTV.webp"),
("Audio", "HW-Q60R Samsung Harman Kardon Soundbar with Samsung Acoustic Beam", "/TvAudioImages/HW-Q60RSoundbar.webp"),
("Audio", "SWA-9000S - Wireless Rear Speaker Kit for Sound+ & Dolby Atmos Soundbars", "/TvAudioImages/SWA-9000SAudio.webp"),
("Audio", "MX-T70 Sound Tower High Power Audio 1500W", "/TvAudioImages/SoundTower.webp"),
("TV", "43 Class The Serif QLED 4K UHD HDR Smart TV (2020)", "/TvAudioImages/SerifTV.webp"),
("Accessories", "WMN750 Mini Wall Mount (33”-65”)", "/TvAudioImages/MiniWallMount.webp"),
("Accessories", "Full-Tilt Wall Mount (58in-75in)", "/TvAudioImages/FullTiltWallMount.webp"),
("Accessories", "Studio Stand", "/TvAudioImages/StudioStand.webp"),
("Accessories", "65in The Frame Customizable Bezel", "/TvAudioImages/FrameCustomizableBezel.webp");

CREATE TABLE TvAudioDescriptions(
tvAudioDescription_id INT AUTO_INCREMENT NOT NULL,
tvAudio_id INT, 
tvAudioDescription VARCHAR(500),
PRIMARY KEY(tvAudioDescription_id),
FOREIGN KEY(tvAudio_id) REFERENCES TvAudio(tvAudio_id)
);

INSERT INTO TvAudioDescriptions (tvAudio_id, tvAudioDescription)
VALUES
(1, "Quantum Dot Technology delivers over a billion shades of color that stay true-to-life. Quantum HDR brings out the detail and contrast by expanding the range of color and detail beyond what's possible on HDTVs"),
(2, "Experience crystal clear colors that are fine-tuned to deliver a naturally crisp and vivid picture. Picture quality to move you, made possible by a single chip that orchestrates color, optimizes high contrast ratio, and masters HDR"),
(3, "See every detail at any angle. Engineered to reduce glare and enhance color, providing a vibrant picture no matter where you sit. Samsung's powerful 4K Quantum processor automatically optimizes the picture to deliver a more immersive experience"),
(4, "The ultra-fast Crystal Processor 4K transforms everything you watch into stunning 4K. See what you’ve been missing on the crisp, clear picture that’s 4X the resolution of Full HD"),
(5, "Samsung Acoustic Beam technology immerses you in panoramic sound that moves with the action. Hear voices clearly with a center channel dedicated to clear dialogue."),
(6, "Add wireless surround sound to Samsung's Sound+ and Dolby Atmos Soundbars. Includes 2 channel rear amplifier and 2 wall-mountable rear speakers."),
(7, "Stereo sound with 1500 watt high power bi-directional speakers.Built-in woofer for sound you can feel"),
(8, "The Serif with QLED Technology and unique design adds another level of sophistication to your space. Ambient Mode and unique stand lets you transform your TV and use it in new ways. Stand included with purchase."),
(9, "Single Wall Mount Solution for a Wide Range of Samsung TVs. Low Profile Design with the Ability to Level the TV."),
(10, "Full-Tilt Wall Mount Designed for use with 2018-2020 58in-75in Samsung TVs. Tilts 10 to 15 Degrees. Swivels Left and Right 20 Degrees."),
(11, "Experience style, elegance and extended viewing angles with the Studio Stand. It's designed with a clutter-free cable management solution to reimagine your space. Compatible with 43in-65in The Frame, 49in-65in QLED 4K and 8K, and 50in-65in UHD"),
(12, "Compatible with the 65” 2020 Frame TVs and earlier Available in Brown, Beige, White, or Black, each frame adds elegance to any décor.");

CREATE TABLE TvAudioPrices(
tvAudioPrice_id INT AUTO_INCREMENT NOT NULL,
tvAudio_id INT, 
tvAudioOrder_id INT,
tvAudioPrice DECIMAL(10,2),
tvAudioPrice_range VARCHAR (255),
PRIMARY KEY(tvAudioPrice_id),
FOREIGN KEY(tvAudio_id) REFERENCES TvAudio(tvAudio_id)
);

INSERT INTO TvAudioPrices (tvAudio_id, tvAudioPrice, tvAudioPrice_range)
VALUES
(1, 1499.99, "700.00-$4599.99"),
(2, 699.99, "300.00-699.99"),
(3, 4599.99, "700.00-$4599.99"),
(4, 269.99, "1.00-299.99"),
(5, 499.99, "300.00-699.99"),
(6, 179.99, "1.00-299.99"),
(7, 699.99, "300.00-699.99"),
(8, 999.99, "700.00-$4599.99"),
(9, 79.99, "1.00-299.99"),
(10, 149.99, "1.00-299.99"),
(11, 299.99, "1.00-299.99"),
(12, 199.99, "1.00-299.99");

SELECT TvAudio.tvAudio_category, 
TvAudio.tvAudio_name, 
TvAudioDescriptions.tvAudioDescription , 
TvAudioPrices.tvAudioPrice
FROM TvAudio 
INNER JOIN TvAudioPrices ON TvAudio.tvAudio_id = TvAudioPrices.tvAudio_id
INNER JOIN TvAudioDescriptions ON TvAudio.tvAudio_id = TvAudioDescriptions.tvAudio_id;























