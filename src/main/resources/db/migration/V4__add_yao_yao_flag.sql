-- Ajoute le flag yao yao (要药, remède de référence pour une action donnée) sur les effets
-- de Drug et DrugAssociation, et corrige les ~29 occurrences déjà présentes en texte libre
-- dans les données de seed (db/seed/V2__data.sql). Cette migration vit dans db/migration
-- (donc appliquée aussi en profil test, où le seed n'est pas chargé) : les UPDATE ciblés
-- par (id, texte exact) sont des no-op sûrs si les lignes n'existent pas, et les 2 INSERT
-- sont gardés par un WHERE EXISTS pour ne jamais violer la contrainte de clé étrangère.

ALTER TABLE drug_effects ADD COLUMN is_yao_yao BOOLEAN NOT NULL DEFAULT FALSE;
ALTER TABLE drug_association_effects ADD COLUMN is_yao_yao BOOLEAN NOT NULL DEFAULT FALSE;

-- Corrections drug_effects (16 lignes déjà marquées en texte libre)
UPDATE drug_effects SET effect = 'Réduit les gonflements et régénère les tissus (en traumatologie)', is_yao_yao = true
    WHERE drug_id = 5 AND effect = 'Réduit les gonflements et régénère les tissus (Yaoyao en traumatologie)';
UPDATE drug_effects SET effect = 'Disperse le Feu et traite l''irritabilité', is_yao_yao = true
    WHERE drug_id = 9 AND effect = 'Disperse le Feu et traite l''irritabilité (yaoyao)';
UPDATE drug_effects SET effect = 'Traite l''Humidité-Chaleur et le Feu plénitude du Foie', is_yao_yao = true
    WHERE drug_id = 43 AND effect = 'Yaoyao de l''Humidité Chaleur et du Feu plénitude du Foie';
UPDATE drug_effects SET effect = 'Restaure le Yang et récupère les inversions', is_yao_yao = true
    WHERE drug_id = 62 AND effect = 'Restaure le Yang et récupère les inversions (Yaoyao)';
UPDATE drug_effects SET effect = 'Favorise la lactation et réduit les gonflements', is_yao_yao = true
    WHERE drug_id = 82 AND effect = 'Favorise la lactation et réduit les gonflements (Yaoyao)';
UPDATE drug_effects SET effect = 'Arrête les saignements par l''astringence et le resserrement', is_yao_yao = true
    WHERE drug_id = 84 AND effect = 'Arrête les saignements par l''astringence et le resserrement (Yaoyao)';
UPDATE drug_effects SET effect = 'Réduit les gonflements et régénère les tissus (en traumatologie)', is_yao_yao = true
    WHERE drug_id = 89 AND effect = 'Réduit les gonflements et régénère les tissus (Yaoyao en traumatologie)';
UPDATE drug_effects SET effect = 'Mobilise le Sang, régularise les règles et arrête la douleur (en gynécologie)', is_yao_yao = true
    WHERE drug_id = 101 AND effect = 'Mobilise le Sang, régularise les règles et arrête la douleur (Yaoyao en gynécologie)';
UPDATE drug_effects SET effect = 'Clarifie la Chaleur et disperse le Feu (pour la couche du Qi)', is_yao_yao = true
    WHERE drug_id = 106 AND effect = 'Clarifie la Chaleur et disperse le Feu (yaoyao pour la couche du Qi)';
UPDATE drug_effects SET effect = 'Ouvre les orifices du nez (pour les sinusites sans douleurs, le nez bouché et les rhinites)', is_yao_yao = true
    WHERE drug_id = 162 AND effect = 'Ouvre les orifices du nez (yaoyao pour les sinusites sans douleurs, le nez bouché et les rhinites)';
UPDATE drug_effects SET effect = 'Purge les accumulations – crue (sheng)', is_yao_yao = true
    WHERE drug_id = 194 AND effect = 'Purge les accumulations (yaoyao) – crue (sheng)';
UPDATE drug_effects SET effect = 'Nourrit le Cœur et le Foie pour calmer l''Esprit', is_yao_yao = true
    WHERE drug_id = 209 AND effect = 'Nourrit le Cœur et le Foie pour calmer l''Esprit (Yaoyao)';
UPDATE drug_effects SET effect = 'Hypotenseur (pour l''hypertension par Yang du Foie qui monte)', is_yao_yao = true
    WHERE drug_id = 223 AND effect = 'Hypotenseur (yaoyao de l''hypertension par Yang du Foie qui monte)';
UPDATE drug_effects SET effect = 'Traite toutes les atteintes par le Vent (interne, externe, froid, chaleur, plénitude, vide, etc.)', is_yao_yao = true
    WHERE drug_id = 229 AND effect = 'Yaoyao de toutes atteintes par le Vent (interne, externe, froid, chaleur, plénitude, vide, etc.)';
UPDATE drug_effects SET effect = 'Traite les mucosités « entre la peau et les membranes »', is_yao_yao = true
    WHERE drug_id = 338 AND effect = 'Yaoyao des mucosités « entre la peau et les membranes »';
UPDATE drug_effects SET effect = 'Désobstrue les vaisseaux et collatéraux et arrête la douleur, notamment pour les douleurs, restrictions de mobilité et paresthésies dans les syndromes bi. En ingrédient unique, ou avec Chuan wu, Wu ling zhi, Wu yao etc. pour tous types de douleurs (traumatismes, céphalées, odontalgies, gastralgies etc.).', is_yao_yao = true
    WHERE drug_id = 398 AND effect = 'Désobstrue les vaisseaux et collatéraux et arrête la douleur. Yaoyao des douleurs, restrictions de mobilité et paresthésies dans les syndromes bi. En ingrédient unique, ou avec Chuan wu, Wu ling zhi, Wu yao etc. pour tous types de douleurs (traumatismes, céphalées, odontalgies, gastralgies etc.).';

-- Corrections drug_association_effects (7 lignes déjà marquées en texte libre)
UPDATE drug_association_effects SET effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang', is_yao_yao = true
    WHERE association_id = 435 AND effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)';
UPDATE drug_association_effects SET effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang', is_yao_yao = true
    WHERE association_id = 436 AND effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)';
UPDATE drug_association_effects SET effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang', is_yao_yao = true
    WHERE association_id = 437 AND effect = 'Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)';
UPDATE drug_association_effects SET effect = 'Associé à Quan xie pour éteindre le Vent et arrêter les tremblements et convulsions.', is_yao_yao = true
    WHERE association_id = 585 AND effect = 'Associé à Quan xie pour éteindre le Vent et arrêter les tremblements et convulsions (Yaoyao).';
UPDATE drug_association_effects SET effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse', is_yao_yao = true
    WHERE association_id = 1096 AND effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)';
UPDATE drug_association_effects SET effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse', is_yao_yao = true
    WHERE association_id = 1097 AND effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)';
UPDATE drug_association_effects SET effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse', is_yao_yao = true
    WHERE association_id = 1098 AND effect = 'Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)';

-- Les 6 drogues où le yao yao n'existait que dans additionalNotes

-- Ci ji li (10)
UPDATE drug_effects SET is_yao_yao = true
    WHERE drug_id = 10 AND effect = 'Chasse le Vent et éclaircit les yeux (préparé sauté, chao)';
UPDATE drugs SET additional_notes = 'Également appelé Bai ji li.'
    WHERE id = 10 AND additional_notes = 'Également appelé Bai ji li. L''effet ''Chasse le Vent et éclaircit les yeux'' est mentionné sous la désignation Yaoyao et s''applique à la forme préparée sautée (chao).';

-- Hai tong pi (163)
UPDATE drug_effects SET effect = 'Chasse le Vent et l''Humidité, désobstrue les canaux et collatéraux (pour les bi du membre inférieur et des lombaires)', is_yao_yao = true
    WHERE drug_id = 163 AND effect = 'Chasse le Vent et l''Humidité, désobstrue les canaux et collatéraux';
UPDATE drugs SET additional_notes = 'Peut être utilisé en application externe (décoction) pour traiter la gale, le lichen, l''urticaire, etc. En bain de bouche pour soulager les caries dentaires.'
    WHERE id = 163 AND additional_notes = 'Yaoyao des bi du membre inférieur et des lombaires. Peut être utilisé en application externe (décoction) pour traiter la gale, le lichen, l''urticaire, etc. En bain de bouche pour soulager les caries dentaires.';

-- Shan yao (172) : nouvel effet synthétique, insertion gardée par WHERE EXISTS
-- (le seed n'est pas chargé en profil test : sans cette garde, l'INSERT violerait
-- la contrainte de clé étrangère drug_effects.drug_id -> drugs.id)
INSERT INTO drug_effects (drug_id, effect, is_yao_yao)
    SELECT 172, 'Tonifie à la fois le Qi et le Yin', true
    WHERE EXISTS (SELECT 1 FROM drugs WHERE id = 172);
UPDATE drugs SET additional_notes = NULL
    WHERE id = 172 AND additional_notes = 'Yaoyao pour tonifier à la fois le Qi et le Yin.';

-- Cao guo (211) : nouvel effet synthétique, insertion gardée par WHERE EXISTS
INSERT INTO drug_effects (drug_id, effect, is_yao_yao)
    SELECT 211, 'Assèche l''Humidité, disperse le Froid, traite les mucosités et la malaria (parmi les ingrédients aromatiques qui transforment l''Humidité)', true
    WHERE EXISTS (SELECT 1 FROM drugs WHERE id = 211);
UPDATE drugs SET additional_notes = 'Résumé comparatif dans la catégorie : Cao guo assèche l''Humidité, disperse le Froid, traite les mucosités et la malaria.'
    WHERE id = 211 AND additional_notes = 'Résumé comparatif dans la catégorie : Cao guo assèche l''Humidité, disperse le Froid, traite les mucosités et la malaria. Yaoyao pour cette indication au sein des ingrédients aromatiques qui transforment l''Humidité.';

-- Ling zhi (367)
UPDATE drug_effects SET effect = 'Calme l''esprit et tonifie les vides (parmi les toniques pour les syndromes d''épuisement)', is_yao_yao = true
    WHERE drug_id = 367 AND effect = 'Calme l''esprit et tonifie les vides';
UPDATE drugs SET additional_notes = 'Nature décrite comme équilibrée (neutre), légèrement tiède selon certaines sources.'
    WHERE id = 367 AND additional_notes = 'Nature décrite comme équilibrée (neutre), légèrement tiède selon certaines sources. Ingrédient yaoyao des toniques pour les syndromes d''épuisement.';

-- Long gu (185)
UPDATE drug_effects SET effect = 'Calme l''Esprit par la lourdeur (notamment associé à Mu li)', is_yao_yao = true
    WHERE drug_id = 185 AND effect = 'Calme l''Esprit par la lourdeur';
UPDATE drugs SET additional_notes = 'Nature décrite comme équilibrée (neutre), légèrement froide selon certaines sources. La forme calcinée (duan Long gu) est utilisée pour l''effet astringent (consolidation du biao, resserre les orifices, aide à la cicatrisation des plaies et génération des chairs). Annexe : Long chi (龍齒) — Dents et défenses fossilisées de mammifères préhistoriques. Saveur : douce, astringente. Nature : fraîche. Tropisme : Cœur et Poumon. Mouvement : descendant, immergent. Posologie : 15 à 30g. Contre-indiqué en cas d''émissions nocturnes causées par la Chaleur, d''Humidité-Chaleur ou d''atteintes simples du biao. Doit subir une précuisson. Effet principal : calme le Cœur et apaise l''Esprit (folie furieuse, palpitations, insomnies, rêves abondants, épilepsie, convulsions infantiles). Plus performant que Long gu pour ancrer le Yang et calmer l''esprit, mais moins polyvalent.'
    WHERE id = 185 AND additional_notes = 'Nature décrite comme équilibrée (neutre), légèrement froide selon certaines sources. La forme calcinée (duan Long gu) est utilisée pour l''effet astringent (consolidation du biao, resserre les orifices, aide à la cicatrisation des plaies et génération des chairs). Yaoyao pour calmer l''esprit par la lourdeur, notamment associé à Mu li. Annexe : Long chi (龍齒) — Dents et défenses fossilisées de mammifères préhistoriques. Saveur : douce, astringente. Nature : fraîche. Tropisme : Cœur et Poumon. Mouvement : descendant, immergent. Posologie : 15 à 30g. Contre-indiqué en cas d''émissions nocturnes causées par la Chaleur, d''Humidité-Chaleur ou d''atteintes simples du biao. Doit subir une précuisson. Effet principal : calme le Cœur et apaise l''Esprit (folie furieuse, palpitations, insomnies, rêves abondants, épilepsie, convulsions infantiles). Plus performant que Long gu pour ancrer le Yang et calmer l''esprit, mais moins polyvalent.';
