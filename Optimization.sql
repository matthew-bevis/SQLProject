--COP4710
--Optimization Script

DROP INDEX ShipDriverDistIndx ON _RestSupp;

SELECT S.distance, D.firstName, D.lastName
FROM _Shipment S, _Driver D
WHERE S.driveID = D.driveID AND S.distance BETWEEN 35 and 80;

EXPLAIN
SELECT S.distance, D.firstName, D.lastName
FROM _Shipment S, _Driver D
WHERE S.driveID = D.driveID AND S.distance BETWEEN 35 and 80;

CREATE INDEX ShipDriverDistIndx ON _Shipment(distance) using BTree;

SELECT S.distance, D.firstName, D.lastName
FROM _Shipment S, _Driver D
WHERE S.driveID = D.driveID AND S.distance BETWEEN 35 and 80;

EXPLAIN
SELECT S.distance, D.firstName, D.lastName
FROM _Shipment S, _Driver D
WHERE S.driveID = D.driveID AND S.distance BETWEEN 35 and 80;