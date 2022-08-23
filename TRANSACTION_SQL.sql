--Matt Bevis
--Transaction SQL

DROP PROCEDURE IF EXISTS AddNewRestaurant;
DROP PROCEDURE IF EXISTS ChangeRestID_THROW_EXCEPTION;

DELIMITER //

CREATE PROCEDURE AddNewRestaurant()
BEGIN
  
  DECLARE exit handler for sqlexception
  BEGIN
    ROLLBACK;
    SELECT 'sql exception';
  END;

  DECLARE exit handler for sqlwarning
  BEGIN
    ROLLBACK;
    SELECT 'sql warning';
  END;

  START TRANSACTION;

  INSERT INTO _Restaurant
  (name, address, city, state)
  VALUES
  ('Osaka Japanese Steakhouse','1234 Capital Circle NE','Tallahassee','FL');

  INSERT INTO _Supplier
  (suppAddr, suppCity, suppState, numDriver, numClient)
  VALUES 
  ('5768 Macomb St.','Tallahassee','FL','22','8')
  COMMIT;

END // 


CREATE PROCEDURE ChangeRestID_THROW_EXCEPTION;
BEGIN
  
  DECLARE exit handler for sql exception
  BEGIN
    ROLLBACK;
    SELECT 'sql exception';
  END;

  DECLARE exit handler for sqlwarning
  BEGIN
    ROLLBACK;
    SELECT 'sql warning';
  END;

  START TRANSACTION;

  UPDATE _Restaurant
  SET RestID = 20000
  WHERE restID = 00001;

END //

DELIMITER ;

CALL AddNewRestaurant();

CALL ChangeSuppID