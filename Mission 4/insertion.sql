delete From prestation;
delete From facture;
delete From ligue_facture;
delete From ligue;

INSERT INTO prestation (reference, libelle, pu) VALUES
('AFFRAN', 'Affranchissement', 3.33),
('PHOTOCOULEUR', 'Photocopies couleur', 0.24),
('PHOTON&B', 'Photocopies Noir et Blanc', 0.055);

INSERT INTO LIGUE (code_client, intitule, tresorier, spe) VALUES
(411007, 'Ligue Lorraine Escrime', 'Valérie LAHEURTE', 'Basket'),
(411008, 'Ligue Lorraine de FootBall', 'Pierre LENOIR', 'Escrime'),
(411009, 'Ligue Lorraine de Basket', 'Mohamed BOURGARD', 'Foot')