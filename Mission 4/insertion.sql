delete From prestation;
delete From facture;
delete From ligue_facture;
delete From ligue;

INSERT INTO prestation (reference, libelle, pu) VALUES
('AFFRAN', 'Affranchissement', 3.33),
('PHOTOCOULEUR', 'Photocopies couleur', 0.24),
('PHOTON&B', 'Photocopies Noir et Blanc', 0.055);

INSERT INTO ligue (code_client, intitule, tresorier, spe) VALUES
(411007, 'Ligue Lorraine Escrime', 'Valérie LAHEURTE', 'Basket'),
(411008, 'Ligue Lorraine de FootBall', 'Pierre LENOIR', 'Escrime'),
(411009, 'Ligue Lorraine de Basket', 'Mohamed BOURGARD', 'Foot')

INSERT INTO facture (date_facture, echeance, code_ligue) VALUES
('2025-03-01', '2025-03-31', 411007), -- Facture pour la Ligue Lorraine Escrime
('2025-03-02', '2025-04-01', 411008), -- Facture pour la Ligue Lorraine de Football
('2025-03-03', '2025-04-02', 411009); -- Facture pour la Ligue Lorraine de Basket

INSERT INTO ligue_facture (numero_facture, reference, quantite) VALUES
(1, 1, 10),  -- 10 unités de la prestation 1 pour la facture 1
(1, 2, 5),   -- 5 unités de la prestation 2 pour la facture 1
(2, 1, 8);   -- 8 unités de la prestation 1 pour la facture 2
 
