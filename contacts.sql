CREATE TABLE contacts (
    contact_id INT(11) NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25),
    birthday DATE,
    created_date DATE,
    created_by VARCHAR(30),
    CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
); 

DELIMITER &&
create trigger contacts_before_insert before insert on contacts for each row
begin
 DECLARE vUser varchar(50);
 select USER() into vUser;
 SET NEW.created_date = sysdate();
 SET NEW.created_by = vUser;
end && 
DELIMITER ;

insert into contacts values (1, "Newton", "Enigma", str_to_date ("19-08-1999", "%d-%m-%Y"), str_to_date ("17-03-2018", "%d-%m-%Y"), "xyz"); 

select *from contacts