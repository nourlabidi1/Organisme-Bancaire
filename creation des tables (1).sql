--------table client :
CREATE TABLE client (cin_c DECIMAL(8) NOT NULL,nom_c VARCHAR(20) NOT NULL,
prenom_c VARCHAR(20) NOT NULL,adresse_c VARCHAR(20) NOT NULL,sexe_c CHAR(1) NOT NULL,
datenaiss_c DATE ,profession VARCHAR(20) NOT NULL,salaire DECIMAL(8,3) NOT NULL, 
CONSTRAINT pk_client PRIMARY KEY(cin_c)); 

--------table transaction :
CREATE TABLE transaction (num_trans DECIMAL(8) NOT NULL, montant DECIMAL(8,3) NOT NULL,
 type_transaction VARCHAR(20) NOT NULL ,date_transaction DATE ,moyen VARCHAR(20),
 cin_c DECIMAL(8), CONSTRAINT pk_transaction PRIMARY KEY(num_trans), 
 CONSTRAINT fk_transaction_client FOREIGN KEY(cin_c)REFERENCES client(cin_c), 
 CONSTRAINT CHK_type_transaction CHECK(type_transaction IN ('depot','retrait','transfert')),
  CONSTRAINT CHK_moyen CHECK(moyen IN ('carte','cheque'))); 

--------table banque :
CREATE TABLE banque (nom_banque VARCHAR(20) NOT NULL, nbr_employe_b INT, 
CONSTRAINT pk_banque PRIMARY KEY(nom_banque)); 

--------table agence :
CREATE TABLE agence(num_agence DECIMAL (8)NOT NULL, nom_banque VARCHAR(20) NOT NULL , 
nom_agence VARCHAR (20) NOT NULL , ville VARCHAR(20) NOT NULL , raison_sociale VARCHAR(20),
nbr_employe_a VARCHAR(20),CONSTRAINT pk_agence PRIMARY KEY(num_agence,nom_banque),
CONSTRAINT fk_agence_banque FOREIGN KEY(nom_banque)REFERENCES banque(nom_banque)); 

--------table compte :
CREATE TABLE compte (num_compte DECIMAL (8) NOT NULL , date_ouverture DATE,solde DECIMAL(20,3),
type_compte VARCHAR(20),date_f DATE ,cin_c DECIMAL(8) NOT NULL, num_agence DECIMAL(8), 
nom_banque VARCHAR(20),CONSTRAINT pk_compte PRIMARY KEY(num_compte),
CONSTRAINT fk_compte_client FOREIGN KEY(cin_c)REFERENCES client(cin_c),
CONSTRAINT fk_compte_banque FOREIGN KEY(nom_banque )REFERENCES banque(nom_banque),
CONSTRAINT fk_compte_agence FOREIGN KEY(num_agence,nom_banque)REFERENCES agence(num_agence,nom_banque),
CONSTRAINT CHK_type_compte CHECK(type_compte IN ('courant','epargne','devise'))); 

--------table parainnage :
CREATE TABLE parainnage(num_compteparrain DECIMAL(8) NOT NULL , 
num_comptefilleul DECIMAL(8)NOT NULL ,
CONSTRAINT fk_parainnage_compte FOREIGN KEY(num_compteparrain)REFERENCES compte(num_compte),
CONSTRAINT fk_parainnag_compte FOREIGN KEY(num_comptefilleul)REFERENCES compte(num_compte),
CONSTRAINT pk_parainnage PRIMARY KEY(num_compteparrain,num_comptefilleul)); 

---------table transaction_compte :
CREATE TABLE transaction_compte(num_compte DECIMAL(8) NOT NULL , 
num_trans DECIMAL(8) NOT NULL ,
CONSTRAINT fk_transaction_coo FOREIGN KEY(num_compte)REFERENCES compte(num_compte),
CONSTRAINT fk_trans_compte FOREIGN KEY(num_trans)REFERENCES transaction(num_trans),
CONSTRAINT pk_transaction_compte PRIMARY KEY(num_compte,num_trans));

--------table service :
CREATE TABLE service (num_service DECIMAL(8) NOT NULL, designation VARCHAR(20) ,
 type_service VARCHAR(40), cin_c DECIMAL(8) NOT NULL, num_compte DECIMAL(8) NOT NULL,
 CONSTRAINT fk_s_c FOREIGN KEY(cin_c)REFERENCES client(cin_c),
 CONSTRAINT fk_ser_compte FOREIGN KEY(num_compte)REFERENCES compte(num_compte),
 CONSTRAINT pk_service PRIMARY KEY(num_service),
 CONSTRAINT CHK_type_service CHECK(type_service IN ('renouvellement de la carte',
 'demande de chequier','cloturer un compte')));

-----------table pret :
CREATE TABLE pret(num_pret DECIMAL(8) NOT NULL, montant_p DECIMAL(20,3),
date_debut_p DATE, date_fin_p DATE , type_p VARCHAR(20) , num_compte DECIMAL(8) NOT NULL,
cin_c DECIMAL(8) NOT NULL , CONSTRAINT fk_p_c FOREIGN KEY(cin_c)REFERENCES client(cin_c),
CONSTRAINT fk_p_compte FOREIGN KEY(num_compte)REFERENCES compte(num_compte),
CONSTRAINT pk_pret PRIMARY KEY(num_pret),CONSTRAINT CHK_type_pret CHECK(type_p IN ('voiture','maison',
'investissemnet'))); 

-------------table tranche :
CREATE TABLE tranche (num_tranche DECIMAL(8) NOT NULL , num_pret DECIMAL(8)  NOT NULL ,
date_echeance DATE ,montant_tranche DECIMAL(8) ,
CONSTRAINT fk_t_p FOREIGN KEY(num_pret)REFERENCES pret(num_pret),
 CONSTRAINT pk_tranche PRIMARY KEY(num_tranche)); 

--------------table employe :
CREATE TABLE employe (cin_e DECIMAL(8) NOT NULL,nom_e VARCHAR(20) NOT NULL,prenom_e VARCHAR(20) NOT NULL,
adresse_e VARCHAR(20) NOT NULL,sexe_e CHAR(1) NOT NULL,datenaiss_e DATE ,num_securitesociale DECIMAL(20) NOT NULL,
num_agence  DECIMAL(8) NOT NULL , nom_banque VARCHAR(20) NOT NULL ,
FOREIGN KEY(num_agence,nom_banque)REFERENCES agence(num_agence,nom_banque),
CONSTRAINT pk_employe PRIMARY KEY(cin_e));
