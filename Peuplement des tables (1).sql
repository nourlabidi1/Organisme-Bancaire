-------------------------table banque ----------------------------------------------

insert into banque values ('ATB',2002);
insert into banque values ('BNA',1502);
insert into banque values ('BIAT',1875);
insert into banque values ('ATTIJARI',3012);

 ------------------------table client------------------------------------------------------
Insert into client values (12345678,'labidi','nour el houda','bardo','f','9-10-2000','etudiante',0);
Insert into client values (12098778,'souissi','oumaima','mourouj','f','3-6-1999','ingenieur',2000);
Insert into client values (11223344,'boulifi','mariem','bardo','f','1-7-1992','avocate',3000);
Insert into client values (87654321,'ben aoun','siwar','menzah','f','7-2-1970','docteur',7052);
Insert into client values (01478520,'bouzidi','eya','chargeia','f','9-1-1986','ingenieur',1587);
Insert into client values (85203694,'bahri', 'oussema','ariana','f','5-12-1996','ingenieur',2600);
Insert into client values (22545675,'lahmer', 'amir','bardo','f','2-10-1980','enseignant',2500);

----------------------------table agence-------------------------------------------------

INSERT INTO agence VALUES(12345678,'ATB','ATB TUNIS','TUNIS','Arab Tunisian Bank',106);
INSERT INTO agence VALUES(85209631,'BNA','BNA SFAX','SFAX','B natio agricole',85); 
INSERT INTO agence VALUES(14785214,'ATTIJARI','ATTIJARI TUNISIE','TUNIS','ATTIJARI TUNIS',150); 
INSERT INTO agence VALUES(65489565,'BIAT','BIAT TUNIS','TUNIS','Binter arabe tunisie',74); 
INSERT INTO agence VALUES(86454322,'BIAT','BIAT SFAX','SFAX','B inter arabe sfax',92); 
INSERT INTO agence VALUES(02154878,'ATB','ATB ARIANA','ARIANA','Arab Tunisian Bank',98); 
INSERT INTO agence VALUES(26314578,'ATB','ATB GABES','GABES','Arab Tunisian Bank',76);

----------------------------table compte-------------------------------------------------- 

insert into compte values (15874569,'11-2-2022', 1774.2,'courant','',12345678,12345678,'ATB');
insert into compte values (15874570,'12-2-2022',122.0,'epargne','',12345678,12345678,'ATB');
insert into compte values (15874579,'13-2-2022',700.7,'devise','',12345678,12345678,'ATB');
insert into compte values (15874577,'11-11-2015', 1447.8,'courant','',22545675,85209631,'BNA');
insert into compte values (15874588,'1-3-2021', 145.0,'devise','',1478520,65489565,'BIAT');
insert into compte values (15874444,'12-6-2020',164.1,'epargne','',87654321,86454322,'BIAT');
insert into compte values (15874522,'10-2-2017', 1254.2,'courant','',12345678,14785214,'ATTIJARI');
insert into compte values (15874548,'18-3-2016', 144.3,'epargnre','',85203694,14785214,'ATTIJARI');

-------------------------- table pret--------------------------------------------------------- 

insert into pret values (12335588,2548.2,'25-2-2022','12-07-2028','investissemnet',15874569,12345678);
insert into pret values (12342154,26588.0,'1-8-2021','2-08-2030','voiture',15874570,12345678);
insert into pret values (12335588,1458.7,'5-12-2022','12-9-2028','maison',15874548,85203694);
insert into pret values (36985241,7548.2,'2-8-2020','2-3-2029','investissemnet',15874522,12345678);
insert into pret values (75767688,154782,'7-8-2021','1-9-2028','voiture',15874548,85203694);
insert into pret values (45542775,1248.2,'7-2-2020','11-7-2027','investissemnet',15874444,87654321);
insert into pret values (46568442,7448.2,'1-4-2022','8-12-2025','investissemnet',15874588,1478520);
insert into pret values (75754213,2457557.2,'3-2-2022','30-07-2022','maison',15874577,22545675);

--------------------------table transaction ------------------------------------------------------------

insert  into transaction values (12,12548.5,'depot','02-1-2021','carte',12345678);
insert  into transaction values (13,12544.5,'retrait','07-8-2022','cheque',87654321);
insert  into transaction values (2,5445.5,'transfert','08-12-2020','carte',87654321);
insert  into transaction values (1,545.5,'retrait','12-11-2020','cheque',85203694);
insert  into transaction values (189,884.5,'depot','11-10-2022','carte',87654321);
insert  into transaction values (1116,66548.5,'transfert','03-10-2021','cheque',22545675);
insert  into transaction values (100,99.5,'depot','1-7-2022','carte',1478520);
insert  into transaction values (102,758.5,'retrait','9-2-2021','cheque',12345678);
insert  into transaction values (1200,12048.5,'depot','5-8-2021','carte',12345678);

------------------------------table tranche--------------------------------------------------

insert into tranche values (01,12342154,'1-2-2022',120.2);
insert into tranche values (02,12342154,'12-2-2021',122.2);
insert into tranche values (04,75767688,'11-2-2021',500.1);
insert into tranche values (51,45542775,'25-2-2023',325.7);
insert into tranche values (48,46568442,'1-2-2023',101.0);
insert into tranche values (30,46568442,'16-2-2020',1201.2);
insert into tranche values (9,36985241,'28-2-2025',780.2);
insert into tranche values (8,16987452,'29-2-2024',490.7);
insert into tranche values (11,12342154,'29-2-2020',960.4);
insert into tranche values (20,16987452,'9-2-2022',463.0);

-------------------------------table  employe--------------------------------------------------- 

insert into employe values (1542,'nour','aouini',' mestir','f','2-12-1989',1548,12345678,'ATB');
insert into employe values (1111,'feres','labidi',' ariana','h','2-12-1996',1478,85209631,'BNA');
insert into employe values (2222,'nourane','aoun',' tunis','f','2-12-1999',532,12345678,'ATB');
insert into employe values (3333,'nouri','khlil',' sfax','h','2-12-1999',1452,12345678,'ATB');
insert into employe values (4444,'maysa','boujara',' mestir','f','2-12-2000',1544,85209631,'BNA');
insert into employe values (5555,'maryem','ben ali',' marsa','f','2-12-1992',0344,85209631,'BNA');
insert into employe values (6666,'siwar','chihawi',' tunis','f','2-12-1979',2545,114785214,'ATTIJARI');
insert into employe values (7777,'rami','chitmi',' tunis','h','2-12-1978',1236,14785214,'ATTIJARI');
insert into employe values (8888,'hela','boukadia',' sfax','f','2-12-1979',1457,65489565,'BIAT');
insert into employe values (9999,'firas','boulbebaa ',' gabes','h','2-12-1987',7572,86454322,'BIAT');
insert into employe values (5864,'samia','ben aoun',' tunis','f','2-12-1988',4424,02154878,'ATB');
insert into employe values (7895,'nour','bakali',' ariana','h','3-11-1979',4242,26314578,'ATB');
insert into employe values (8898,'amira','labidi',' sfax','f','7-10-1979',1457,65489565,'BIAT');
insert into employe values (9998,'fedi','ben aoun',' gabes','h','4-1-1987',7572,86454322,'BIAT');
insert into employe values (58684,'soumaya','souissi',' tunis','f','9-11-1988',4424,02154878,'ATB');
insert into employe values (78945,'rami','boulifi',' ariana','h','12-1-1979',4242,26314578,'ATB');

--------------------------------table service----------------------------------------

insert into service values(1254,'comptabilite','renouvellement de la carte',123456789,15874569);
insert into service values(15487,'finance','demande de chequier',87654321,15874444);
insert into service values(75757,'marketing','renouvellement de la carte',12345678,15874522);
insert into service values(4243,'comptabilite','renouvellement de la carte',12345678,15874569);
insert into service values(4857,'finance','demande de chequier',85203694,15874548);
insert into service values(17777,'comptabilite','renouvellement de la carte',85203694,15874548);
insert into service values(12355,'comptabilite','demande de chequier',87654321,15874444);

---------------------------------table parainnage------------------------------------------------

insert into parainnage values(15874569,15874570);
insert into parainnage values(15874569,15874444);
insert into parainnage values(15874522,15874570);
insert into parainnage values(15874522,15874444);
insert into parainnage values(15874548,15874570);
insert into parainnage values(15874569,15874577);

-------------------------------table transaction_compte-----------------------------------------

insert into transaction_compte values(15874569,12);
insert into transaction_compte values(15874570,13);
insert into transaction_compte values(15874579,13);
insert into transaction_compte values(15874579,2);
insert into transaction_compte values(15874577,189);
insert into transaction_compte values(15874577,12);

