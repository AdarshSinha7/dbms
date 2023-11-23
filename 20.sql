
CREATE TABLE contacts (
  contact_id INT(11) NOT NULL AUTO_INCREMENT,
  last_name VARCHAR(30) NOT NULL,
  first_name VARCHAR(25),
  birthday DATE,
  CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);


CREATE TABLE contacts_audit (
  contact_id INT,
  created_date DATE,
  created_by VARCHAR(30)
);

DELIMITER //
CREATE TRIGGER contacts_after_insert 
AFTER INSERT ON contacts
FOR EACH ROW
BEGIN
  DECLARE vUser VARCHAR(50);


  SELECT USER() INTO vUser;


  INSERT INTO contacts_audit (contact_id, created_date, created_by)
  VALUES (NEW.contact_id, SYSDATE(), vUser);
END;
//
DELIMITER ;


INSERT INTO contacts (last_name, first_name, birthday)
VALUES ("Kumar", "Rupesh", STR_TO_DATE("20-06-1999", "%d-%m-%Y"));

select *from contacts_audit;