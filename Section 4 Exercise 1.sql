USE test;

ALTER TABLE people
ADD PRIMARY KEY(id);

DESCRIBE people;
DESCRIBE pets;

ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwner
FOREIGN KEY (owner_id) REFERENCES people(id);

ALTER TABLE people
ADD COLUMN email VARCHAR(20);

ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

ALTER TABLE pets
CHANGE `name` `first_name` VARCHAR(20);

ALTER TABLE addresses
MODIFY postcode CHAR(7);

DESCRIBE addresses;