DELIMITER //
CREATE TRIGGER contacts_after_delete
AFTER DELETE ON contacts
FOR EACH ROW
BEGIN
  DECLARE vUser VARCHAR(50);

  SELECT USER() INTO vUser;

  INSERT INTO contacts_audit (contact_id, deleted_date, deleted_by)
  VALUES (OLD.contact_id, SYSDATE(), vUser);
END;
//
DELIMITER ;

INSERT INTO contacts (last_name, first_name, birthday, created_date, created_by)
VALUES ("Newton", "Isaac", STR_TO_DATE("19-08-1985", "%d-%m-%Y"), STR_TO_DATE("23-07-2018", "%d-%m-%Y"), "xyz");

DELETE FROM contacts WHERE first_name = "Isaac";

SELECT * FROM contacts_audit;