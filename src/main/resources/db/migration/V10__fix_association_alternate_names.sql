-- Fix associations lost due to alternate drug names (case 2)
-- dan nan xing->Tian nan xing, sha shen->Bei sha shen, jiang can->Bai jiang can

-- Ji shi teng -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Ji shi teng'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé à Dan nan xing pour transformer les mucosités et arrêter la toux'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Ji shi teng'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Chan tui -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Chan tui'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Chassent le Vent-Chaleur, transforment les Mucosités, dispersent les indurations'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Chan tui'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

-- Quan shen -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Quan shen'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé à Gou teng, Quan xie, Jiang can, Niu huang etc. pour traiter l''épilepsie, les convulsions infantiles et l''opisthotonos.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Quan shen'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

-- Tian zhu huang -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Tian zhu huang'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Huang lian, Jiang can, Qing dai etc. pour les mucosités Chaleur'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Tian zhu huang'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Dan nan xing, Jiang can, Gou teng etc. pour les convulsions infantiles et terreurs nocturnes par mucosités Chaleur'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Tian zhu huang'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

-- Tian zhu huang -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Tian zhu huang'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Dan nan xing, Jiang can, Gou teng etc. pour les convulsions infantiles et terreurs nocturnes par mucosités Chaleur'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Tian zhu huang'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Hai fu shi -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Hai fu shi'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Dan nan xing, Bai jie zi, Bei mu pour les mucosités collantes, jaunes, épaisses'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Hai fu shi'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Quan xie -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Quan xie'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Jiang can, Tian ma, Hu po etc. dans Ding xian wan pour éteindre le Vent et arrêter les convulsions'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Quan xie'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

-- Tian ma -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Tian ma'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Chassent le Vent, transforment les Mucosités et éteignent le Vent.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Tian ma'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Huang jing -> Bei sha shen
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bei sha shen'
WHERE d.chinese_name = 'Huang jing'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé pour traiter la sécheresse du Poumon'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Huang jing'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bei sha shen';

-- Dong chong xia cao -> Bei sha shen
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bei sha shen'
WHERE d.chinese_name = 'Dong chong xia cao'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé pour les toux d''épuisement avec hémoptysie'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Dong chong xia cao'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bei sha shen';

-- Mao zhao cao -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Mao zhao cao'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé à Xia ku cao, Xuan shen, Jiang can etc. pour traiter les adénopathies et scrofules.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Mao zhao cao'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

-- Zhen zhu -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Zhen zhu'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé avec Tian zhu huang etc. pour traiter l''épilepsie et les convulsions infantiles'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Zhen zhu'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Xuan fu hua -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Xuan fu hua'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Transforment les mucosités Chaleur'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Xuan fu hua'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Nuo dao gen xu -> Bei sha shen
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bei sha shen'
WHERE d.chinese_name = 'Nuo dao gen xu'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Sha shen, Mai men dong, Di gu pi etc. pour la Chaleur Vide'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Nuo dao gen xu'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bei sha shen';

-- Tai zi shen -> Bei sha shen
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bei sha shen'
WHERE d.chinese_name = 'Tai zi shen'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Association en cas de toux sèche avec vide de Qi et de Yin du Poumon'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Tai zi shen'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bei sha shen';

-- Feng mi -> Bei sha shen
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bei sha shen'
WHERE d.chinese_name = 'Feng mi'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Associé en pilules avec un peu de jus de gingembre pour humidifier le Poumon et arrêter la toux'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Feng mi'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bei sha shen';

-- Hu po -> Tian nan xing
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Tian nan xing'
WHERE d.chinese_name = 'Hu po'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Avec Tian zhu huang, Dan nan xing, Fu ling etc. pour les convulsions infantiles avec mucosités Feu ou Vent'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Hu po'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Tian nan xing';

-- Jing jie -> Bai jiang can
INSERT INTO drug_association (drug_id, associated_drug_id)
SELECT d.id, p.id FROM drugs d JOIN drugs p ON p.chinese_name = 'Bai jiang can'
WHERE d.chinese_name = 'Jing jie'
  AND NOT EXISTS (SELECT 1 FROM drug_association WHERE drug_id = d.id AND associated_drug_id = p.id);
INSERT INTO drug_association_effects (association_id, effect)
SELECT da.id, 'Association pour calmer les spasmes et convulsions dus au Vent interne par montée de Yang du Foie.'
FROM drug_association da
JOIN drugs d ON d.id = da.drug_id AND d.chinese_name = 'Jing jie'
JOIN drugs p ON p.id = da.associated_drug_id AND p.chinese_name = 'Bai jiang can';

