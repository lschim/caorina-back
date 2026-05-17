-- Add 3 drugs that failed batch parsing and were manually inserted
-- Generated manually

-- Di jin cao
INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES ('Di jin cao', '地錦草', 'Euphorbia humifusa Willd.', 'Euphorbe couchée', 'NEUTRAL', '15 à 30g sec, 30 à 60g frais', NULL, 0,
        (SELECT id FROM drug_category WHERE name = 'Ingrédients qui clarifient la Chaleur toxique'));
INSERT INTO drug_flavors (drug_id, flavor) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'PUNGENT');
INSERT INTO drug_tropism (drug_id, tropism) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'LIVER');
INSERT INTO drug_tropism (drug_id, tropism) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'LARGE_INTESTINE');
INSERT INTO drug_movement (drug_id, movements) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'INWARD');
INSERT INTO drug_movement (drug_id, movements) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'DESCENDING');
INSERT INTO drug_effects (drug_id, effect) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'Clarifie la Chaleur et élimine la toxicité');
INSERT INTO drug_effects (drug_id, effect) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'Rafraîchit le sang et arrête les saignements');
INSERT INTO drug_effects (drug_id, effect) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Di jin cao'), 'Traite la dysenterie');

-- Mei gui hua
INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES ('Mei gui hua', '玫瑰花', 'Rosa rugosa Thunb.', 'Boutons de fleur du rosier rugueux', 'WARM', '3 à 6g', NULL, 0,
        (SELECT id FROM drug_category WHERE name = 'Ingrédients qui régularisent le Qi'));
INSERT INTO drug_flavors (drug_id, flavor) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'SWEET');
INSERT INTO drug_flavors (drug_id, flavor) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'BITTER');
INSERT INTO drug_tropism (drug_id, tropism) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'LIVER');
INSERT INTO drug_tropism (drug_id, tropism) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'SPLEEN');
INSERT INTO drug_movement (drug_id, movements) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'DESCENDING');
INSERT INTO drug_effects (drug_id, effect) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'Mobilise le Qi et dénoue la surpression');
INSERT INTO drug_effects (drug_id, effect) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'Active le sang et arrête les douleurs');
INSERT INTO drug_contraindications (drug_id, contraindication) VALUES ((SELECT id FROM drugs WHERE chinese_name = 'Mei gui hua'), 'Ne doit pas cuire longtemps');

-- Chuan mu xiang
INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES ('Chuan mu xiang', '川木香', 'Vladimiria souliei (Franch.) Ling', NULL, NULL, NULL, 'Variété de Mu xiang. Se prescrit de la même façon.', 0,
        (SELECT id FROM drug_category WHERE name = 'Ingrédients qui régularisent le Qi'));
