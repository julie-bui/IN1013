INSERT INTO petEvent (petname, eventdate, eventtype, remark)
	VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth, death)
	VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
	VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

UPDATE petevent 
SET remark='5 kittens, 3 female, 2 male' 
WHERE petname='Fluffy' AND eventdate='1995-05-15';

UPDATE petevent 
SET remark='broken rib by Claws' 
WHERE petname='Slim' AND eventdate='1997-08-03';

UPDATE petPet
SET death='2020-09-01' 
WHERE petname='Puffball';


ALTER TABLE petevent 
DROP FOREIGN KEY petevent_ibfk_1;
ALTER TABLE petEvent 
ADD CONSTRAINT petevent_ibfk_1 
FOREIGN KEY (petname) REFERENCES petPet(petname) ON DELETE CASCADE;
DELETE FROM petPet WHERE petname='Buffy';