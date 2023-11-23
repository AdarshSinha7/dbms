CREATE TABLE contacts (
    contact_id INT(11) NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25),
    birthday DATE,
    created_date DATE,
    created_by VARCHAR(30),
    CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

CREATE TABLE contacts_audit (
    contact_id INT,
    deleted_date DATE,
    deleted_by VARCHAR(20)
);

DELIMITER //
CREATE TRIGGER contacts_before_delete
BEFORE DELETE ON contacts
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
VALUES ("Bond", "Ruskin", STR_TO_DATE("19-08-1995", "%d-%m-%Y"), STR_TO_DATE("27-04-2018", "%d-%m-%Y"), "xyz");

DELETE FROM contacts 
WHERE
    last_name = 'Bond';

SELECT 
    *
FROM
    contacts_audit;
