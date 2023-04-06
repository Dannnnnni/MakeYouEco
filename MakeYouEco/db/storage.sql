DROP DATABASE IF EXISTS MakeYouEco;
CREATE DATABASE MakeYouEco;
USE MakeYouEco;

DROP TABLE IF EXISTS Product;

CREATE TABLE Product (
  Code INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL,
  Description VARCHAR(500),
  Price  DECIMAL(10,2) NOT NULL,
  Weight DECIMAL(10,2),
  Image VARCHAR(100),
  Quantity INT NOT NULL,
  IVA DECIMAL(4,2) NOT NULL DEFAULT 22
);

INSERT INTO Product (Code, Name, Description, Price, Weight, Image, Quantity, IVA)
VALUES
('01', 'Miele biologico', 'Miele di acacia biologico e naturale', 10.00, 0.5, 'miele_biologico.jpg', 100, 10),
('02', 'Barrette energetiche vegane', 'Barrette energetiche vegane al cacao e cocco', 2.50, 0.1, 'barrette_energetiche_vegane.jpg', 200, 10),
('03', 'Caffè biologico', 'Caffè biologico al 100% arabica', 5.00, 0.2, 'caffe_biologico.jpg', 50, 10),
('04', 'Birra artigianale', 'Birra artigianale con ingredienti naturali', 3.50, 0.4, 'birra_artigianale.jpg', 80, 10),
('05', 'Cioccolato fondente', 'Cioccolato fondente biologico al 70%', 4.50, 0.3, 'cioccolato_fondente.jpg', 60, 10),
('06', 'Tè verde biologico', 'Tè verde biologico con erbe naturali', 6.00, 0.1, 'te_verde_biologico.jpg', 30, 10),
('07', 'Frutta biologica', 'Cesto di frutta biologica di stagione', 15.00, 1.0, 'frutta_biologica.jpg', 20, 10),
('08', 'Biscotti biologici', 'Biscotti biologici al burro e limone', 3.00, 0.2, 'biscotti_biologici.jpg', 100, 10),
('09', 'Succo di mela biologico', 'Succo di mela biologico senza conservanti', 2.50, 0.5, 'succo_di_mela_biologico.jpg', 70, 10),
('10', 'Marmellata biologica', 'Marmellata biologica fatta in casa', 4.00, 0.3, 'marmellata_biologica.jpg', 50, 10),
('11', 'Spazzolino biodegradabile', 'Spazzolino biodegradabile in bamboo', 3.00, 0.05, 'spazzolino_biodegradabile.jpg', 200, 10),
('12', 'Bottiglia in acciaio inox', 'Bottiglia in acciaio inox riutilizzabile', 15.00, 0.3, 'bottiglia_acciaio_inox.jpg', 100, 10),
('13', 'Sacchetti riutilizzabili', 'Set di sacchetti riutilizzabili in cotone biologico', 10.00, 0.1, 'sacchetti_riutilizzabili.jpg', 50, 10),
('14', 'Spugna naturale', 'Spugna naturale per la pulizia della casa, proveniente da coltivazioni sostenibili', 4.50, 0.2, 'spugna_naturale.jpg', 80, 10),
('15', 'Bicchieri in vetro riciclato', 'Set di bicchieri in vetro riciclato', 20.00, 1.0, 'bicchieri_vetro_riciclato.jpg', 30, 10),
('16', 'Panno per la pulizia', 'Panno per la pulizia in microfibra riciclata', 6.00, 0.1, 'panno_pulizia_microfibra.jpg', 100, 10),
('17', 'Sapone solido biologico', 'Sapone solido biologico alla lavanda', 4.00, 0.1, 'sapone_solito_biologico.jpg', 70, 10),
('18', 'Carta igienica ecologica', 'Carta igienica ecologica al 100% da materiali riciclati', 2.50, 0.2, 'carta_igienica_ecologica.jpg', 200, 10),
('19', 'Asciugamani in cotone biologico', 'Set di asciugamani in cotone biologico', 30.00, 0.5, 'asciugamani_cotone_biologico.jpg', 40, 10),
('20', 'Sapone per i piatti biologico', 'Sapone per i piatti biologico al limone', 5.00, 0.2, 'sapone_piatti_biologico.jpg', 60, 10),
('21', 'T-shirt biologica', 'T-shirt biologica in cotone al 100%', 20.00, 0.2, 'tshirt_biologica.jpg', 50, 10),
('22', 'Pantaloncini in lino', 'Pantaloncini in lino biologico', 30.00, 0.3, 'pantaloncini_lino_biologico.jpg', 30, 10),
('23', 'Maglione in lana riciclata', 'Maglione in lana riciclata al 100%', 50.00, 0.5, 'maglione_lana_riciclata.jpg', 20, 10),
('24', 'Scarpe in canapa', 'Scarpe in canapa biologica', 60.00, 0.6, 'scarpe_canapa_biologica.jpg', 10, 10),
('25', 'Camicia in lino', 'Camicia in lino biologico', 40.00, 0.3, 'camicia_lino_biologico.jpg', 40, 10),
('26', 'Jeans riciclati', 'Jeans in denim riciclato', 45.00, 0.4, 'jeans_riciclati.jpg', 30, 10),
('27', 'Giacca in tessuto tecnico riciclato', 'Giacca in tessuto tecnico riciclato al 100%', 80.00, 0.5, 'giacca_tessuto_tecnico_riciclato.jpg', 15, 10),
('28', 'Felpa biologica', 'Felpa biologica in cotone al 100%', 35.00, 0.4, 'felpa_biologica.jpg', 25, 10),
('29', 'Cappello in cotone biologico', 'Cappello in cotone biologico con visiera', 25.00, 0.1, 'cappello_cotone_biologico.jpg', 50, 10),
('30', 'Giacca in pelle vegetale', 'Giacca in pelle vegetale senza alcun uso di animali', 150.00, 1.0, 'giacca_pelle_vegetale.jpg', 5, 10),
('31', 'Bicicletta pieghevole', 'Bicicletta pieghevole in alluminio riciclato', 500.00, 10.0, 'bicicletta_pieghevole.jpg', 5, 22),
('32', 'Scooter elettrico', 'Scooter elettrico con batteria ricaricabile', 1200.00, 15.0, 'scooter_elettrico.jpg', 3, 22),
('33', 'Monopattino elettrico', 'Monopattino elettrico con freni a disco', 300.00, 5.0, 'monopattino_elettrico.jpg', 10, 22),
('34', 'Borsone per bicicletta', 'Borsone impermeabile per bicicletta in tessuto riciclato', 50.00, 1.0, 'borsone_bicicletta.jpg', 20, 22),
('35', 'Casco per bicicletta', 'Casco per bicicletta leggero e resistente', 40.00, 0.5, 'casco_bicicletta.jpg', 30, 22),
('36', 'Borsa per monopattino', 'Borsa impermeabile per monopattino in tessuto riciclato', 25.00, 0.5, 'borsa_monopattino.jpg', 40, 22),
('37', 'Lucchetto per bicicletta', 'Lucchetto antifurto per bicicletta', 20.00, 0.5, 'lucchetto_bicicletta.jpg', 50, 22),
('38', 'Seggiolino per bici', 'Seggiolino per bambini da applicare sulla bicicletta', 60.00, 1.5, 'seggiolino_bici.jpg', 15, 22),
('39', 'Bicicletta a pedalata assistita', 'Bicicletta con pedalata assistita con motore elettrico', 900.00, 12.0, 'bicicletta_pedalata_assistita.jpg', 5, 22),
('40', 'Portapacchi per bici', 'Portapacchi regolabile per bicicletta con materiali riciclati', 30.00, 0.8, 'portapacchi_bici.jpg', 30, 22)
