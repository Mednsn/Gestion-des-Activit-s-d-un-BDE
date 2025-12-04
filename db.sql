CREATE TABLE TypeActivite (
    id_type INT PRIMARY KEY AUTO_INCREMENT,
    nom_type VARCHAR(100)
);

CREATE TABLE Activite (
    id_activite INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(150),
    description TEXT,
    type_id INT,
    FOREIGN KEY(type_id) REFERENCES TypeActivite(id_type)
);


CREATE TABLE Evenement (

    id_evenement INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(150),
    description TEXT,
    date_heure DATETIME,
    lieu VARCHAR(150),
    budget DECIMAL,
    activite_id INT,
    FOREIGN KEY(activite_id) REFERENCES Activite(id_activite)
);

CREATE TABLE MembreBDE (
    id_membre INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(150),
    role VARCHAR(50),
    date_adhesion DATE,
    id_event INT,
    FOREIGN KEY (id_event) REFERENCES Evenement(id_evenement)
);

CREATE TABLE Participant (
    id_participant INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(150),
    statut VARCHAR(50),
    event_id INT,
    FOREIGN KEY(event_id) REFERENCES Evenement(id_evenement)
);

CREATE TABLE Sponsor (
    id_sponsor INT PRIMARY KEY AUTO_INCREMENT,
    nom_entreprise VARCHAR(150),
    contact_principal VARCHAR(100),
    email_contact VARCHAR(150),
    telephone VARCHAR(20),
    montant DECIMAL,
    event_id INT,
    FOREIGN KEY (event_id) REFERENCES Evenement(id_evenement)
);


INSERT INTO TypeActivite (nom_type) VALUES
('Hackathon'),
('Sport'),
('Atelier'),
('Networking'),
('Hathon'),
('Sprt'),
('Alier'),
('Norking'),
('Hkathon'),
('Srt'),
('Alier'),
('Ntworking'),
('Hckathon'),
('Srt'),
('Aelier'),
('Nworking'),
('Hkathon'),
('Sort'),
('Alier'),
('Nking'),
('hon');


INSERT INTO Activite (nom, description, type_id) VALUES
('Hackathon ', 'Compétitionprogrammation', 1),
('Tournoi football', 'Matche étudiants', 2),
('Atelier Web', 'Formation  & CSS', 3),
('Soirée Networking', 'Rencontre avec entreprises', 4),
('Hackthon ', 'Compétition de programmation', 1),
('Tournoi footbal', 'Match entre étudiants', 2),
('Atelier Web', 'ormation HTML & CSS', 3),
('Soirée Networkig', 'Rencontre avec des entreprises', 4),
('Hathon ', 'Compétition deion', 1),
('Tnoi football', 'Match entr', 2),
('Aier Web', 'Formation', 3),
('Sée Networking', 'Rencontre aveprises', 4),
('Hack ', 'Compétit programmation', 1),
('Tourootball', 'Match étudiants', 2),
('Ateleb', 'Formation CSS', 3),
('Soirtworking', 'Rencontre dans entreprises', 4),
('Hackathons ', 'Compétition dans programmation', 1),
('Tournoies football', 'Match entre des étudiants', 2),
('Atelier le Web', 'Formation HTML et CSS', 3),
('Soi Networking', 'Rencontre avec lyossefes entreprises', 4);


INSERT INTO MembreBDE (nom, prenom, email, role, date_adhesion,id_event) VALUES
('Elyossef', 'Youfssef', 'yotussef@bde.com', 'Président', '2023-01-10',1),
('Hassan', 'yosdsef', 'ayna@bde.com', 'Trésorière', '2023-02-12',2),
('Nadi', 'Omfar', 'yosstnef@bde.com', 'Secrétaire', '2023-03-01',3),
('El yassin', 'bocdhra', 'yohssef@bde.com', 'Prés-ident', '2023-01-10',4),
('El imad', 'ahhfrich', 'youssgef@bde.com', 'Présidyent', '2023-01-10',5),
('ElAmrani', 'fagdftila', 'youssyef@bde.com', 'Présyjsident', '2023-01-10',2),
('choabe', 'tigd,qihit', 'yousggsef@bde.com', 'Pyjrésident', '2023-01-10',5),
('Elyonsii', 'okbda', 'youssrkef@bde.com', 'Préyjsidyjent', '2023-01-10',6),
('El maradona', 'ozrid', 'yykoussef@bde.com', 'Pryjésident', '2023-01-10',7),
('srtaty', 'ohfaka', 'youssegbf@bde.com', 'Présyjident', '2023-01-10',8),
('imas', 'tzbadina', 'aydga@bde.com', 'Trésjsorière', '2023-02-12',8),
('Hassan', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12',3),
('omad', 'kbah', 'aybga@bde.com', 'Trésojyrière', '2023-02-12',7),
('imad', 'Ayra', 'ayagb@bde.com', 'Tré-rsorière', '2023-02-12',5),
('ali', 'Ayra', 'aygbda@bde.com', 'Trrjjésorière', '2023-04-12',3),
('ghiota', 'Aydta', 'ayggba@bde.com', 'Tjrésorière', '2023-08-12',8),
('khira', 'Aeya', 'ayrha@bde.com', 'rTrésorière', '2023-042-12',8),
('hra', 'Ahya', 'ay(tya@bde.com', 'Trésoyjrière', '2023-13-12',9),
('ghiota', 'Ayza', 'a-uya@bde.com', 'Trésorifnère', '2023-12-12',5),
('khira', 'Anya', 'ayjya@bde.com', 'Trésryjorière', '2023-02-12',3),
('hra', 'Ayta', 'ayyjja@bde.com', 'Trésorsière', '2023-02-12',2);

INSERT INTO Participant (nom, prenom, email, statut, event_id) VALUES
('Alia', 'aMehdi', 'mehxdi@mail.com', 'Actif', 1),
('Zahrza', 'aLina', 'lnina@mail.com', 'Actifs', 6),
('Ali', 'Mehdi', 'mehdni@mail.com', 'Actifa', 1),
('Zahera', 'Lina', 'linma@mail.com', 'Actifz', 9),
('aAli', 'zMehdi', 'mehdmi@mail.com', 'Actief', 2),
('Zdahra', 'zina', 'linoa@mail.com', 'Actifr', 3),
('Alfi', 'Meehdi', 'moehdi@mail.com', 'Actifrt', 4),
('Zahgra', 'Leina', 'liina@mail.com', 'Actift', 5),
('Alig', 'Methdi', 'mehdii@mail.com', 'Actify', 6),
('Zahkra', 'tLina', 'linua@mail.com', 'Actifu', 7),
('Alikg', 'Metyhdi', 'mehudi@mail.com', 'Actiif', 8),
('Zahrxxa', 'Lyina', 'liyna@mail.com', 'Actoif', 9),
('Alis', 'Mehdiur', 'mehdyi@mail.com', 'Actiof', 2),
('Zahrla', 'Liunza', 'litna@mail.com', 'Actpif', 1),
('Alin', 'Mehditi', 'mehtdi@mail.com', 'Actlif', 13),
('Zahfra', 'Lionaa', 'lizna@mail.com', 'Acnbtif', 14),
('Aliw', 'Mehdit', 'mehzdi@mail.com', 'Acbtif', 15),
('Zahrgda', 'Liphna', 'liana@mail.com', 'Acctif', 15),
('Aliay', 'Mehpddi', 'mahdi@mail.com', 'Actiqf', 16),
('Zahratr', 'Ldmina', 'lina@mail.com', 'Actizf', 17),
('Alir', 'Medmshdi', 'mehdi@mail.com', 'Actiéf', 11);

INSERT INTO Sponsor (nom_entreprise, contact_principal, email_contact, telephone, budget, event_id) VALUES
('Techogea', 'Karim Idrissije', 'kartim@techogea.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berradfsa', 'salmar@softdev.com', '0623456789', 50200, 2),
('Teckhogea', 'Karim Idriszfssi', 'karirm@techogea.com', '0612345678', 120000, 1),
('SoftkDev', 'Salma Berraizda', 'salmda@softdev.com', '0623456789', 52000, 3),
('Techolgea', 'Karim Idrheduissi', 'karibm@techogea.com', '0612345678', 10000, 1),
('SoftDelv', 'Salma Berjdrada', 'salmdfa@fsoftdev.com', '0623456789', 50300, 6),
('Tecmhogea', 'Karim iprissi', 'karifdm@techogea.com', '0612345678', 160000, 8),
('SoftmDev', 'Salma Bzerrada', 'salmdfqa@softdev.com', '0623456789', 50400, 2),
('Techopgea', 'Karim aIdrissi', 'karifqjm@techogea.com', '0612345678', 160000, 2),
('SoftDepv', 'Salma rBerrada', 'salmjra@softdev.com', '0623456789', 50030, 3),
('Terchogea', 'Karimrt Idrisjusi', 'karipmpm@techogea.com', '0612345678', 160000, 6),
('SofrtDev', 'Salmat Berrada', 'salmahur@softdev.com', '0623456789', 50040, 8),
('Techzogea', 'Karim Idrirsesi', 'karim@techogea.com', '0612345678', 100060, 9),
('SoftDzev', 'Salma Berrqrada', 'salmah@softdev.com', '0623456789', 50400, 1),
('Techaogea', 'Karim Idritssi', 'karitrhm@techogea.com', '0612345678', 106000, 5),
('SoftDaev', 'Salma Berrarda', 'salmuioa@softdev.com', '0623456789', 50400, 7),
('Techogvea', 'Karim Idrsrissi', 'karryim@techogea.com', '0612345678', 140000, 4),
('SoftDevv', 'Salma Bertrada', 'salmzr-ua@softdev.com', '0623456789', 50030, 3),
('Techxogea', 'Karim Itdrissi', 'karim@techogea.com', '0612345678', 160000, 9),
('SoftDxev', 'Salma Bherrada', 'salmar@softdev.com', '0623456789', 50060, 1),
('Techogwea', 'Karimh Idrissi', 'karirtm@techogea.com', '0612345678', 100600, 6);

INSERT INTO Evenement (nom, description, date_heure, lieu, budget, activite_id) VALUES
('Ateliere HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir enetrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4),
('Atelier eHTML', 'Introduction  web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CkSS', 'Stylsl avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrekpries', 'Neetworking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4),
('Ateliekr HTML', 'Introduction de web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelierl CSS', 'Styls de avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entlrepries', 'Networking web ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4),
('Atelier HlTML', 'Introduction par web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelierw CSS', 'Styls avanc', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entwrepries', 'Network', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4),
('Atelier HwTML', 'Introductionm web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Ateliyer CSS', 'Styls avanced', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir eyntrepries', 'Networking webs', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4),
('Hackathyon 2024', 'heures de coding', '2024-06-12 09:00:00', 'Salle A', 15000, 1),
('Match Football 2024', 'Tournoi classe', '2024-07-01 16:00:00', 'Terrain Sportif', 3000, 2),
('Atelier oHTML', 'Introduction aucss', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier HomTML', 'Introduction au scroit', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSuS', 'Styls avancés dans html', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepfries', 'Networking in html ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
