-- Deuxième vague de flags yao yao (要药), extraite directement des fichiers de cours
-- source (caorina-back/import/matiereMedicale1-4.txt) plutôt que des annotations déjà
-- présentes dans le seed. La migration V4 n'avait couvert que les ~29 mentions déjà
-- visibles en texte libre dans db/seed/V2__data.sql ; cette migration V5 en ajoute 107
-- de plus (104 effets existants flagués + 3 nouveaux effets insérés), retrouvées par
-- relecture complète des cours et recoupement avec le texte actuel des effets (score de
-- similarité >= 0.99 pour les 104 UPDATE ci-dessous, vérifiées une à une pour les 3 INSERT).
--
-- Comme pour V4 : cette migration vit dans db/migration (appliquée aussi en profil test,
-- où le seed n'est pas chargé) ; les UPDATE ciblés par (drug_id, texte exact) sont des
-- no-op sûrs si la ligne n'existe pas, et les INSERT sont gardés par WHERE EXISTS pour ne
-- jamais violer la contrainte de clé étrangère drug_effects.drug_id -> drugs.id.

UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 165 AND effect = 'Libère la surface en provoquant la transpiration'; -- Ma huang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 140 AND effect = 'Traite les indigestions liées à l''absorption de poissons et fruits de mers'; -- Zi su ye
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 237 AND effect = 'Réchauffe le Foyer Médian et arrête les nausées et les vomissements'; -- Sheng jiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 243 AND effect = 'Libère la Surface et favorise la transpiration (3 à 5g)'; -- Xiang ru
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 301 AND effect = 'Libère la Surface et disperse le Froid'; -- Qiang huo
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 372 AND effect = 'Disperse le Froid et traite la douleur'; -- Bai zhi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 346 AND effect = 'Ouvre le nez et arrête la douleur'; -- Cang'er zi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 79 AND effect = 'Purge les accumulations, ramollit les indurations'; -- Mang xiao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 182 AND effect = 'Clarifie la Chaleur, disperse le Feu, traite la dysphorie et calme la soif'; -- Shi gao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 244 AND effect = 'Clarifie le Foie et éclaircit les yeux'; -- Xia ku cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 128 AND effect = 'Clarifie la Chaleur et assèche l''Humidité (Foyer médian et Cœur)'; -- Huang lian
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 32 AND effect = 'Chasse le Vent, tue les parasites et arrête les démangeaisons'; -- Ku shen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 203 AND effect = 'Clarifie la Chaleur et rafraîchit le Sang'; -- Sheng di huang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 20 AND effect = 'Clarifie la Chaleur et rafraîchit le Sang'; -- Mu dan pi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 284 AND effect = 'Clarifie la Chaleur et élimine la toxicité (forte dose, cuisson longue)'; -- Jin yin hua
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 193 AND effect = 'Réduit les abcès et disperse les nodosités'; -- Lian qiao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 292 AND effect = 'Réduit les abcès et disperse les nodosités'; -- Pu gong ying
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 126 AND effect = 'Clarifie la Chaleur et élimine la toxicité'; -- Zi hua di ding
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 370 AND effect = 'Rafraîchit le Sang et traite les macules'; -- Da qing ye
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 142 AND effect = 'Clarifie la Chaleur et élimine la toxicité'; -- Niu huang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 192 AND effect = 'Favorise les articulations'; -- Tu fu ling
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 251 AND effect = 'Clarifie la Chaleur, élimine la toxicité, réduit les abcès et draine le pus'; -- Yu xing cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 200 AND effect = 'Élimine les Mucosités et favorise la gorge'; -- She gan
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 230 AND effect = 'Favorise la gorge et réduit les gonflements'; -- Shan dou gen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 213 AND effect = 'Clarifie la Chaleur, élimine la toxicité, rafraîchit le Sang et arrête les dysenteries'; -- Bai tou weng
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 219 AND effect = 'Clarifie la Chaleur et élimine la toxicité'; -- Ya dan zi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 186 AND effect = 'Clarifie la Chaleur, élimine la toxicité, draine le pus et réduit les abcès'; -- Bai jiang cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 373 AND effect = 'Clarifie la Chaleur et élimine la toxicité'; -- Di jin cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 266 AND effect = 'Élimine la Canicule et traite la malaria'; -- Qing hao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 52 AND effect = 'Rafraîchit le Sang, et traite la sensation de cuisson des os'; -- Di gu pi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 349 AND effect = 'Clarifie la Chaleur Vide'; -- Yin chai hu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 276 AND effect = 'Débloque les obstructions bi et arrête les douleurs'; -- Du huo
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 238 AND effect = 'Apaise le Foie et détend les tendons'; -- Mu gua
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 75 AND effect = 'Détend les tendons et désobstrue les vaisseaux luo (arrête la douleur)'; -- Song jie
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 395 AND effect = 'Chasse le Vent-Humidité et arrête la douleur'; -- Fang ji
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 191 AND effect = 'Chasse le Vent Humidité, ouvre les canaux et collatéraux, favorise les articulations'; -- Sang zhi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 326 AND effect = 'Calme le fœtus'; -- Sang ji sheng
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 109 AND effect = 'Assèche l''Humidité et renforce la Rate'; -- Cang zhu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 322 AND effect = 'Transforme l''Humidité, mobilise le Qi, ouvre l''Estomac'; -- Sha ren
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 30 AND effect = 'Favorise la diurèse et fait s''écouler l''Humidité'; -- Fu ling
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 343 AND effect = 'Régularise les urines et débloque les lin'; -- Hua shi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 279 AND effect = 'Clarifie la Chaleur et fait s''écouler l''Humidité, débloque les lin et calme la douleur'; -- Hai jin sha
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 358 AND effect = 'Fait s''écouler l''Humidité et élimine le trouble'; -- Bi xie
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 264 AND effect = 'Clarifie l''Humidité-Chaleur, traite l''ictère'; -- Yin chen hao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 214 AND effect = 'Évacue les calculs et traite l''ictère'; -- Jin qian cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 223 AND effect = 'Calme le Foie et ancre le Yang'; -- Shi jue ming
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 223 AND effect = 'Clarifie le Feu de l''Estomac, arrête la douleur et les saignements'; -- Shi jue ming
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 107 AND effect = 'Calme le Foie et ancre le yang'; -- Dai zhe shi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 365 AND effect = 'Calme le Foie et éteint le Vent'; -- Ling yang jiao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 22 AND effect = 'Éteint le Vent et calme les spasmes'; -- Gou teng
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 136 AND effect = 'Éteint le Vent, arrête les tremblements et les convulsions'; -- Quan xie
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 187 AND effect = 'Éteint le Vent, arrête les tremblements et les convulsions'; -- Wu gong
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 93 AND effect = 'Arrête la transpiration par l''astringence'; -- Ma huang gen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 231 AND effect = 'Consolide le Qi du Poumon, arrête la toux et nourrit les Reins'; -- Wu wei zi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 231 AND effect = 'Retient le Jing, arrête la diarrhée et la spermatorrhée'; -- Wu wei zi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 115 AND effect = 'Tonifie le Foie et les Reins'; -- Shan zhu yu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 115 AND effect = 'Retient le jing et les urines'; -- Shan zhu yu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 115 AND effect = 'Retient la transpiration et traite les échappements'; -- Shan zhu yu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 215 AND effect = 'Réchauffe le centre et disperse le Froid'; -- Gan jiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 86 AND effect = 'Tonifie le feu et soutient le Yang'; -- Rou gui
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 29 AND effect = 'Disperse le Froid et arrête les douleurs'; -- Wu zhu yu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 81 AND effect = 'Réchauffe le centre et abaisse les contre-courants'; -- Ding xiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 108 AND effect = 'Réchauffe le centre et arrête les vomissements'; -- Gao liang jiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 64 AND effect = 'Assèche l''humidité et transforme les mucosités'; -- Chen pi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 39 AND effect = 'Met le Qi en mouvement, arrête les douleurs'; -- Mu xiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 148 AND effect = 'Arrête les douleurs (tropisme abdomen, flancs, gynéco; préparé au vinaigre cu zhi pour plus d''efficacité)'; -- Xiang fu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 305 AND effect = 'Débloque le Yang et disperse les nouures'; -- Xie bai
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 176 AND effect = 'Favorise la digestion, transforme les accumulations'; -- Shan zha
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 15 AND effect = 'Favorise la digestion et renforce l''Estomac'; -- Mai ya
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 17 AND effect = 'Favorise la digestion, arrête les ballonnements'; -- Lai fu zi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 125 AND effect = 'Mobilise le Qi et fait s''écouler l''eau'; -- Bing lang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 265 AND effect = 'Calme le fœtus'; -- Zhu ma gen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 355 AND effect = 'Disperse le Froid et régularise les règles'; -- Ai ye
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 137 AND effect = 'Réchauffe les méridiens et arrête les saignements'; -- Pao jiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 42 AND effect = 'Active le sang et mobilise le Qi (agit sur le qi dans le sang)'; -- Chuan xiong
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 42 AND effect = 'Chasse le Vent et calme les douleurs'; -- Chuan xiong
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 189 AND effect = 'Active le sang et débloque les règles'; -- Dan shen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 55 AND effect = 'Active le sang et régularise les règles'; -- Yi mu cao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 285 AND effect = 'Répare les tendons et rassemble les os'; -- Zi ran tong
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 257 AND effect = 'Active le sang et répare les tendons'; -- Gu sui bu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 100 AND effect = 'Assèche l''Humidité et transforme les mucosités (Humidité ou Froid)'; -- Ban xia
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 100 AND effect = 'Abaisse les contre-courants et arrête les nausées'; -- Ban xia
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 331 AND effect = 'Abaisse le Qi et arrête les nausées'; -- Xuan fu hua
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 288 AND effect = 'Dissout les mucosités et ramollit les indurations'; -- Hai zao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 92 AND effect = 'Dissout les mucosités et ramollit les indurations'; -- Kun bu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 110 AND effect = 'Humidifie les Poumons et arrête la toux'; -- Bai bu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 132 AND effect = 'Calme le Cœur et apaise l''Esprit'; -- Zhu sha
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 299 AND effect = 'Apaise le Cœur et soutient l''Esprit et l''intelligence (préparé zhi)'; -- Yuan zhi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 261 AND effect = 'Calme l''Esprit et dénoue la surpression de Qi'; -- He huan pi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 150 AND effect = 'Ouvre les Orifices et réveille l''Esprit'; -- She xiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 287 AND effect = 'Ouvre les Orifices, réveille l''esprit et évacue le vicié'; -- Su he xiang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 337 AND effect = 'Tonifie fortement Yuanqi'; -- Ren shen
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 95 AND effect = 'Tonifie le Qi et fait monter le yang'; -- Huang qi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 95 AND effect = 'Régularise la voie des eaux et réduit les œdèmes'; -- Huang qi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 36 AND effect = 'Tonifie le Qi et renforce la Rate (préparé sauté, chao)'; -- Bai zhu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 376 AND effect = 'Nourrit le Sang et calme l''Esprit'; -- Da zao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 344 AND effect = 'Tonifie le Foie et les Reins, renforce les tendons et les Os'; -- Du zhong
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 258 AND effect = 'Consolide le Jing et retient les urines'; -- Yi zhi ren
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 274 AND effect = 'Nourrit le Jing et les moelles'; -- Shu di huang
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 232 AND effect = 'Tonifie le Sang et arrête les saignements'; -- E jiao
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 114 AND effect = 'Abaisse le Qi et arrête le hoquet'; -- Shi di
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 352 AND effect = 'Favorise la digestion et harmonise l''Estomac'; -- Shen qu
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 278 AND effect = 'Transforme la stase et arrête le sang'; -- San qi
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 195 AND effect = 'Désobstrue et favorise la circulation dans les vaisseaux, active le sang et calme les douleurs'; -- Wu ling zhi

-- Nouveaux effets (aucune correspondance textuelle avec un effet existant)

-- Chan tui (63)
INSERT INTO drug_effects (drug_id, effect, is_yao_yao)
    SELECT 63, 'Libère la Surface et les muscles du Vent et de la Chaleur', true
    WHERE EXISTS (SELECT 1 FROM drugs WHERE id = 63);

-- Mu tong (154) : n'avait jusqu'ici aucun effet renseigné
INSERT INTO drug_effects (drug_id, effect, is_yao_yao)
    SELECT 154, 'Disperse le Feu du Cœur et de l''Intestin Grêle', true
    WHERE EXISTS (SELECT 1 FROM drugs WHERE id = 154);
INSERT INTO drug_effects (drug_id, effect, is_yao_yao)
    SELECT 154, 'Débloque les vaisseaux et favorise la lactation', true
    WHERE EXISTS (SELECT 1 FROM drugs WHERE id = 154);
