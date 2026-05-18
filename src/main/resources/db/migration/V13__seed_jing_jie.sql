-- V13: seed Jing jie (荊芥), absent from initial import
-- Source: matiereMedicale1.txt

-- Category already exists from V3+V6
INSERT INTO drug_category (name)
  SELECT 'Ingrédients piquants et tièdes qui libèrent la surface du Vent-Froid'
  WHERE NOT EXISTS (
    SELECT 1 FROM drug_category
    WHERE name = 'Ingrédients piquants et tièdes qui libèrent la surface du Vent-Froid'
  );

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Jing jie', '荊芥', 'Schizonepeta tenuifolia Briq.', NULL,
  'WARM', '3 à 10 g', NULL, 0,
  (SELECT id FROM drug_category WHERE name = 'Ingrédients piquants et tièdes qui libèrent la surface du Vent-Froid')
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'PUNGENT');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'LUNGS'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'LIVER');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'OUTWARD'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'INWARD'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'ASCENDING');

INSERT INTO drug_contraindications (drug_id, contraindication) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'Ne pas faire bouillir trop longtemps.'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'Prudence en cas de transpiration spontanée avec surface vide, ou de céphalées avec vide de Yin.');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'Libère la Surface et chasse le Vent. Froid, dans Jing fang bai du san, avec Fang feng etc. Chaleur, dans Yin qiao san, avec Bo he, Jin yin hua, Lian qiao etc. Avec Tian ma, Quan xie, Jiang can etc. pour calmer les spasmes et convulsions (Vent interne par montée de Yang du Foie). Avec Ren shen, Dang gui, Huang qi, Shu di huang etc. pour calmer les vertiges du post-partum (Vent interne par vide de Sang).'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'Chasse le Vent, fait sortir les exanthèmes, traite le prurit et réduit les ulcérations. Dans Xiao feng san, avec Fang feng, Niu bang zi, Chan tui etc. Avec Fang feng, Qiang huo, Du huo, Sheng ma, Chan tui, Ge gen etc. lorsque les exanthèmes ne sortent pas lors d''une fièvre éruptive. Avec Fang feng, Zhi ke, Chuan xiong, Qiang huo etc. pour traiter les ulcérations au stade initial. Avec Bai zhi, Lian qiao, Tian hua fen etc. pour traiter les abcès au stade initial. Avec Pu gong ying, Zao jiao ci, Tian hua fen etc. pour les abcès du sein.'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Jing jie'), 'Arrête les saignements (carbonisé, chao tan). Dans Huai hua san, avec Huai hua etc.');

-- Association avec Fang feng (source : section associations de Fang feng dans matiereMedicale1)
INSERT INTO drug_association (drug_id, associated_drug_id)
  SELECT d.id, p.id
  FROM drugs d JOIN drugs p ON p.chinese_name = 'Fang feng'
  WHERE d.chinese_name = 'Jing jie'
    AND NOT EXISTS (
      SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id
    );

INSERT INTO drug_association_effects (association_id, effect)
  SELECT da.id, 'Traitent le vent au niveau cutané et calment les démangeaisons.'
  FROM drug_association da
  JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Jing jie'
  JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Fang feng'
  WHERE NOT EXISTS (
    SELECT 1 FROM drug_association_effects
    WHERE association_id = da.id
      AND effect = 'Traitent le vent au niveau cutané et calment les démangeaisons.'
  );
