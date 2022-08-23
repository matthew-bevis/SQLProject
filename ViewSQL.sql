--Matt Bevis
--View SQL Script

DROP VIEW IF EXISTS _ViewDriverShipment;
DROP VIEW IF EXISTS _ViewDriveShipRest;
DROP VIEW IF EXISTS _ViewSuppDriverTotal;

CREATE VIEW _ViewDriverShipment AS
SELECT d.firstName, d.lastName, s.numStop
FROM _Driver AS d JOIN _Shipment AS s
ON d.driveID = s.driveID;


CREATE VIEW _ViewDriveShipRest AS
SELECT d.firstName, d.lastName, s.numStop, r.name
FROM _Driver d, _Shipment s, _Restaurant r
WHERE d.driveID = s.driveID AND r.restID = s.restID;

CREATE VIEW _ViewAVG_MIN_MAX_Shipment AS
SELECT AVG(distance), MIN(distance), MAX(distance)
FROM _Shipment;

SELECT *
FROM _ViewDriverShipment;

SELECT *
FROM _ViewDriveShipRest;

SELECT *
FROM _ViewAVG_MIN_MAX_Shipment;