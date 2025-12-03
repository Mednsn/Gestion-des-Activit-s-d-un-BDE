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
    FOREIGN KEY(activite_id) REFERENCES Activite(id_activite),
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
    FOREIGN KEY (event_id) REFERENCES Evenement(id)
);


INSERT INTO TypeActivite (nom_type) VALUES
('Hackathon'),
('Sport'),
('Atelier'),
('Networking');
('Hathon'),
('Sprt'),
('Alier'),
('Norking');
('Hkathon'),
('Srt'),
('Alier'),
('Ntworking');
('Hckathon'),
('Srt'),
('Aelier'),
('Nworking');
('Hkathon'),
('Sort'),
('Alier'),
('Nking');
('Hhon');





INSERT INTO Activite (nom, description, type_id) VALUES
('Hackathon ', 'Compétition de programmation', 1),
('Tournoi football', 'Match entre étudiants', 2),
('Atelier Web', 'Formation HTML & CSS', 3),
('Soirée Networking', 'Rencontre avec des entreprises', 4);
('Hackathon ', 'Compétition de programmation', 1),
('Tournoi football', 'Match entre étudiants', 2),
('Atelier Web', 'Formation HTML & CSS', 3),
('Soirée Networking', 'Rencontre avec des entreprises', 4);
('Hackathon ', 'Compétition de programmation', 1),
('Tournoi football', 'Match entre étudiants', 2),
('Atelier Web', 'Formation HTML & CSS', 3),
('Soirée Networking', 'Rencontre avec des entreprises', 4);
('Hackathon ', 'Compétition de programmation', 1),
('Tournoi football', 'Match entre étudiants', 2),
('Atelier Web', 'Formation HTML & CSS', 3),
('Soirée Networking', 'Rencontre avec des entreprises', 4);
('Hackathon ', 'Compétition de programmation', 1),
('Tournoi football', 'Match entre étudiants', 2),
('Atelier Web', 'Formation HTML & CSS', 3),
('Soirée Networking', 'Rencontre avec des entreprises', 4);


INSERT INTO MembreBDE (nom, prenom, email, role, date_adhesion) VALUES
('El Amrani', 'Youssef', 'youssef@bde.com', 'Président', '2023-01-10'),
('Hassan', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('Nadi', 'Omar', 'omar@bde.com', 'Secrétaire', '2023-03-01'),
('El yassin', 'bochra', 'youssef@bde.com', 'Président', '2023-01-10'),
('El imad', 'ahrich', 'youssef@bde.com', 'Président', '2023-01-10'),
('ElAmrani', 'fatila', 'youssef@bde.com', 'Président', '2023-01-10'),
('choabe', 'tigihit', 'youssef@bde.com', 'Président', '2023-01-10'),
('Elyonsii', 'okda', 'youssef@bde.com', 'Président', '2023-01-10'),
('El maradona', 'ozid', 'youssef@bde.com', 'Président', '2023-01-10'),
('srtaty', 'ohaka', 'youssef@bde.com', 'Président', '2023-01-10'),
('imas', 'tzadina', 'aya@bde.com', 'Trésorière', '2023-02-12'),('Hassan', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('omad', 'kbah', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('imad', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('ali', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('ghiota', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('khira', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('hra', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('ghiota', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('khira', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('hra', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12'),
('ghiota', 'Aya', 'aya@bde.com', 'Trésorière', '2023-02-12');

INSERT INTO Participant (nom, prenom, email, statut, event_id) VALUES
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1),
('Zahra', 'Lina', 'lina@mail.com', 'Actif', 1),
('Ali', 'Mehdi', 'mehdi@mail.com', 'Actif', 1);

INSERT INTO Sponsor (nom_entreprise, contact_principal, email_contact, telephone, montant, event_id) VALUES
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1),
('SoftDev', 'Salma Berrada', 'salma@softdev.com', '0623456789', 5000, 1),
('TechCorp', 'Karim Idrissi', 'karim@techcorp.com', '0612345678', 10000, 1);

INSERT INTO Evenement (nom, description, date_heure, lieu, budget, activite_id) VALUES
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);
('Hackathon 2024', '24 heures de coding', '2024-06-12 09:00:00', 'Salle A', 15000, 1),
('Match Football 2024', 'Tournoi inter-classes', '2024-07-01 16:00:00', 'Terrain Sportif', 3000, 2),
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier HTML', 'Introduction au web', '2024-05-20 10:00:00', 'Salle B', 500, 3),
('Atelier CSS', 'Styls avancés', '2024-05-21 10:00:00', 'Salle C', 500, 3),
('Soir entrepries', 'Networking ', '2024-08-10 18:00:00', 'Hall Principal', 8000, 4);