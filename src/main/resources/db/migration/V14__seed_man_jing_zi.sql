-- V14: seed Man jing zi (蔓荆子), absent from initial import
-- Source: matiereMedicale1.txt

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Man jing zi', '蔓荆子',
  'Vitex rotundifolia L. ou V. trifolia L.',
  'Gattilier à feuilles rondes ou gattilier trifolié',
  'COOL', '6 à 12 g', NULL, 0,
  (SELECT id FROM drug_category WHERE name = 'Ingrédients (piquants et frais) qui libèrent la surface du Vent-Chaleur')
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'PUNGENT'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'BITTER');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'BLADDER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'LIVER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'STOMACH');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'INWARD');

INSERT INTO drug_contraindications (drug_id, contraindication) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'Prudence en cas de manifestations de Feu sur vide de sang, ou en cas de vide de l''Estomac.');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'Chasse le Vent-Chaleur, favorise et éclaircit la tête et les yeux. Avec Ju hua, Bo he, Chuan xiong etc. pour les maux de tête dus au Vent-Chaleur. Avec Sheng ma, Shi gao, Huang lian etc. pour les douleurs dentaires et gingivales. Avec Chan tui, Ju hua, Jue ming zi etc. pour les conjonctivites avec yeux rouges, gonflés, larmoiement.'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'Disperse le Vent et arrête la douleur dans les obstructions douloureuses (syndromes Bi) dues au Vent-Humidité. Dans Qiang huo sheng shi tang, avec Qiang huo, Du huo, Chuan xiong, Fang feng etc.'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Man jing zi'), 'En application locale, avec Fu zi, Ting li zi etc. pour traiter les pelades dues au Vent qui agite le haut.');
