-- V16: seed Xu chang qing, Can sha, Shen jin cao
-- Source: matiereMedicale2.txt

-- ── Xu chang qing 徐长卿 ──────────────────────────────────────────────────────

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Xu chang qing', '徐长卿',
  'Cynanchum paniculatum (Bge.) Kitag.',
  NULL,
  'WARM', '3 à 10 g',
  'Ne doit pas cuire longtemps.',
  0,
  (SELECT id FROM drug_category WHERE name = $q$Ingrédients qui chassent le Vent, l'Humidité et le Froid$q$)
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), 'PUNGENT');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), 'LIVER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), 'STOMACH');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), 'ASCENDING');

INSERT INTO drug_contraindications (drug_id, contraindication) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), 'Ne doit pas cuire longtemps.');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), $e$Chasse le Vent et arrête la douleur. Avec Wei ling xian, Wu jia pi etc. pour les maladies bi. Avec Du zhong, Xu duan, Du huo, Niu xi etc. pour les lombalgies. Avec Gao liang jiang, Xiang fu, Yan hu suo etc. pour les douleurs épigastriques ou abdominales. Avec Wu ling zhi, Tao ren, Hong hua etc. en traumatologie ou gynécologie. En bains de bouche pour les douleurs dentaires.$e$),
  ((SELECT id FROM drugs WHERE chinese_name = 'Xu chang qing'), $e$Chasse le Vent et arrête le prurit. Avec Ku shen, Di fu zi, Bai xian pi etc. pour les dermatoses avec démangeaisons.$e$);

-- ── Can sha 蠶沙 ─────────────────────────────────────────────────────────────

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Can sha', '蠶沙',
  'Bombyx mori L.',
  'Excréments du bombyx du mûrier',
  'WARM', '5 à 15 g', NULL, 0,
  (SELECT id FROM drug_category WHERE name = $q$Ingrédients qui chassent le Vent, l'Humidité et le Froid$q$)
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'SWEET'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'PUNGENT');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'LIVER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'SPLEEN'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'STOMACH');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), 'DESCENDING');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), $e$Chasse le Vent et expulse l'Humidité. Avec Fang ji, Yi yi ren, Hua shi, Zhi zi etc. pour les bi Chaleur. Avec Qiang huo, Du huo, Wei ling xian etc. pour les bi Froid. En application externe (compresses chaudes) sur les douleurs rhumatismales.$e$),
  ((SELECT id FROM drugs WHERE chinese_name = 'Can sha'), $e$Transforme l'Humidité trouble et harmonise l'Estomac. Avec Mu gua, Wu zhu yu, Yi yi ren, Huang lian, Huang qin, Zhi zi, Tong cao etc. pour traiter l'accumulation d'Humidité trouble provoquant ballonnements, nausées, vomissements et faiblesse des tendons.$e$);

-- ── Shen jin cao 伸筋草 ───────────────────────────────────────────────────────

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Shen jin cao', '伸筋草',
  'Lycopodium japonicum Thunb.',
  'Lycopode japonais',
  'WARM', '10 à 15 g', NULL, 0,
  (SELECT id FROM drug_category WHERE name = $q$Ingrédients qui chassent le Vent, l'Humidité et le Froid$q$)
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'BITTER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'PUNGENT');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'LIVER'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'SPLEEN'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'KIDNEYS');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'OUTWARD');

INSERT INTO drug_contraindications (drug_id, contraindication) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), 'Prudence pendant la grossesse.');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), $e$Chasse le Vent et élimine l'Humidité. Avec Qiang huo, Fang feng, Fang ji, Yi yi ren etc. pour les douleurs rhumatismales avec prédominance d'Humidité. Avec Song jie, Wei ling xian etc. pour les séquelles de poliomyélite. Avec Bing lang, Da fu pi etc. pour traiter les œdèmes avec rétention urinaire. En ingrédient unique, en application externe pour l'érysipèle.$e$),
  ((SELECT id FROM drugs WHERE chinese_name = 'Shen jin cao'), $e$Détend les tendons et active la circulation dans les vaisseaux luo. Avec Hu zhang, Da xue teng etc. pour les rétractions des tendons, restrictions de mobilité articulaire, paresthésies et engourdissements. Avec Huang qi, Dang gui, Chuan xiong, Chi shao yao, Ji xue teng etc. pour les spasmes, hypertonicité et paresthésies. Avec San qi, Pu huang, Da huang, Tao ren etc. en traumatologie.$e$);
