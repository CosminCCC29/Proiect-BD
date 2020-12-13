-- Administratori_nume_parola_UN
-- Categorii_nr_meniu_nume_cat_UN
-- Ingrediente_nume_ingr_prod_UN

-- Inserare in tabela administratori

INSERT INTO administratori(nume_prenume_cont, parola_cont) VALUES('Cojocaru Constantin-Cosmin', '134679');
INSERT INTO administratori(nume_prenume_cont, parola_cont) VALUES('Budeanu Radu-Andrei', 'parola123');
INSERT INTO administratori(nume_prenume_cont, parola_cont) VALUES('Alexandru Gabriel', '123parola123');
INSERT INTO administratori(nume_prenume_cont, parola_cont) VALUES('Ionut Popescu', '123456789');
INSERT INTO administratori(nume_prenume_cont, parola_cont) VALUES('Alin Popescu', 'parolasigura1');

-- Inserare in tabela meniuri

INSERT INTO meniuri(nume_meniu, Administratori_id_admin) VALUES('Meniu an 2019', (SELECT id_admin FROM administratori where nume_prenume_cont = 'Cojocaru Constantin-Cosmin'));
INSERT INTO meniuri(nume_meniu, Administratori_id_admin) VALUES('Meniu an 2018', (SELECT id_admin FROM administratori where nume_prenume_cont = 'Budeanu Radu-Andrei'));
INSERT INTO meniuri(nume_meniu, Administratori_id_admin) VALUES('Meniu an 2017', (SELECT id_admin FROM administratori where nume_prenume_cont = 'Alexandru Gabriel'));
INSERT INTO meniuri(nume_meniu, Administratori_id_admin) VALUES('Meniu an 2016', (SELECT id_admin FROM administratori where nume_prenume_cont = 'Ionut Popescu'));
INSERT INTO meniuri(nume_meniu, Administratori_id_admin) VALUES('Meniu an 2015', (SELECT id_admin FROM administratori where nume_prenume_cont = 'Alin Popescu'));

------------------------------------------ MENIUL 2019 ------------------------------------------

-- Inserare in tabela categorii

INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate lichide', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate din peste', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate din carne', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Pizza', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Salate', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));

INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Vinuri', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bere', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bauturi non-alcoolice', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bauturi spirtoase', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2019'));

------------------------------------------ MENIUL 2018 ------------------------------------------

INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate lichide', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate din peste', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Preparate din carne', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Pizza', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Salate', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));

INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Vinuri', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bere', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bauturi non-alcoolice', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));
INSERT INTO categorii(nume_categorie, Meniuri_nr_meniu) VALUES('Bauturi spirtoase', (SELECT nr_meniu FROM meniuri where nume_meniu = 'Meniu an 2018'));

-- Inserare in tabela tipuri_aliment

INSERT INTO tipuri_aliment(nume_tip) VALUES('post');
INSERT INTO tipuri_aliment(nume_tip) VALUES('carne');
INSERT INTO tipuri_aliment(nume_tip) VALUES('peste');
INSERT INTO tipuri_aliment(nume_tip) VALUES('lactat');
INSERT INTO tipuri_aliment(nume_tip) VALUES('salata');
INSERT INTO tipuri_aliment(nume_tip) VALUES('lichid');
INSERT INTO tipuri_aliment(nume_tip) VALUES('fructe');
INSERT INTO tipuri_aliment(nume_tip) VALUES('legume');
INSERT INTO tipuri_aliment(nume_tip) VALUES('dulce');
INSERT INTO tipuri_aliment(nume_tip) VALUES('cereale');
INSERT INTO tipuri_aliment(nume_tip) VALUES('fainoase');
INSERT INTO tipuri_aliment(nume_tip) VALUES('alcoolic');
INSERT INTO tipuri_aliment(nume_tip) VALUES('non-alcoolic');

-- Inserare in tabela Produse

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Supa cu legume', 'preparat', 20, 'lichid');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Supa cu taitei', 'preparat', 25, 'lichid');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Ciorba de vita cu legume', 'preparat', 20, 'lichid');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Pastrav la gratar cu legume', 'preparat', 35, 'peste');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Somon afumat', 'preparat', 23, 'peste');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Cotlet de porc la gratar', 'preparat', 22, 'carne');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Friptura de vita cu legume', 'preparat', 22, 'carne');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Piept de pui la gratar cu cartofi', 'preparat', 18, 'carne');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Specialtatea casei', 'preparat', 18, 'carne');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Pizza cu piept de pui', 'preparat', 18, 'carne');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Pizza de post', 'preparat', 15, 'post');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Salata de rosii si castraveti', 'preparat', 20, 'salata');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Salata de spanc cu pui', 'preparat', 25, 'salata');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Timisoreana 330 ml', 'bautura', 5, 'alcoolic');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Ursus 330 ml', 'bautura', 6, 'alcoolic');

INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Apa plata 0.5 l', 'bautura', 4, 'non-alcoolic');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Suc portocale 330 ml', 'bautura', 5, 'non-alcoolic');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Limonada 330 ml', 'bautura', 5, 'non-alcoolic');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Fanta 330 ml', 'bautura', 4, 'non-alcoolic');
INSERT INTO Produse(nume_produs, tip_produs, pret, tipuri_aliment_nume_tip) VALUES('Pepsi 330 ml', 'bautura', 5, 'non-alcoolic');

-- Inserare in tabela categorii_produse MENIU 2019

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Specialtatea casei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza de post'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de spanc cu pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bere' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bere' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2019')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'));

-- Inserare in tabela categorii_produse MENIU 2018

INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate lichide' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din peste' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Preparate din carne' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Specialtatea casei'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Pizza' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza de post'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Salate' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de spanc cu pui'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bere' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bere' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'));
INSERT INTO categorii_produse(Categorii_nr_categorie, Produse_nr_produs) VALUES((SELECT nr_categorie FROM Categorii WHERE nume_categorie = 'Bauturi non-alcoolice' and meniuri_nr_meniu = (SELECT nr_meniu FROM Meniuri WHERE nume_meniu = 'Meniu an 2018')), (SELECT nr_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'));

-- Inserare in tabela Ingrdiente

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('somn', 50, 'Comert', 'peste');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('pastrav', 30, 'Comert', 'peste');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('file de somon', 20, 'Comert', 'peste');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('cotlet de porc', 50, 'Comert', 'carne');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('bucati carne de vita', 60, 'Comert', 'carne');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('piept de pui', 35, 'Comert', 'carne');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('salam de porc', 20, 'Comert', 'carne');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('salam de vita', 30, 'Comert', 'carne');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('cascaval', 30, 'Comert', 'lactat');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('rosii', 70, 'Comert', 'legume');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('castraveti', 120, 'Comert', 'legume');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('amestec de legume', 75, 'Comert', 'legume');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('cartofi', 120, 'Comert', 'legume');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('orez', 30, 'Comert', 'cereale');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('pachet taitei', 30, 'Comert', 'fainoase');

INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('lamaie', 40, 'Comert', 'fructe');
INSERT INTO Ingrediente(nume_ingredient, stoc_ingredient, producator, tipuri_aliment_nume_tip) VALUES('portocala', 55, 'Comert', 'fructe');

-- Inserare in tabela Reteta

INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Supa cu taitei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pachet taitei' and producator = 'Comert'), 0.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Ciorba de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'pastrav' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Pastrav la gratar cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie'), 0.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Somon afumat'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'file de somon' and producator = 'Comert'), 2);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Cotlet de porc la gratar'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cotlet de porc' and producator = 'Comert'), 2);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'bucati carne de vita' and producator = 'Comert'), 2);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Friptura de vita cu legume'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' and producator = 'Comert'), 0.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Piept de pui la gratar cu cartofi'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cartofi' and producator = 'Comert'), 4);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Specialtatea casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'salam de porc' and producator = 'Comert'), 0.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Specialtatea casei'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'cascaval' and producator = 'Comert'), 1.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza cu piept de pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'rosii' and producator = 'Comert'), 3);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de rosii si castraveti'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'castraveti' and producator = 'Comert'), 3);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Pizza de post'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'amestec de legume' and producator = 'Comert'), 1);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Salata de spanc cu pui'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'piept de pui' and producator = 'Comert'), 0.5);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Suc portocale 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'portocala' and producator = 'Comert'), 3);
INSERT INTO Reteta (Produse_nr_produs, Ingrediente_id_ingredient, cantitate_ingredient) VALUES((SELECT nr_produs FROM Produse WHERE nume_produs = 'Limonada 330 ml'), (SELECT id_ingredient FROM Ingrediente WHERE nume_ingredient = 'lamaie' and producator = 'Comert'), 2);

-- Inserare in tabela stocuri_produs

INSERT INTO stocuri_produs(stoc_produs, Produse_nr_produs) VALUES(30, (SELECT nr_produs FROM Produse WHERE nume_produs = 'Timisoreana 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_nr_produs) VALUES(25, (SELECT nr_produs FROM Produse WHERE nume_produs = 'Ursus 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_nr_produs) VALUES(50, (SELECT nr_produs FROM Produse WHERE nume_produs = 'Apa plata 0.5 l'));
INSERT INTO stocuri_produs(stoc_produs, Produse_nr_produs) VALUES(25, (SELECT nr_produs FROM Produse WHERE nume_produs = 'Fanta 330 ml'));
INSERT INTO stocuri_produs(stoc_produs, Produse_nr_produs) VALUES(20, (SELECT nr_produs FROM Produse WHERE nume_produs = 'Pepsi 330 ml'));