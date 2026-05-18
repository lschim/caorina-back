-- Fix drugs incorrectly assigned to 'Unknown' category

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui activent le sang et régularisent les règles')
  WHERE chinese_name = 'Niu xi';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui clarifient la Chaleur toxique')
  WHERE chinese_name = 'Lü dou';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Qi')
  WHERE chinese_name = 'Bai Bian dou';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui éteignent le Vent [interne] et calment les spasmes')
  WHERE chinese_name = 'Bai jiang can';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients aromatiques qui transforment l''Humidité')
  WHERE chinese_name = '(Bai) dou kou';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yang')
  WHERE chinese_name = 'Hu tao ren';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients astringents qui arrêtent les saignements')
  WHERE chinese_name = 'Zong lü tan';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yin')
  WHERE chinese_name = 'Mai men dong';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yin')
  WHERE chinese_name = 'Tian men dong';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yin')
  WHERE chinese_name = 'Han lian cao';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yin')
  WHERE chinese_name = 'Nü zhen zi';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yin')
  WHERE chinese_name = 'Gui ban';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients qui tonifient le Yang')
  WHERE chinese_name = 'Jiu zi';

UPDATE drugs SET category_id = (SELECT id FROM drug_category WHERE name = 'Ingrédients aromatiques qui transforment l''Humidité')
  WHERE chinese_name = 'Huo xiang';

-- Remove the empty Unknown category
DELETE FROM drug_category WHERE name = 'Unknown';
