CREATE TABLE Guide
(GuideNum CHAR(4) PRIMARY KEY,
LastName CHAR(15),
FirstName CHAR(15),
Address CHAR(25),
City CHAR(25),
State CHAR(2),
PostalCode CHAR(5),
PhoneNum CHAR(12),
HireDate DATE );
CREATE TABLE Customer
(CustomerNum CHAR(4) PRIMARY KEY,
LastName CHAR(30) NOT NULL,
FirstName CHAR (30),
Address CHAR(35),
City CHAR(35),
State CHAR(2),
PostalCode CHAR(5),
Phone CHAR(12) );
CREATE TABLE Reservation
(ReservationID CHAR(7) PRIMARY KEY,
TripID DECIMAL(3,0),
TripDate DATE,
NumPersons DECIMAL(3,0),
TripPrice DECIMAL(6,2),
OtherFees DECIMAL(6,2),
CustomerNum CHAR(4) );
CREATE TABLE Trip
(TripID DECIMAL(3,0) PRIMARY KEY,
TripName CHAR(75),
StartLocation CHAR(50),
State CHAR(2),
Distance DECIMAL(4,0),
MaxGrpSize DECIMAL(4,0),
Type CHAR(20),
Season CHAR(20) );
CREATE TABLE TripGuides
(TripID DECIMAL(3,0),
GuideNum CHAR(4),
PRIMARY KEY (TripID, GuideNum) );
INSERT INTO Guide
VALUES
('AM01','Abrams','Miles','54 Quest Ave.','Williamsburg','MA','01096','617-555-6032','6-3-2012');
INSERT INTO Guide
VALUES
('BR01','Boyers','Rita','140 Oakton Rd.','Jaffrey','NH','03452','603-555-2134','3-4-2012');
INSERT INTO Guide
VALUES
('DH01','Devon','Harley','25 Old Ranch Rd.','Sunderland','MA','01375','781-555-7767','1-8-2012');
INSERT INTO Guide
VALUES
('GZ01','Gregory','Zach','7 Moose Head Rd.','Dummer','NH','03588','603-555-8765','11-4-2012');
INSERT INTO Guide
VALUES
('KS01','Kiley','Susan','943 Oakton Rd.','Jaffrey','NH','03452','603-555-1230','4-8-2013');
INSERT INTO Guide
VALUES
('KS02','Kelly','Sam','9 Congaree Ave.','Fraconia','NH','03580','603-555-0003','6-10-2013');
INSERT INTO Guide
VALUES
('MR01','Marston','Ray','24 Shenandoah Rd.','Springfield','MA','01101','781-555-2323','9-14-2015');
INSERT INTO Guide
VALUES
('RH01','Rowan','Hal','12 Heather Rd.','Mount Desert','ME','04660','207-555-9009','6-2-2014');
INSERT INTO Guide
VALUES
('SL01','Stevens','Lori','15 Riverton Rd.','Coventry','VT','05825','802-555-3339','9-5-2014');
INSERT INTO Guide
VALUES
('UG01','Unser','Glory','342 Pineview St.','Danbury','CT','06810','203-555-8534','2-2-2015');
INSERT INTO Customer
VALUES
('101','Northfold','Liam','9 Old Mill Rd.','Londonderry','NH','03053','603-555-7563');
INSERT INTO Customer
VALUES
('102','Ocean','Arnold','2332 South St. Apt 3','Springfield','MA','01101','413-555-3212');
INSERT INTO Customer
VALUES
('103','Kasuma','Sujata','132 Main St. #1','East Hartford','CT','06108','860-555-0703');
INSERT INTO Customer
VALUES
('104','Goff','Ryan','164A South Bend Rd.','Lowell','MA','01854','781-555-8423');
INSERT INTO Customer
VALUES
('105','McLean','Kyle','345 Lower Ave.','Wolcott','NY','14590','585-555-5321');
INSERT INTO Customer
VALUES
('106','Morontoia','Joseph','156 Scholar St.','Johnston','RI','02919','401-555-4848');
INSERT INTO Customer
VALUES
('107','Marchand','Quinn','76 Cross Rd.','Bath','NH','03740','603-555-0456');
INSERT INTO Customer
VALUES
('108','Rulf','Uschi','32 Sheep Stop St.','Edinboro','PA','16412','814-555-5521');
INSERT INTO Customer
VALUES
('109','Caron','Jean Luc','10 Greenfield St.','Rome','ME','04963','207-555-9643');
INSERT INTO Customer
VALUES
('110','Bers','Martha','65 Granite St.','York','NY','14592','585-555-0111');
INSERT INTO Customer
VALUES
('112','Jones','Laura','373 Highland Ave.','Somerville','MA','02143','857-555-6258');
INSERT INTO Customer
VALUES
('115','Vaccari','Adam','1282 Ocean Walk','Ocean City','NJ','08226','609-555-5231');
INSERT INTO Customer
VALUES
('116','Murakami','Iris','7 Cherry Blossom St.','Weymouth','MA','02188','617-555-6665');
INSERT INTO Customer
VALUES
('119','Chau','Clement','18 Ark Ledge Ln.','Londonderry','VT','05148','802-555-3096');
INSERT INTO Customer
VALUES
('120','Gernowski','Sadie','24 Stump Rd.','Athens','ME','04912','207-555-4507');
INSERT INTO Customer
VALUES
('121','Bretton-Borak','Siam','10 Old Main St.','Cambridge','VT','05444','802-555-3443');
INSERT INTO Customer
VALUES
('122','Hefferson','Orlagh','132 South St. Apt 27','Manchester','NH','03101','603-555-3476');
INSERT INTO Customer
VALUES
('123','Barnett','Larry','25 Stag Rd.','Fairfield','CT','06824','860-555-9876');
INSERT INTO Customer
VALUES
('124','Busa','Karen','12 Foster St.','South Windsor','CT','06074','857-555-5532');
INSERT INTO Customer
VALUES
('125','Peterson','Becca','51 Fredrick St.','Albion','NY','14411','585-555-0900');
INSERT INTO Customer
VALUES
('126','Brown','Brianne','154 Central St.','Vernon','CT','06066','860-555-3234');
INSERT INTO Reservation
VALUES
('1600001',40,'3-26-2016',2,55.00,0.00,'101');
INSERT INTO Reservation
VALUES
('1600002',21,'6-8-2016',2,95.00,0.00,'101');
INSERT INTO Reservation
VALUES
('1600003',28,'9-12-2016',1,35.00,0.00,'103');
INSERT INTO Reservation
VALUES
('1600004',26,'10-16-2016',4,45.00,15.00,'104');
INSERT INTO Reservation
VALUES
('1600005',39,'6-25-2016',5,55.00,0.00,'105');
INSERT INTO Reservation
VALUES
('1600006',32,'6-18-2016',1,80.00,20.00,'106');
INSERT INTO Reservation
VALUES
('1600007',22,'7-9-2016',8,75.00,10.00,'107');
INSERT INTO Reservation
VALUES
('1600008',28,'9-12-2016',2,35.00,0.00,'108');
INSERT INTO Reservation
VALUES
('1600009',38,'9-11-2016',2,90.00,40.00,'109');
INSERT INTO Reservation
VALUES
('1600010',2,'5-14-2016',3,25.00,0.00,'102');
INSERT INTO Reservation
VALUES
('1600011',3,'9-15-2016',3,25.00,0.00,'102');
INSERT INTO Reservation
VALUES
('1600012',1,'6-12-2016',4,15.00,0.00,'115');
INSERT INTO Reservation
VALUES
('1600013',8,'7-9-2016',1,20.00,5.00,'116');
INSERT INTO Reservation
VALUES
('1600014',12,'10-1-2016',2,40.00,5.00,'119');
INSERT INTO Reservation
VALUES
('1600015',10,'7-23-2016',1,20.00,0.00,'120');
INSERT INTO Reservation
VALUES
('1600016',11,'7-23-2016',6,75.00,15.00,'121');
INSERT INTO Reservation
VALUES
('1600017',39,'6-18-2016',3,20.00,5.00,'122');
INSERT INTO Reservation
VALUES
('1600018',38,'9-18-2016',4,85.00,15.00,'126');
INSERT INTO Reservation
VALUES
('1600019',25,'8-29-2016',2,110.00,25.00,'124');
INSERT INTO Reservation
VALUES
('1600020',28,'8-27-2016',2,35.00,10.00,'124');
INSERT INTO Reservation
VALUES
('1600021',32,'6-11-2016',3,90.00,20.00,'112');
INSERT INTO Reservation
VALUES
('1600022',21,'6-8-2016',1,95.00,25.00,'119');
INSERT INTO Reservation
VALUES
('1600024',38,'9-11-2016',1,70.00,30.00,'121');
INSERT INTO Reservation
VALUES
('1600025',38,'9-11-2016',2,70.00,45.00,'125');
INSERT INTO Reservation
VALUES
('1600026',12,'10-1-2016',2,40.00,0.00,'126');
INSERT INTO Reservation
VALUES
('1600029',4,'9-19-2016',4,105.00,25.00,'120');
INSERT INTO Reservation
VALUES
('1600030',15,'7-25-2016',6,60.00,15.00,'104');
INSERT INTO Trip
VALUES
(1,'Arethusa Falls ','Harts Location','NH',5,10,'Hiking','Summer');
INSERT INTO Trip
VALUES
(2,'Mt Ascutney - North Peak','Weathersfield','VT',5,6,'Hiking','Late Spring');
INSERT INTO Trip
VALUES
(3,'Mt Ascutney - West Peak','Weathersfield','VT',6,10,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(4,'Bradbury Mountain Ride','Lewiston-Auburn','ME',25,8,'Biking','Early Fall');
INSERT INTO Trip
VALUES
(5,'Baldpate Mountain ','North Newry','ME',6,10,'Hiking','Late Spring');
INSERT INTO Trip
VALUES
(6,'Blueberry Mountain','Batchelders Grant','ME',8,8,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(7,'Bloomfield - Maidstone','Bloomfield','CT',10,6,'Paddling','Late Spring');
INSERT INTO Trip
VALUES
(8,'Black Pond','Lincoln','NH',8,12,'Hiking','Summer');
INSERT INTO Trip
VALUES
(9,'Big Rock Cave','Tamworth','NH',6,10,'Hiking','Summer');
INSERT INTO Trip
VALUES
(10,'Mt. Cardigan - Firescrew','Orange','NH',7,8,'Hiking','Summer');
INSERT INTO Trip
VALUES
(11,'Chocorua Lake Tour','Tamworth','NH',12,15,'Paddling','Summer');
INSERT INTO Trip
VALUES
(12,'Cadillac Mountain Ride','Bar Harbor','ME',8,16,'Biking','Early Fall');
INSERT INTO Trip
VALUES
(13,'Cadillac Mountain','Bar Harbor','ME',7,8,'Hiking','Late Spring');
INSERT INTO Trip
VALUES
(14,'Cannon Mtn','Franconia','NH',6,6,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(15,'Crawford Path Presidentials Hike','Crawford Notch','NH',16,4,'Hiking','Summer');
INSERT INTO Trip
VALUES
(16,'Cherry Pond','Whitefield','NH',6,16,'Hiking','Spring');
INSERT INTO Trip
VALUES
(17,'Huguenot Head Hike','Bar Harbor','ME',5,10,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(18,'Low Bald Spot Hike','Pinkam Notch','NH',8,6,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(19,'Mason’s Farm ','North Stratford','CT',12,7,'Paddling','Late Spring');
INSERT INTO Trip
VALUES
(20,'Lake Mephremagog Tour','Newport','VT',8,15,'Paddling','Late Spring');
INSERT INTO Trip
VALUES
(21,'Long Pond','Rutland','MA',8,12,'Hiking','Summer');
INSERT INTO Trip
VALUES
(22,'Long Pond Tour','Greenville','ME',12,10,'Paddling','Summer');
INSERT INTO Trip
VALUES
(23,'Lower Pond Tour','Poland','ME',8,15,'Paddling','Late Spring');
INSERT INTO Trip
VALUES
(24,'Mt Adams ','Randolph','NH',9,6,'Hiking','Summer');
INSERT INTO Trip
VALUES
(25,'Mount Battie Ride','Camden','ME',20,8,'Biking','Early Fall');
INSERT INTO Trip
VALUES
(26,'Mount Cardigan Hike','Cardigan','NH',4,16,'Hiking','Late Fall');
INSERT INTO Trip
VALUES
(27,'Mt. Chocorua','Albany','NH',6,10,'Hiking','Spring');
INSERT INTO Trip
VALUES
(28,'Mount Garfield Hike','Woodstock','NH',5,10,'Hiking','Early Fall');
INSERT INTO Trip
VALUES
(29,'Metacomet-Monadnock Trail Hike','Pelham','MA',10,12,'Hiking','Late Spring');
INSERT INTO Trip
VALUES
(30,'McLennan Reservation Hike','Tyringham','MA',6,16,'Hiking','Summer');
INSERT INTO Trip
VALUES
(31,'Missisquoi River - VT','Lowell','VT',12,10,'Paddling','Summer');
INSERT INTO Trip
VALUES
(32,'Northern Forest Canoe Trail','Stark','NH',15,10,'Paddling','Summer');
INSERT INTO Trip
VALUES
(33,'Park Loop Ride','Mount Desert Island','ME',27,8,'Biking','Late Spring');
INSERT INTO Trip
VALUES
(34,'Pontook Reservoir Tour','Dummer','NH',15,14,'Paddling','Late Spring');
INSERT INTO Trip
VALUES
(35,'Pisgah State Park Ride','Northborough','NH',12,10,'Biking','Summer');
INSERT INTO Trip
VALUES
(36,'Pondicherry Trail Ride','White Mountains','NH',15,16,'Biking','Late Spring');
INSERT INTO Trip
VALUES
(37,'Seal Beach Harbor','Bar Harbor','ME',5,16,'Hiking','Early Spring');
INSERT INTO Trip
VALUES
(38,'Sawyer River Ride','Mount Carrigain','NH',10,18,'Biking','Early Fall');
INSERT INTO Trip
VALUES
(39,'Welch and Dickey Mountains Hike','Thorton','NH',5,10,'Hiking','Summer');
INSERT INTO Trip
VALUES
(40,'Wachusett Mountain','Princeton','MA',8,8,'Hiking','Early Spring');
INSERT INTO Trip
VALUES
(41,'Westfield River Loop','Fort Fairfield','ME',20,10,'Biking','Late Spring');
INSERT INTO TripGuides
VALUES
(1,'GZ01');
INSERT INTO TripGuides
VALUES
(1,'RH01');
INSERT INTO TripGuides
VALUES
(2,'AM01');
INSERT INTO TripGuides
VALUES
(2,'SL01');
INSERT INTO TripGuides
VALUES
(3,'SL01');
INSERT INTO TripGuides
VALUES
(4,'BR01');
INSERT INTO TripGuides
VALUES
(4,'GZ01');
INSERT INTO TripGuides
VALUES
(5,'KS01');
INSERT INTO TripGuides
VALUES
(5,'UG01');
INSERT INTO TripGuides
VALUES
(6,'RH01');
INSERT INTO TripGuides
VALUES
(7,'SL01');
INSERT INTO TripGuides
VALUES
(8,'BR01');
INSERT INTO TripGuides
VALUES
(9,'BR01');
INSERT INTO TripGuides
VALUES
(10,'GZ01');
INSERT INTO TripGuides
VALUES
(11,'DH01');
INSERT INTO TripGuides
VALUES
(11,'KS01');
INSERT INTO TripGuides
VALUES
(11,'UG01');
INSERT INTO TripGuides
VALUES
(12,'BR01');
INSERT INTO TripGuides
VALUES
(13,'RH01');
INSERT INTO TripGuides
VALUES
(14,'KS02');
INSERT INTO TripGuides
VALUES
(15,'GZ01');
INSERT INTO TripGuides
VALUES
(16,'KS02');
INSERT INTO TripGuides
VALUES
(17,'RH01');
INSERT INTO TripGuides
VALUES
(18,'KS02');
INSERT INTO TripGuides
VALUES
(19,'DH01');
INSERT INTO TripGuides
VALUES
(20,'SL01');
INSERT INTO TripGuides
VALUES
(21,'AM01');
INSERT INTO TripGuides
VALUES
(22,'UG01');
INSERT INTO TripGuides
VALUES
(23,'DH01');
INSERT INTO TripGuides
VALUES
(23,'SL01');
INSERT INTO TripGuides
VALUES
(24,'BR01');
INSERT INTO TripGuides
VALUES
(25,'BR01');
INSERT INTO TripGuides
VALUES
(26,'GZ01');
INSERT INTO TripGuides
VALUES
(27,'GZ01');
INSERT INTO TripGuides
VALUES
(28,'BR01');
INSERT INTO TripGuides
VALUES
(29,'DH01');
INSERT INTO TripGuides
VALUES
(30,'AM01');
INSERT INTO TripGuides
VALUES
(31,'SL01');
INSERT INTO TripGuides
VALUES
(32,'KS01');
INSERT INTO TripGuides
VALUES
(33,'UG01');
INSERT INTO TripGuides
VALUES
(34,'KS01');
INSERT INTO TripGuides
VALUES
(35,'GZ01');
INSERT INTO TripGuides
VALUES
(36,'KS02');
INSERT INTO TripGuides
VALUES
(37,'RH01');
INSERT INTO TripGuides
VALUES
(38,'KS02');
INSERT INTO TripGuides
VALUES
(39,'BR01');
INSERT INTO TripGuides
VALUES
(40,'DH01');
INSERT INTO TripGuides
VALUES
(41,'BR01');