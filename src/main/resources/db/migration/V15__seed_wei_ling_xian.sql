-- V15: seed Wei ling xian (威靈仙), absent from initial import
-- Source: matiereMedicale2.txt
-- Note: tropisme étendu aux "douze méridiens" — seule la Vessie est modélisée,
--       l'info est conservée dans additional_notes

INSERT INTO drugs (chinese_name, chinese_characters, latin_name, french_name, nature, dosage, additional_notes, number_of_stars, category_id)
VALUES (
  'Wei ling xian', '威靈仙',
  'Clematis chinensis Osbeck., C. hexapetala Pall., C. manshurica Rupr.',
  'Clématite',
  'WARM',
  '5 à 12 g (jusqu''à 30 g pour dissoudre les arêtes de poisson)',
  'Tropisme étendu aux douze méridiens. Ingrédient très puissant.',
  0,
  (SELECT id FROM drug_category WHERE name = $q$Ingrédients qui chassent le Vent, l'Humidité et le Froid$q$)
) ON CONFLICT (chinese_name) DO NOTHING;

INSERT INTO drug_flavors (drug_id, flavor) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'PUNGENT'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'SALTY');

INSERT INTO drug_tropism (drug_id, tropism) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'BLADDER');

INSERT INTO drug_movement (drug_id, movements) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'ASCENDING'),
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'OUTWARD');

INSERT INTO drug_contraindications (drug_id, contraindication) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), 'Ingrédient très puissant, prudence en cas de vide de Yin, de Qi et de Sang.');

INSERT INTO drug_effects (drug_id, effect) VALUES
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), $e$Chasse le Vent et expulse l'Humidité. En ingrédient unique avec de l'alcool tiède, pour les paresthésies des membres, spasmes et rétraction des tendons, articulations bloquées, etc. Avec Qiang huo, Du huo, Niu xi, Qin jiao etc. pour les douleurs articulaires. Avec Dang gui, Rou gui etc. pour les maladies bi douloureuses. Avec Sang zhi, Qin jiao, Dang gui, Can sha etc. pour les paresthésies et raideurs des doigts.$e$),
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), $e$Désobstrue les vaisseaux et collatéraux et arrête la douleur. Yaoyao des douleurs, restrictions de mobilité et paresthésies dans les syndromes bi. En ingrédient unique, ou avec Chuan wu, Wu ling zhi, Wu yao etc. pour tous types de douleurs (traumatismes, céphalées, odontalgies, gastralgies etc.).$e$),
  ((SELECT id FROM drugs WHERE chinese_name = 'Wei ling xian'), $e$Dissout les arêtes de poisson et os coincés dans la gorge, en décoction avec un peu de vinaigre et de sucre (gargarisme, puis avaler doucement). Traite les maladies de la peau avec prurit et suintement, ulcérations blanches ou violacées, avec Ku shen, Cang zhu, He shou wu etc. ; eczéma infantile avec Zhu ling, Lian qiao, Zi cao, Bai xian pi, Huang lian etc.$e$);
