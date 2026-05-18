-- Fix associations lost during import due to 'yao' suffix mismatch
-- e.g. 'Bai shao yao' referenced as partner but stored as 'Bai shao'

-- Xue jie -> Chi shao yao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Chi shao yao'
WHERE d.chinese_name = 'Xue jie'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'En cas de traumatisme, active le sang et transforme la stase.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Xue jie'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Chi shao yao';

-- Chi shao yao -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Chi shao yao'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Nourrissent le Sang, retiennent le Yin, rafraîchissent le Sang, drainent et nourrissent le Foie, arrêtent la douleur.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Chi shao yao'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Gou teng -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Gou teng'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Assouplissent le Foie, clarifient la Chaleur, calment le Foie et éteignent le Vent.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Gou teng'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Gui zhi -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Gui zhi'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Harmonisent le yin et le yang, le Qi et le Sang, Yingqi et Weiqi. Tonifient le yin de l''Estomac et le yang de la Rate. Harmonisent les Vaisseaux et arrêtent la douleur.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Gui zhi'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Liu ji nu -> Chi shao yao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Chi shao yao'
WHERE d.chinese_name = 'Liu ji nu'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé à Chi shao pour les stases de sang du post partum'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Liu ji nu'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Chi shao yao';

-- Jue ming zi -> Chi shao yao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Chi shao yao'
WHERE d.chinese_name = 'Jue ming zi'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'En cas de taie cornéenne avec Chaleur toxique, œil rouge, sablonneux, douloureux'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Jue ming zi'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Chi shao yao';

-- Mu li -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Mu li'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Nourrissent le Yin, abaissent le Yang, calment le Foie et retiennent le yin.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Mu li'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Sheng di huang -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Sheng di huang'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Nourrissent le Yin et le Sang, clarifient la Chaleur Vide et calment le Yang du Foie.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Sheng di huang'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Ling xiao hua -> Chi shao yao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Chi shao yao'
WHERE d.chinese_name = 'Ling xiao hua'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Dang gui, Hong hua, Chi shao pour les aménorrhées par stase de sang'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Ling xiao hua'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Chi shao yao';

-- Shi jue ming -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Shi jue ming'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Calment le Foie et éteignent le Vent dans un contexte de vide de sang.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Shi jue ming'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Gan cao -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Gan cao'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Calment le Foie et tonifient la Rate, tonifient le Qi et le Sang, harmonisent Foie et Rate, traitent les spasmes.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Gan cao'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Huang qin -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Huang qin'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Clarifient la Chaleur, assèchent l''Humidité, arrêtent la douleur et arrêtent la diarrhée.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Huang qin'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Chai hu -> Bai shao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai shao'
WHERE d.chinese_name = 'Chai hu'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Ils dispersent le Foie sans blesser son Yin, nourrissent le Foie sans faire stagner son Qi, régularisent la Rate et arrêtent la douleur due à la stagnation'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Chai hu'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai shao';

-- Qian cao -> Chi shao yao
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Chi shao yao'
WHERE d.chinese_name = 'Qian cao'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé pour traiter les aménorrhées par stase de sang'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Qian cao'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Chi shao yao';
