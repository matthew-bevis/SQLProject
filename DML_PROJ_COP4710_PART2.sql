--RestaurantSupplierDB
--Matt Bevis

INSERT INTO _Restaurant(name, addressLine, city, state)
VALUES
('Little Italy','111-17 S Magnolia Dr','Tallahassee','FL'),
('Bonefish','7948 Lakeview St.','Crown Point','MA'),
('Red Lobster','31 Sage Ave.','Fresh Meadows','VA'),
('Olive Garden','9653 SW. Valley Street','Amsterdam','NY'),
('Hopkins Eatery','923 Mountainview Drive','Sylvania','NC'),
("Moe's Southwest Grill",'89 S. Devonshire St.','Dacula','NH'),
("Shoney's",'112 Sunset Lane','Annapolis','ID'),
('Waffle House','7518 San Carlos Road','Bridgeton','NJ'),
('IHOP','62 Indian Summer Drive','Erie','MI'),
('BurgerShot','878 Sherwood Lane','Riverside','MS');

INSERT INTO _Supplier(suppAddr, suppCity, suppState, numDriver, numClient)
VALUES
('7853 North Amherst Ave.','Dekalb','IL','17','33'),
('9294 Albany Ave.','Pembroke Pines','FL','18','34'),
('7722 Canterbury St.','Austin','MN','12','35'),
('427 Beech Court','Herndon','VA','10','25'),
('8829 Aspen Street','Reston','VA','12','32'),
('7853 North Amherst Ave.','Dekalb','IL','15','26'),
('640 Gulf St.','West Haven','CT','16','40'),
('6 Old Foster Road','Hudsonville','MI','18','43'),
('7332 Blue Spring Court','Hamtramck','MI','21','56'),
('579 S. High Noon Street','Ravenna','OH','25','88');

INSERT INTO _Driver(firstName, lastName, dob)
VALUES
('Henry','Harrison','1802-12-20'),
('George','Clooney','1812-03-02'),
('Elon','Musk','1822-08-27'),
('Jeffrey','Bezos','1840-05-28'),
('Neil','Pert','1854-08-30'),
('Abraham','Lincoln','1872-09-11'),
('Jessica','Simpson','1904-08-12'),
('Tiger','Woods','1909-02-17'),
('Spike','Spiegel','1972-05-23'),
('Faye','Valentine','2001-05-06'),
('Bono', NULL, '1962-06-11');

INSERT INTO _Shipment(driveID, numStop, distance, restID)
VALUES
('1','2','24.2','3'),
('2','12','116.5','4'),
('3','1','16.4','6'),
('3','2','25.2','1'),
('4','6','39.4','2'),
('4','3','27.0','7'),
('5','5','56.9','8'),
('7','8','85.3','8'),
('8','4','44.2','9'),
('9','8','81.9','10');

INSERT INTO _RestSupp(restID, suppID)
VALUES
('1','1'),
('2','1'),
('3','2'),
('4','2'),
('5','3'),
('6','3'),
('7','4'),
('8','4'),
('9','5'),
('10','6'),
('2','6'),
('4','7'),
('5','8'),
('6','9'),
('8','10');
