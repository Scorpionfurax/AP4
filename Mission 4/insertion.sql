delete From prestation;
delete From facture;
delete From ligue_facture;
delete From ligue;

INSERT INTO PRESTATION (reference, libelle, pu) VALUES
('AFFRAN', 'Affranchissement', 3.33),
('PHOTOCOULEUR', 'Photocopies couleur', 0.24),
('PHOTON&B', 'Photocopies Noir et Blanc', 0.055);
