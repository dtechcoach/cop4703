CREATE DATABASE SOLMARIS;

USE SOLMARIS;

CREATE TABLE Location
(LocationNum DECIMAL (2,0) PRIMARY KEY,
LocationName CHAR(25),
Address CHAR(25),
City CHAR(25),
State CHAR(2),
PostalCode CHAR(5) );

CREATE TABLE CondoUnit
(CondoID DECIMAL(4,0) PRIMARY KEY,
LocationNum DECIMAL (2,0),
UnitNum CHAR(3),
SqrFt DECIMAL(5,0),
Bdrms DECIMAL(2,0),
Baths DECIMAL(2,0),
CondoFee DECIMAL(6,2),
OwnerNum CHAR(5) );

CREATE TABLE Owner
(OwnerNum CHAR(5) PRIMARY KEY,
LastName CHAR(25),
FirstName CHAR(25),
Address CHAR(25),
City CHAR(25),
State CHAR(2),
PostalCode CHAR(5) );

CREATE TABLE ServiceCategory
(CategoryNum DECIMAL(4,0) PRIMARY KEY,
CategoryDescription CHAR(35) );

CREATE TABLE ServiceRequest
(ServiceID DECIMAL(4,0) PRIMARY KEY,
CondoID DECIMAL(4,0),
CategoryNum DECIMAL(4,0),
Description CHAR(255),
Status CHAR(255),
EstHours DECIMAL(4,2),
SpentHours DECIMAL(4,2),
NextServiceDate DATE );

INSERT INTO Location
VALUES
(1,'Solmaris Ocean','100 Ocean Ave.','Bowton','FL','31313');
INSERT INTO Location
VALUES
(2,'Solmaris Bayside','405 Bayside Blvd.','Glander Bay','FL','31044');
INSERT INTO CondoUnit
VALUES
(1,1,'102',675,1,1,475.00,'AD057');
INSERT INTO CondoUnit
VALUES
(2,1,'201',1030,2,1,550.00,'EL025');
INSERT INTO CondoUnit
VALUES
(3,1,'306',1575,3,2,625.00,'AN175');
INSERT INTO CondoUnit
VALUES
(4,1,'204',1164,2,2,575.00,'BL720');
INSERT INTO CondoUnit
VALUES
(5,1,'405',1575,3,2,625.00,'FE182');
INSERT INTO CondoUnit
VALUES
(6,1,'401',1030,2,2,550.00,'KE122');
INSERT INTO CondoUnit
VALUES
(7,1,'502',745,1,1,490.00,'JU092');
INSERT INTO CondoUnit
VALUES
(8,1,'503',1680,3,3,670.00,'RO123');
INSERT INTO CondoUnit
VALUES
(9,2,'A03',725,1,1,190.00,'TR222');
INSERT INTO CondoUnit
VALUES
(10,2,'A01',1084,2,1,235.00,'NO225');
INSERT INTO CondoUnit
VALUES
(11,2,'B01',1084,2,2,250.00,'SM072');
INSERT INTO CondoUnit
VALUES
(12,2,'C01',750,1,1,190.00,'AN175');
INSERT INTO CondoUnit
VALUES
(13,2,'C02',1245,2,2,250.00,'WS032');
INSERT INTO CondoUnit
VALUES
(14,2,'C06',1540,3,2,300.00,'RO123');
INSERT INTO Owner
VALUES
('AD057','Adney','Bruce and Jean','100 Ocean Ave.','Bowton','FL','31313');
INSERT INTO Owner
VALUES
('AN175','Anderson','Bill','18 Wilcox St.','Brunswick','GA','31522');
INSERT INTO Owner
VALUES
('BL720','Blake','Jack','2672 Condor St.','Mills','SC','29707');
INSERT INTO Owner
VALUES
('EL025','Elend','Bill and Sandy','100 Ocean Ave.','Bowton','FL','31313');
INSERT INTO Owner
VALUES
('FE182','Feenstra','Daniel','7822 Coventry Dr.','Rivard','FL','31062');
INSERT INTO Owner
VALUES
('JU092','Juarez','Maria','892 Oak St.','Kaleva','FL','31521');
INSERT INTO Owner
VALUES
('KE122','Kelly','Alyssa','527 Waters St.','Norton','MI','49441');
INSERT INTO Owner
VALUES
('NO225','Norton','Peter and Caitlin','281 Lakewood Ave.','Lawndale','PA','19111');
INSERT INTO Owner
VALUES
('RO123','Robinson','Mike and Jane','900 Spring Lake Dr.','Springs','MI','49456');
INSERT INTO Owner
VALUES
('SM072','Smeltz','Jim and Cathy','922 Garland Dr.','Lewiston','FL','32765');
INSERT INTO Owner
VALUES
('TR222','Trent','Michael','405 Bayside Blvd.','Glander Bay','FL','31044');
INSERT INTO Owner
VALUES
('WS032','Wilson','Henry and Karen','25 Nichols St.','Lewiston','FL','32765');
INSERT INTO ServiceCategory
VALUES
(1,'Plumbing');
INSERT INTO ServiceCategory
VALUES
(2,'Heating/Air Conditioning');
INSERT INTO ServiceCategory
VALUES
(3,'Painting');
INSERT INTO ServiceCategory
VALUES
(4,'Electrical Systems');
INSERT INTO ServiceCategory
VALUES
(5,'Carpentry');
INSERT INTO ServiceCategory
VALUES
(6,'Janitorial');
INSERT INTO ServiceRequest
VALUES
(1,2,1,'Back wall in pantry has mold indicating water seepage. Diagnose and repair.','Service rep has verified the problem. Plumbing contractor has been called.',4,2,'2015-10-12');
INSERT INTO ServiceRequest
VALUES
(2,5,2,'Air conditioning doesn’t cool.','Service rep has verified problem. Air conditioning contractor has been called.',3,1,'2015-10-12'); 
INSERT INTO ServiceRequest
VALUES
(3,4,6,'Hardwood floors must be refinished.','Service call has been scheduled.',8,0,'2015-10-16'); 
INSERT INTO ServiceRequest
VALUES
(4,1,4,'Switches in kitchen and adjoining dining room are reversed. ','Open',1,0,'2015-10-13'); 
INSERT INTO ServiceRequest (ServiceID, CondoID,  CategoryNum, Description, Status, EstHours, SpentHours)
VALUES
(5,2,5,'Molding in pantry must be replaced.','Cannot schedule until water leak is corrected.',2,0);
INSERT INTO ServiceRequest
VALUES
(6,14,3,'Unit needs to be repainted due to previous tenant damage.','Scheduled',7,0,'2015-10-19'); 
INSERT INTO ServiceRequest (ServiceID, CondoID,  CategoryNum, Description, Status, EstHours, SpentHours)
VALUES
(7,11,4,'Tenant complained that using microwave caused short circuits on two occasions.','Service rep unable to duplicate problem. Tenant to notify condo management if problem recurs.',1,1);
INSERT INTO ServiceRequest
VALUES
(8,9,3,'Kitchen must be repainted. Walls discolored due to kitchen fire. ','Scheduled',5,0,'2015-10-16'); 
INSERT INTO ServiceRequest
VALUES
(9,7,6,'Shampoo all carpets.','Open',5,0,'2015-10-19'); 
INSERT INTO ServiceRequest
VALUES
(10,9,5,'Repair window sills.','Scheduled',4,0,'2015-10-20'); 

