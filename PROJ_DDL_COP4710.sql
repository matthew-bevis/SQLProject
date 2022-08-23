-- Matt Bevis
-- COP4710
-- RestaurantSupplierDB

DROP TABLE IF EXISTS _RestSupp;
DROP TABLE IF EXISTS _Shipment;
DROP TABLE IF EXISTS _Driver;
DROP TABLE IF EXISTS _Supplier;
DROP TABLE IF EXISTS _Restaurant;

CREATE TABLE _Restaurant(
restID		 INT AUTO_INCREMENT,
name		 VARCHAR(20),
addressLine	 VARCHAR(100),
city		 VARCHAR(20),
state		 VARCHAR(20),
PRIMARY KEY (restID)
);

CREATE TABLE _Supplier(
suppID		 INT AUTO_INCREMENT,
suppAddr	 VARCHAR(100),
suppCity	 VARCHAR(20),
suppState	 VARCHAR(20),
numDriver	 INT,
numClient	 INT,
PRIMARY KEY (suppID)
);

CREATE TABLE _Driver(
firstName	 CHAR(20),
lastName	 CHAR(20),
driveID		 INT AUTO_INCREMENT,
dob		 DATE,
PRIMARY KEY (driveID)
);

CREATE TABLE _Shipment(
shipID		 INT AUTO_INCREMENT,
driveID		 INT,
numStop		 INT,
distance	 FLOAT,
restID		 INT,
PRIMARY KEY (shipID),
FOREIGN KEY (restID) REFERENCES _Restaurant (restID) ON DELETE CASCADE,
FOREIGN KEY (driveID) REFERENCES _Driver (driveID) ON DELETE CASCADE
);

CREATE TABLE _RestSupp(
restID		 INT,
suppID		 INT,
FOREIGN KEY (restID) REFERENCES _Restaurant(restID),
FOREIGN KEY (suppID) REFERENCES _Supplier(suppID),
PRIMARY KEY (restID, suppID)
);