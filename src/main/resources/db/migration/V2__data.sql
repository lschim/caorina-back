-- Data migration: final state extracted from backup-28062026.sql

-- drug_category
COPY drug_category (id, name, description) FROM stdin;
2	Ingrédients qui clarifient la Chaleur et dispersent le Feu	\N
6	Ingrédients qui clarifient la Chaleur toxique	\N
7	Ingrédients qui clarifient la Chaleur et rafraîchissent le Sang	\N
8	Ingrédients (piquants et frais) qui libèrent la surface du Vent-Chaleur	\N
9	Ingrédients qui apaisent le Foie et abaissent son Yang	\N
11	Ingrédients qui font s’écouler l’eau, réduisent les œdèmes et les gonflements	\N
14	Ingrédients qui chassent le Vent, l’Humidité et le Froid	\N
18	Ingrédients qui éteignent le Vent [interne] et calment les spasmes	\N
20	Ingrédients purgatifs drastiques qui éliminent l’eau	\N
21	Ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées	\N
24	Ingrédients qui clarifient la Chaleur et assèchent l’Humidité	\N
28	Ingrédients astringents qui resserrent le Poumon et les intestins	\N
29	Ingrédients qui font s’écouler les urines et qui débloquent les maladies lin	\N
32	Ingrédients qui clarifient la Chaleur Vide	\N
37	Ingrédients qui consolident la surface et arrêtent la transpiration	\N
40	Ingrédients qui chassent le Vent Humidité, et qui renforcent les tendons et les os	\N
43	Ingrédients qui chassent le Vent, l’Humidité et la Chaleur	\N
45	Ingrédients qui font s’écouler l’Humidité et qui traitent l’ictère	\N
1	Ingrédients émollients lubrifiants	\N
3	Ingrédients qui activent le sang et traitent les traumatismes	\N
4	Ingrédients qui réchauffent et transforment les mucosités Froid	\N
5	Ingrédients qui activent le sang et arrêtent les douleurs	\N
10	Ingrédients qui favorisent la digestion	\N
12	Ingrédients qui transforment la stase et arrêtent les saignements	\N
13	Ingrédients qui régularisent le Qi	\N
15	Ingrédients qui arrêtent la toux et calment la dyspnée	\N
16	Ingrédients astringents qui arrêtent les saignements	\N
17	Ingrédients qui tonifient le Yang	\N
19	Ingrédients qui rafraichissent le sang et arrêtent les saignements	\N
22	Ingrédients qui expulsent les parasites	\N
23	Ingrédients qui réchauffent l’interne	\N
25	Ingrédients aromatiques qui transforment l’Humidité	\N
26	Ingrédients qui tonifient le Qi	\N
27	Ingrédients qui tonifient le Yin	\N
30	Ingrédients piquants et tièdes qui libèrent la surface du Vent-Froid	\N
31	Ingrédients qui activent le sang et régularisent les règles	\N
33	Ingrédients qui clarifient et transforment les mucosités Chaleur	\N
34	Ingrédients qui tonifient le sang	\N
35	Ingrédients qui réchauffent les méridiens et arrêtent les saignements	\N
36	Ingrédients purgatifs	\N
38	Ingrédients qui ouvrent les orifices	\N
41	Ingrédients qui brisent le sang et qui réduisent les masses fixes	\N
42	Ingrédients lourds qui stabilisent et calment l’esprit	\N
44	Ingrédients qui nourrissent le Cœur et calment l’esprit	\N
\.

-- drugs
COPY drugs (id, chinese_name, latin_name, french_name, nature, dosage, number_of_stars, additional_notes, category_id, chinese_characters) FROM stdin;
6	Lou lu	Rhaponticum uniflorum (L.) DC. ou Echinops latifolius Tausch.	\N	COLD	3 à 12g	0	Deux espèces botaniques sont utilisées sous ce nom : Rhaponticum uniflorum (L.) DC. et Echinops latifolius Tausch.	6	漏蘆
10	Ci ji li	Tribulus terrestris L.	Tribule terrestre	WARM	6 à 10g	0	Également appelé Bai ji li. L'effet 'Chasse le Vent et éclaircit les yeux' est mentionné sous la désignation Yaoyao et s'applique à la forme préparée sautée (chao).	9	刺蒺藜(白蒺藜)
18	Bai guo	Ginkgo biloba L.	\N	NEUTRAL	5 à 10g	0	La nature est mentionnée comme équilibré (neutre) et toxique. La toxicité est une précaution d'emploi importante justifiant de ne pas utiliser sur le long terme.	15	白果
23	Xiao ji	Cirsium setosum (Willd.) MB. ou Cephanoplos setosum (Willd.) Kitarn.	\N	COOL	10 à 30g	0	\N	19	小薊
27	Shi jun zi	Quisqualis indica L.	Liane vermifuge	WARM	9 à 12g	0	\N	22	使君子
8	Ju hua	Chrysanthemum morifolium Ramat.	Fleur de chrysanthème	COOL	5 à 10g	8	Différentes variétés sont utilisées selon l'indication : Huang ju hua pour chasser le Vent-Chaleur, Bai ju hua pour clarifier le Foie et calmer le Yang du Foie, Ye ju hua pour clarifier la Chaleur et éliminer la toxicité.	8	菊花
24	Qian jin zi	Euphorbia lathyris L.	Euphorbe épurge	WARM	0,5 à 1g	1	La drogue est toxique. Appartient à la catégorie des ingrédients purgatifs drastiques qui éliminent l'eau.	20	千金子
31	Lu gen	Phragmites communis (L.) Trin.	Roseau commun	COLD	15 à 30g sec, 30 à 60g frais	6	Forme dérivée : Wei jing (葦莖), tige de roseau. Utilisé accessoirement pour les intoxications alimentaires.	2	蘆根
9	Zhi zi	Gardenia jasminoides Ellis.	Gardenia	COLD	3 à 10g	6	\N	2	梔子
32	Ku shen	Sophora flavescens Ait.	Sophora à fleurs jaunes	COLD	3 à 10g	4	Traite les atteintes dermatologiques et gynécologiques avec Humidité-Chaleur ; diurétique. Peut être utilisé en interne ou en externe pour les troubles gynécologiques et dermatologiques par Humidité-Chaleur.	24	苦參
7	Chi shao yao	Paeonia lactiflora Pall., P. veitchii Lynch	Racine de pivoine rouge	COLD	6 à 15g	8	\N	7	赤芍藥
20	Mu dan pi	Paeonia suffruticosa Andr.	Pivoine arbustive	COLD	6 à 12g	8	\N	7	牡丹皮
25	Bai xian pi	Dictamnus dasycarpus Turcz.	Fraxinelle	COLD	6 à 10g	6	\N	6	白鮮皮
16	Hai feng teng	Piper kadsura (Choisy) Ohwi.	Poivre grimpant	WARM	5 à 15g	4	\N	14	海風藤
12	Zhu ling	Polyporus umbellatus (Pers.) Fries	Polypore en ombelle	NEUTRAL	5 à 15 g	6	\N	11	豬苓
22	Gou teng	Uncaria rhynchophylla (Miq.) Jacks., U. macrophylla Wall., U. hirsuta Havil., U. sinensis (Oliv.) Havil., U. sessilifructus Roxb.	\N	COOL	10 à 15g	8	\N	18	鈎藤
29	Wu zhu yu	Evodia rutaecarpa (Juss.) Benth.	\N	HOT	1,5 à 6g	8	Légèrement toxique. En cas de surdosage ou d'empoisonnement : Di jin cao 24g, Yan hu suo 9g, Huang bai 9g, Qin pi 12g, Gan cao 15g, en décoction.	23	吳茱萸
28	Xiao hui xiang	Foeniculum vulgare Mill.	Graines de fenouil	WARM	3 à 9 g	6	\N	23	小茴香
14	Gan song	Nardostachys chinensis Batal. ou N. jatamansi DC.	Nard chinois	WARM	3 à 6g	3	\N	13	甘松
15	Mai ya	Hordeum vulgare L.	Orge commune	NEUTRAL	10 à 15g, jusqu'à 120g	6	\N	10	麥芽
17	Lai fu zi	Raphanus sativus L.	Graines de radis	NEUTRAL	6 à 10g	6	\N	10	萊菔子
11	Ji shi teng	Paederia scandens (Lour.) Merr.	Vigne de mouffette	COOL	15 à 60 g	4	Peut être utilisé en injection en traumatologie pour arrêter les douleurs.	10	鷄矢藤
13	Pu huang	Typha angustifolia L.	Massette à feuilles étroites	NEUTRAL	3 à 10 g.	7	Tropisme marqué à la prostate. Utilisé cru pour transformer la stase, et sauté carbonisé pour arrêter les saignements.	12	蒲黃
19	Ji mu	Loropetalum chinense (R. Br.) Oliv.	\N	NEUTRAL	15 à 30g	1	Les feuilles et les fleurs réduites en poudre peuvent être utilisées en application externe sur les blessures et brûlures.	16	檵木
5	Mo yao	Commiphora myrrha Engl.	Myrrhe	NEUTRAL	3 à 10g	6	\N	5	沒藥
3	Xue jie	Daemonorops draco Bl.	Encens « sang de dragon »	NEUTRAL	1 à 1,5g	2	\N	3	血竭
4	Zao jia	Gleditsia sinensis Lam.	Févier de Chine	WARM	1 à 1,5 g en poudre, 1,5 à 5g en décoction	4	Nature légèrement toxique. Annexe : Zao jiao ci (皂角刺) — Épines du févier de Chine. Saveur piquante, nature tiède. Posologie : 3 à 10g. Actions : perce et réduit les masses, abcès, ulcérations. Contre-indication : ne pas utiliser si un abcès purulent est déjà percé.	4	皂莢
21	Tu si zi	Cuscuta chinensis Lam.	Cuscute chinoise	NEUTRAL	10 à 20g	6	Nature décrite comme équilibrée (neutre) ou tiède selon les sources. Saveur décrite comme douce ou piquante selon les sources. Tropisme : Foie et Reins principalement, Rate selon certaines sources.	17	菟絲子
34	Yu bai fu	Typhonium giganteum Engl.	\N	WARM	3 à 6g	0	Toxique. Appartient à la catégorie des ingrédients qui réchauffent et transforment les mucosités Froid (Wen hua han tan yao 溫化寒痰藥).	4	禹白附 (白附子)
39	Mu xiang	Vladimiria souliei (Franch.) Ling	\N	WARM	3 à 10 g	0	Utiliser la forme non préparée pour davantage mobiliser le Qi ; utiliser la forme torréfiée (wei) ou sautée à sec (chao) pour adoucir son action sur le Qi et arrêter les diarrhées. Aussi connu sous le nom de Chuan mu xiang (川木香).	13	川木香
40	Ying su ke	Papaver somniferum L.	Pavot à opium	NEUTRAL	3 à 6g	0	Toxique. La saveur astringente est mentionnée en complément de la saveur acide.	28	罌粟殼
42	Chuan xiong	Ligusticum chuanxiong Hort.	Livèche de Chine	WARM	3 à 10 g	0	\N	5	川芎
56	Meng shi	\N	Chlorite de schiste, ou micaschiste	NEUTRAL	5 à 10 g	0	\N	33	礞石
65	Zao xin tu	\N	Argile brûlée	WARM	15 à 30 g	0	\N	35	灶心土
49	Hu sui	Coriandrum sativum L.	Coriandre	WARM	9 à 15g (sec), 30 à 60g (frais)	2	\N	30	胡荽
63	Chan tui	Cryptotympana pustulata Fabricius	Mue de cigale	COLD	3 à 10g	8	\N	8	蝉蜕
45	Huo ma ren	Cannabis sativa L.	Chanvre cultivé	NEUTRAL	10 à 30g	6	\N	1	火麻仁
54	Gan sui	Euphorbia kansui T. N. Liou ex T. P. Wang	Euphorbe de Chine	COLD	0.5 à 1g	1	Toxique. La première action (purge et élimination des accumulations d'eau) s'effectue avec la préparation au vinaigre (cu zhi). La deuxième action (réduction des gonflements et dispersion des nodosités) concerne une application externe en poudre fine, indiquée pour les abcès, furoncles et anthrax.	20	甘遂
61	Tian hua fen	Trichosanthes kirilowii Maxim., T. japonica Regel.	Trichosanthe	COLD	10 à 15g	6	Également connu sous le nom de Gua lou gen (瓜蔞根).	2	天花粉 (瓜蔞根)
57	Jue ming zi	Cassia obtusifolia L., C. tora L.	Graines de casse fétide	COOL	10 à 15 g	6	Accessoirement : antihypertenseur, hypolipidémique, anti-cholestérol.	2	決明子
44	Ya zhi cao	Commelina communis L.	Comméline commune	COLD	15 à 30g sec, 30 à 60g frais	3	\N	2	鴨趾草
43	Long dan cao	Gentiana scabra Bge, G. manshurica Kitag., G. triflora Pall., G. rigescens Franch.	Gentiane	COLD	3 à 6g	5	\N	24	龍膽草
52	Di gu pi	Lycium chinense Mill., L. barbarum L.	Lyciet chinois	COLD	6 à 15g	6	\N	32	地骨皮
60	Ma bo	Lasiosphaera fenzlii Reich., Calvatia gigantea (Batsch ex Pers.) Lloyd, C. lilacina (Mont. et Berk.) Lloyd	Vesse-de-loup géante	NEUTRAL	3 à 6g	4	\N	6	馬勃
33	Pei lan	Eupatorium fortunei Turcz., E. cannabinum L.	Eupatoire	NEUTRAL	5 à 10g	4	Contient des alcaloïdes pyrrolizidiniques à caractère toxique.	25	佩蘭
41	Yi yi ren	Coix lacryma jobi L. var. ma-yuen (Roman.) Stapf	Herbe à chapelets, Larmes de Job	COOL	10 à 30g	8	\N	11	薏苡仁
46	Bian xu	Polygonum aviculare L.	Renouée des oiseaux	COOL	10 à 15g	3	Contient de l'anthraquinone, considéré comme toxique.	29	萹蓄
35	Sheng tie luo	\N	Fer	COOL	30 à 60g	4	\N	9	生鐵落
58	Chi shi zhi	Halloysite silicatée (silicate d'aluminium tétrahydraté), Al4(Si4O10)(OH)8-4H2O	\N	WARM	10 à 20g	5	\N	28	赤石脂
62	Fu zi	Aconitum carmichaeli Debx.	Racine latérale de l'Aconit	HOT	3 à 15g	10	Nature toxique. En cas de surdosage ou d'empoisonnement : 120g de miel mélangé à un peu d'eau tiède, à boire doucement ; décoction de Lü dou à boire régulièrement en petites quantités ; décoction de Sheng jiang 15g, Gan cao 15g, Jin yin hua 18g.	23	附子
38	Suo luo zi	Aesculus chinensis Bge. ou Aesculus wilsonii Rehd.	Marronnier d'Inde	WARM	3 à 10g	4	\N	13	娑羅子
51	Ou jie	Nelumbo nucifera Gaertn.	Lotus sacré	NEUTRAL	10 à 15 g	6	Préparé carbonisé (chao tan) : devient légèrement tiède et plus astringent, indiqué pour les cadres de saignements par Froid-vide et les cadres chroniques. Non préparé (sheng) : légèrement frais, disperse également la stase, indiqué pour les cadres de saignements dus à la Chaleur et les cadres aigus.	16	藕節
50	Hong hua	Carthamus tinctorius L.	Carthame des teinturiers	WARM	3 à 9g	7	Annexe : Fan hong hua / Zang hong hua (番紅花 / 藏紅花) — Safran, Crocus sativus L. Nature : douce, légèrement froide, tropisme Cœur-Foie. Actions : active le sang et chasse la stase, désobstrue les méridiens, rafraîchit le sang et résout la toxicité. Indications : douleurs menstruelles du post-partum, traumatologie, induration douloureuse de l'épigastre, macules et papules suite à une maladie fébrile. Posologie : 1 à 1,5g. Grande prudence pendant la grossesse.	31	紅花
55	Yi mu cao	Leonurus heterophyllus Sweet	\N	COOL	10 à 30 g	6	\N	31	益母草
48	Liu ji nu	Artemisia anomala S. Moore	\N	WARM	3 à 10 g.	2	\N	3	劉寄奴
36	Bai zhu	Atractylodes macrocephala Koidz.	Atractylode	WARM	10 à 15g	10	\N	26	白朮
59	Long yan rou	Dimocarpus longan Lour.	Longane	WARM	10 à 15g, voire 30 à 60g	7	\N	34	龍眼肉
37	Shi hu	Dendrobium nobile Lindl., D. loddigesii Rolfe., D. fimbriatum Hook., D. chrysanthum Wall., D. candidum Wall.	Orchidée bambou	COOL	10 à 15g, jusqu'à 30g	6	\N	27	石斛
53	Gou qi zi	Lycium barbarum L.	Lyciet de barbarie	NEUTRAL	5 à 10g	8	\N	27	枸杞子
70	Bai hua she	Agkistrodon acutus (Guenther)	Vipère des cents pas	WARM	3 à 10g	0	Toxique. Également connu sous le nom de Qi she (蘄蛇).	14	白花蛇 (蘄蛇)
71	Huang yao zi	Dioscorea bulbifera L.	Hoffe	COLD	5 à 15 g	0	\N	33	黃藥子
76	Zi he che	\N	Placenta humain	WARM	1,5 à 3g par prise en poudre	0	\N	17	紫河車
84	Bai ji	Bletilla striata (Thunb.) Reichb. f.	Orchidée jacinthe	COLD	3 à 10 g.	0	\N	16	白芨
85	Wu yi	Ulmus macrocarpa Hance	Orme à gros fruit	WARM	3 à 10 g	0	\N	22	蕪荑
87	Tian zhu huang	Bambusa textilis McClure ou Schizostachyum chinense Rendle	Concrétion siliceuse de bambou	COLD	3 à 10 g	0	\N	33	天竺黃
90	Yi tang	\N	Maltose de riz gluant, de riz, de millet ou de maïs	WARM	15 à 20g ; délayer dans la décoction, ou utiliser pour préparer sirops ou pilules	0	\N	26	飴糖
92	Kun bu	Laminaria japonica Aresch. ou Ecklonia kurome Okam.	Algue konbu	COLD	6 à 12 g.	0	\N	33	昆布
79	Mang xiao	Sulfate de sodium décahydraté, Na2SO4-10H2O	\N	COLD	10 à 15g	6	\N	36	芒硝
66	Quan shen	Polygonum bistorta L.	Renouée bistorte	COOL	3 à 12g	4	Peut être utilisé en application externe (onguent ou bain) pour les abcès, tuméfactions, adénopathies, morsures venimeuses et hémorroïdes.	6	拳參
73	Chui pen cao	Sedum sarmentosum Bunge	Sedum	COOL	10 à 30g sec, 250g frais	4	\N	6	垂盆草
67	Bai hua she she cao	Oldenlandia diffusa (Willd.) Roxb.	Hédyote diffuse	COLD	15 à 60g	6	\N	6	白花蛇舌草
75	Song jie	Pinus tabulaeformis Carr., P. massoniana Lamb.	\N	WARM	10 à 15g	4	Peut être utilisé en ingrédient unique en macération alcoolique. Application externe possible sur les traumatismes, douleurs dentaires, etc.	14	松節
78	Lu lu tong	Liquidambar formosana Hance	Copalme de Taïwan	NEUTRAL	5 à 10g	6	Résumé DNMTC : Désobstrue les vaisseaux luo, diurétique, débloque les règles, favorise la lactation.	14	路路通
88	Dong gua pi	Benincasa hispida (Thunb.) Cogn.	Peau de courge cireuse	COOL	10 à 30g	4	Annexe : Dong gua ren / Dong gua zi (冬瓜仁/冬瓜子) — Douce, froide, tropisme au Poumon, Estomac, Gros intestin, Intestin grêle. 9 à 15g par jour. Actions : clarifie la Chaleur, transforme les mucosités, fait s'écouler le pus et réduit les abcès. Indiqué pour les leucorrhées et lin de graisse.	11	冬瓜皮
93	Ma huang gen	Ephedra sinica Stapf., E. intermedia Schrenk et C. A. Mey.	Éphèdre	NEUTRAL	3 à 9g	6	Peut être utilisé en application externe, réduit en poudre fine avec Mu li pour arrêter tout type de transpiration.	37	麻黃根
91	Chun pi	Ailanthus altissima (Mill.) Swingle	Ailante glanduleux	COLD	3 à 10 g	2	\N	21	椿皮
86	Rou gui	Cinnamomum cassia Presl	Cannelle de Chine	HOT	2 à 5 g	10	\N	23	肉桂
81	Ding xiang	Eugenia caryophyllata Thumb.	Clou de girofle	WARM	1,5 à 6g	4	\N	23	丁香
68	Dao ya	Oryza sativa L.	Riz asiatique germé	NEUTRAL	10 à 15g, jusqu'à 30g	4	\N	10	稻芽 (谷芽)
89	Ru xiang	Boswellia carterii Birdw.	Encens d'oliban	WARM	3 à 10 g.	6	\N	5	乳香
82	Wang bu liu xing	Vaccaria segetalis (Neck.) Garcke	\N	NEUTRAL	5 à 10 g	3	Tropisme à la prostate mentionné dans le cadre du traitement des dysuries.	31	王不留行
97	Tian nan xing	Arisaema erubescens (Wall.) Schott, ou A. heterophyllum Bl., ou A. amurense Maxim.	\N	WARM	3 à 10g	6	Toxique. Dan nan xing (膽南星) est la forme dérivée préparée avec la bile : nature fraîche, saveur amère et légèrement piquante, posologie 3 à 6g. Effets spécifiques au Dan nan xing : clarifie la Chaleur et transforme les mucosités ; calme le Vent interne et stabilise la frayeur. En cas de surdosage ou d'empoisonnement : se gargariser avec du jus de gingembre et 30 à 60 mL de vinaigre de cuisine, et boire 5 mL de jus de gingembre ; décoction de Sheng jiang 30g, Fang feng 60g, Gan cao 15g pendant plusieurs jours jusqu'à disparition des symptômes.	4	天南星 (膽南星)
96	Bai qian	Cynanchum stauntonii ou C. glaucescens	\N	WARM	3 à 10 g	4	\N	4	白前
80	Kuan dong hua	Tussilago farfara L.	Tussilage	WARM	5 à 10g	4	La drogue est signalée comme toxique en raison de la présence d'alcaloïdes pyrrolizidiniques.	15	款冬花
69	Yang jin hua	Datura metel L.	\N	WARM	0,3 à 0,6 g	1	Nature toxique. Ne doit pas être utilisé en décoction ; prise en poudre exclusivement.	15	洋金花
94	Shi chang pu	Acorus tatarinowii Schott.	\N	WARM	5 à 10g	9	Indications diverses : eczéma, furoncles, abcès, gale, douleurs traumatiques et obstructions douloureuses causées par le Vent-Humidité. Traite les mucosités sans forme qui obstruent les orifices, transforme l'humidité trouble.	38	石菖蒲
95	Huang qi	Astragalus membranaceus (Fisch.) Bge. Var. mongholicus (Bge.) Hsiao, A. m. (F.) Bge.	Astragale	WARM	15 à 30g, voire 60g	10	\N	26	黃芪
74	Gou ji	Cibotium barometz	Fougère arborescente	WARM	6 à 12g	6	\N	17	狗脊
98	Bu gu zhi	Psoralea corylifolia L.	Bakuchi	WARM	6 à 15g	8	\N	17	補骨脂
83	Yang qi shi	Actinolite asbestus	\N	WARM	3 à 6g	4	Formule chimique : Ca₂(Mg, Fe)₅Si₈O₂₂(OH)₂	17	陽起石
99	Hei zhi ma	Sesamum indicum L.	Sésame noir	NEUTRAL	10 à 30g	10	Résumé DNMTC : Tonifie le Jing, le sang, produit les liquides, débloque le transit.	27	黑芝麻
111	Hai fu shi	Costazia aculaeta ou Costazia costazii	Pierre ponce	COLD	10 à 15 g	0	\N	33	海浮石
121	Qian nian jian	Homalomena occulta (Lour.) Schott	\N	WARM	5 à 10g	0	\N	40	千年健
122	Chuan shan jia	Manis pentadactyla Linnaeus	Écailles de pangolin	COOL	3 à 10 g	0	Espèce protégée, emploi interdit. Mentionné dans le résumé de la catégorie 'Ingrédients qui brisent le sang et réduisent les masses fixes'.	41	穿山甲
125	Bing lang	Areca catechu L.	Noix d'arec	WARM	6 à 15 g	0	Pour le traitement du ténia, la posologie peut aller jusqu'à 120g. Applications cutanées possibles sur furoncles, ulcérations, parasitoses et dermatoses.	22	檳榔
127	Qi dai	\N	Cordon ombilical humain	WARM	1,5 à 3g par prise, en poudre	0	\N	17	臍帶
118	E bu shi cao	Centipeda minima (L.) A. Braun et Aschers.	Centipeda	WARM	3 à 9g	4	\N	30	鹅不食草
104	Yuan hua	Daphne genkwa Sieb. et Zucc.	Daphné	WARM	1.5 à 3g en décoction, 0,6g en poudre	1	Nature toxique. Pour l'usage externe : réduire en poudre fine et mélanger à de la graisse de porc, à appliquer directement sur les lésions (abcès, furoncles, teigne, etc.) ; associer éventuellement à Xiong huang. Était à une époque utilisée localement pour traiter les douleurs dentaires.	20	芫花
116	Shang lu	Phytolacca acinosa Roxb., P. americana L.	Phytolacca	COLD	5 à 10g	1	Nature toxique. Pour l'application externe, utiliser de préférence la racine fraîche réduite en pâte, mélangée à du sel.	20	商陸
106	Zhi mu	Anemarrhena asphodeloides Bge.	Anémarrhène à feuille d'asphodèle	COLD	6 à 12g	8	Peut être préparée au sel (yan zhi) pour renforcer l'action de nourrir le Yin et clarifier le Feu-Vide.	2	知母
126	Zi hua di ding	Viola yedoensis Makino	Violette	COLD	15 à 30g	5	\N	6	紫花地丁
129	Bai wei	Cynanchum atratum Bge., Cynanchum versicolor Bge.	Cynanchum	COLD	5 à 12g	4	\N	32	白薇
124	Cao wu	Aconitum carmichaeli Debx., A. Kusnezoffii Reichb.	Racine principale d'aconit	HOT	1,5 à 6g en décoction (forme préparée), 0,5 à 2g en poudre, pilule ou macération alcoolique	6	Nature très toxique (le plus toxique des aconits). En cas de surdosage ou d'empoisonnement : 120g de miel mélangé à un peu d'eau tiède à boire doucement ; décoction de Lü dou à boire régulièrement en petites quantités ; décoction de Sheng jiang 15g, Gan cao 15g, Jin yin hua 18g.	14	草烏
109	Cang zhu	Atractylodes lancea (Thunb.) DC., A. chinensis (DC.) Koidz	Atractylode	WARM	5 à 10g	10	\N	25	蒼朮
112	Yu mi xu	Zea mays L.	Barbe du maïs	NEUTRAL	15 à 60g	4	\N	11	玉米鬚
123	Di fu zi	Kochia scoparia (L.) Schrad	Kochie à balais	COLD	10 à 15g	4	\N	29	地膚子
113	Deng xin cao	Juncus effusus L.	Jonc épars	COOL	1 à 3 g	4	Peut être carbonisé, réduit en poudre et appliqué localement pour traiter la gorge gonflée et douloureuse ou les aphtes de la langue.	29	燈心草
130	Dong kui zi	Malva verticillata L.	Mauve crépue	COLD	10 à 15g	4	\N	29	冬葵子
107	Dai zhe shi	Haematitium	Hématite	COLD	10 à 30g en décoction, 1 à 3g en pilule ou en poudre	6	Peut être utilisé calciné (duan) pour rafraîchir le Sang et arrêter les saignements, ainsi que pour les terreurs nocturnes et les convulsions en pédiatrie. Contient des traces d'arsenic, à ne pas prescrire au long cours.	9	代赭石
115	Shan zhu yu	Cornus officinalis Sieb. Et Zucc.	Cornouiller officinal	WARM	5 à 10g ; 20 à 30g dans les cas d'urgence	10	\N	21	山茱萸
108	Gao liang jiang	Alpinia officinarum Hance	Petit galanga	HOT	3 à 9g	6	\N	23	高良姜
120	Zhi shi	Citrus sinensis Osbeck, C. aurantium L.	Orange amère non mûre	COOL	3 à 10g, 20 à 30g pour le mouvement ascendant	8	Zhi ke (Zhi qiao) 枳殼 : Fruit mûr. Amer, piquant, légèrement froid, tropisme Rate-Poumon-Gros Intestin, mobilise le Qi et élimine les masses, transforme les mucosités et dissout les accumulations. Son action est plus modérée que celle de Zhi shi.	13	枳實
114	Shi di	Diospyros kaki L. f.	Kaki	NEUTRAL	6 à 10g	5	\N	13	柿蒂
102	Xian he cao	Agrimonia pilosa Ledeb.	Aigremoine pileuse	NEUTRAL	10 à 15 g	6	Peut être utilisé en application externe (ingrédient unique) pour les abcès du sein, les hémorroïdes, les ulcérations gonflées et purulentes. En cas de trichomonase : 120 g en décoction en application locale.	16	仙鶴草
110	Bai bu	Stemona sessilifolia, ou S. japonica, ou S. tuberosa	\N	WARM	5 à 15 g	6	\N	15	百部
105	Pi pa ye	Eriobotrya japonica	Néflier du Japon	COOL	5 à 10 g	6	\N	15	枇杷葉
101	Dang gui	Angelica sinensis Diels.	Angélique chinoise	WARM	5 à 15g	10	Dang gui tou (當歸頭) : partie supérieure de la racine ; tropisme au haut du corps, arrête les saignements. Dang gui shen (當歸身) : corps de la racine sans radicelles ; tropisme au tronc, tonifie davantage le sang. Dang gui wei (當歸尾) : radicelles ; tropisme au bas du corps, brise le sang et les stases.	34	當歸
119	Yu zhu	Polygonatum odoratum (Mill.) Druce	Sceau de Salomon odorant	COOL	10 à 15g, jusqu'à 30g	6	Nature décrite comme légèrement froide, équilibrée selon les sources.	27	玉竹
132	Zhu sha	Cinnabaris (HgS)	Cinabre, sulfure de mercure	COLD	0,1 à 0,5g	0	Nature toxique : la toxicité du sulfure de mercure (HgS) sur le système nerveux central est objectivée et son utilisation est interdite.	42	硃砂
134	Qian hu	Peucedanum praeruptorum Dunn ou P. decursivum Maxim.	\N	COOL	5 à 10 g	0	\N	33	前胡
138	Jie geng	Platycodon grandiflorum (Jacq.) A. DC.	Campanule à grande fleurs	NEUTRAL	3 à 10 g	0	\N	33	桔梗
146	He shi	Carpesium abrotanoides L.	\N	NEUTRAL	5 à 15g	0	Légèrement toxique.	22	鶴虱
150	She xiang	Moschus berezovskii Flerov., M. Sifanicus Przewalski, M. moschiferus Linnaeus	Cerf porte-musc nain	WARM	0,03 à 0,1g	0	\N	38	麝香
152	Ban mao	Mylabris phalerata Pallas ou M. cichorii L.	Coléoptère chinois	HOT	0,03 à 0,06 g	0	Nature très toxique. Certaines applications sont externes (dispersion des nodosités, traitement des ulcérations).	41	斑蝥
158	Zi su zi	Perilla frutescens (L.) Britt.	Pérille de Nankin	WARM	5 à 10 g	0	\N	15	紫蘇子
159	Ce bai ye	Platyclatus orientalis (L.) Franco	Thuya de Chine	COOL	10 à 15g	0	\N	19	側柏葉
162	Xin yi	Magnolia liliflora Desr.	Magnolia	WARM	3 à 10g	6	\N	30	辛夷 (花)
131	Cong bai	Allium fistulosum L.	Ciboule	WARM	3 à 10 g	6	Peut être utilisé en application externe : écrasé avec un médium pour faire une pâte, en compresses chaudes, ou en décoction pour laver ou tremper.	30	蔥白
144	Fan xie ye	Cassia angustifolia Wal., C. acutifolia Delile	Séné	COLD	1.5 à 3g pour une action laxative modérée ; 5 à 10g pour une action purgative	4	Contient des anthraquinones considérées comme toxiques en usage prolongé. La cuisson prolongée réduit l'effet purgatif.	36	番瀉葉
133	Ge gen	Pueraria lobata (Willd.) Ohwi, P. thomsonii Benth.	Kudzu	COOL	10 à 20g	8	Ge hua 葛花 : bouton de fleur. Douce, équilibrée, tropisme à l'Estomac. Réveille la Rate et l'Estomac, résout la toxicité de l'alcool. Avec Mu xiang, Chen pi, Zhu ling, Bai dou kou etc., contre la gueule de bois. Avec Huang lian, Long dan cao, Yin chen hao etc. lorsque l'abus d'alcool provoque de l'Humidité Chaleur. Posologie : 3 à 12g.	8	葛根
145	Mi meng hua	Buddleja officinalis Maxim.	Arbre à papillons	COOL	6 à 10g	5	\N	2	密蒙花
149	Dan zhu ye	Lophatherum gracile Brongn.	\N	COLD	6 à 10g	6	\N	2	淡竹葉
142	Niu huang	Bos taurus domesticus Gmelin	Calcul biliaire de taureau	COOL	0.2 à 0.5g	1	\N	6	牛黃
230	Shan dou gen	Sophora tonkinensis Gapnep.	Sophora de Tonkin	COLD	3 à 10g	6	Nature toxique mentionnée. Peut être utilisée seule en bain de bouche pour les douleurs dentaires aiguës par feu de l'Estomac.	6	山豆根
157	Bai lian	Ampelopsis japonica (Thunb.) Makino.	Vigne vierge du Japon	COOL	5 à 10g	2	\N	6	白蘞
151	Che qian zi	Plantago asiatica L., P. depressa Willd.	Plantain asiatique	COLD	5 à 10g	6	Annexe : Che qian cao (車前草) — propriétés identiques. Actions supplémentaires : clarifie la Chaleur toxique, rafraîchit le sang et arrête les saignements. Indiqué pour les gonflements, ulcérations, dysenterie hémorragique, etc. Posologie : 10 à 15g.	29	車前子
135	Shan ci gu	Cremastra appendiculata (D. Don) Makino, Pleione bulbocodioides (Franch.) Rolfe, P. yunnanensis Rolfe	Cremastra ou Pléione	COLD	3 à 9 g	2	La drogue est décrite comme légèrement toxique.	6	山慈菇
154	Mu tong	Akebia quinata (Thunb.) Decne., Akebia trifoliata (Thunb.) Koidz., Akebia trifoliata (Thunb.) Koidz. var. australis (Diels) Rehd.	Akébie	\N	\N	6	\N	29	木通
136	Quan xie	Buthus martensii Karsch	Scorpion doré de Mandchourie	NEUTRAL	2 à 5g par jour, ou en poudre 0,6 à 1g par prise	5	Nature toxique mentionnée en plus de la nature équilibrée (NEUTRAL).	18	全蠍
147	Qian shi	Euryale ferox Salisb.	Nénuphar épineux	NEUTRAL	10 à 15g	4	\N	21	芡實
153	Bi bo	Piper longum L.	Poivre long	HOT	3 à 6g	2	\N	23	蓽茇
156	Jin ying zi	Rosa laevigata Michx.	Rosier des Cherokees	NEUTRAL	6 à 12g, 15 à 30g en ingrédient unique	4	\N	21	金櫻子
148	Xiang fu	Cyperus rotundus L.	Souchet rond	NEUTRAL	6 à 12g	10	Préparé au vinaigre (cu zhi) pour renforcer l'efficacité antalgique, notamment sur les douleurs par stagnation de Qi du Foie. Peut être utilisé en application externe (réduit en poudre mélangé à de l'alcool) pour les adénopathies et scrofules.	13	香附
161	Li zhi he	Litchi chinensis Sonn.	Noyau de litchi	WARM	5 à 15g	4	\N	13	荔枝核
160	Jiu xiang chong	Aspongopus chinensis Dallas	Punaise de Chine	WARM	3 à 10g	2	Peut être pris réduit en poudre avec de l'alcool en ingrédient unique pour traiter l'impuissance par vide de Yang des Reins.	13	九香蟲
137	Pao jiang	\N	Gingembre torréfié	WARM	3 à 6 g	8	\N	35	炮姜
143	Chuan bei mu	Fritillaria cirrhosa D. Don, ou F. unibracteata Hsiao et K. C., ou F. przewalskii Maxim. ou F. delavayi Franch.	\N	COOL	3 à 10 g	8	\N	33	川貝母
139	Dang shen	Codonopsis pilosula (Franch.) Nannf., C. p. N. var. modesta (Nannf.) L. T. Shen, C. tangshen Oliv.	Ginseng du pauvre	NEUTRAL	10 à 30g	10	\N	26	黨參
141	Hu lu ba	Trigonella foenum-graecum L.	Fenugrec	WARM	3 à 10g	2	\N	17	葫蘆巴
164	Da ji	Cirsium japonicum DC.	\N	COOL	10 à 15g, jusqu'à 60g	0	\N	19	大薊
166	Xiong dan	Ursus arctos Linnaeus, Selenarctos thibetanus Cuvier	Vésicule biliaire d'ours brun	COLD	0,25 à 0,5g	0	\N	6	熊膽
167	Xi yang shen	Panax quinquefolium L.	Ginseng américain	COLD	3 à 6g	0	\N	26	西洋參
169	Wa leng zi	Arca subcrenata, Arca granosa, ou Arca inflata	Coquilles de bivalves	NEUTRAL	10 à 15 g	0	La forme calcinée (duan) est utilisée pour traiter l'acidité gastrique et calmer les douleurs.	33	瓦楞子
177	Si ji qing	Ilex chinensis Sims.	Houx de Chine	COLD	15 à 30g	0	\N	6	四季青
179	Fei zi	Torreya grandis Fort.	\N	NEUTRAL	15 à 30g	0	\N	22	榧子
186	Bai jiang cao	Patrinia scabiosaefolia Fisch. Ex Link., P. villosa Juss.	\N	COOL	6 à 15g	0	\N	6	敗醬草
189	Dan shen	Salvia miltiorrhiza Bge.	Sauge	COOL	5 à 15 g	0	\N	31	丹參
190	Yu jin	Curcuma longa L., ou C. wenyujin Y.H.Chen et C. Ling, ou C. kwangsiensis S. Lee et C. F. Liang, ou C. phaeocaulis Val.	Racine tubéreuse de curcuma	COLD	5 à 12 g	0	\N	5	郁金
165	Ma huang	Ephedra sinica Stapf., E. intermedia Schrenk et C. A. Mey., E. equisetina Bge.	Éphèdre	WARM	3 à 10 g.	6	\N	30	麻黃
171	Sheng ma	Cimifuga heracleifolia Kom., C. dahurica (Turcz.) Maxim., C. foetida L.	Actée	COOL	3 à 10g	6	\N	8	升麻
183	Mu zei	Equisetum hiemale L.	Prêle d'hiver	NEUTRAL	3 à 10g	2	\N	8	木贼
194	Da huang	Rheum palmatum L., R. tanguticum Maxim. ex Balf, R. officinale Baill.	Rhubarbe palmée	COLD	3 à 12g	6	Contient de l'anthraquinone (toxique). Pour conserver l'effet purgatif, ne doit pas cuire longtemps. Différentes formes de préparation : crue (sheng) pour purger les accumulations, préparée à l'alcool (jiu) pour mobiliser le Sang, préparée carbonisée (chao tan) pour arrêter les saignements.	36	大黃
170	Ba dou	Croton tiglium L.	Croton cathartique	HOT	0.1 à 0.3g	1	Nature très toxique. Catégorie : ingrédients purgatifs drastiques qui éliminent l'eau.	20	巴豆
182	Shi gao	Gypsum fibrosum	Gypse	COLD	15 à 60g	6	Forme calcinée (duan Shi gao) : utilisée en application externe pour aider à la guérison des plaies, brûlures et eczéma, arrêter les saignements et assécher les suintements. Formule chimique : CaSO4.2H2O.	2	石膏
193	Lian qiao	Forsythia suspensa (Thunb.) Vahl.	Forsythia	COOL	6 à 15g	8	Le tropisme à la Vésicule Biliaire est mentionné 'en fonction des sources'.	6	連翹
192	Tu fu ling	Smilax glabra Roxb.	Salsepareille	NEUTRAL	15 à 60g	5	\N	6	土茯苓
184	Qin jiao	Gentiana macrophylla Pall., G. straminea Maxim., G. crassicaulis Duthie ex Burk., G. dahurica Fisch.	Gentiane à grandes feuilles	COOL	5 à 12g	6	La nature est décrite comme équilibrée ou légèrement froide selon les sources.	43	秦艽
191	Sang zhi	Morus alba L.	Mûrier blanc	NEUTRAL	15 à 30g	8	\N	43	桑枝
163	Hai tong pi	Erythrina variegata L. var. orientalis (L.) Merr., E. arborescens Roxb.	Peuplier kanak	NEUTRAL	6 à 15 g	6	Yaoyao des bi du membre inférieur et des lombaires. Peut être utilisé en application externe (décoction) pour traiter la gale, le lichen, l'urticaire, etc. En bain de bouche pour soulager les caries dentaires.	43	海桐皮
180	Mu li	Ostrea gigas Thunb., O. talienwhanensis Crosse, O. rivularis Gould	Coquille d'huître creuse ou plate	COOL	10 à 30g	10	La forme calcinée (Duan mu li) est utilisée pour révéler l'astringence, consolider l'échappement des Liquides et neutraliser l'acidité gastrique. Association pour l'acidité gastrique : Hai piao xiao (15g), Mu li (15g), Zhe bei mu (12g), 9g de poudre fine 3 fois par jour.	9	牡蠣
168	Tian ma	Gastrodia elata Bl.	Gastrodia	NEUTRAL	3 à 10g par jour, ou en poudre 1 à 1,5g par prise	8	\N	18	天麻
187	Wu gong	Scolopendra subspinipes mutilans L. Koch.	Scolopendre	WARM	1 à 3g par jour, ou en poudre 0,6 à 1g par prise	5	Nature toxique. En poudre fine, avec des feuilles de thé, en application externe sur les adénopathies et scrofules.	18	蜈蚣
175	Hua jiao	Zanthoxylum bungeanum Maxim., ou Z. schinifolium Sieb. et Zucc.	Poivre du Sichuan	HOT	3 à 6g	2	\N	23	花椒
176	Shan zha	Crataegus pinnatifida Bge., ou C. p. Bge. var. major N. E. Br., ou C. cuneata Sieb. et Zucc.	Aubépine chinoise	WARM	10 à 15g	8	\N	10	山楂
178	Hua rui shi	Ophicalcite	\N	NEUTRAL	10 à 15g	3	\N	12	花蕊石
195	Wu ling zhi	Trogopterus xanthipes Milne-Edwards	Excréments d'écureuil volant	WARM	3 à 10g	8	\N	5	五靈脂
174	Sang bai pi	Morus alba L.	Écorce de mûrier blanc	COLD	5 à 15 g	9	\N	15	桑白皮
172	Shan yao	Dioscorea opposita Thunb.	Igname de Chine	NEUTRAL	5 à 30g, jusqu'à 60 à 250g dans les grandes formules	8	Yaoyao pour tonifier à la fois le Qi et le Yin.	26	山藥
181	Huang jing	Polygonatum sibiricum Red., P. kingianum Coll. et Hemsl., P. cyrtonema Hua	Sceau de Salomon de Sibérie	NEUTRAL	10 à 30g	6	\N	27	黃精
207	Nan gua zi	Cucurbita moschata (Duch.) Poiret	Pépins de courge musquée	NEUTRAL	30 à 60 g, voire 120 g	0	\N	22	南瓜子
209	Suan zao ren	Ziziphus jujuba Mill. Var. spinosa (Binge) Hu ex H. F. Chou	Jujube	NEUTRAL	10 à 20g, ou 1,5 à 3g en poudre	0	Faire sauter avant cuisson permet de rendre l'ingrédient plus friable et d'augmenter l'extraction des principes actifs.	44	酸棗仁
211	Cao guo	Amomum tsao-ko Crevost et Lemaire	Cardamome tsaoko	WARM	3 à 6g	0	Résumé comparatif dans la catégorie : Cao guo assèche l'Humidité, disperse le Froid, traite les mucosités et la malaria. Yaoyao pour cette indication au sein des ingrédients aromatiques qui transforment l'Humidité.	25	草果
216	Yin yang huo	Epimedium brevicornum Maxim., E. sagittatum (Sieb. et Zucc.) Maxim., E. pubescens Maxim., E. wushanense T. S. Ying, E. koreanum Nakai.	\N	WARM	3 à 10g	0	\N	17	淫羊藿
218	Shui niu jiao	Bubalus bubalis Linnaeus	Corne de buffle d'eau	COLD	6 à 60g usuellement, jusqu'à 120g	0	Nécessite 5 à 10 fois la dose de Xi jiao pour obtenir le même résultat.	7	水牛角
221	Qing dai	Isatis indigota Fort., Baphicacanthus cusia (Nees) Bremek, Polygonum tinctorium Ait.	Pastel ou renouée des teinturiers	COLD	1.5 à 3g, de préférence en pilule ou en poudre	0	Contient de l'anthraquinone (toxique).	6	青黛
228	Hai ge ke	Meretrix meretrix Linnaeus ou Cyclina sinensis Gmelin	Coquille de palourde	COLD	10 à 15 g	0	Également appelé Ge ke ou Ge qiao. La forme calcinée (duan) est utilisée pour traiter l'acidité gastrique et calmer les douleurs.	33	海蛤殼
265	Zhu ma gen	Boehmeria nivea (L.) Gaud.	Ortie de Chine	COLD	10 à 30 g	0	\N	19	苧麻根
197	Jing da ji	Euphorbia pekinensis Rupr.	Euphorbe de Pékin	COLD	1.5 à 3g	1	Drogue toxique. Préparée au vinaigre (cu zhi) pour l'action interne. Peut être utilisée en application externe en poudre fine pour les abcès, furoncles, anthrax, adénopathies et goitres.	20	京大戟
217	Cheng liu	Tamarix chinensis Lour.	Tamarix	NEUTRAL	3 à 10g	2	Dans le résumé de catégorie, Cheng liu est noté comme faisant sortir les exanthèmes et chassant le vent-humidité.	30	柽柳
206	Qin pi	Fraxinus rhynchophylla Hance, F. chinensis Roxb., F. chinensis var. acuminata Lingelsh., F. stylosa Lingelsh.	Écorce de frêne	COLD	3 à 12g	4	\N	24	秦皮
203	Sheng di huang	Rehmannia glutinosa Libosch.	Rehmannia glutineuse	COLD	10 à 30g	10	\N	7	生地黃
225	Xuan shen	Scrophularia ningpoensis Hemsl.	Scrofulaire	COLD	10 à 15g	6	\N	7	玄參
200	She gan	Belamcanda chinensis	Fleur léopard	COLD	6 à 10g	6	\N	6	射乾
198	Ma chi xian	Portulaca oleracea L.	Pourpier	COLD	15 à 30g sec, 30 à 60g frais	2	\N	6	馬齒莧
213	Bai tou weng	Pulsatilla chinensis (Bge.) Regel	Pulsatille chinoise	COLD	6 à 15g	6	\N	6	白頭翁
219	Ya dan zi	Brucea javanica (L.) Merr.	Brucea de Java	COLD	10 à 30 graines (2g)	2	Nature légèrement toxique. En ingrédient unique pour les dysenteries sanguinolentes : un grain par année d'âge.	6	鴉膽子
226	Chou wu tong	Clerodendron trichotomum Thunb.	Arbre du clergé	NEUTRAL	5 à 15g en décoction. 3g en poudre, 2 à 3 fois par jour.	4	La nature est décrite comme équilibrée ou fraîche selon les sources.	43	臭梧桐
222	Ze xie	Alisma orientalis (sam.) Juzep.	Plantain d'eau oriental	COLD	5 à 12 g	6	\N	11	澤瀉
214	Jin qian cao	Lysimachia christinae Hance	Lysimaque	COOL	15 à 60g	6	Peut être utilisé en ingrédient unique jusqu'à 250g pour les lin de Chaleur ou de pierre. Application externe possible sur les ulcérations, abcès, chancres et morsures venimeuses.	45	金錢草
223	Shi jue ming	Haliotis diversicolor Reeve, H. discus hannai Ino, H. ovina Gmelin, H. ruber (Leach), H. asinina Linnaeus, H. laevigata (Donovan)	Coquille d'abalone	COLD	15 à 30g	8	\N	9	石決明
224	Luo bu ma	Apocynum venetum L.	\N	COOL	3 à 15g	1	Distinction selon la partie utilisée : les feuilles (Luo bu ma ye) ancrent le Yang du Foie ; les racines (Luo bu ma gen) favorisent la diurèse.	9	羅布麻
201	Yu yu liang	Limonite, FeO-(OH)	Limonite	NEUTRAL	10 à 20g	2	La nature est décrite comme équilibrée (légèrement froide). Appartient à la catégorie des ingrédients astringents qui resserrent le Poumon et les intestins.	28	禹餘糧
215	Gan jiang	Zingiber officinale Rosc.	Gingembre sec	HOT	3 à 9g	10	\N	23	乾薑
208	Ling xiao hua	Campsis grandiflora (Thunb.) K. Schum.	Bignone à grande fleurs	COOL	3 à 10g	1	Résumé de catégorie : brise les stases, rafraîchit le sang, élimine le vent (dermatologique, intestinal).	31	凌霄花
212	San leng	Sparganium stoloniferum Buch. Ham.	\N	NEUTRAL	3 à 10 g	6	\N	41	三棱
227	Zhe bei mu	Fritillaria thunbergii Miq.	\N	COLD	3 à 10 g	6	\N	33	浙貝母
199	Zhu li	Bambusa tuldoides Munro, ou Sinocalamus beechayanus, ou Phullostachys nigra	Jus de bambou	COLD	15 à 30 mL	5	\N	33	竹瀝
204	Bai zi ren	Platycladus orientalis (L.) Franco	Thuya de Chine	NEUTRAL	10 à 20g	8	\N	44	柏子仁
202	Sha yuan zi	Astragalus complanatus R. Br.	Astragale	WARM	10 à 20g	5	\N	17	沙苑子
205	Xu duan	Dipsacus aspercides C. Y. Cheng et T. M. Ai	\N	WARM	9 à 15g	4	\N	17	續斷
210	He shou wu	Polygonum multiflorum Thunb.	Renouée à fleurs multiples	WARM	10 à 30g	8	La drogue non préparée est amère, de nature neutre (équilibrée), avec un tropisme incluant le Gros Intestin. La forme préparée (zhi) est douce et astringente, de nature légèrement tiède, et agit principalement sur le Foie et les Reins.	34	何首烏
241	Xi jiao	Rhinoceros unicornis L.	Corne de rhinocéros	COLD	1.5 à 6g	0	\N	7	犀角
252	Gua lou	Trichosanthes kirilowii Maxim. ou T. rosthornii Harms	\N	COLD	6 à 12 g (pi), 10 à 15 g (ren), 10 à 20 g	0	Différentes parties utilisées : Gua lou pi 瓜蔞皮 (écorce du fruit, amer, agit davantage sur le Qi et la Chaleur) ; Gua lou ren 瓜蔞仁 (pépins du fruit, doux, agit davantage sur les liquides) ; Quan gua lou 全瓜蔞 ou Gua lou shi 瓜蔞實 (l'ensemble des deux). Tian hua fen est issu de la même plante.	33	瓜蔞
259	Ba ji tian	Morinda officinalis How.	Mûrier indien	WARM	10 à 15g	0	\N	17	巴戟天
262	He cao ya	Agrimonia pilosa Ledeb.	Aigremoine pileuse	COOL	30 à 45g	0	Voie interne : ténia. Voie externe : trichonomases.	22	鶴草芽
263	Ku lian pi	Melia azedarach L., ou M. toosendan Sieb. et Zucc.	Lilas de Perse	COLD	6 à 9g	0	La drogue est décrite comme toxique. Usage possible par voie interne et voie externe.	22	苦楝皮
243	Xiang ru	Elsholtzia splendens Nakai ex F. Mackawa	Elsholtzia	WARM	3 à 10g	4	\N	30	香薷
256	Chai hu	Bupleurum chinense DC., B. scorzonerifolium Wild.	Buplèvre	COOL	3 à 10 g (théoriquement)	10	Préparé sauté à l'alcool (jiu chao) pour potentialiser l'effet ascendant.	8	柴胡
248	Huang qin	Scutellaria baicalensis Georgi	Scutellaire du Baikal	COLD	3 à 10g	10	Préparations spécifiques : préparé à l'alcool (jiu zhi) pour orienter l'action vers le Foyer supérieur ; préparé carbonisé (chao tan) pour arrêter les saignements ; préparé sauté (chao) pour calmer le fœtus.	24	黃芩
254	Ai di cha	Ardisia japonica	\N	NEUTRAL	10 à 30 g	2	\N	15	矮地茶
242	Chuan xin lian	Andrographis paniculata (Burm. F.) Nees.	Chirette verte	COLD	6 à 15g	4	\N	6	穿心蓮
251	Yu xing cao	Houttuynia cordata Thunb.	Herbe à poivre	COOL	15 à 30g	4	\N	6	魚腥草
260	Chuan wu	Aconitum carmichaeli Debx.	Racine principale d'aconit	HOT	3 à 9g en décoction, 1 à 2g en poudre, pilule ou macération alcoolique	6	Très toxique. En cas de surdosage ou d'empoisonnement : 120g de miel mélangé à un peu d'eau tiède, à boire doucement ; décoction de Lü dou à boire régulièrement en petites quantités ; décoction de Sheng jiang 15g, Gan cao 15g, Jin yin hua 18g.	14	川烏
238	Mu gua	Chaenomeles speciosa (Sweet) Nakai.	Cognassier du Japon	WARM	5 à 10g	7	\N	14	木瓜
255	Hu lu	Lagenaria siceraria (Molina) Standl. var. depressa (Ser.) Hara	Calebasse	NEUTRAL	15 à 30g	3	\N	11	葫蘆殼
239	Qu mai	Dianthus superbus L., D. chinensis L.	Œillet superbe	COLD	10 à 15g	3	\N	29	瞿麥
247	Tong cao	Tetrapanax papyriferus (Hook.) K. Koch	Aralie à papier de Chine	COOL	2 à 5 g	5	\N	29	通草
264	Yin chen hao	Artemisia capillaris Thunb., Artemisia scoparia Waldst. et Kit.	Armoise capillaire, armoise à balais	COOL	10 à 30g	6	\N	45	茵陳蒿
246	Di long	Pheretima aspergillum (Perrier), Allolobophora caliginosa (Savigny) trapezoides (Ant. Duges)	Vers de terre	COLD	5 à 15g, ou en poudre 1 à 2g par prise. Si chassé pour être consommé frais : 10 à 20g par jour.	6	\N	18	地龍
231	Wu wei zi	Schisandra chinensis (Turcz.) Baill., S. sphenanthera Rehd. et Wils.	Baies aux cinq saveurs	WARM	3 à 6g, 1 à 3g en poudre	10	\N	28	五味子
253	Wu bei zi	Melaphis chinensis (Bell) Baker	Galle du puceron parasite du sumac	COLD	3 à 9g, 1 à 1,5g en poudre ou en pilule	6	La saveur astringente n'est pas listée dans les enums standard mais est mentionnée en complément de la saveur acide. Application externe possible pour les plaies et ulcérations.	28	五倍子
250	He zi	Terminalia chebula Retz., T. c. R. var. tomentella Kurt.	Myrobalan	NEUTRAL	3 à 10g	6	La préparation torréfiée (wei) est indiquée pour l'action de resserrement des intestins. La saveur astringente est mentionnée en plus des saveurs amère et acide.	28	訶子
249	Shi liu pi	Punica granatum L.	Peau de grenade	WARM	3 à 10g	2	La forme carbonisée (chao tan) est utilisée pour arrêter les métrorragies et les saignements.	28	石榴皮
240	Sang piao xiao	Tenodera sinensis Saussure, Statilia maculata (Thunberg), Hierodula patellifera (Serville)	Oothèque de mante	NEUTRAL	6 à 10g	6	\N	21	桑螵蛸
236	Hu jiao	Piper nigrum L.	Poivre noir	HOT	2 à 4g	2	\N	23	胡椒
234	Qing pi	Citrus reticulata Blanco ou Citrus reticulata Tangerina	Peau de mandarine non mûre	WARM	3 à 10g	6	\N	13	青皮
244	Xia ku cao	Prunella vulgaris L.	Brunelle commune	COLD	10 à 15g	8	\N	2	夏枯草
261	He huan pi	Albizia julibrissin Durazz.	Acacia de Constantinople	NEUTRAL	10 à 15g	8	Annexe : He huan hua 合歡花 — Douce, équilibrée, tropisme Estomac-Foie, 5 à 10g. Libère la surpression, calme l'esprit, régularise le Qi et harmonise l'Estomac. Plus puissant que He huan pi pour calmer l'esprit et dénouer la stagnation. Harmonise le foyer médian et relâche la poitrine.	44	合歡皮
233	Gan cao	Glycyrrhiza uralensis Fisch., G. inflata Bat., G. glabra L.	Réglisse	NEUTRAL	3 à 10g	10	Deux formes principales : préparé au miel (mi zhi 蜜炙, alias Zhi gan cao) pour tonifier le centre et favoriser le Qi ; non préparé (Sheng gan cao) pour clarifier la Chaleur toxique.	26	甘草
257	Gu sui bu	Drynaria fortunei (Kunze) J. Sm.	Fougère panier	WARM	10 à 15 g	7	\N	17	骨碎補
258	Yi zhi ren	Alpinia oxyphylla Miq.	\N	WARM	3 à 6g	7	\N	17	益智仁
235	Dong chong xia cao	Cordyceps sinensis (Berk.) Sacc.	Champignon chenille	NEUTRAL	5 à 10g en décoction, jusqu'à 30g en diététique (avec une viande mijotée)	6	\N	17	冬蟲夏草
232	E jiao	Equus asinus L.	Colle de peau d'âne	NEUTRAL	5 à 10g	8	Selon certaines sources, le tropisme inclut également le Cœur. Indications supplémentaires : dysurie avec œdèmes (Zhu ling tang, avec Zhu ling et Hua shi) ; diarrhée pendant la grossesse avec douleur abdominale (avec Huang lian, Shi liu pi et Dang gui).	34	阿膠
245	Bai he	Lilium brownii F. E. Brown var. viridulum Baker, L. pumilum DC., L. lancifolium Thunb.	Lys	COLD	10 à 30g	6	\N	27	百合
267	Xiang yuan	Citrus medica L. ou C. wilsonii Tanaka	Cédrat	WARM	3 à 10g	0	\N	13	香櫞
269	Jiang xiang	Dalbergia odorifera T. Chen	Palissandre de Chine	WARM	3 à 6g en décoction, 1 à 2g en poudre	0	\N	12	降香
271	Tian xian teng	Aristolochia debilis Sieb. et Zucc., ou A. contorta Bge.	\N	WARM	3 à 10g	0	Plante toxique contenant de l'acide aristolochique.	13	天仙藤
282	Huai hua	Sophora japonica L.	\N	COLD	10 à 15g	0	\N	19	槐花
288	Hai zao	Sargassum pallidum, ou S. fusiforme	\N	COLD	10 à 15 g	0	\N	33	海藻
290	Mao zhao cao	Ranunculus ternatus Thunb.	\N	WARM	9 à 15g	0	Application externe possible sur morsures, blessures infectées, caries dentaires, etc. Utilisable en application interne et externe.	4	貓爪草
295	Di yu	Sanguisorba officinalis L.	Grande pimprenelle	COOL	10 à 15g	0	\N	19	地榆
296	Meng chong	Tabanus bivittatus Matsumura	Taon	COLD	1 à 1,5 g en décoction, 0,3 g en poudre	0	Nature légèrement toxique.	41	蠓蟲
293	Lu hui	Aloe ferrox Miller, Aloe barbadensis Miller	Aloès du Cap	COLD	1 à 2g	2	Contient de l'anthraquinone (toxique). Espèce protégée par la Convention CITES. Clarifie le feu du Foie ; antiparasitaire.	36	蘆薈
284	Jin yin hua	Lonicera japonica Thund., L. hypoglauca Miq., L. confusa DC., L. dasystyla Rehd.	Chèvrefeuille du Japon	COLD	10 à 15g	8	Annexe : Ren dong teng 忍冬籐 — Propriétés identiques à Jin yin hua. Spécificité : désobstrue les méridiens et ramifications, plus particulièrement dans les syndromes Bi par Vent-Chaleur avec articulations gonflées, rouges, douloureuses, avec difficultés à les mouvoir. Posologie : 15 à 30g.	6	金銀花
292	Pu gong ying	Taraxacum mongolicum Hand.-Mazz., T. sinicum Kitag.	Pissenlit	COLD	10 à 30g	5	\N	6	蒲公英
294	Ban bian lian	Lobelia chinensis Lour.	Lobélie asiatique	COLD	10 à 15g sec, 30 à 60g frais	4	\N	6	半邊蓮
266	Qing hao	Artemisia annua L.	Armoise annuelle	COLD	6 à 12g ; on peut aussi utiliser le jus de la plante fraîche	8	\N	32	青蒿
275	Hu huang lian	Picrorhiza scrophulariiflora Pennell	Picrorhize	COLD	3 à 10g	2	Peut être utilisé en application locale sur les hémorroïdes.	32	胡黃蓮
276	Du huo	Angelica pubescens Maxim. F. biserrata Shan et Yuan	Angélique pubescente	WARM	3 à 10g	8	\N	14	獨活
277	Cao dou kou	Alpinia katsumadai Hayata.	\N	WARM	3 à 6 g	5	\N	25	草豆蔻
270	Chi xiao dou	Vigna angularis (Willd.) Ohwi & Ohashi	Haricots Azukis	NEUTRAL	10 à 30g	5	Dans le résumé de la catégorie : Chi xiao dou est indiqué pour les œdèmes, traite l'ictère par Humidité-Chaleur, draine le pus.	11	赤小豆
279	Hai jin sha	Lygodium japonicum (Thunb.) Sw.	Spores de fougère grimpante japonaise	COLD	6 à 12g ; envelopper dans une étamine pour la décoction	8	\N	29	海金沙
268	Dai mao	Eretmochelys imbricata L.	Carapace de tortue imbriquée	COLD	3 à 6g, en poudre ou en pilule	1	\N	18	玳瑁
280	Tan xiang	Santalum album L.	Bois de santal	WARM	2 à 5 g.	4	\N	13	檀香
300	Fo shou	Citrus medica L. var. sarcodactylis Swingle	Cédrat « main de Bouddha »	WARM	3 à 10g	7	\N	13	佛手
297	Qing mu xiang	Aristolochia debilis Sieb. et Zucc.	\N	COLD	3 à 10g	1	Drogue de la famille des aristoloches, contenant de l'acide aristolochique. Usage externe principalement recommandé (en poudre sur furoncles et abcès purulents, application externe pour les parasites). En cas de morsure de serpent, usage voie externe et interne. Classée comme désuète et à usage externe uniquement dans le tableau récapitulatif de la catégorie.	13	青木香
289	Ge shan xiao	Cynanchum auriculatum Royle ex Wight	\N	NEUTRAL	5 à 10 g	2	Pour favoriser la lactation, à faire mijoter dans un bouillon de viande.	10	隔山消
291	A wei	Ferula sinkiangensis K. M. Shen	\N	WARM	1 à 1,5g	2	\N	10	阿魏
278	San qi	Panax notoginseng (Burk.) F. H. Chen	\N	WARM	3 à 10 g.	8	Vasodilatateur, bradycardisant. Utilisé en application externe pour arrêter les saignements. Présent dans la formule Yun nan bai yao et Zheng gu shui.	12	三七
286	Xia tian wu	Corydalis decumbens (Thunb.) Pres.	\N	WARM	5 à 15 g	5	\N	5	夏天無
283	Feng xiang zhi	Liquidambar formosana Hance	Résine de copalme de Taïwan	NEUTRAL	1,5 à 3g	3	Application externe possible sur les blessures, gonflements infectieux, adénopathies, furoncles, douleurs dentaires. Rafraîchit le sang et arrête les saignements, traite la toxicité et régénère les tissus ; peut être utilisé en application externe ou prise per os.	5	楓香脂
281	Tu bie chong	Eupolyphaga sinensis Walk. ou Steleophaga plancyi (Bol.)	Cafard sans ailes	COLD	3 à 10g	4	Légèrement toxique.	3	土鱉蟲
285	Zi ran tong	Pyrite (FeS2)	Pyrite, disulfure de fer	NEUTRAL	10 à 15 g	5	\N	3	自然銅
299	Yuan zhi	Polygala sibirica L., P. tenuifolia Willd.	Racine de polygale	WARM	5 à 15g	8	Différentes formes de préparation : préparé (zhi) pour apaiser le Cœur, non préparé pour expulser les Mucosités et ouvrir les Orifices, préparé au miel (mi zhi) pour transformer les Mucosités du Poumon. Peut être utilisé en ingrédient unique, par voie interne ou externe, pour les mastites, abcès, phlegmons et sinusites.	44	遠志
287	Su he xiang	Liquidambar orientalis Mill.	Copalme d'orient	WARM	0,3 à 1g	6	\N	38	蘇合香
274	Shu di huang	Rehmannia glutinosa Libosch.	Rehmannia préparée	WARM	10 à 30g	10	\N	34	熟地黃
273	Bie jia	Trionyx sinensis Wiegmann	Carapace de tortue à carapace molle de Chine	COLD	10 à 30g	10	La préparation au vinaigre (cu zhi) est utilisée pour l'action de ramollissement des indurations et dispersion des nodules.	27	鱉甲
303	Ma dou ling	Aristolochia contorta, ou A. debilis	\N	COLD	3 à 10 g	0	Toxique ; contient des acides aristolochiques. Appartient à la famille des aristoloches (ARISTOLOCHE). Mentionné dans le résumé de catégorie : clarifie la Chaleur (Poumon et intestins), traite la toux, la dyspnée, les hémorroïdes.	15	馬兜鈴
306	Lei wan	Omphalia lapidescens Schroet.	\N	COLD	6 à 18g	0	Légèrement toxique. Catégorie : Ingrédients qui expulsent les parasites (Qu chong yao 驅蟲藥).	22	雷丸
307	Xun gu feng	Aristolochia mollissima Hance	Aristoloche	NEUTRAL	10 à 15g	0	\N	14	尋骨風
312	Pang da hai	Scaphium affine, Sterculia lychnophora Hance.	\N	COLD	2 à 4 fruits en infusion, 3 à 6g en décoction	0	\N	33	胖大海
320	Bing pian	Dryobalanops aromatica gaertn.	Bornéol de synthèse	COOL	0,01 à 0,3g	0	Bornéol de synthèse, à partir de résine de kapur. Ne pas faire bouillir (à ne pas décocter). Usage externe possible : céphalées, douleurs dentaires ou oculaires, aphtes, gorge gonflée et douloureuse, brûlures, ulcérations, hémorroïdes.	38	冰片
321	Shui zhi	Whitmania pigra Whitman, ou W. acranulata Whitman, ou Hirudo nipponica Whitman	Sangsue	NEUTRAL	1,5 à 3g en décoction, 0,3 à 0,5g en poudre	0	Légèrement toxique.	41	水蛭
327	Da xue teng	Sargentodoxa cuneata (Oliv.) Rehd. Et Wils.	Sargentodoxe	NEUTRAL	10 à 15g, parfois jusqu'à 30g	0	\N	6	大血藤 (紅藤)
329	Huang gou shen	Canis familiaris L.	\N	WARM	1,5 à 3g	0	Non commercialisé (pénis de chien).	17	黃狗腎
330	Yan hu suo	Corydalis yanhusuo W.T. Wang	\N	WARM	3 à 10g	0	\N	5	延胡索
335	Nuo dao gen xu	Oryza sativa L. var. glutinosa Matsum.	Racines de riz glutineux	COOL	15 à 30g	0	\N	37	糯稻根須
318	Niu bang zi	Arctium lappa L.	Grande bardane	COLD	3 à 10 g	6	\N	8	牛蒡子
315	Dan dou chi	Glycine max.	Gros soja noir	COOL	10 à 15g	4	La nature varie selon la préparation : fraîche (avec Qing hao, Sang ye) ou légèrement tiède (avec Ma huang, Zi su ye).	8	淡豆豉
314	Han shui shi	CaSO4-2H2O ou CaCO3	Gypse rouge ou Calcite	COLD	10 à 15g	3	Usage externe : en application locale avec de la bile de porc pour les dermites inflammatoires de type érysipèle. Peut être calciné et réduit en poudre pour application sur les brûlures.	2	寒水石
325	Chong lou	Paris polyphylla, Paris polyphylla Sm. Var. yunnanensis (Franch). Hand.-Mzt., P. p. Sm. Var. chinensis (Franch). Hara	\N	COLD	5 à 10g	3	Nature légèrement toxique. Peut être utilisé en application externe ou prise per os selon l'indication.	6	重樓 (蚤休)
326	Sang ji sheng	Taxillus chinensis (D.C.) Danser, ou Viscum coloratum (Komar) Nakai	\N	NEUTRAL	10 à 15g	8	Autres actions mentionnées : avec Sang bai pi, Zi su geng, Da fu pi etc. pour l'œdème de la grossesse ; en ingrédient unique, pour favoriser la lactation ; effet hypotenseur.	40	桑寄生
319	Hu gu	Panthera tigris L.	Os de tigre	WARM	3 à 6g	1	Ingrédient d'origine animale protégée (tigre). Son usage est interdit et expose à de lourdes sanctions pénales.	40	虎骨
317	Zhen zhu	Pteria martensii (Dunker), Hyriopsis cumingii (Lea), Cristaria plicata (Leach), Anodonta woodiana (Lea)	Perles	COLD	0,3 à 1g, en poudre ou en pilule	6	\N	18	珍珠
322	Sha ren	Amomum villosum Lour., A. longiligulare T. L. Wu, A. villosum Lour. Var. Xanthioides T. L. Wu et Senjen	Cardamome médicinale	WARM	3 à 10 g	10	\N	25	砂仁
334	Wu yao	Lindera aggregata (Sims) Kosterm.	\N	WARM	3 à 10g	6	\N	13	烏藥
328	Fu xiao mai	Triticum aestivum L.	Froment	COOL	15 à 30g	8	Annexe : Xiao mai (小麥) — Doux, légèrement froid, tropisme au Cœur, 30 à 60g. Nourrit le Qi du Cœur, traite la dysphorie de type vide. Dans Gan mai da zao tang, avec Gan cao, Da zao.	37	浮小麥
336	Rou dou kou	Myristica fragrans Houtt.	Noix de muscade	WARM	3 à 10g, 0,5 à 1g en poudre ou pilule	6	Toxique : respecter strictement les doses.	28	肉豆蔻
313	Chuan lian zi	Melia toosendan Sieb. et Zucc.	\N	COLD	3 à 10g	6	Légèrement toxique. En cas de surdosage ou d'empoisonnement : décoction avec un peu de sucre blanc et de réglisse. Peut être préparé sauté (chao) pour réduire sa nature froide, ou préparé au vinaigre (cu zhi) pour mobiliser le Qi et arrêter les douleurs. En usage externe : réduit en poudre puis mélangé à un corps gras pour faire un onguent (traitement de la teigne).	13	川楝子
305	Xie bai	Allium macrostemon Bge. ou A. chinense G. Don	Bulbe d'oignon de Chine	WARM	5 à 10g	6	\N	13	薤白
310	Da fu pi	Areca catechu L.	Écorce de noix d'arec	WARM	5 à 10g	5	\N	13	大腹皮
308	Ji nei jin	\N	Paroi interne du gésier de poulet	NEUTRAL	3 à 10g	2	\N	10	鷄内金
309	Ma qian zi	Strychnos pierriana A. W. Hill, ou S. nux-vomica L.	\N	WARM	0,3 à 0,6 g	1	Très toxique. Contient de la strychnine.	3	馬錢子
302	E zhu	Curcuma wenyujin Y.H.Chen et C. Ling, ou C. kwangsiensis S. Lee et C. F. Liang, ou C. phaeocaulis Val.	Rhizome de curcuma	WARM	3 à 15 g	6	\N	41	莪朮
338	Bai jie zi	Sinapis alba L., ou Brassica juncea (L.) Czern. et Coss.	Grains de moutarde	WARM	3 à 10 g	8	\N	4	白芥子
331	Xuan fu hua	Inula japonica Thunb. ou Inula britannica L.	Inule	WARM	3 à 10 g	5	\N	4	旋覆花
333	Zi wan	Aster tataricus L. f.	Aster de Tartarie	WARM	5 à 10 g	4	\N	15	紫菀
311	Luo han guo	Momordica grosvenori Swingle	Fruit du moine	COOL	10 à 15 g	1	\N	15	羅漢果
324	Ci shi	Magnetitum, Fe3O4	Magnétite	COLD	15 à 30g en décoction, ou 1 à 3g par prise en pilule ou en poudre	6	\N	42	磁石
304	Xiao mai	Triticum aestivum L.	Froment	COOL	15 à 30g, jusqu'à 60g	6	\N	44	小麥
337	Ren shen	Panax ginseng C.A. Mey.	Ginseng	WARM	5 à 10g, voire jusqu'à 30g, ou en poudre 1 à 2g par prise	10	\N	26	人參
316	Bai shao	Paeonia lactiflora Pall.	Pivoine de Chine	COOL	5 à 10g	10	\N	34	白芍藥
340	Zhu ru	Bambusa tuldoides Munro, ou Sinocalamus beechayanus, ou Phullostachys nigra	Chair de bambou	COOL	5 à 10 g.	0	\N	33	竹茹
341	Ge jie	Gekko gecko Linnaeus.	Gecko des habitations	NEUTRAL	3 à 7g par jour, ou en poudre 1 à 2g par prise	0	\N	17	蛤蚧
348	Guan mu tong	Aristolochia manshuriensis Kom.	Aristoloche de Mandchourie	\N	\N	0	\N	29	關木通
357	Yang ti	Rumex japonicus Houtt.	\N	COLD	10 à 15 g	0	\N	19	羊蹄
362	Bai mao gen	Imperata cylindrica (L.) Beauv. Var. major (Nees) C. E. Hubb	Paillotte	COLD	15 à 30g	0	\N	19	白茅根
367	Ling zhi	Ganoderma japonicum (Fr.) Lloyd., G. lucidum (Leyss. Ex Fr.) Karst.	Ganoderme luisant (Reishi)	NEUTRAL	3 à 15g en décoction, 1,5 à 3g en poudre	0	Nature décrite comme équilibrée (neutre), légèrement tiède selon certaines sources. Ingrédient yaoyao des toniques pour les syndromes d'épuisement.	26	靈芝
375	Chuan mu xiang	Vladimiria souliei (Franch.) Ling	\N	\N	\N	0	Variété de Mu xiang. Se prescrit de la même façon.	13	川木香
372	Bai zhi	Angelica dahurica (Fisch. Ex Hoffm.) Benth. Et Hook. f.	Angélique dahurica	WARM	3 à 10g	6	\N	30	白芷
351	Gao ben	Ligusticum sinense Oliv., L. jeholense Nakai. et Kitag.	Livèche chinoise	WARM	2 à 10g	6	Différence avec Qiang huo : pénètre au vertex.	30	藁本
346	Cang'er zi	Xanthium sibiricum Patr. et Widd.	Xanthium	WARM	3 à 10 g	6	Toxique (légère toxicité mentionnée). Utilisé notamment pour assécher les sécrétions purulentes des fosses nasales. Peut être utilisé en ingrédient unique pour traiter les maladies bi.	30	苍耳子
361	Yu li ren	Prunus humilis Bunge, P. japonica Thunb., P. pedunculata Maxim.	Cerisier chinois / cerisier de Corée	NEUTRAL	5 à 12g	4	\N	1	郁李仁
353	Gu jing cao	Eriocaulon buergerianum Koern.	\N	NEUTRAL	6 à 15g	3	\N	2	谷精草
347	Qing xiang zi	Celosia argentea L.	Célosie	COOL	3 à 15g	3	\N	2	青葙子
370	Da qing ye	Isatis tinctoria L., I. indigodica Fort.	Pastel des teinturiers	COLD	10 à 15g	4	\N	6	大青葉
356	Ban lan gen	Isatis indigodica Fort.	Pastel des teinturiers	COLD	10 à 15g	4	\N	6	板藍根
373	Di jin cao	Euphorbia humifusa Willd.	Euphorbe couchée	NEUTRAL	15 à 30g sec, 30 à 60g frais	2	\N	6	地錦草
117	Lü dou	Phaseolus radiatus L.	Haricot Mungo	COLD	15 à 30g, voire 80g	10	Réduit la toxicité des ingrédients violents ; traite la canicule.	6	綠豆
343	Hua shi	Talc, Mg3Si4O10(OH)2	Talc	COLD	10 à 15g	4	\N	29	滑石
349	Yin chai hu	Stellaria dichotoma L. var. lanceolata Bge.	Stellaire	COOL	3 à 10g	4	\N	32	銀柴胡
358	Bi xie	Dioscorea hypoglauca Palib., D. tokoro Mak., D. gracillima Miq., D. collettii Hook. f.	\N	NEUTRAL	10 à 15g	6	\N	29	萆薢
371	Chuan mu tong	Clematis armandii Franch., C. montana Buch.-Ham.	Clématite	COLD	3 à 6g	6	On privilégie aujourd'hui l'emploi de Chuan mu tong par rapport à Guan mu tong et Mu tong en raison de leur néphrotoxicité.	29	川木通
365	Ling yang jiao	Saiga tatarica Linnaeus	Antilope Saïga	COLD	1 à 3g par jour, ou en poudre 0,3 à 0,5g par prise	6	\N	18	羚羊角
369	Bi cheng qie	Piper cubeba L.	Poivre de Java	WARM	2 à 5g	2	Catégorie : Ingrédients qui réchauffent l'interne (Wen li yao 溫里藥). Résumé DNMTC : Mobilise le Qi (pathologies Shan, froid-humidité de la Vessie).	23	蓽澄茄
374	Mei gui hua	Rosa rugosa Thunb.	Boutons de fleur du rosier rugueux	WARM	3 à 6g	6	\N	13	玫瑰花
345	Dao dou	Canavalia gladiata (Jacq.) DC.	Haricot sabre	WARM	3 à 10g	2	\N	13	刀豆
352	Shen qu	\N	Préparation fermentée à base de blé	WARM	6 à 15g	6	Préparation fermentée contenant au moins Xing ren, Chi xiao dou, Qing hao, Cang er. Permet une meilleure tolérance des ingrédients minéraux dans les formules.	10	神曲
363	Zi zhu	Callicarpa formosana Rolfe	\N	COOL	10 à 15 g	3	Usage externe possible sur les brûlures, piqûres et morsures, et les abcès purulents.	16	紫珠
339	Xue yu tan	\N	Cheveux préparés et carbonisés	NEUTRAL	6 à 10 g	1	\N	16	血余炭
355	Ai ye	Artemisia argyi Levl. et Vant.	Armoise de Chine	WARM	3 à 10 g	8	\N	35	艾葉
103	Niu xi	Cyathula officinalis Kuan	\N	NEUTRAL	6 à 15 g	7	La fiche présente deux variantes principales : Chuan niu xi (川牛膝, Cyathula officinalis) et Huai niu xi, avec des indications partiellement distinctes selon la variante (mention Chuan ou Huai entre parenthèses dans les effets). La nature 'équilibré' correspond à neutre (NEUTRAL).	31	川牛膝
360	Yue ji hua	Rosa chinensis Jacq.	Rosier de Chine	WARM	3 à 6g	3	\N	31	月季花
359	Su mu	Caesalpinia sappan L.	\N	NEUTRAL	3 à 10g	5	\N	3	蘇木
366	Ye jiao teng	Polygonum multiflorum Thunb.	Renouée à fleurs multiples	NEUTRAL	15 à 30g	8	Également appelé Shou wu teng (首烏藤). Peut être utilisé en application externe pour les lésions cutanées prurigineuses et les hémorroïdes.	44	夜交藤
354	Tai zi shen	Pseudostellaria heterophylla (Miq.) Pax ex Pax et Hoffm.	Ginseng prince héritier	NEUTRAL	10 à 30g	10	\N	26	太子參
368	Feng mi	Apis cerana Fabricius, ou A. mellifera Linnaeus	Miel d'abeille	NEUTRAL	15 à 30g, délayer dans la décoction ou utiliser pour préparer sirops, pilules, onguents	6	Sert à la préparation de certaines autres drogues. Application externe sur les brûlures, ulcérations, plaies qui cicatrisent mal.	26	蜂蜜
344	Du zhong	Eucommia ulmoides Oliv.	Arbre à gomme	WARM	3 à 10g	8	\N	17	杜仲
350	Bei sha shen	Glehnia littoralis Fr. Schmidt ex Miq	Glehnia	COOL	10 à 15g	6	\N	27	北沙參
323	(Bai) dou kou	Amomum kravanh Pierre ex Gagnep., A. compactum Soland ex Maton	Cardamome	WARM	3 à 6 g	0	\N	\N	(白)豆蔻
379	Fan hong hua	Crocus sativus L.	Safran	COLD	1 à 1,5g	0	Aussi appelé Zang hong hua (藏紅花). Indications : douleurs menstruelles du post-partum, traumatologie, induration douloureuse de l'épigastre, macules et papules suite à une maladie fébrile. Fait partie de la catégorie des ingrédients qui activent le sang et régularisent les règles (Huo xue tiao jing yao 活血調經藥). Présenté en annexe.	31	番紅花
382	Tian xing ren	\N	Amande douce d'abricot	NEUTRAL	5 à 10g	0	Forme annexe (Tian xing ren / 甜杏仁). Action plus modérée pour humidifier le Poumon et arrêter la toux ; action plus forte pour lubrifier les intestins. Essentiellement employée dans des cadres de toux chronique avec vide du Poumon ou constipation avec blessure des liquides organiques.	15	甜杏仁
385	He huan hua	\N	\N	NEUTRAL	5 à 10g	0	Annexe de la catégorie 'Ingrédients qui nourrissent le Cœur et calment l'esprit Yang xin an shen yao'. Tropisme mentionné comme 'E-F' (Estomac - Foie) dans la fiche.	44	合歡花
393	Zao jiao ci	\N	Épines du févier de Chine	WARM	3 à 10g	0	Annexe de la catégorie : Ingrédients qui réchauffent et transforment les mucosités Froid (Wen hua han tan yao 溫化寒痰藥).	4	皂角刺
395	Fang ji	Stephania tetrandra S. Moore.	\N	COLD	5 à 10g	8	Ne pas confondre avec Guang fang ji 廣防己 (Aristolochia fangchi), aristoloche néphrotoxique. Les saveurs (amère, piquante) et le tropisme (Vessie, Reins, Rate, Poumon) varient en fonction des sources.	43	(漢) 防己
1	Song zi ren	Pinus koraiensis Sieb. et Zucc.	Pignons de pin	WARM	5 à 10g	4	\N	1	松子仁
2	Zhu ye	Phyllostachys nigra (Lodd.) Munro var. henonis (Mitf.) Stapf ex Rendle, ou Pleioblastus amarus (Keng) Keng f.	Bambou noir	COLD	6 à 15g séché, 15 à 30g frais	6	\N	2	竹葉
394	Long chi	\N	Dents et défenses fossilisées de mammifères préhistoriques	COOL	15 à 30g	6	Long chi est plus performant que Long gu pour ancrer le Yang et calmer l'esprit, mais moins polyvalent. Appartient à la catégorie des ingrédients lourds qui stabilisent et calment l'esprit (Zhong zhen an shen yao 重鎮安神藥). Présenté en annexe de la catégorie.	42	龍齒
377	Dong gua ren	\N	\N	COLD	9 à 15g par jour	5	Aussi connu sous le nom Dong gua zi (冬瓜子). Appartient à la catégorie des ingrédients qui font s'écouler l'eau, réduisent les œdèmes et les gonflements. Utilisé dans Wei jing tang (avec Lu gen, Tao ren, Yi yi ren) et dans Da huang mu dan tang (avec Da huang, Mu dan pi). Utilisé avec Huang bai, Bi xie etc. pour les leucorrhées et lin de graisse.	11	冬瓜仁/冬瓜子
389	Che qian cao	\N	\N	\N	10 à 15g	6	Annexe de Che qian zi. Propriétés identiques à Che qian zi. Indications : gonflements, ulcérations, dysenterie hémorragique, etc.	29	車前草
188	Bai jiang can	Bombyx mori L., Beauveria bassiana (Bals.) Vaillant	Bombyx du mûrier	NEUTRAL	3 à 10g par jour, ou en poudre 1 à 1,5g par prise	5	\N	18	白僵蠶
380	Lian xu	\N	\N	NEUTRAL	1,5 à 5g	2	Cette drogue est présentée en annexe dans la catégorie des ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées. Saveur astringente mentionnée en plus de douce.	21	蓮須
378	Lian zi xin	\N	\N	COLD	1,5 à 3g	4	Annexe de la catégorie des ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées. Nature légèrement froide.	21	蓮子心
387	He ye	\N	\N	NEUTRAL	3 à 10g	6	Annexe de la catégorie : Ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées.	21	荷葉
383	He geng	\N	\N	NEUTRAL	10 à 15g, jusqu'à 60g	4	He geng est une forme annexe (tige de lotus). Tropisme : Estomac et Poumon (E- F-P mentionnés dans la fiche). Appartient à la catégorie des ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées.	21	荷梗
384	Wu zei gu	Sepiella maindroni de Rochebrune, Sepia esculenta Hoyle	Os de seiche	WARM	6 à 12g	6	La saveur astringente est parfois classée à part de la saveur salée. Appartient à la catégorie des ingrédients qui consolident le Jing, retiennent les urines et arrêtent les leucorrhées.	21	烏賊骨/海螵蛸
364	Zong lü tan	Trachycarpus fortunei H. Wendl.	Charbon de palmier de Chine	NEUTRAL	3 à 10 g	3	\N	16	棕櫚炭
399	Xu chang qing	Cynanchum paniculatum (Bge.) Kitag.	\N	WARM	3 à 10 g	0	Ne doit pas cuire longtemps.	\N	徐长卿
400	Can sha	Bombyx mori L.	Excréments du bombyx du mûrier	WARM	5 à 15 g	0	\N	\N	蠶沙
401	Shen jin cao	Lycopodium japonicum Thunb.	Lycopode japonais	WARM	10 à 15 g	0	\N	\N	伸筋草
376	Da zao	Ziziphus jujuba Mill. var. inermis	Jujube	WARM	3 à 10 fruits, soit 10 à 30g ; enlever le noyau en cas d'utilisation en pilule	10	\N	26	大棗 / 紅棗
173	Bai bian dou	Dolichos lablab L.	Pois antaque	WARM	10 à 30g	6	La préparation influe sur les actions : sauté (chao) pour renforcer la Rate ; non préparé pour clarifier la canicule et transformer l'Humidité. La toxicité des glycosides cyanogènes est présente dans la forme crue.	26	(白) 扁豆
342	Hu tao ren	Juglans regia L.	Noyer commun	WARM	10 à 30g	6	Utilisé avec la peau pour ancrer le Qi du Poumon aux Reins ; utilisé sans la peau pour humidifier les Intestins et libérer les selles.	17	胡桃仁/核桃仁
391	Han lian cao	Eclipta prostrata L.	Éclipte prostrée	COLD	10 à 15g	6	\N	27	旱蓮草/墨旱蓮
392	Nü zhen zi	Ligustrum lucidum Ait.	Troène de Chine	COOL	10 à 20g	7	\N	27	女貞子
390	Gui ban	Chinemys reevesii (Gray)	Plastron de tortue	COLD	15 à 40g	10	Aussi connu sous le nom Gui jia (龜甲). Le plastron de tortue peut être désigné par les deux termes Gui ban et Gui jia.	27	龜板/龜甲
47	Gui zhi	Cinnamomum cassia Presl.	Cannelier de Chine	WARM	3 à 10 g	10	Certaines actions sont associées à des formes de préparation spécifiques : grillé jaune pour réchauffer et libérer les méridiens et les Vaisseaux ; préparé au miel pour réchauffer le Yang et éliminer l'eau ou les stagnations de Mucosités.	30	桂枝
140	Zi su ye	Perilla frutescens (L.) Britt.	Pérille de Nankin	WARM	3 à 10 g	6	Zi su geng 紫蘇梗 : il s'agit de la tige de la plante et non de la feuille. Piquante, douce, légèrement tiède, tropisme Rate-Estomac-Poumon, régularise le Qi et libère la surpression, arrête les douleurs et calme le fœtus. On le préfèrera à Zi su ye pour traiter les stagnations alimentaires, la sensation de plénitude et d'induration à l'épigastre, les douleurs épigastriques et abdominales et l'agitation du fœtus.	30	紫苏叶
237	Sheng jiang	Zingiber officinale Rosc.	Gingembre frais	WARM	3 à 10 g	8	Sheng jiang pi 生薑皮 (peau du gingembre) : piquante, fraîche, tropisme à la Rate, transforme les liquides et évacue l'eau par voie diurétique ; 3 à 10 g. Sheng jiang zhi 生薑汁 (jus de gingembre) : piquant, tiède, tropisme Rate-Poumon-Estomac, annule la toxicité, brise le sang, régularise le centre, élimine le froid et les mucosités, harmonise l'estomac, chasse le Vent-Humidité.	30	生姜
229	Fang feng	Saposhnikovia divaricata (Turez.) Schischk.	Saposhnikovia	WARM	3 à 10 g	6	La forme carbonisée (chao tan) est utilisée comme hémostatique.	30	防风
301	Qiang huo	Notopterygium incisum Ting ex H. T. Chang., N. forbesii Boiss.	Notopterygium	WARM	3 à 10g	6	\N	30	羌活
332	Xi xin	Asarum heterothropoides Fr. Schmidt var. mandshuricum (Maxim.) Kitag., A. sieboldii Miq. Var. seoulense Nakai, A. sieboldii Miq.	Asaret	WARM	1 à 3 g	6	Nature toxique : contient de l'acide aristolochique, néphrotoxique, mutagène et cancérigène.	30	细辛
396	Jing jie	Schizonepeta tenuifolia Briq.	\N	WARM	3 à 10 g	6	\N	30	荊芥
220	Bo he	Mentha haplocalyx briq.	Menthe chinoise	COOL	3 à 6g	8	Les feuilles sont utilisées pour libérer la surface et disperser le Vent-Chaleur. Les tiges sont utilisées à dose réduite (2 à 3g) pour détendre le Foie et dénouer sa surpression.	8	薄荷
298	Sang ye	Morus alba L.	Feuille de mûrier blanc	COLD	5 à 10g	8	Peut être préparée au miel (mi zhi) pour clarifier la Chaleur du Poumon et humidifier la Sécheresse. Peut être utilisée en application externe pour rincer l'œil.	8	桑叶
72	Fu ping	Spirodela polyrrhiza	Spirodèle à plusieurs racines	COLD	3 à 10g	4	\N	8	浮萍
397	Man jing zi	Vitex rotundifolia L. ou V. trifolia L.	Gattilier à feuilles rondes ou gattilier trifolié	COOL	6 à 12 g	6	\N	8	蔓荆子
77	Qian niu zi	Pharbitis nil (L.) Choisy, Pharbitis purpurea (L.) Voigt	Liseron / Ipomée fleur bleue ou pourpre	COLD	3 à 9 g en décoction, 1 à 3 g en pilule ou poudre	1	Nature toxique. Appartient à la catégorie des ingrédients purgatifs drastiques qui éliminent l'eau.	20	牽牛子
128	Huang lian	Coptis chinensis Franch., C. deltoidea C. Y. Cheng et Hsiao, C. teeta Wall.	Coptide chinois	COLD	2 à 10g en décoction, 3 à 5g en poudre	10	Préparations dérivées : Sheng huang lian (séchée crue) — clarifie efficacement le feu du Cœur et l'Humidité Chaleur des intestins ; Jiu huang lian (préparée à l'alcool) — clarifie le Feu et la Chaleur du haut du corps (yeux rouges, aphtes, etc.) ; Jiang huang lian (préparée au gingembre) — clarifie le feu du foyer médian, arrête les vomissements et traite les intrications de Froid, Chaleur et Humidité ; Zhu yu huang lian (sautée avec Wu zhu yu) — traite l'agression de l'Estomac par le Foie avec vomissements et régurgitations.	24	黃連
272	Huang bai	Phellodendron amurense Rupr., P. chinense Schneid.	Arbre au liège de l'amour	COLD	3 à 10g	10	Peut être préparé au sel (yan zhi) pour clarifier la Chaleur Vide. Peut être préparé carbonisé (chao tan) pour arrêter les saignements dus à la Chaleur (hématuries, méléna, métrorragies, etc.). Peut être utilisé en application externe sur les brûlures, aphtes et ulcérations.	24	黃柏
381	Ren dong teng	\N	\N	\N	15 à 30g	4	Annexe de Jin yin hua. Propriétés identiques à Jin yin hua avec une spécificité supplémentaire : désobstrue les méridiens et ramifications, plus particulièrement dans les syndromes Bi par Vent-Chaleur.	6	忍冬籐
30	Fu ling	Poria cocos (Schw.) Wolf	Pachyme	NEUTRAL	10 à 15g	10	Fu ling pi : partie la plus superficielle du champignon, noire et grise ; action diurétique bien plus marquée (dans Wu pi yin, avec Sang bai pi, Sheng jiang pi, Chen pi et Da fu pi) ; on doit doubler son dosage, de 15 à 30g. Chi fu ling : partie superficielle, d'une couleur légèrement rosée ; fait s'écouler l'Humidité-Chaleur, traite les maladies lin (avec Che qian zi, Zhi zi etc.). Fu shen : partie profonde, autour de la racine du pin ; calme fortement l'esprit (avec Yuan zhi, Long chi, etc.).	11	茯苓
26	Lian zi	Nelumbo nucifera Gaertn.	Graines de lotus sacré	NEUTRAL	10 à 15g	8	Lian zi xin (plumule du lotus) : amère, légèrement froide ; Cœur-Péricarde ; 1,5 à 3g ; clarifie le Cœur et traite la dysphorie, fait communiquer Cœur et Reins, consolide le Jing, arrête les saignements.\n\nLian xu (pistil de la fleur de lotus) : douce, astringente, équilibrée ; Cœur-Reins ; 1,5 à 5g ; consolide les Reins et retient le Jing, traite l'incontinence et les leucorrhées.\n\nHe ye (feuille de lotus) : amère, astringente, équilibrée ; Cœur-Foie-Rate ; 3 à 10g ; clarifie la Canicule et fait s'écouler l'humidité, fait monter le Yang pur et arrête les saignements ; hypolipidémiante.\n\nHe geng (tiges des fleurs et feuilles de lotus) : amère, équilibrée ; Estomac-Foie-Poumon ; 10 à 15g, jusqu'à 60g ; débloque le Qi, ouvre la poitrine, harmonise l'Estomac, calme le fœtus, arrête les métrorragies et les leucorrhées.	21	蓮子
64	Chen pi	Citrus reticulata Blanco, ou C.r. Tangerina	Peau de mandarine ou de tangerine	WARM	3 à 10g	10	Aussi appelé Ju pi (橘皮) ou Hong pi (紅皮).\n\n• Chao chen pi : préparée sautée à sec, devient moins piquante mais plus chaude, permet de davantage tonifier le centre.\n• Ju he : pépins de mandarine. Amer, équilibré, tropisme Foie ; traite les pathologies shan par stagnation de Qi.\n• Ju luo : filaments de mandarine. Doux, amer, équilibré, tropisme Foie-Poumon ; traite la toux, les mucosités qui encombrent les méridiens, ouvre la poitrine.\n• Ju ye : feuilles de mandarine. Piquant, amer, équilibré, tropisme Foie ; permet de réduire les gonflements et de traiter les douleurs.\n• Ju hong : écorce de mandarine sans la partie interne. Piquant, amer, tiède, tropisme Poumon-Rate-Estomac ; assèche l'humidité et transforme les mucosités, ouvre la poitrine.	13	陳皮
398	Wei ling xian	Clematis chinensis Osbeck., C. hexapetala Pall., C. manshurica Rupr.	Clématite	WARM	5 à 12 g (jusqu'à 30 g pour dissoudre les arêtes de poisson)	0	Tropisme étendu aux douze méridiens. Ingrédient très puissant.	\N	威靈仙
386	Bai dou kou	Amomum kravanh Pierre ex Gagnep., A. compactum Soland ex Maton	Cardamome	WARM	3 à 6g	5	\N	25	白豆蔻
196	Tao ren	Prunus persica (L.) Batsch, ou P. davidiana (Carr.) Franch.	Amande du noyau de pêche	NEUTRAL	5 à 10 g	7	Légèrement toxique. En cas de surdosage ou d'empoisonnement : jus de chou chinois ou de navet avec un peu de sucre blanc ; Gan cao 120g + Da zao 120g en décoction ; Lü dou 60g en décoction avec un peu de sucre blanc ; Gui zhi, Wu yao, Chi shao 9g de chaque, Hong hua 15g, Sheng di huang 15g en décoction matin et soir.	31	桃仁
100	Ban xia	Pinellia ternata (Thunb.) Breit.	\N	WARM	3 à 10 g	10	Nature toxique. Plusieurs préparations existent : Sheng ban xia (crue, toxique, usage externe uniquement, réduit les gonflements et disperse les nodosités) ; Qing ban xia (préparée à l'alun de potassium, performante pour assécher les mucosités Humidité, dissiper les sensations de plénitude pi man, et harmoniser l'Estomac) ; Jiang ban xia (préparée à l'alun de potassium et au jus de gingembre, performante pour abaisser le contre-courant et arrêter les nausées et vomissements) ; Fa ban xia (préparée avec de la chaux et de la réglisse, performante pour assécher les mucosités Humidité au niveau du Poumon). En cas de surdosage ou d'empoisonnement : Sheng jiang 30g, Lü dou 30g, Fang feng 60g, Gan cao 15g, décoction dans 300 mL, faire un gargarisme avec une moitié et boire l'autre moitié.	4	半夏
388	Xing ren	Prunus armeniaca, Prunus sibirica, ou Prunus mandshurica	Amande amère d'abricot	WARM	3 à 10 g	10	Légèrement toxique. En cas de surdosage ou d'empoisonnement : 60g de jeune écorce d'abricotier à décocter 20 minutes dans 200 mL d'eau ; 60 à 90g de racine d'abricotier à décocter, boire toutes les 4h ; boire le jus d'1kg de navet ou de radis avec un peu de sucre ; Gan cao et Da zao 120g de chaque en décoction ; Lü dou 60g en décoction avec un peu de sucre ; Gui zhi, Wu yao, Chi shao 9g de chaque, Hong hua 15g, Tao ren 15g en décoction matin et soir.	15	(苦)杏仁
185	Long gu	Os fossilisés de vertébrés préhistoriques	Os fossilisés de vertébrés préhistoriques	NEUTRAL	15 à 30g	10	Nature décrite comme équilibrée (neutre), légèrement froide selon certaines sources. La forme calcinée (duan Long gu) est utilisée pour l'effet astringent (consolidation du biao, resserre les orifices, aide à la cicatrisation des plaies et génération des chairs). Yaoyao pour calmer l'esprit par la lourdeur, notamment associé à Mu li. Annexe : Long chi (龍齒) — Dents et défenses fossilisées de mammifères préhistoriques. Saveur : douce, astringente. Nature : fraîche. Tropisme : Cœur et Poumon. Mouvement : descendant, immergent. Posologie : 15 à 30g. Contre-indiqué en cas d'émissions nocturnes causées par la Chaleur, d'Humidité-Chaleur ou d'atteintes simples du biao. Doit subir une précuisson. Effet principal : calme le Cœur et apaise l'Esprit (folie furieuse, palpitations, insomnies, rêves abondants, épilepsie, convulsions infantiles). Plus performant que Long gu pour ancrer le Yang et calmer l'esprit, mais moins polyvalent.	42	龍骨
155	Lu jiao	Cervus nippon Temminck, C. elaphus Linnaeus	Corne ossifiée de cerf (sika ou élaphe)	WARM	5 à 15g, en décoction ou en poudre	10	La nature est décrite comme tiède à chaude selon les sources. Annexes : Lu jiao jiao 鹿角膠 (colle de corne de cerf) : douce, salée, tiède, tropisme Foie-Reins. Tonifie le Foie et les Reins, soutient le Jing et le sang, arrête les saignements. Posologie : 5 à 10g à dissoudre, ou à prendre en pilule ou en sirop. Lu jiao shuang 鹿角霜 (résidus osseux restant après la préparation de Lu jiao jiao, corne sans gélatine) : salée, tiède, tropisme Foie-Reins. Soutient le Yang des Reins, mobilise le sang. Moins saturant mais moins de potentiel tonique, avec une certaine astringence (peut arrêter les saignements et refermer les plaies). Posologie : 10 à 15g.	17	鹿角
\.

-- drug_association
COPY drug_association (id, drug_id, associated_drug_id) FROM stdin;
1	1	45
2	1	204
3	1	95
4	1	342
5	2	182
6	3	89
7	3	5
8	3	101
9	3	372
10	3	302
11	3	212
12	4	100
13	4	114
14	4	332
15	4	220
16	4	32
17	4	372
18	4	45
19	5	89
20	6	95
21	8	53
22	8	298
23	9	315
24	9	182
25	10	313
26	10	210
27	10	188
28	10	57
29	10	202
30	11	176
31	11	352
32	11	105
33	11	248
34	11	284
35	12	36
36	12	343
37	12	203
38	12	264
39	13	195
40	14	39
41	14	322
42	14	64
43	14	256
44	14	190
45	14	351
46	15	176
47	15	352
48	15	308
49	15	313
50	15	256
51	16	301
52	16	47
53	16	184
54	16	101
55	16	42
56	16	278
57	16	281
58	16	50
59	17	338
60	18	165
61	18	41
62	18	115
63	18	172
64	18	272
65	18	147
66	18	151
67	18	334
68	19	164
69	19	84
70	19	257
71	19	297
72	20	47
73	20	52
74	20	189
75	21	98
76	21	53
77	22	63
78	23	164
79	23	159
80	23	203
81	23	343
82	23	149
83	23	36
84	23	55
85	24	54
86	24	197
87	24	194
88	24	221
89	24	101
90	24	42
91	24	50
92	25	109
93	25	32
94	25	193
95	25	203
96	25	229
97	25	7
98	25	272
99	26	147
100	28	29
101	28	86
102	28	215
103	29	128
104	30	36
105	31	340
106	31	362
107	32	203
108	32	43
109	33	94
110	35	233
111	36	109
112	36	64
113	36	30
114	36	248
115	36	308
116	37	203
117	37	61
118	37	225
119	37	95
120	37	53
121	37	274
122	38	300
123	38	78
124	38	148
125	38	190
126	39	128
127	39	125
128	39	322
129	41	30
130	41	165
131	41	109
132	41	139
133	41	31
134	41	194
135	42	101
136	42	182
137	44	193
138	44	284
139	44	220
140	44	182
141	44	106
142	44	31
143	44	356
144	44	225
145	44	72
146	44	362
147	44	149
148	44	154
149	46	154
150	46	151
151	46	9
152	46	23
153	46	362
154	46	125
155	46	179
156	47	165
157	47	20
158	48	257
159	48	330
160	48	101
161	48	42
162	48	50
163	48	215
164	50	196
165	51	84
166	51	105
167	51	232
168	51	23
169	51	247
170	51	343
171	52	273
172	52	328
173	52	20
174	53	344
175	53	8
176	53	274
177	53	21
178	54	197
179	54	104
180	55	148
181	56	248
182	56	194
183	57	8
184	57	248
185	57	183
186	57	115
187	57	203
188	57	22
189	57	244
190	57	45
191	58	215
192	58	65
193	58	282
194	58	316
195	61	133
196	61	47
197	61	284
198	62	86
199	62	337
200	62	215
201	62	95
202	62	194
203	63	220
204	63	22
205	63	94
206	64	100
207	64	250
208	64	234
209	64	174
210	64	340
211	65	232
212	65	100
213	65	322
214	65	215
215	66	22
216	66	136
217	66	142
218	66	128
219	66	206
220	66	213
221	67	284
222	67	193
223	67	20
224	67	248
225	67	225
226	68	17
227	68	15
228	68	308
229	68	322
230	68	36
231	72	284
232	72	193
233	72	220
234	72	318
235	72	270
236	74	344
237	74	103
238	74	98
239	74	276
240	74	326
241	74	172
242	75	184
243	75	337
244	75	191
245	77	64
246	77	196
247	77	368
248	77	39
249	77	125
250	77	120
251	77	27
252	79	194
253	79	308
254	80	333
255	81	114
256	82	101
257	82	148
258	82	50
259	82	42
260	82	95
261	82	292
262	82	244
263	82	252
264	82	196
265	82	89
266	82	205
267	82	316
268	82	214
269	82	279
270	83	62
271	83	21
272	84	278
273	86	128
274	86	95
275	86	62
276	87	128
277	87	221
278	87	22
279	87	168
280	87	136
281	87	187
282	88	30
283	88	222
284	88	12
285	89	5
286	91	272
287	92	288
288	92	228
289	92	247
290	92	297
291	92	64
292	92	244
293	92	143
294	92	225
295	92	222
296	92	125
297	93	328
298	94	63
299	94	324
300	94	246
301	94	257
302	94	33
303	94	299
304	95	101
305	95	139
306	95	229
307	95	328
308	95	62
309	95	180
310	95	106
311	96	134
312	97	331
313	98	344
314	98	342
315	98	336
316	98	326
317	98	21
318	100	237
319	100	64
320	100	340
321	100	248
322	100	128
323	101	42
324	101	189
325	101	95
326	101	274
327	102	159
328	102	362
329	102	203
330	102	59
331	102	337
332	102	53
333	102	295
334	103	42
335	103	302
336	103	212
337	103	257
338	103	285
339	104	54
340	104	197
341	105	298
342	105	134
343	105	174
344	105	322
345	105	106
346	105	232
347	105	245
348	105	31
349	105	340
350	106	272
351	106	182
352	107	185
353	107	324
354	107	331
355	107	43
356	107	139
357	108	148
358	109	36
359	109	42
360	109	272
361	109	148
362	110	96
363	111	338
364	111	9
365	111	221
366	111	180
367	111	288
368	112	88
369	112	270
370	112	41
371	112	279
372	112	214
373	112	264
374	112	190
375	112	22
376	112	223
377	112	8
378	113	343
379	113	151
380	113	9
381	113	149
382	113	50
383	114	81
384	114	237
385	114	337
386	114	128
387	114	340
388	114	100
389	114	64
390	114	62
391	115	274
392	116	270
393	116	222
394	116	125
395	117	233
396	118	162
397	120	36
398	120	190
399	120	138
400	121	103
401	121	53
402	121	358
403	121	16
404	121	74
405	123	106
406	123	95
407	123	247
408	123	25
409	123	63
410	123	220
411	123	32
412	125	39
413	125	207
414	126	292
415	128	100
416	128	232
417	128	86
418	128	248
419	128	29
420	129	154
421	129	343
422	129	61
423	129	7
424	129	233
425	130	343
426	131	237
427	131	315
428	131	62
429	131	215
430	133	171
431	134	96
432	136	9
433	136	100
434	136	260
435	137	337
436	137	95
437	137	62
438	137	101
439	137	42
440	137	139
441	137	36
442	138	233
443	139	95
444	139	225
445	141	238
446	141	98
447	141	62
448	141	259
449	141	29
450	141	313
451	141	101
452	141	334
453	143	106
454	144	120
455	144	77
456	144	310
457	144	64
458	144	81
459	145	8
460	145	223
461	145	21
462	146	110
463	146	32
464	147	156
465	148	334
466	148	55
467	148	355
468	148	108
469	149	182
470	149	31
471	149	113
472	149	343
473	149	279
474	149	362
475	151	272
476	153	215
477	153	62
478	153	13
479	153	195
480	156	147
481	158	17
482	158	338
483	158	100
484	158	86
485	158	45
486	159	23
487	159	164
488	159	137
489	159	355
490	159	362
491	159	295
492	159	282
493	160	148
494	160	330
495	160	190
496	160	216
497	160	344
498	160	98
499	161	28
500	161	29
501	161	234
502	161	39
503	161	148
504	161	42
505	161	101
506	161	55
507	162	346
508	163	184
509	164	23
510	164	159
511	164	203
512	164	36
513	164	55
514	165	47
515	165	182
516	167	203
517	167	225
518	167	106
519	167	37
520	167	59
521	168	184
522	168	326
523	169	111
524	169	228
525	169	331
526	169	212
527	169	302
528	169	233
529	169	227
530	169	84
531	170	194
532	170	215
533	170	109
534	170	64
535	170	138
536	170	89
537	170	5
538	171	256
539	171	133
540	171	372
541	171	182
542	171	225
543	174	64
544	174	52
545	176	39
546	176	234
547	176	120
548	176	302
549	176	42
550	176	196
551	176	50
552	176	55
553	176	340
554	178	278
555	178	339
556	178	185
557	178	89
558	180	185
559	180	328
560	180	95
561	180	244
562	181	106
563	181	143
564	181	274
565	181	53
566	181	210
567	181	101
568	181	139
569	181	36
570	181	30
571	182	106
572	182	47
573	182	165
574	182	203
575	183	63
576	183	272
577	184	163
578	184	326
579	184	168
580	184	264
581	185	180
582	186	195
583	186	148
584	186	101
585	187	136
586	188	10
587	189	20
588	189	278
589	189	280
590	189	190
591	191	47
592	191	326
593	192	284
594	192	25
595	192	154
596	192	46
597	192	151
598	192	109
599	192	272
600	192	32
601	193	284
602	194	62
603	194	79
604	194	120
605	195	13
606	196	50
607	197	54
608	197	104
609	199	252
610	199	105
611	199	97
612	199	100
613	199	120
614	199	194
615	199	56
616	200	165
617	202	10
618	203	182
619	203	232
620	204	209
621	205	344
622	205	326
623	206	213
624	206	128
625	206	272
626	206	9
627	206	149
628	207	125
629	208	101
630	208	50
631	208	10
632	208	203
633	208	63
634	208	295
635	208	282
636	209	204
637	209	189
638	209	128
639	209	231
640	209	106
641	209	9
642	210	10
643	211	109
644	211	29
645	211	215
646	211	125
647	211	248
648	212	302
649	213	128
650	213	272
651	213	206
652	214	256
653	214	279
654	214	264
655	215	128
656	215	231
657	215	62
658	216	337
659	216	81
660	216	62
661	216	101
662	216	259
663	216	344
664	216	274
665	216	42
666	216	86
667	220	63
668	220	138
669	220	8
670	221	272
671	221	203
672	221	228
673	221	43
674	222	272
675	222	274
676	224	223
677	224	107
678	224	180
679	224	22
680	224	244
681	224	8
682	224	151
683	224	154
684	224	12
685	224	222
686	225	356
687	225	180
688	226	244
689	226	22
690	227	244
691	228	105
692	228	174
693	228	288
694	228	92
695	228	169
696	228	233
697	228	143
698	228	330
699	229	109
700	229	42
701	229	95
702	229	301
703	230	356
704	230	318
705	230	251
706	231	215
707	231	209
708	231	332
709	231	29
710	232	128
711	232	203
712	233	30
713	233	343
714	234	64
715	234	203
716	235	274
717	235	344
718	235	216
719	235	232
720	235	143
721	235	110
722	235	337
723	235	95
724	235	98
725	235	341
726	236	108
727	236	100
728	237	100
729	237	64
730	238	103
731	238	29
732	238	140
733	238	125
734	238	41
735	238	128
736	239	151
737	239	101
738	240	185
739	240	231
740	240	62
741	240	98
742	240	21
743	241	203
744	241	225
745	241	7
746	241	20
747	241	182
748	241	94
749	241	142
750	241	317
751	243	36
752	244	100
753	244	180
754	244	227
755	245	84
756	245	106
757	245	203
758	245	189
759	246	89
760	246	94
761	247	154
762	247	12
763	247	41
764	247	42
765	248	256
766	248	128
767	248	36
768	249	128
769	249	272
770	249	125
771	249	27
772	249	101
773	249	232
774	249	355
775	250	64
776	250	337
777	250	336
778	251	230
779	252	305
780	253	252
781	253	248
782	253	250
783	253	231
784	253	185
785	253	30
786	253	339
787	253	282
788	253	295
789	254	8
790	254	105
791	254	233
792	254	264
793	254	30
794	254	222
795	254	151
796	254	101
797	254	50
798	254	359
799	255	88
800	255	95
801	255	36
802	255	30
803	256	248
804	256	171
805	256	148
806	257	94
807	258	30
808	259	216
809	259	53
810	259	344
811	259	301
812	259	86
813	259	103
814	260	165
815	260	58
816	260	29
817	260	97
818	260	272
819	260	124
820	261	189
821	264	214
822	264	184
823	266	273
824	267	256
825	267	190
826	267	300
827	267	39
828	267	322
829	267	237
830	267	100
831	267	30
832	269	20
833	269	190
834	269	196
835	269	39
836	269	322
837	271	148
838	271	64
839	271	301
840	271	36
841	271	100
842	271	89
843	271	5
844	271	330
845	272	109
846	272	151
847	272	106
848	273	52
849	273	212
850	273	266
851	274	101
852	274	53
853	274	165
854	274	115
855	275	52
856	275	36
857	275	272
858	275	65
859	276	301
860	278	189
861	278	84
862	279	343
863	279	308
864	279	214
865	280	322
866	280	81
867	280	330
868	280	108
869	280	320
870	280	215
871	280	64
872	280	30
873	281	194
874	281	196
875	281	256
876	281	273
877	281	89
878	281	5
879	281	257
880	281	285
881	282	295
882	283	124
883	283	195
884	283	246
885	283	101
886	283	89
887	283	5
888	284	193
889	285	281
890	285	301
891	285	257
892	285	89
893	285	359
894	285	5
895	285	3
896	286	244
897	286	22
898	286	246
899	286	89
900	286	5
901	286	101
902	286	301
903	286	276
904	287	150
905	287	320
906	288	92
907	288	12
908	289	308
909	289	11
910	289	36
911	289	39
912	289	322
913	289	256
914	289	148
915	290	244
916	290	225
917	291	176
918	291	128
919	291	193
920	291	338
921	291	36
922	291	212
923	291	302
924	292	126
925	293	132
926	293	43
927	293	9
928	293	221
929	295	282
930	296	321
931	296	196
932	296	194
933	296	20
934	296	89
935	296	5
936	297	372
937	298	8
938	299	94
939	300	256
940	300	148
941	300	190
942	300	39
943	300	322
944	300	64
945	301	276
946	301	42
947	301	229
948	302	212
949	304	233
950	305	252
951	306	86
952	306	101
953	306	92
954	306	288
955	308	279
956	308	79
957	310	176
958	310	15
959	310	120
960	310	64
961	310	109
962	311	340
963	311	220
964	311	138
965	311	174
966	311	64
967	311	100
968	311	30
969	311	45
970	311	361
971	312	138
972	312	63
973	312	233
974	313	330
975	315	9
976	316	256
977	316	7
978	316	62
979	316	233
980	316	22
981	316	47
982	316	248
983	316	180
984	316	203
985	316	223
986	316	120
987	317	101
988	317	337
989	317	209
990	317	204
991	317	87
992	317	8
993	317	57
994	318	230
995	321	296
996	321	196
997	321	194
998	321	359
999	321	285
1000	322	39
1001	322	326
1002	322	274
1003	324	94
1004	326	98
1005	326	184
1006	326	191
1007	326	322
1008	327	20
1009	327	193
1010	327	194
1011	327	284
1012	327	292
1013	328	52
1014	328	95
1015	328	180
1016	328	93
1017	330	313
1018	330	334
1019	331	97
1020	331	107
1021	332	272
1022	332	203
1023	332	182
1024	332	231
1025	333	80
1026	333	232
1027	334	330
1028	334	148
1029	335	95
1030	335	203
1031	335	52
1032	335	328
1033	336	98
1034	336	250
1035	336	39
1036	337	250
1037	337	182
1038	338	17
1039	339	278
1040	339	364
1041	339	23
1042	339	362
1043	339	154
1044	339	343
1045	340	237
1046	340	100
1047	340	64
1048	342	98
1049	343	233
1050	343	279
1051	343	13
1052	343	130
1053	344	98
1054	344	53
1055	344	205
1056	345	81
1057	345	114
1058	345	64
1059	345	344
1060	345	326
1061	345	103
1062	346	162
1063	347	57
1064	347	145
1065	347	183
1066	347	223
1067	347	9
1068	347	244
1069	349	52
1070	349	266
1071	349	106
1072	349	275
1073	349	308
1074	349	27
1075	350	61
1076	350	203
1077	352	176
1078	352	15
1079	352	39
1080	352	120
1081	352	36
1082	352	64
1083	353	57
1084	353	43
1085	353	220
1086	353	8
1087	353	182
1088	354	172
1089	354	37
1090	354	245
1091	355	148
1092	356	301
1093	356	230
1094	356	225
1095	357	79
1096	358	334
1097	358	258
1098	358	94
1099	358	62
1100	358	74
1101	358	36
1102	358	222
1103	358	191
1104	358	184
1105	358	41
1106	359	89
1107	359	5
1108	359	285
1109	359	3
1110	359	189
1111	359	42
1112	359	330
1113	359	101
1114	359	50
1115	360	189
1116	360	101
1117	360	148
1118	360	180
1119	360	256
1120	360	220
1121	361	204
1122	361	196
1123	361	30
1124	361	36
1125	361	64
1126	361	125
1127	362	31
1128	365	22
1129	365	316
1130	365	8
1131	365	298
1132	365	340
1133	365	87
1134	365	190
1135	365	223
1136	365	203
1137	365	248
1138	365	43
1139	365	57
1140	366	261
1141	366	209
1142	366	204
1143	366	101
1144	366	42
1145	366	301
1146	366	276
1147	366	326
1148	366	63
1149	366	72
1150	366	123
1151	366	11
1152	367	101
1153	367	316
1154	367	209
1155	367	204
1156	367	115
1157	367	337
1158	367	274
1159	367	139
1160	367	231
1161	367	215
1162	367	100
1163	368	316
1164	368	233
1165	368	215
1166	368	47
1167	368	158
1168	368	298
1169	368	101
1170	368	99
1171	369	108
1172	369	81
1173	369	352
1174	369	237
1175	369	29
1176	369	148
1177	369	39
1178	369	358
1179	369	258
1180	369	30
1181	369	334
1182	370	203
1183	370	182
1184	370	284
1185	370	193
1186	370	218
1187	371	343
1188	371	203
1189	371	82
1190	371	272
1191	371	101
1192	372	42
1193	372	284
1194	372	109
1209	3	7
1210	7	316
1211	22	316
1212	47	316
1213	48	7
1214	57	7
1215	180	316
1216	203	316
1217	208	7
1218	223	316
1219	233	316
1220	248	316
1221	256	316
1222	11	97
1223	63	188
1224	66	188
1225	87	188
1226	87	97
1227	111	97
1228	136	188
1229	168	97
1230	181	350
1231	235	350
1232	290	188
1233	317	97
1234	335	350
1235	354	350
1236	368	350
1237	376	232
1238	376	237
1239	377	31
1240	377	196
1241	377	41
1242	377	194
1243	377	20
1244	377	272
1245	377	358
1246	384	95
1247	384	115
1248	384	84
1249	384	21
1250	384	202
1251	384	227
1252	384	169
1253	386	64
1254	386	215
1255	386	322
1256	386	100
1257	386	388
1258	386	41
1259	386	233
1260	386	81
1261	388	143
1262	388	138
1263	388	165
1264	388	196
1265	390	273
1266	391	392
1267	392	202
1268	392	391
1269	392	99
1270	395	95
1271	173	337
1272	173	30
1273	173	36
1274	173	243
1275	173	387
1276	173	133
1277	173	386
1278	173	322
1279	337	233
1280	47	233
1281	95	395
1282	63	30
1283	145	10
1284	240	155
1285	78	30
1286	102	376
1287	360	244
1288	372	384
1289	180	384
1290	172	384
1291	57	252
1292	221	252
1293	396	229
\.

-- drug_association_effects
COPY drug_association_effects (association_id, effect) FROM stdin;
1	Associé à Huo ma ren, Bai zi ren, Huang qi etc. pour traiter la constipation des personnes âgées
2	Associé à Huo ma ren, Bai zi ren, Huang qi etc. pour traiter la constipation des personnes âgées
3	Associé à Huo ma ren, Bai zi ren, Huang qi etc. pour traiter la constipation des personnes âgées
4	Associé à Hu tao ren (cerneaux de noix), écrasé avec un peu de miel, à prendre après le repas avec un bouillon de riz, pour humidifier le Poumon et arrêter la toux
5	Clarifient la Chaleur interne et externe, en haut et en bas. Ils s'adressent au Poumon, à l'Estomac, au Cœur, éliminent la dysphorie et arrêtent la soif.
6	En cas de traumatisme, active le sang et transforme la stase. Également en application externe pour arrêter les saignements, refermer les blessures et régénérer les tissus.
7	En cas de traumatisme, active le sang et transforme la stase. Également en application externe pour arrêter les saignements, refermer les blessures et régénérer les tissus.
8	En cas de traumatisme, active le sang et transforme la stase. Également en cas de douleurs abdominales et épigastriques intenses, aménorrhées par stase de sang.
9	En cas de traumatisme, active le sang et transforme la stase.
10	En cas de douleurs abdominales et épigastriques intenses, aménorrhées par stase de sang.
11	En cas de douleurs abdominales et épigastriques intenses, aménorrhées par stase de sang.
12	Association en cas de toux et de dyspnée pour expulser les mucosités et ouvrir les orifices
13	Association en cas de toux et de dyspnée pour expulser les mucosités et ouvrir les orifices
14	Association en insufflation nasale en cas de perte de connaissance avec dyspnée pour expulser les mucosités et ouvrir les orifices
15	Association en insufflation nasale en cas de perte de connaissance avec dyspnée pour expulser les mucosités et ouvrir les orifices
16	Application externe sur les abcès, plaies, furoncles pour disperser les nodosités et réduire les gonflements
17	Application externe sur les abcès, plaies, furoncles pour disperser les nodosités et réduire les gonflements
18	Association pour traiter la constipation avec selles sèches et nouées
19	Mobilisent fortement le Qi et le sang dans les organes, entrailles et méridiens, calment la douleur, réduisent les gonflements et régénèrent les tissus
20	Associé à Huang qi pour débloquer la lactation
21	Nourrissent le Foie et les Reins, clarifient la Chaleur, calment le Foie et éclaircissent les yeux.
22	Dispersent le Vent-Chaleur, clarifient le Foie et éclaircissent les yeux, clarifient le Poumon et arrêtent la toux.
23	Favorisent la sudorification, libèrent le biao, clarifient la Chaleur interne et éliminent la dysphorie due à la Chaleur plénitude.
24	Drainent le Feu de la Rate et de l'Estomac par le bas.
25	Mobilisent le Qi du Foie et éteignent le Vent.
26	Nourrissent le Sang du Foie et abaissent son yang.
27	Mobilisent le Qi du Foie, éteignent le Vent et traitent les convulsions.
28	Clarifient le Foie et éclaircissent les yeux.
29	Régularisent le Qi et traitent la Stagnation de Qi du Foie, tonifient les Reins et nourrissent le Jing, tonifient le Foie et éclaircissent les yeux.
30	Associé à Shan zha pour favoriser la digestion et renforcer l'Estomac
31	Associé à Shen qu pour favoriser la digestion et renforcer l'Estomac
32	Associé à Pi pa ye pour transformer les mucosités et arrêter la toux
33	Associé à Huang qin pour clarifier la Chaleur toxique
34	Associé à Jin yin hua pour clarifier la Chaleur toxique
35	Associé à Bai zhu, Gui zhi, Ze xie, Fu ling dans Wu ling san pour favoriser la diurèse et faire s'écouler l'Humidité
36	Associé à Hua shi et E jiao dans Zhu ling tang pour favoriser la diurèse et faire s'écouler l'Humidité
37	Associé à Sheng di huang, Mu tong, Hua shi etc. pour traiter les lin de Chaleur et de graisse avec leucorrhées
38	Associé à Yin chen hao et Wu ling san pour traiter l'ictère par Humidité-Chaleur
39	Traitent la douleur dans les stagnations de Qi et stases de sang
40	Avec Mu xiang, Sha ren, Chen pi, Hou po pour les gonflements de l'épigastre et de l'abdomen avec douleurs et perte d'appétit
41	Avec Mu xiang, Sha ren, Chen pi, Hou po pour les gonflements de l'épigastre et de l'abdomen avec douleurs et perte d'appétit
42	Avec Mu xiang, Sha ren, Chen pi, Hou po pour les gonflements de l'épigastre et de l'abdomen avec douleurs et perte d'appétit
43	Avec Chai hu, Yu jin, Bai dou kou lorsque les soucis et pensées excessives bloquent les mécanismes du Qi de la Rate
44	Avec Chai hu, Yu jin, Bai dou kou lorsque les soucis et pensées excessives bloquent les mécanismes du Qi de la Rate
45	Avec He ye et Gao ben en application externe pour traiter le pied d'athlète
46	Associé à Shan zha, Shen qu, Ji nei jin, etc. pour les indigestions de céréales, féculents, farineux et amidons.
47	Associé à Shan zha, Shen qu, Ji nei jin, etc. pour les indigestions de céréales, féculents, farineux et amidons.
48	Associé à Shan zha, Shen qu, Ji nei jin, etc. pour les indigestions de céréales, féculents, farineux et amidons.
49	Associé à Chuan lian zi, Chai hu, etc. pour les douleurs de l'abdomen et des hypocondres.
50	Associé à Chuan lian zi, Chai hu, etc. pour les douleurs de l'abdomen et des hypocondres.
51	Associé à Qiang huo, Gui zhi, Qin jiao, Dang gui, Chuan xiong etc., en prise per os ou en application externe pour les douleurs rhumatismales.
52	Associé à Qiang huo, Gui zhi, Qin jiao, Dang gui, Chuan xiong etc., en prise per os ou en application externe pour les douleurs rhumatismales.
53	Associé à Qiang huo, Gui zhi, Qin jiao, Dang gui, Chuan xiong etc., en prise per os ou en application externe pour les douleurs rhumatismales.
54	Associé à Qiang huo, Gui zhi, Qin jiao, Dang gui, Chuan xiong etc., en prise per os ou en application externe pour les douleurs rhumatismales.
55	Associé à Qiang huo, Gui zhi, Qin jiao, Dang gui, Chuan xiong etc., en prise per os ou en application externe pour les douleurs rhumatismales.
56	Associé à San qi, Tu bie chong, Hong hua etc. en macération alcoolique ou en décoction pour les gonflements traumatiques avec stase de sang.
57	Associé à San qi, Tu bie chong, Hong hua etc. en macération alcoolique ou en décoction pour les gonflements traumatiques avec stase de sang.
58	Associé à San qi, Tu bie chong, Hong hua etc. en macération alcoolique ou en décoction pour les gonflements traumatiques avec stase de sang.
59	Transforment les mucosités Froid dans les toux chroniques
60	Utilisés ensemble dans Ding chuan tang pour calmer la dyspnée et rassembler le Poumon
61	Association pour retenir les urines et arrêter les leucorrhées en cas de Froid
62	Association pour retenir les urines et arrêter les leucorrhées en cas de Froid, ou en cas de Froid Vide du foyer inférieur
63	Association pour retenir les urines et arrêter les leucorrhées en cas de Froid
64	Association pour retenir les urines et arrêter les leucorrhées en cas d'Humidité Chaleur
65	Association pour retenir les urines et arrêter les leucorrhées en cas d'Humidité Chaleur
66	Association pour retenir les urines et arrêter les leucorrhées en cas d'Humidité Chaleur
67	Association pour retenir les urines et arrêter les leucorrhées en cas de Froid Vide du foyer inférieur
68	Arrête les saignements par l'astringence et le resserrement
69	Arrête les saignements par l'astringence et le resserrement
70	Arrête les diarrhées
71	Arrête les diarrhées
72	Mobilisent le Sang, dispersent la Stase, désobstruent les Vaisseaux et arrêtent la douleur.
73	Clarifient la Chaleur Vide.
74	Mobilisent le Sang et dispersent la Stase, rafraîchissent le Sang et éliminent la Chaleur Vide.
75	Tonifient le Yang des Reins et nourrissent le Jing.
76	Tonifient le Sang du Foie et le Jing des Reins.
77	Clarifient la Chaleur, calment le Foie, éteignent le Vent et arrêtent les convulsions.
78	Associé à Da ji, Ce bai ye dans Shi hui san contre les hémoptysies, hématémèse, épistaxis
79	Associé à Da ji, Ce bai ye dans Shi hui san contre les hémoptysies, hématémèse, épistaxis
80	Associé à Sheng di huang, Hua shi, Dan zhu ye etc. dans le lin de sang ; associé à Sheng di huang, Bai zhu, Yi mu cao etc. dans la métrorragie et les saignements pendant la grossesse
81	Associé à Sheng di huang, Hua shi, Dan zhu ye etc. dans le lin de sang
82	Associé à Sheng di huang, Hua shi, Dan zhu ye etc. dans le lin de sang
83	Associé à Sheng di huang, Bai zhu, Yi mu cao etc. dans la métrorragie et les saignements pendant la grossesse
84	Associé à Sheng di huang, Bai zhu, Yi mu cao etc. dans la métrorragie et les saignements pendant la grossesse
85	Associé à Gan sui pour purger les accumulations d'eau et traiter l'œdème
86	Associé à Jing da ji pour purger les accumulations d'eau et traiter l'œdème
87	Associé à Da huang pour purger les accumulations d'eau et traiter l'œdème
88	Associé à Qing dai pour traiter l'aménorrhée par stases de sang avec masse palpable dans l'abdomen
89	Associé à Dang gui pour traiter l'aménorrhée par stases de sang avec masse palpable dans l'abdomen
90	Associé à Chuan xiong pour traiter l'aménorrhée par stases de sang avec masse palpable dans l'abdomen
91	Associé à Hong hua pour traiter l'aménorrhée par stases de sang avec masse palpable dans l'abdomen
92	Avec Cang zhu, Ku shen, Lian qiao etc. pour les ulcères suppurants ou purulents, avec écoulement de liquide jaunâtre et épais
92	Avec Cang zhu, Huang bai etc. pour les articulations rouges, gonflées et douloureuses
93	Avec Cang zhu, Ku shen, Lian qiao etc. pour les ulcères suppurants ou purulents, avec écoulement de liquide jaunâtre et épais
94	Avec Cang zhu, Ku shen, Lian qiao etc. pour les ulcères suppurants ou purulents, avec écoulement de liquide jaunâtre et épais
95	En cas de dermatoses prurigineuses, suintantes, type eczéma, dyshydrose, etc., avec Sheng di huang, Fang feng, Chi shao yao etc.
96	En cas de dermatoses prurigineuses, suintantes, type eczéma, dyshydrose, etc., avec Sheng di huang, Fang feng, Chi shao yao etc.
97	En cas de dermatoses prurigineuses, suintantes, type eczéma, dyshydrose, etc., avec Sheng di huang, Fang feng, Chi shao yao etc.
98	Avec Cang zhu, Huang bai etc. pour les articulations rouges, gonflées et douloureuses
99	Tonifient la Rate et arrêtent la diarrhée, tonifient les Reins et le Jing, contrôlent les urines et traitent les leucorrhées.
100	Associé pour disperser le Froid et stopper les douleurs
101	Associé pour disperser le Froid et stopper les douleurs
102	Associé pour régulariser le Qi et harmoniser le centre, réchauffer la Rate
103	Calment les vomissements dans un tableau de Chaleur, ou de Feu du Foie qui attaque l'Estomac (Formule Zuo jin wan)
104	Ensemble, ils tonifient la Rate, assèchent et drainent l'Humidité.
105	Clarifient la Chaleur de l'Estomac, engendrent les Liquides, harmonisent l'Estomac et arrêtent les vomissements.
106	Harmonisent les mouvements de descente du Poumon et de l'Estomac, et clarifient la Chaleur des couches du Qi et du Sang dans un contexte de fièvre hémorragique.
107	Associé à Sheng di huang pour traiter la dysenterie, l'ictère, le méléna, etc., dans un contexte de Chaleur-Humidité.
108	Associé à Long dan cao pour traiter la dysenterie, l'ictère, le méléna, etc., dans un contexte de Chaleur-Humidité.
109	Traitent la Stagnation d'aliments, transforment l'Humidité trouble, harmonisent le Centre.
110	Traiter l'insomnie avec émotions à fleur de peau et tempérament colérique
111	Renforcent le Centre, les fonctions de réception de l'Estomac et de transport de la Rate, et assèchent l'Humidité.
112	Tonifient la Rate et l'Estomac, régularisent le Qi et assèchent l'Humidité.
113	Tonifient la Rate, assèchent et drainent l'Humidité.
182	Utilisé avec Da huang pour les mucosités agglomérées impossibles à expectorer
114	Clarifient la Chaleur qui agite le fœtus, assèchent l'Humidité, tonifient la Rate pour contenir le sang et le fœtus.
115	Tonifient le Qi de la Rate, assèchent l'Humidité et dispersent les accumulations de nourriture.
116	Pour les maladies fébriles de long cours qui blessent les liquides ; également avec Xuan shen, Huang qi etc. pour les fièvres par vide de Yin
117	Pour les maladies fébriles de long cours qui blessent les liquides
118	Avec Sheng di huang, Huang qi etc. pour les fièvres par vide de Yin
119	Avec Sheng di huang, Xuan shen etc. pour les fièvres par vide de Yin
120	Dans Shi hu ye guang wan, avec Shu di huang, pour éclaircir les yeux, renforcer le dos, les tendons et les os
121	Dans Shi hu ye guang wan, avec Gou qi zi, pour éclaircir les yeux, renforcer le dos, les tendons et les os
122	Avec Fo shou etc. pour les dysharmonies entre Foie et Estomac
123	Avec Lu lu tong, Xiang fu, Yu jin etc., pour les gonflements douloureux des seins avant les règles
124	Avec Lu lu tong, Xiang fu, Yu jin etc., pour les gonflements douloureux des seins avant les règles
125	Avec Lu lu tong, Xiang fu, Yu jin etc., pour les gonflements douloureux des seins avant les règles
126	Chaleur et Humidité des intestins avec stagnation de Qi et diarrhée douloureuse
127	Stagnation d'aliments dans l'estomac et les intestins, ténesme
128	Stagnation de Qi provoquant des douleurs abdominales ; préviennent la saturation digestive par les formules toniques
129	Associé à Fu ling, Ze xie, Zhu ling etc. pour renforcer la Rate et faire s'écouler l'Humidité
130	Associé à Ma huang, Gui zhi, Cang zhu etc. dans Yi yi ren tang pour traiter les bi ; associé à Ma huang, Xing ren, Gan cao dans Ma xing yi gan tang pour traiter les bi
131	Associé à Cang zhu, Huang bai, Niu xi dans Si miao wan pour traiter les bi
132	Associé à Dang shen, Bai zhu, Shan yao etc. dans Shen ling bai zhu san pour arrêter les diarrhées
133	Associé à Lu gen, Dong gua ren, Tao ren dans Wei jing tang pour clarifier la Chaleur et faire s'écouler le pus
134	Associé à Da huang, Mu dan pi etc. dans Da huang mu dan tang pour clarifier la Chaleur et faire s'écouler le pus
135	Mobilisent le sang en le préservant, nourrissent le sang sans produire de stase
136	Maux de tête du Vent-Chaleur, ou de la Chaleur dans la couche du Qi
137	Au stade initial d'une atteinte de la couche du Weiqi
137	En cas d'œdème avec atteinte de la surface par le Vent-Chaleur
138	Au stade initial d'une atteinte de la couche du Weiqi
139	Au stade initial d'une atteinte de la couche du Weiqi
140	Pour une atteinte de la couche du Qi
141	Pour une atteinte de la couche du Qi
142	Pour une atteinte de la couche du Qi
143	En cas d'obstruction douloureuse de la gorge, d'adénopathie, oreillons etc.
144	En cas d'obstruction douloureuse de la gorge, d'adénopathie, oreillons etc.
145	En cas d'œdème avec atteinte de la surface par le Vent-Chaleur
146	En cas d'œdème avec atteinte de la surface par le Vent-Chaleur
147	En cas d'œdème avec maladie lin et Humidité Chaleur
148	En cas d'œdème avec maladie lin et Humidité Chaleur
149	Associé dans Ba zheng san pour réguler les urines et débloquer les lin.
150	Associé dans Ba zheng san pour réguler les urines et débloquer les lin.
151	Associé dans Ba zheng san pour réguler les urines et débloquer les lin.
152	Associé pour traiter les lin de sang.
153	Associé pour traiter les lin de sang.
154	Associé pour traiter les ascaris, ténias et oxyures.
155	Associé pour traiter les ascaris, ténias et oxyures.
156	Combinent leurs mouvements centrifuges et dispersants. Ouvrent les pores de la peau, provoquent une forte transpiration, libèrent les muscles et dispersent le Vent-Froid plénitude.
157	Mobilisent le Sang, dispersent la Stase, désobstruent les Vaisseaux et traitent la douleur.
158	Associé à Gu sui bu pour les blessures et gonflements traumatiques
159	Associé à Yan hu suo pour les blessures et gonflements traumatiques
160	Associé à Dang gui pour les stases de sang du post partum
161	Associé à Chuan xiong pour les stases de sang du post partum
162	Associé à Hong hua pour les stases de sang du post partum
163	Associé à Gan jiang pour les diarrhées rouges et blanches
164	Mobilisent le sang et chassent les stases
165	Associé à Bai ji, Pi pa ye et E jiao pour traiter l'hémoptysie
166	Associé à Bai ji, Pi pa ye et E jiao pour traiter l'hémoptysie
167	Associé à Bai ji, Pi pa ye et E jiao pour traiter l'hémoptysie
168	Associé à Xiao ji, Tong cao et Hua shi pour traiter l'hématurie
169	Associé à Xiao ji, Tong cao et Hua shi pour traiter l'hématurie
170	Associé à Xiao ji, Tong cao et Hua shi pour traiter l'hématurie
171	Nourrissent le Yin, rafraîchissent le Sang, clarifient la Chaleur Vide.
172	Nourrissent le Yin, clarifient la Chaleur Vide et arrêtent la transpiration.
173	Clarifient la Chaleur Vide, traitent les bouffées de Chaleur.
174	Tonifient le yin et le yang du Foie et des Reins.
175	Nourrissent le Foie et les Reins, dispersent la Stagnation de Qi du Foie, clarifient la Chaleur et éclaircissent les yeux.
176	Nourrissent le yin du Foie et des Reins et le Sang du Foie.
177	Tonifient le Sang du Foie et le Jing des Reins.
178	Associé à Jing da ji, Yuan hua et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
179	Associé à Jing da ji, Yuan hua et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
180	Stagnation de Qi du Foie et stase de sang dans l'utérus
181	Utilisé avec Huang qin pour les mucosités agglomérées impossibles à expectorer
183	En cas de Vent-Chaleur, clarifie la Chaleur et éclaircit les yeux
184	En cas de taie cornéenne avec Chaleur toxique, œil rouge, sablonneux, douloureux
185	En cas de taie cornéenne avec Chaleur toxique, œil rouge, sablonneux, douloureux
186	En cas de vide de Yin du Foie et des Reins avec vertiges, mouches devant les yeux, vision trouble
187	En cas de vide de Yin du Foie et des Reins avec vertiges, mouches devant les yeux, vision trouble
188	En cas de Vent interne par élévation du Yang du Foie, avec vertiges, céphalées
189	En cas de Vent interne par élévation du Yang du Foie, avec vertiges, céphalées
190	Pour humidifier les intestins et évacuer les selles
191	Utilisé avec Ren shen, Gan cao etc. pour les diarrhées chroniques par vide de la Rate et des Reins
192	En application externe sur le prolapsus rectal chez l'enfant, ou en prise per os avec Huang qi, Sheng ma etc.
193	Avec Di yu etc. pour les rectorragies
194	Avec Gan jiang, Qian shi etc. pour traiter les leucorrhées par Froid et Humidité
195	Associé à Ge gen, Shan yao, Zhi mu dans les syndromes xiao ke avec Chaleur et vide de Yin.
196	Associé à Gui zhi, Bai shao etc. pour traiter les spasmes lors d'une dégradation d'une maladie du Taiyang.
197	Associé à Jin yin hua, Bai zhi etc. pour les abcès au stade initial, afin de réduire les gonflements et éliminer le pus.
198	Restaurent le Yang, éliminent le Froid et réchauffent fortement l'interne
199	Restaurent les collapsus par vide de Qi
200	Sauvent des inversions, restaurent le Yang
201	Tonifient le Yang et le Qi, consolident la surface et arrêtent la transpiration
202	Purgent les accumulations de Froid dans les intestins
203	Chassent le Vent-Chaleur, font sortir les exanthèmes et traitent le prurit
204	Clarifient la Chaleur, calment le Foie, éteignent le Vent, arrêtent les convulsions
205	Réveillent le Shen et ouvrent les orifices en cas de vertiges, acouphènes, surdité causés par l'élévation du Trouble
206	Transforment les mucosités Humidité
207	Consolident le Qi du poumon et traitent l'aphonie
208	Apaisent le Foie, harmonisent le centre et calment les douleurs
209	Traitent les mucosités Chaleur du Poumon, arrêtent la toux et la dyspnée
210	Traitent le mélange Froid et Chaleur sur Estomac et Rate
211	Avec Bai zhu, Fu zi, Sheng di huang dans Huang tu tang pour réchauffer le centre et arrêter les saignements lorsque la Rate ne contrôle pas le sang
212	Avec Gan jiang pour arrêter les vomissements
213	Avec Zi su geng et Zhu ru en cas de nausées gravidiques pour arrêter les vomissements
214	Avec Fu zi, Bai zhu et Rou dou kou pour arrêter les diarrhées
215	Associé à Gou teng, Quan xie, Jiang can, Niu huang etc. pour traiter l'épilepsie, les convulsions infantiles et l'opisthotonos.
216	Associé à Gou teng, Quan xie, Jiang can, Niu huang etc. pour traiter l'épilepsie, les convulsions infantiles et l'opisthotonos.
217	Associé à Gou teng, Quan xie, Jiang can, Niu huang etc. pour traiter l'épilepsie, les convulsions infantiles et l'opisthotonos.
218	Associé à Huang lian, Qin pi, Bai tou weng etc. pour les diarrhées purulentes et/ou sanguinolentes par Chaleur toxique et Humidité.
219	Associé à Huang lian, Qin pi, Bai tou weng etc. pour les diarrhées purulentes et/ou sanguinolentes par Chaleur toxique et Humidité.
220	Associé à Huang lian, Qin pi, Bai tou weng etc. pour les diarrhées purulentes et/ou sanguinolentes par Chaleur toxique et Humidité.
221	Application locale pour clarifier la Chaleur, éliminer la toxicité et réduire les abcès
222	Application locale pour clarifier la Chaleur, éliminer la toxicité et réduire les abcès
223	Utilisé avec Hong teng et Mu dan pi pour les abcès intestinaux
224	Utilisé avec Huang qin et Xuan shen pour la gorge gonflée et douloureuse
225	Utilisé avec Huang qin et Xuan shen pour la gorge gonflée et douloureuse
226	Associé pour traiter l'indigestion de céréales, de fruits, de riz, de féculents
227	Associé pour traiter l'indigestion de céréales, de fruits, de riz, de féculents
228	Associé pour traiter l'indigestion de céréales, de fruits, de riz, de féculents
229	Associé pour renforcer le centre
230	Associé pour renforcer le centre
231	Associé à Jin yin hua pour libérer la Surface et favoriser la transpiration
232	Associé à Lian qiao pour libérer la Surface et favoriser la transpiration
233	Associé à Bo he pour libérer la Surface et favoriser la transpiration, et pour faire sortir les exanthèmes et arrêter le prurit
234	Associé à Niu bang zi pour faire sortir les exanthèmes et arrêter le prurit
235	Associé à Chi xiao dou pour éliminer l'eau, réduire les œdèmes de type Vent et les gonflements de type Vent
236	Associé à Du zhong, Niu xi, Bu gu zhi etc. pour les genoux et lombes douloureux
237	Associé à Du zhong, Niu xi, Bu gu zhi etc. pour les genoux et lombes douloureux
238	Associé à Du zhong, Niu xi, Bu gu zhi etc. pour les genoux et lombes douloureux
239	Associé à Du huo, Sang ji sheng, Wei ling xian etc. pour les bi sur un terrain vide, avec paresthésies, douleur et raideur des membres
240	Associé à Du huo, Sang ji sheng, Wei ling xian etc. pour les bi sur un terrain vide, avec paresthésies, douleur et raideur des membres
241	Associé à Lu rong, Shan yao etc. pour les leucorrhées par froid vide de l'utérus
242	Associé à Qin jiao pour détendre les tendons et désobstruer les vaisseaux luo dans les douleurs articulaires liées au Froid et à l'Humidité.
243	Associé à Ren shen pour détendre les tendons et désobstruer les vaisseaux luo dans les douleurs articulaires liées au Froid et à l'Humidité.
244	Associé à Sang zhi pour détendre les tendons et désobstruer les vaisseaux luo dans les douleurs articulaires liées au Froid et à l'Humidité.
245	Associé pour abaisser le Qi du Poumon et éliminer les Mucosités
246	Associé avec Feng mi pour la constipation sèche par plénitude de Vent dans les intestins
247	Associé avec Tao ren pour la constipation sèche par plénitude de Vent dans les intestins
248	Associé pour les dysenteries Chaleur-Humidité avec ténesme
249	Associé pour les dysenteries Chaleur-Humidité avec ténesme, et pour toute parasitose intestinale
250	Associé pour les dysenteries Chaleur-Humidité avec ténesme
251	Associé pour toute parasitose intestinale
252	Purgent les accumulations de Chaleur-Plénitude dans l'interne et les selles.
253	Ramollissent et dispersent les indurations, clarifient la Chaleur, traitent les lithiases.
254	Traitent ensemble les toux avec sifflements respiratoires (wheezing)
255	Hoquet persistant par Froid de l'Estomac
256	Active le sang et débloque les règles
256	Fait s'écouler les urines et traite les dysuries lin
257	Active le sang et débloque les règles
258	Active le sang et débloque les règles
258	Réduit les gonflements en cas de gonflement traumatique
259	Active le sang et débloque les règles
260	Favorise la lactation et réduit les gonflements en cas de vide
261	Favorise la lactation et réduit les gonflements en cas de stagnation douloureuse
262	Favorise la lactation et réduit les gonflements en cas de stagnation douloureuse
263	Favorise la lactation et réduit les gonflements en cas de stagnation douloureuse
264	Réduit les gonflements en cas de gonflement traumatique
265	Réduit les gonflements en cas de gonflement traumatique
266	Fait s'écouler les urines et traite les dysuries lin
267	Fait s'écouler les urines et traite les dysuries lin
268	Fait s'écouler les urines et traite les dysuries lin
269	Fait s'écouler les urines et traite les dysuries lin
270	Associé à Fu zi pour traiter l'impuissance, l'infertilité, la faiblesse des lombes et des genoux, les saignements utérins continus.
271	Associé à Tu si zi pour traiter l'impuissance, l'infertilité, la faiblesse des lombes et des genoux, les saignements utérins continus.
272	Saignements divers du foyer médian et supérieur, permettent l'arrêt des saignements sans créer de stase.
273	Ramènent le Feu à sa source (échappement vers le haut)
274	Favorisent la production de sang en tonifiant le Qi et en réchauffant
275	Restaurent le Yang, éliminent le Froid et réchauffent fortement l'interne
276	Avec Huang lian, Jiang can, Qing dai etc. pour les mucosités Chaleur
277	Avec Huang lian, Jiang can, Qing dai etc. pour les mucosités Chaleur
278	Avec Dan nan xing, Jiang can, Gou teng etc. pour les convulsions infantiles et terreurs nocturnes par mucosités Chaleur
279	Avec Tian ma, Quan xie, Wu gong pour traiter les cas sévères de convulsions
280	Avec Tian ma, Quan xie, Wu gong pour traiter les cas sévères de convulsions
281	Avec Tian ma, Quan xie, Wu gong pour traiter les cas sévères de convulsions
282	Associé à Fu ling pour favoriser la diurèse et réduire les œdèmes.
283	Associé à Ze xie pour favoriser la diurèse et réduire les œdèmes.
284	Associé à Zhu ling pour favoriser la diurèse et réduire les œdèmes.
285	Mobilisent fortement le Qi et le sang dans les organes, entrailles et méridiens, calment la douleur, réduisent les gonflements et régénèrent les tissus
286	Clarifient la Chaleur tout en resserrant, assèchent l'Humidité et arrêtent les leucorrhées.
287	En cas de mucosités Humidité qui s'accumulent en goître ; également associé pour faire s'écouler l'eau et réduire les œdèmes
288	En cas de mucosités Humidité qui s'accumulent en goître
289	En cas de mucosités Humidité qui s'accumulent en goître
290	En cas de stagnation de Qi et de mucosités
291	En cas de stagnation de Qi et de mucosités
292	En cas de stagnations de mucosités et de Feu
293	En cas de stagnations de mucosités et de Feu
294	En cas de stagnations de mucosités et de Feu
295	Pour faire s'écouler l'eau et réduire les œdèmes
296	Pour faire s'écouler l'eau et réduire les œdèmes
297	Tonifient le Qi, nourrissent le Cœur, clarifient la Chaleur, ferment les pores de la peau et arrêtent la transpiration.
298	Réveillent le Shen et ouvrent les Orifices.
299	Renforcent les Reins et calment le Foie, traitent les occlusions, ouvrent les orifices et favorisent l'ouïe.
300	Dissolvent les Mucosités, éliminent la Stase, ouvrent les ramifications et ouvrent les Orifices.
301	Tonifient le Qi des Reins, ouvrent l'orifice de l'oreille et calment le Shen.
302	Favorisent la digestion, transforment l'Humidité trouble et harmonisent le Centre.
303	Se rendent au Cœur, dissolvent les Mucosités et désobstruent les orifices du Cœur, font communiquer Cœur et Reins, réveillent le Shen.
304	Tonifient le Qi pour produire rapidement le Sang.
305	Tonifient fortement le Qi, notamment au Foyer Médian et sur le biao.
306	Consolident le biao, tonifient weiqi et arrêtent la transpiration.
307	Tonifient le Qi et le Cœur, clarifient la Chaleur, consolident le biao, arrêtent la transpiration.
308	Tonifient le Qi et restaurent le Yang, consolident le biao et arrêtent la transpiration.
309	Tonifient le Qi, retiennent le yin, consolident le biao et arrêtent la transpiration.
310	Tonifient le Qi et nourrissent le yin.
311	Transforment et expulsent les mucosités Chaleur qui encombrent le Poumon
312	Dan nan xing et Xuan fu hua : transforment les mucosités Chaleur
312	Tian nan xing et Xuan fu hua : chassent les mucosités des méridiens et ramifications
804	Élèvent le Yang du Foie et de la Rate
313	Tonifient le Foie et les Reins, renforcent les lombes et calment le fœtus.
314	Réchauffent le Poumon, favorisent la réception de son Qi par les Reins, arrêtent la toux et traitent l'asthme.
315	Tonifient le yang de la Rate et des Reins et arrêtent la diarrhée.
316	Tiédissent les Reins, renforcent le yang, renforcent les lombes, arrêtent la douleur, renforcent les tendons et les os et chassent le Vent Humidité.
317	Tonifient le Yang des Reins et nourrissent le Jing.
318	Harmonisent l'Estomac et transforment les mucosités Humidité au foyer médian
319	Transforment les mucosités Humidité et arrêtent les vomissements et la toux
320	Traitent les vomissements avec mucosités Humidité ou mucosités Chaleur, et Chaleur de l'Estomac
321	Transforment les mucosités Chaleur et calment les vomissements et nausées avec Froid et Chaleur simultanés
322	Clarifient la Chaleur et assèchent l'Humidité pour favoriser l'Estomac et la Rate
323	Mobilisent le Qi et le Sang sans blesser le Sang, nourrissent le Sang sans produire de Stases, dispersent les Stases de Sang et arrêtent la douleur.
324	Mobilisent le Sang, régularisent les règles et arrêtent la douleur.
325	Tonifient le Qi pour produire rapidement le Sang.
326	Nourrissent le Sang du Foie et le yin du Foie et des Reins, font descendre le Qi du Poumon, favorisent la réception du Qi par les Reins, arrêtent la toux et calment la dyspnée.
327	Avec Ce bai ye, Bai mao gen et Sheng di huang pour traiter la Chaleur du sang
328	Avec Ce bai ye, Bai mao gen et Sheng di huang pour traiter la Chaleur du sang ; avec Bai mao gen pour traiter les lin de sang
329	Avec Ce bai ye, Bai mao gen et Sheng di huang pour traiter la Chaleur du sang
330	Avec Long yan rou, Ren shen, Shu di et Gou qi zi pour traiter les vides de Qi et de sang
331	Avec Long yan rou, Ren shen, Shu di et Gou qi zi pour traiter les vides de Qi et de sang
332	Avec Long yan rou, Ren shen, Shu di et Gou qi zi pour traiter les vides de Qi et de sang
333	Avec Di yu pour arrêter les dysenteries chroniques
334	Associé avec Chuan xiong, E zhu, San leng etc. pour les rétentions placentaires ou masses abdominales
335	Associé avec Chuan xiong, E zhu, San leng etc. pour les rétentions placentaires ou masses abdominales
336	Associé avec Chuan xiong, E zhu, San leng etc. pour les rétentions placentaires ou masses abdominales
337	Associé avec Gu sui bu, Zi ran tong etc. en traumatologie
338	Associé avec Gu sui bu, Zi ran tong etc. en traumatologie
339	Associés avec Jing da ji et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
340	Associés avec Gan sui et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
341	Avec Sang ye, Qian hu etc. en cas de Vent Chaleur pour clarifier le Poumon et arrêter la toux
342	Avec Sang ye, Qian hu etc. en cas de Vent Chaleur pour clarifier le Poumon et arrêter la toux
343	Avec Sang bai pi, Sha ren, Zhi mu etc. en cas de Vent Sécheresse pour clarifier le Poumon et arrêter la toux
344	Avec Sang bai pi, Sha ren, Zhi mu etc. en cas de Vent Sécheresse pour clarifier le Poumon et arrêter la toux
345	Avec Sang bai pi, Sha ren, Zhi mu etc. en cas de Vent Sécheresse pour clarifier le Poumon et arrêter la toux
346	Avec E jiao, Bai he etc. en cas de vide de Yin du Poumon pour clarifier le Poumon et arrêter la toux
347	Avec E jiao, Bai he etc. en cas de vide de Yin du Poumon pour clarifier le Poumon et arrêter la toux
348	Avec Lu gen, Zhu ru etc. en cas de Chaleur de l'Estomac pour abaisser les contre-courants et arrêter les nausées
349	Avec Lu gen, Zhu ru etc. en cas de Chaleur de l'Estomac pour abaisser les contre-courants et arrêter les nausées
350	Clarifient la Chaleur, nourrissent le Yin, dispersent le Feu Vide, neutralisent la toxicité et l'Humidité du Foyer Inférieur.
351	Clarifient la Chaleur plénitude tout en protégeant les Liquides et le Yin.
352	Associé à Long gu, Mu li, Niu xi, Bai shao etc. dans Zhen gan xi feng tang pour ancrer le Yang du Foie et calmer le Vent par la lourdeur.
353	Associé à Ci shi, Ban xia, Da huang etc. pour l'épilepsie ou la folie furieuse par élévation du Yang avec mucosités-Vent.
354	Associé à Xuan fu hua, Ban xia, Sheng jiang etc. dans Xuan fu dai zhe tang pour abaisser les contre-courants par la lourdeur.
355	Associé à Long dan cao, Qing dai, Bai shao etc. lorsque le feu de la Vésicule Biliaire attaque l'Estomac.
356	Associé à Dang shen, Shan zhu yu, Hu tao ren, Shan yao, Qian shi etc. lorsque Poumon et Reins ne communiquent plus.
357	Stoppent les douleurs gastriques avec combinaison de Froid de l'Estomac et de stagnation de qi du Foie
358	Renforcent le Centre, les fonctions de réception de l'Estomac et de transport de la Rate, et assèchent l'Humidité.
359	Mobilisent le Qi et le Sang, assèchent l'Humidité, et dispersent les nouures.
360	Clarifient la Chaleur, assèchent l'Humidité, dispersent les gonflements et arrêtent la douleur.
361	Mobilisent le Qi, harmonisent Foie et Estomac.
362	Traitent les toux chroniques
363	Avec Dan nan xing, Bai jie zi, Bei mu pour les mucosités collantes, jaunes, épaisses
364	Avec Zhi zi, Qing dai, Gua lou ren en cas de mucosités striées de sang par Chaleur du Poumon ou Feu du Foie qui agresse le Poumon
365	Avec Zhi zi, Qing dai, Gua lou ren en cas de mucosités striées de sang par Chaleur du Poumon ou Feu du Foie qui agresse le Poumon
366	Avec Mu li, Bei mu, Hai zao pour les adénopathies
367	Avec Mu li, Bei mu, Hai zao pour les adénopathies
368	Associé pour traiter les œdèmes
369	Associé pour traiter les œdèmes
370	Associé pour traiter les œdèmes
371	Associé pour traiter les maladies lin
372	Associé pour traiter les maladies lin et l'ictère
373	Associé pour traiter l'ictère
374	Associé pour traiter l'ictère
375	Associé pour traiter les vertiges et céphalées par montée de Yang du Foie
376	Associé pour traiter les vertiges et céphalées par montée de Yang du Foie
377	Associé pour traiter les vertiges et céphalées par montée de Yang du Foie
378	Associé dans Ba zheng san pour favoriser la diurèse et débloquer les lin.
379	Associé dans Ba zheng san pour favoriser la diurèse et débloquer les lin.
380	Associé dans Ba zheng san pour favoriser la diurèse et débloquer les lin.
381	Associé pour traiter l'insomnie, les terreurs nocturnes, avec urines rares et rouges, en dispersant le Feu du Cœur.
382	Associé pour traiter la gorge gonflée et douloureuse ou les aphtes de la langue ; peut être carbonisé, réduit en poudre et appliqué localement.
383	Associé à Ding xiang, Sheng jiang etc. en cas de Froid de l'Estomac ; associé à Ren shen, Ding xiang etc. en cas de Froid vide du foyer médian ; associé à Fu zi, Ren shen, Ding xiang etc. en cas d'effondrement de Yuan qi
384	Associé à Ding xiang, Sheng jiang etc. en cas de Froid de l'Estomac
385	Associé à Ren shen, Ding xiang etc. en cas de Froid vide du foyer médian ; associé à Fu zi, Ren shen, Ding xiang etc. en cas d'effondrement de Yuan qi
386	Associé à Huang lian, Zhu ru etc. en cas de Chaleur de l'Estomac
387	Associé à Huang lian, Zhu ru etc. en cas de Chaleur de l'Estomac
388	Associé à Ban xia, Chen pi, Hou po etc. en cas de mucosités troubles
389	Associé à Ban xia, Chen pi, Hou po etc. en cas de mucosités troubles
390	Associé à Fu zi, Ren shen, Ding xiang etc. en cas d'effondrement de Yuan qi
391	Nourrissent le Yin et le Jing des Reins.
392	Associer avec Chi xiao dou pour augmenter l'aspect diurétique dans le traitement de l'œdème avec blocage urinaire et blocage des selles.
393	Associer avec Ze xie pour augmenter l'aspect diurétique dans le traitement de l'œdème avec blocage urinaire et blocage des selles.
394	Associer avec Bing lang pour augmenter l'aspect purgatif dans le traitement de l'œdème avec blocage urinaire et blocage des selles.
395	Associé à Gan cao pour éliminer la toxicité après un surdosage de Fu zi (aconit)
396	Associé à Xin yi pour ouvrir les orifices du nez
397	Éliminent les accumulations digestives et stagnations tout en fortifiant la Rate
398	Mobilisent le Qi et le sang de la région costale
399	Favorisent la descente du métal au niveau du Poumon et du Gros Intestin
400	Associé en macération alcoolique ou en décoction pour les douleurs rhumatismales, notamment chez les personnes âgées
401	Associé en macération alcoolique pour les douleurs rhumatismales chez les personnes âgées
402	Associé en macération alcoolique pour les douleurs rhumatismales chez les personnes âgées
403	Associé en décoction pour les douleurs rhumatismales
404	Associé avec Ji xue teng en poudre fine, 3g par jour, pour les douleurs rhumatismales
405	Associé à Zhi mu pour les lin Humidité-Chaleur
406	Associé à Huang qi pour les lin Humidité-Chaleur
407	Associé à Tong cao pour les lin Humidité-Chaleur
408	Associé à Bai xian pi pour les dermatoses suintantes et prurigineuses
409	Associé à Chan tui pour les dermatoses suintantes et prurigineuses
410	Associé à Bo he pour les dermatoses suintantes et prurigineuses
411	Associé à Ku shen en bain de siège pour le prurit vulvaire avec Humidité
412	Stagnation alimentaire avec stagnation de Qi et douleurs, ténesme
413	Éliminent le ténia
414	Clarifient la Chaleur et éliminent la toxicité, dispersent les indurations, tuméfactions et abcès, arrêtent la douleur.
415	Clarifient la Chaleur, assèchent l'Humidité, transforment les Mucosités et arrêtent les vomissements.
416	Drainent le Feu, nourrissent le Yin, rétablissent la communication entre le Cœur et les Reins (par vide de Yin), calment le Shen et traitent les dysenteries qui blessent le Yin.
417	Drainent le Feu du Cœur, réchauffent le Yang des Reins, rétablissent la communication entre Cœur et Reins (par vide de Yang).
418	Clarifient la Chaleur, assèchent l'Humidité, dispersent le Feu et éliminent la toxicité des trois Foyers.
419	Drainent le Feu du Foie, clarifient et harmonisent l'Estomac, abaissent le Qi à contre-courant, arrêtent la douleur, les régurgitations acides et les vomissements.
420	Utilisé avec Hua shi, Shi wei etc. pour les lin avec Chaleur et Humidité
421	Utilisé avec Mu tong, Shi wei etc. pour les lin avec Chaleur et Humidité
422	Utilisé avec Chi shao yao, Gan cao etc. pour les abcès et ulcérations avec Chaleur toxique au niveau du sang
423	Utilisé avec Tian hua fen, Gan cao etc. pour les abcès et ulcérations avec Chaleur toxique au niveau du sang
424	Utilisé avec Tian hua fen, Chi shao yao etc. pour les abcès et ulcérations avec Chaleur toxique au niveau du sang
425	Clarifient la Chaleur, drainent l'Humidité, traitent les lin.
426	Associé à Sheng jiang au stade initial d'une atteinte par le Vent-Froid pour libérer la Surface et favoriser la transpiration.
427	Associé à Dan dou chi au stade initial d'une atteinte par le Vent-Froid pour libérer la Surface et favoriser la transpiration.
428	Associé à Fu zi et Gan jiang dans Bai tong tang pour disperser le Froid et débloquer le Yang.
429	Associé à Fu zi et Gan jiang dans Bai tong tang pour disperser le Froid et débloquer le Yang.
430	Libèrent la Surface et la couche musculaire, clarifient la Chaleur, neutralisent la toxicité et font sortir les exanthèmes
431	Transforment et expulsent les mucosités Chaleur qui encombrent le Poumon
432	Avec Zhi zi, faire un onguent à appliquer sur les ulcérations et gonflements de type toxique
433	Avec Ban xia, Wu ling zhi etc. pour traiter les adénopathies et scrofules
434	Avec Chuan wu, Mo yao etc. pour les bi de type Froid, désobstruant les vaisseaux luo et arrêtant la douleur
435	Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)
805	Régularisent le Qi et éliminent la surpression
436	Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)
437	Réchauffe les méridiens et arrête les saignements lorsque la Rate ne contrôle pas le sang (Yaoyao)
438	Réchauffe le centre et calme les douleurs en cas de Froid et de vide de sang dans le post-partum
439	Réchauffe le centre et calme les douleurs en cas de Froid et de vide de sang dans le post-partum
440	Réchauffe le centre et calme les douleurs en cas de diarrhée douloureuse avec Froid de l'abdomen
441	Réchauffe le centre et calme les douleurs en cas de diarrhée douloureuse avec Froid de l'abdomen
442	Clarifient la Chaleur toxique du foyer supérieur et favorisent la gorge
443	Tonifient fortement le Qi, notamment au Foyer Médian et sur le biao.
444	Tonifient le Qi, engendrent les Liquides Organiques, nourrissent le Yin et clarifient la Chaleur.
445	Avec Bu gu zhi etc. pour les douleurs du membre inférieur par vide de yang et froid-humidité concomitants
446	Avec Mu gua etc. pour les douleurs du membre inférieur par vide de yang et froid-humidité concomitants
447	Avec Ba ji tian etc. pour l'impuissance, l'infertilité, les vertiges par vide de Yang des Reins
448	Avec Fu zi etc. pour l'impuissance, l'infertilité, les vertiges par vide de Yang des Reins; Avec Wu zhu yu, Chuan lian zi etc. pour les shan du bas-ventre et des testicules avec prédominance du Froid et de la douleur
449	Avec Chuan lian zi, Ba ji tian etc. pour les shan du bas-ventre et des testicules avec prédominance du Froid et de la douleur
450	Avec Wu zhu yu, Ba ji tian etc. pour les shan du bas-ventre et des testicules avec prédominance du Froid et de la douleur
451	Avec Wu yao etc. pour les douleurs du bas-ventre dues au Froid en gynécologie
452	Avec Dang gui etc. pour les douleurs du bas-ventre dues au Froid en gynécologie
453	Clarifient la Chaleur du Poumon, humidifient sa Sécheresse et transforment les mucosités
454	Associé à Zhi shi pour purger les accumulations et clarifier la Chaleur.
455	Associé à Qian niu zi pour traiter l'ascite.
456	Associé à Da fu pi pour traiter l'ascite.
457	Associé à Chen pi pour favoriser la digestion en cas d'inconfort de l'épigastre et de troubles de la vidange gastrique.
458	Associé à Ding xiang pour favoriser la digestion en cas d'inconfort de l'épigastre et de troubles de la vidange gastrique.
459	Avec Ju hua, Fang feng, Gan cao etc. pour les yeux rouges, gonflés et douloureux avec Feu du Foie
460	Avec Shi jue ming, Mu zei, Qiang huo etc. lorsque le Vent provoque des larmoiements
461	Avec Tu si zi, Rou cong rong, Shan yao, Gou qi zi etc. pour les yeux secs et la vue trouble par vide du Foie et des Reins
462	Associé à Bai bu, Ku shen et She chuang zi en bain de siège pour soulager le prurit et résoudre la toxicité.
463	Associé à Bai bu, Ku shen et She chuang zi en bain de siège pour soulager le prurit et résoudre la toxicité.
464	Tonifient la Rate et traitent diarrhées et leucorrhées, tonifient les Reins et le Jing et contrôlent les urines.
465	Stagnation de Qi et de Froid dans l'abdomen
466	Stagnation de Qi du Foie et stase de sang dans l'utérus
467	Froid-vide de l'utérus, infertilité
468	Stoppent les douleurs gastriques avec combinaison de Froid de l'Estomac et de stagnation de qi du Foie
469	Clarifie la Chaleur et traite la dysphorie lorsque la Chaleur blesse les liquides
470	Clarifie la Chaleur et traite la dysphorie lorsque la Chaleur blesse les liquides
471	Favorise la diurèse pour les maladies lin de Chaleur
472	Favorise la diurèse pour les maladies lin de Chaleur
473	Favorise la diurèse pour les maladies lin de Chaleur
474	Favorise la diurèse pour les lin de sang
475	Drainent l'Humidité-Chaleur.
476	Avec Gan jiang, Hou po, Fu zi etc. pour les nausées, gastralgies, diarrhées avec froid de l'Estomac
477	Avec Gan jiang, Hou po, Fu zi etc. pour les nausées, gastralgies, diarrhées avec froid de l'Estomac
478	Avec Pu huang, Wu ling zhi etc. pour les dysménorrhées
479	Avec Pu huang, Wu ling zhi etc. pour les dysménorrhées
480	Tonifient la Rate et traitent diarrhées et leucorrhées, tonifient les Reins et le Jing et contrôlent les urines.
481	Avec Lai fu zi et Bai jie zi (San zi yang qin tang) en cas de mucosités-Froid
482	Avec Lai fu zi et Bai jie zi (San zi yang qin tang) en cas de mucosités-Froid
483	Avec Ban xia, Hou po, Rou gui etc. (Su zi jiang qi tang) pour l'asthme avec mucosités Froid
484	Avec Ban xia, Hou po, Rou gui etc. (Su zi jiang qi tang) pour l'asthme avec mucosités Froid
485	Avec Huo ma ren etc. pour lubrifier les intestins et débloquer les selles
486	Associé à Xiao ji en cas d'hémoptysie ou hématémèse, et en cas de sang dans les urines
487	Associé à Da ji en cas d'hémoptysie ou hématémèse
488	Associé à Pao jiang dans Bai ye tang en cas de Froid vide
489	Associé à Ai ye dans Bai ye tang en cas de Froid vide
490	Associé à Bai mao gen en cas de sang dans les urines
491	Associé à Di yu en cas de rectorragies
492	Associé à Huai hua en cas de rectorragies
493	Associé à Xiang fu, Yan hu suo, Yu jin etc. pour les douleurs de la poitrine et des flancs, de l'abdomen et de l'épigastre.
494	Associé à Xiang fu, Yan hu suo, Yu jin etc. pour les douleurs de la poitrine et des flancs, de l'abdomen et de l'épigastre.
495	Associé à Xiang fu, Yan hu suo, Yu jin etc. pour les douleurs de la poitrine et des flancs, de l'abdomen et de l'épigastre.
496	Associé à Yin yang huo, Du zhong, Bu gu zhi etc. pour l'impuissance, lombes et genoux faibles et douloureux, incontinence.
497	Associé à Yin yang huo, Du zhong, Bu gu zhi etc. pour l'impuissance, lombes et genoux faibles et douloureux, incontinence.
498	Associé à Yin yang huo, Du zhong, Bu gu zhi etc. pour l'impuissance, lombes et genoux faibles et douloureux, incontinence.
499	Avec Xiao hui xiang, Wu zhu yu, Ju he, Qing pi pour les pathologies Shan
500	Avec Xiao hui xiang, Wu zhu yu, Ju he, Qing pi pour les pathologies Shan
501	Avec Xiao hui xiang, Wu zhu yu, Ju he, Qing pi pour les pathologies Shan
502	Pour les gastralgies chroniques et les dysménorrhées, avec Mu xiang, Xiang fu, Chuan xiong, Dang gui, Yi mu cao
503	Pour les gastralgies chroniques et les dysménorrhées, avec Mu xiang, Xiang fu, Chuan xiong, Dang gui, Yi mu cao
504	Pour les gastralgies chroniques et les dysménorrhées, avec Mu xiang, Xiang fu, Chuan xiong, Dang gui, Yi mu cao
505	Pour les gastralgies chroniques et les dysménorrhées, avec Mu xiang, Xiang fu, Chuan xiong, Dang gui, Yi mu cao
506	Pour les gastralgies chroniques et les dysménorrhées, avec Mu xiang, Xiang fu, Chuan xiong, Dang gui, Yi mu cao
507	Dispersent le Vent, contribuent à la diffusion du Qi du Poumon et désobstruent les orifices du nez.
508	Désobstruent et activent la circulation dans les 12 méridiens, dispersent le Vent-Humidité et arrêtent la douleur.
509	Associé à Xiao ji et Ce bai ye dans Shi hui san contre les hémoptysies, hématémèse, épistaxis
510	Associé à Xiao ji et Ce bai ye dans Shi hui san contre les hémoptysies, hématémèse, épistaxis
511	Associé à Sheng di huang, Bai zhu, Yi mu cao pour traiter la métrorragie et les saignements pendant la grossesse
512	Associé à Sheng di huang, Bai zhu, Yi mu cao pour traiter la métrorragie et les saignements pendant la grossesse
513	Associé à Sheng di huang, Bai zhu, Yi mu cao pour traiter la métrorragie et les saignements pendant la grossesse
514	Se potentialisent, libèrent fortement la surface et provoquent la transpiration pour éliminer le Vent-Froid
515	Se complètent, diffusent le qi du Poumon, calment la dyspnée, débloquent les urines, éliminent les gonflements, clarifient la Chaleur et drainent le Feu
516	Utilisé avec Xi yang shen lorsque la toux chronique épuise le Poumon
517	Utilisé avec Xi yang shen lorsque la toux chronique épuise le Poumon
518	Utilisé avec Xi yang shen lorsque la toux chronique épuise le Poumon, et lorsque la Chaleur blesse le Qi et le Yin
519	Utilisé avec Xi yang shen lorsque la Chaleur blesse le Qi et le Yin
520	Associé à Xi yang shen dans les cas de constipation sèche avec saignements du rectum
521	Chassent le Vent et traitent les bi, désobstruent les luo et traitent la douleur.
522	Nourrissent le yin du Foie et des Reins et le Sang du Foie, calment le Foie et éteignent le Vent.
523	Avec Hai fu shi, Hai ge ke, Xuan fu hua etc. pour les mucosités agglomérées difficiles à expectorer
524	Avec Hai fu shi, Hai ge ke, Xuan fu hua etc. pour les mucosités agglomérées difficiles à expectorer
525	Avec Hai fu shi, Hai ge ke, Xuan fu hua etc. pour les mucosités agglomérées difficiles à expectorer
526	Avec San leng, E zhu etc. pour les masses abdominales
527	Avec San leng, E zhu etc. pour les masses abdominales
528	Avec Gan cao, Zhe bei mu, Bai ji etc. pour les dysharmonies Foie / Estomac
529	Avec Gan cao, Zhe bei mu, Bai ji etc. pour les dysharmonies Foie / Estomac
530	Avec Gan cao, Zhe bei mu, Bai ji etc. pour les dysharmonies Foie / Estomac
531	Associé à Da huang et Gan jiang pour purger les accumulations de nature Froide
532	Associé à Da huang et Gan jiang pour purger les accumulations de nature Froide
533	Associé à Cang zhu et Chen pi pour éliminer les accumulations d'eau et traiter l'œdème
534	Associé à Cang zhu et Chen pi pour éliminer les accumulations d'eau et traiter l'œdème
535	Associé à Bei mu et Jie geng pour éliminer les mucosités, profiter à la gorge et traiter les nouures de poitrine
536	Associé à Ru xiang et Mo yao en application externe pour tuer les parasites et traiter les ulcérations purulentes sans écoulement, la gale, la gangrène
537	Associé à Ru xiang et Mo yao en application externe pour tuer les parasites et traiter les ulcérations purulentes sans écoulement, la gale, la gangrène
538	Élèvent le Yang du Foie et de la Rate
539	Libèrent la Surface et la couche musculaire, clarifient la Chaleur, neutralisent la toxicité et font sortir les exanthèmes
540	Montent, dispersent, chassent le Vent, clarifient la Chaleur et arrêtent la douleur
541	Clarifient et drainent le Feu du Yangming
542	Clarifient la Chaleur, neutralisent la toxicité et assouplissent la gorge
543	Toux et dyspnée par mucosités Chaleur
544	Traitent la Chaleur-vide du Poumon
545	Associé pour favoriser la digestion et transformer les accumulations, notamment en cas d'indigestions de viandes, graisses et produits laitiers
546	Associé pour favoriser la digestion et transformer les accumulations, notamment en cas d'indigestions de viandes, graisses et produits laitiers
547	Associé pour favoriser la digestion et transformer les accumulations, notamment en cas d'indigestions de viandes, graisses et produits laitiers
548	Associé pour favoriser la digestion et transformer les accumulations, notamment en cas d'indigestions de viandes, graisses et produits laitiers
549	Associé pour mobiliser le Qi et disperser les stases de sang
550	Associé pour mobiliser le Qi et disperser les stases de sang
551	Associé pour mobiliser le Qi et disperser les stases de sang
552	Associé pour mobiliser le Qi et disperser les stases de sang
553	Associé pour traiter l'hyperlipidémie, l'hypertension et les pathologies coronariennes
554	Avec San qi et Xue yu tan, pour traiter l'hématémèse, hémoptysie, etc.
555	Avec San qi et Xue yu tan, pour traiter l'hématémèse, hémoptysie, etc.
556	Avec Long gu, Ru xiang etc., pour traiter les blessures qui cicatrisent mal, voie externe ou interne
557	Avec Long gu, Ru xiang etc., pour traiter les blessures qui cicatrisent mal, voie externe ou interne
558	Calment le Foie, abaissent le Yang, calment le Shen, ramollissent les indurations, dispersent les masses et retiennent les échappements.
559	Nourrissent le yin, arrêtent la transpiration, tranquilisent le Cœur et calment l'Esprit.
560	Tonifient le Qi, retiennent le yin, consolident le biao et arrêtent la transpiration.
561	Calment le Foie, dispersent le Feu, transforment les Mucosités, dispersent les indurations.
562	Associé pour traiter la sécheresse du Poumon
563	Associé pour traiter la sécheresse du Poumon
564	Associé pour traiter les vertiges, palpitations et vieillissement précoce par vide de Jing et de sang
565	Associé pour traiter les vertiges, palpitations et vieillissement précoce par vide de Jing et de sang
566	Associé pour traiter les vertiges, palpitations et vieillissement précoce par vide de Jing et de sang
567	Associé pour traiter les vertiges, palpitations et vieillissement précoce par vide de Jing et de sang
568	Associé pour tonifier le Qi de la Rate
569	Associé pour tonifier le Qi de la Rate
570	Associé pour tonifier le Qi de la Rate
571	Clarifient la Chaleur plénitude du Poumon et de l'Estomac tout en protégeant les liquides
572	Clarifient la Chaleur, désobstruent les Luo, arrêtent la douleur et traitent les Re Bi
573	Favorisent la diffusion du Qi du Poumon, calment la dyspnée, favorisent la diurèse, réduisent les gonflements, clarifient la Chaleur et dispersent le Feu
574	Clarifient la Chaleur dans la couche du Qi et dans la couche du Sang
575	Avec Chan tui, Huang qin etc. pour traiter les taies et conjonctivites larmoyantes dues au Vent-Chaleur
576	Avec Huang bai, Yi mu cao etc. pour divers saignements, par voie interne ou externe
577	Désobstruent et activent la circulation dans les 12 méridiens, dispersent le Vent-Humidité et arrêtent la douleur.
578	Tonifient le Foie et les Reins, traitent les bi et arrêtent la douleur.
579	Chassent le Vent et traitent les bi, ouvrent les collatéraux et arrêtent la douleur.
580	Drainent l'Humidité et traitent l'ictère.
581	Calment le Foie, abaissent le Yang, calment le Shen, ramollissent les indurations, dispersent les masses et retiennent les échappements.
582	Associé à Wu ling zhi, Xiang fu, Dang gui etc. pour les stases de sang du post partum
583	Associé à Wu ling zhi, Xiang fu, Dang gui etc. pour les stases de sang du post partum
584	Associé à Wu ling zhi, Xiang fu, Dang gui etc. pour les stases de sang du post partum
585	Associé à Quan xie pour éteindre le Vent et arrêter les tremblements et convulsions (Yaoyao).
586	Mobilisent le Qi du Foie, éteignent le Vent et traitent les convulsions.
587	Chaleur du sang avec stase de sang
588	Mobilisent le sang et calment les palpitations, calment les douleurs dans le Bi de poitrine
589	Mobilisent le Qi, le sang, et chassent le Froid, calment les fortes douleurs dans le Bi de poitrine ou les stases de sang et de Froid dans l'Estomac
590	Traite les douleurs des stagnations de Qi et de Sang de la région de la poitrine et du diaphragme
591	Montent et mobilisent le haut pour traiter les articulations de l'épaule, du bras, de la main, ainsi que les engourdissements des membres supérieurs.
592	Tonifient le Foie et les Reins, renforcent les tendons et les os, dispersent le Vent-Humidité, désobstruent les canaux et collatéraux, arrêtent la douleur.
593	Associé pour traiter les chancres syphilitiques
594	Associé pour traiter les chancres syphilitiques
595	Associé pour traiter les maladies lin (élimination de l'Humidité et de la toxicité)
596	Associé pour traiter les maladies lin (élimination de l'Humidité et de la toxicité)
597	Associé pour traiter les maladies lin (élimination de l'Humidité et de la toxicité)
598	Associé pour traiter les adénopathies, abcès et troubles gynécologiques par Humidité Chaleur du foyer inférieur
599	Associé pour traiter les adénopathies, abcès et troubles gynécologiques par Humidité Chaleur du foyer inférieur
600	Associé pour traiter les adénopathies, abcès et troubles gynécologiques par Humidité Chaleur du foyer inférieur
601	Clarifient la Chaleur et éliminent la toxicité, traitent les furoncles, abcès, ulcérations douloureuses
602	Ils se complètent pour réchauffer l'interne, purger l'accumulation de froid et les selles.
603	Purgent les accumulations de Chaleur-Plénitude dans l'interne et les selles.
604	Mobilisent le Qi, expulsent les Stagnations, dispersent les nouures, éliminent les accumulations dans les intestins, drainent le Feu, débloquent les selles.
605	Traitent la douleur dans les stagnations de Qi et stases de sang
606	Mobilisent le sang et chassent les stases
607	Associé à Gan sui, Yuan hua et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
608	Associé à Gan sui, Yuan hua et Da zao dans Shi zao tang pour purger et éliminer les accumulations d'eau et de liquides.
609	En cas de toux avec mucosités Chaleur
610	En cas de toux avec mucosités Chaleur
611	En cas d'aphasie après un AVC
612	En cas d'aphasie après un AVC
613	En cas d'aphasie après un AVC
614	En cas de crise d'épilepsie, convulsions, perte de connaissance
615	En cas de crise d'épilepsie, convulsions, perte de connaissance
616	Permettent la diffusion et la descente du Qi du Poumon, éliminent les Mucosités et calment la dyspnée.
617	Régularisent le Qi et traitent la Stagnation de Qi du Foie, tonifient les Reins et nourrissent le Jing, tonifient le Foie et éclaircissent les yeux.
618	Clarifient la Chaleur de la couche du Qi et de la couche du Sang.
619	Nourrissent le Yin, clarifient la Chaleur, arrêtent les saignements.
620	Nourrissent le Foie et le Cœur et calment le Shen
621	Tonifient le Foie et les Reins, renforcent les tendons et les os, arrêtent les métrorragies de la grossesse et calment le fœtus.
622	Tonifient le Foie et les Reins, chassent le Vent Humidité, libèrent les articulations et calment le fœtus.
623	Utilisé avec Bai tou weng, Huang lian, Huang bai etc. dans Bai tou weng tang pour clarifier la Chaleur et assécher l'Humidité
624	Utilisé avec Huang lian dans Bai tou weng tang pour clarifier la Chaleur et assécher l'Humidité
625	Utilisé avec Huang bai dans Bai tou weng tang pour clarifier la Chaleur et assécher l'Humidité
626	Utilisé avec Zhi zi et Dan zhu ye pour traiter les taies oculaires avec yeux rouges et gonflés, favorisant les yeux et la vue
627	Utilisé avec Dan zhu ye et Zhi zi pour traiter les taies oculaires avec yeux rouges et gonflés, favorisant les yeux et la vue
628	Ensemble, ils éliminent le ténia
629	Avec Dang gui, Hong hua, Chi shao pour les aménorrhées par stase de sang
630	Avec Dang gui, Hong hua, Chi shao pour les aménorrhées par stase de sang
631	Avec Ci ji li, Sheng di huang, Chan tui pour les dermatoses par Chaleur dans la couche du sang
632	Avec Ci ji li, Sheng di huang, Chan tui pour les dermatoses par Chaleur dans la couche du sang ; avec Di yu, Huai hua, Sheng di huang en cas de métrorragies ou de sang dans les selles
633	Avec Ci ji li, Sheng di huang, Chan tui pour les dermatoses par Chaleur dans la couche du sang
634	Avec Di yu, Huai hua, Sheng di huang en cas de métrorragies ou de sang dans les selles
635	Avec Di yu, Huai hua, Sheng di huang en cas de métrorragies ou de sang dans les selles
636	Nourrissent le Foie et le Cœur et calment le Shen.
637	Nourrissent et mobilisent le Sang, calment l'Esprit et traitent l'agitation anxieuse.
638	Nourrissent le Sang, clarifient le Cœur, traitent l'agitation anxieuse et calment le Shen.
639	Nourrissent le Cœur et calment l'Esprit.
640	Nourrissent le Sang, calment le Shen, clarifient le Cœur et traitent l'agitation anxieuse.
641	Nourrissent et clarifient le Cœur, calment l'Esprit, rafraîchissent le Sang et traitent l'agitation anxieuse.
642	Nourrissent le Sang du Foie et abaissent son yang.
643	Associé pour assécher l'Humidité et disperser le Froid
644	Associé pour renforcer l'action contre le Froid
645	Associé pour renforcer l'action contre le Froid
646	Associé dans Da yuan yin pour expulser les mucosités et traiter la malaria
647	Associé dans Da yuan yin pour expulser les mucosités et traiter la malaria
648	Brisent les stagnations de Qi et les stases de sang, calment les douleurs et dissipent les accumulations
649	Utilisé ensemble dans Bai tou weng tang pour traiter les diarrhées hémorragiques par Chaleur toxique
650	Utilisé ensemble dans Bai tou weng tang pour traiter les diarrhées hémorragiques par Chaleur toxique
651	Utilisé ensemble dans Bai tou weng tang pour traiter les diarrhées hémorragiques par Chaleur toxique
652	Dispersent le Foie, régularisent le Qi, drainent l'Humidité-Chaleur, traitent l'ictère et évacuent les lithiases.
653	Clarifient la Chaleur, drainent l'Humidité, favorisent les urines, traitent les lin et évacuent les lithiases.
654	Clarifient la Chaleur, drainent l'Humidité, traitent l'ictère, éliminent la toxicité.
655	Troubles gastriques et intestinaux par mélange de Froid et de Chaleur
656	Réchauffent et consolident le Poumon, transforment les mucosités et calment la toux
657	Sauvent des inversions, restaurent le Yang
658	Associé pour traiter l'impuissance et le manque de libido
659	Associé pour traiter l'impuissance et le manque de libido
660	Associé pour traiter l'impuissance et le manque de libido
661	Associé pour traiter l'infertilité par froid de l'utérus
662	Associé pour les douleurs et faiblesses des lombes et des genoux par vide du Foie et des Reins
663	Associé pour les douleurs et faiblesses des lombes et des genoux par vide du Foie et des Reins
664	Associé pour les douleurs et faiblesses des lombes et des genoux par vide du Foie et des Reins
665	Associé pour disperser le Vent-Humidité et traiter les bi
666	Associé pour disperser le Vent-Humidité et traiter les bi
667	Chassent le Vent-Chaleur, font sortir les exanthèmes et traitent le prurit
668	Traitent le Vent-Chaleur qui touche également la gorge, avec douleurs à la déglutition
669	Traitent le Vent-Chaleur qui touche également les yeux (allergies saisonnières par exemple)
670	Avec Gan cao, Bing pian etc. pour la gorge gonflée et douloureuse, les aphtes, etc.
671	Avec Shi gao, Sheng ma etc. pour la Chaleur toxique dans la couche du sang
672	Avec Hai fu shi, Gua lou ren, Chuan bei mu etc. pour une révolte du Foie sur le Poumon avec mucosités striées de sang, oppressions thoraciques etc.
673	Avec Lu hui, Huang lian, Niu huang, Gou teng etc. pour le Feu du Foie et de la Vésicule Biliaire qui provoque des spasmes
674	Clarifient la Chaleur Vide et drainent l'Humidité-Chaleur.
675	Tonifient sans faire stagner, drainent sans blesser le Qi correct, tonifient les Reins et drainent l'Humidité.
676	Avec Shi jue ming pour les vertiges et l'agitation par Yang du Foie qui agite le haut
677	Avec Dai zhe shi pour les vertiges et l'agitation par Yang du Foie qui agite le haut
678	Avec Mu li pour les vertiges et l'agitation par Yang du Foie qui agite le haut
679	Avec Gou teng pour les vertiges par Feu du Foie qui brûle le haut
680	Avec Xia ku cao pour les vertiges par Feu du Foie qui brûle le haut
681	Avec Ju hua pour les vertiges par Feu du Foie qui brûle le haut
682	Avec Che qian zi pour favoriser la diurèse
683	Avec Mu tong pour favoriser la diurèse
684	Avec Zhu ling pour favoriser la diurèse
685	Avec Ze xie pour favoriser la diurèse
686	Clarifient la Chaleur toxique, rafraîchissent le Sang, nourrissent le Yin, abaissent le Feu, assouplissent la gorge, dispersent les gonflements et tuméfactions et arrêtent la douleur.
687	Clarifient la Chaleur et transforment les mucosités pour dissiper les indurations.
688	Associé à Xia ku cao pour apaiser le Yang du Foie et abaisser la tension artérielle.
689	Associé à Gou teng pour apaiser le Yang du Foie et abaisser la tension artérielle.
690	Dissolvent les masses et indurations par mucosités Chaleur
691	Associé à Pi pa ye, Xing ren, Sang bai pi etc. pour clarifier le Poumon et transformer les mucosités.
692	Associé à Pi pa ye, Xing ren, Sang bai pi etc. pour clarifier le Poumon et transformer les mucosités.
693	Associé à Hai zao, Kun bu, Wa leng zi etc. pour ramollir les indurations et disperser les nodosités (goitres, adénopathies).
694	Associé à Hai zao, Kun bu, Wa leng zi etc. pour ramollir les indurations et disperser les nodosités (goitres, adénopathies).
695	Associé à Hai zao, Kun bu, Wa leng zi etc. pour ramollir les indurations et disperser les nodosités (goitres, adénopathies).
696	Associé à Gan cao, Chuan bei mu, Yan hu suo etc. pour traiter l'acidité gastrique et calmer les douleurs (forme calcinée).
697	Associé à Gan cao, Chuan bei mu, Yan hu suo etc. pour traiter l'acidité gastrique et calmer les douleurs (forme calcinée).
698	Associé à Gan cao, Chuan bei mu, Yan hu suo etc. pour traiter l'acidité gastrique et calmer les douleurs (forme calcinée).
699	Traitent les obstructions douloureuses (Bi)
700	Traitent la douleur liée au Froid en mobilisant le Qi et le Sang
701	Renforcent le Biao, tonifient Weiqi et régularisent la transpiration
702	Traitent la douleur causée par le Vent-Humidité
703	Clarifient la Chaleur et éliminent la toxicité, favorisent la gorge.
704	Clarifient la Chaleur, favorisent la gorge, dispersent les tuméfactions, arrêtent la douleur.
705	Clarifient le Poumon et éliminent la toxicité.
706	Tiédissent le Poumon, transforment les Mucosités, arrêtent la toux et calment la dyspnée.
707	Nourrissent le Cœur et calment l'Esprit.
708	Transforment les Mucosités, diffusent le Qi du Poumon et le font descendre, arrêtent la toux et calment la dyspnée.
709	Tiédissent le Centre, éliminent l'Humidité, tonifient les Reins, resserrent les Intestins et arrêtent la diarrhée.
710	Drainent le Feu, nourrissent le Yin, rétablissent la communication entre le Cœur et les Reins, calment le Shen et traitent les dysenteries qui blessent le Yin.
711	Nourrissent le Yin, clarifient la Chaleur, arrêtent les saignements.
712	Tonifient la Rate, drainent l'Humidité et tranquillisent le Cœur.
713	Clarifient la Chaleur, traitent la Canicule, promeuvent la diurèse sans blesser le Centre. Drainent l'Humidité et traitent les lin.
714	Apaisent le Foie, harmonisent le centre et calment les douleurs
715	Préviennent la formation de sang mort en traumatologie
716	Associé pour traiter l'impuissance et l'infertilité par vide de Yang des Reins
717	Associé pour traiter l'impuissance et l'infertilité par vide de Yang des Reins
718	Associé pour traiter l'impuissance et l'infertilité par vide de Yang des Reins
719	Associé pour les toux d'épuisement avec hémoptysie
720	Associé pour les toux d'épuisement avec hémoptysie
721	Associé pour les toux d'épuisement avec hémoptysie
722	Associé pour les toux chroniques
723	Associé pour les toux chroniques
724	Associé pour les toux chroniques
725	Associé pour les toux chroniques
726	Associé pour réchauffer le centre, arrêter les douleurs, abaisser le qi et dissoudre les mucosités
727	Associé pour réchauffer le centre, arrêter les douleurs, abaisser le qi et dissoudre les mucosités
728	Dispersent les Mucosités, abaissent le Qi à contre-courant, harmonisent l'Estomac, arrêtent les vomissements.
729	Tiédissent le Centre, harmonisent l'Estomac, abaissent le Qi à contre-courant et arrêtent les vomissements.
730	Associé à Fang ji, Niu xi, Wei ling xian etc. pour traiter les douleurs du membre inférieur dans les syndromes bi
731	Associé à Wu zhu yu, Zi su ye, Bing lang etc. pour traiter les névrites périphériques de type béribéri
731	Associé à Can sha, Yi yi ren, Huang lian, Wu zhu yu etc. pour traiter les crampes et spasmes suite à une déshydratation par dysenterie ou vomissements
732	Associé à Wu zhu yu, Zi su ye, Bing lang etc. pour traiter les névrites périphériques de type béribéri
733	Associé à Wu zhu yu, Zi su ye, Bing lang etc. pour traiter les névrites périphériques de type béribéri
734	Associé à Can sha, Yi yi ren, Huang lian, Wu zhu yu etc. pour traiter les crampes et spasmes suite à une déshydratation par dysenterie ou vomissements
735	Associé à Can sha, Yi yi ren, Huang lian, Wu zhu yu etc. pour traiter les crampes et spasmes suite à une déshydratation par dysenterie ou vomissements
736	Associé à Che qian zi (et Hua shi, dans Ba zheng san) pour clarifier la Chaleur et favoriser la diurèse
737	Associé à Dang gui, Chi shao yao et Da huang pour traiter les aménorrhées par stase de sang et Chaleur du sang
738	Avec Long gu, Wu wei zi, Fu zi etc. pour les spermatorrhées par vide des Reins
738	Dans Sang piao xiao san, avec Long gu, Gui ban etc. pour consolider le jing et retenir les urines
739	Avec Long gu, Wu wei zi, Fu zi etc. pour les spermatorrhées par vide des Reins
740	Avec Long gu, Wu wei zi, Fu zi etc. pour les spermatorrhées par vide des Reins
741	Avec Lu jiao jiao, Bu gu zhi, Tu si zi etc. pour l'impuissance par vide de Yang des Reins
742	Avec Lu jiao jiao, Bu gu zhi, Tu si zi etc. pour l'impuissance par vide de Yang des Reins
743	Utilisé ensemble dans plusieurs formules pour rafraîchir le Sang, éliminer la toxicité, traiter les macules et saignements sous-cutanés, et calmer l'Esprit en cas de pertes de connaissance avec convulsion et délires.
744	Utilisé ensemble pour rafraîchir le Sang et éliminer la toxicité dans les formules Qing ying tang et Hua ban tang.
745	Associé dans Xi jiao di huang tang pour éliminer la toxicité et traiter les macules et saignements sous-cutanés.
746	Associé dans Xi jiao di huang tang pour éliminer la toxicité et traiter les macules et saignements sous-cutanés.
747	Associé dans Hua ban tang pour éliminer la toxicité et traiter les macules.
748	Associé pour calmer l'Esprit et traiter les pertes de connaissance avec convulsion et délires.
749	Associé pour calmer l'Esprit et traiter les pertes de connaissance avec convulsion et délires.
750	Associé pour calmer l'Esprit et traiter les pertes de connaissance avec convulsion et délires.
751	Associé à Bai zhu pour favoriser la diurèse et traiter les œdèmes
752	Drainent le Feu du Foie, harmonisent le Qi du Foie et de l'Estomac et calment le Shen.
753	Calment le Foie, dispersent le Feu, transforment les Mucosités, dispersent les indurations.
754	Clarifient la Chaleur et transforment les mucosités pour dissiper les nodosités.
755	Nourrissent le yin du Poumon, arrêtent la toux, transforment la Stase et arrêtent les saignements.
756	Humidifient le Poumon, clarifient la Chaleur, nourrissent le Cœur et calment l'Esprit.
757	Clarifient le Cœur et nourrissent le yin, humidifient la Sécheresse et calment l'Esprit.
758	Nourrissent et clarifient le Cœur et mobilisent le Sang.
759	Désobstruent les méridiens et ramifications, mobilisent le Sang et arrêtent la douleur.
760	Dissolvent les Mucosités, éliminent la Stase, ouvrent les ramifications et libèrent les Orifices.
761	Associé à Mu tong, Qing pi, Chi shao yao, Lian qiao etc. pour les lin Chaleur
762	Associé à Zhu ling, Ze xie, Mu tong etc. pour les œdèmes au stade initial d'une maladie fébrile, avec urines rares
763	Utilisé dans San ren tang avec Yi yi ren, Hou po, Hua shi etc.
764	Associé à Chuan xiong, Ren shen etc. pour débloquer le Qi et favoriser la lactation
765	Harmonisent le biao et le li, le Shaoyang, le Foie, la Vésicule Biliaire, clarifient la Chaleur du Foie et mobilisent son Qi, traitent l'Humidité Chaleur du Foie et de la Vésicule Biliaire.
766	Clarifient la Chaleur, assèchent l'Humidité, dispersent le Feu et neutralisent la toxicité des trois Foyers.
767	Clarifient la Chaleur qui agite le fœtus, assèchent l'Humidité, tonifient la Rate pour contenir le Sang et le fœtus.
768	Associé à Huang lian (et Huang bai etc.) lorsqu'une dysenterie Chaleur-Humidité se chronicise, pour resserrer les Intestins et arrêter la diarrhée.
769	Associé à Huang bai (et Huang lian etc.) lorsqu'une dysenterie Chaleur-Humidité se chronicise, pour resserrer les Intestins et arrêter la diarrhée.
770	Associé à Bing lang (et Shi jun zi etc.) pour traiter les oxyures, ascaris, ténias, en tuant les parasites et calmant les douleurs.
771	Associé à Shi jun zi (et Bing lang etc.) pour traiter les oxyures, ascaris, ténias, en tuant les parasites et calmant les douleurs.
772	Associé à Dang gui (et E jiao, Ai ye etc.) pour arrêter les métrorragies et les saignements.
773	Associé à E jiao (et Dang gui, Ai ye etc.) pour arrêter les métrorragies et les saignements.
774	Associé à Ai ye (et Dang gui, E jiao etc.) pour arrêter les métrorragies et les saignements.
775	Font descendre le Qi du Poumon, régularisent le Qi et favorisent la voix.
776	Tonifient le Qi du Poumon, arrêtent la toux et calment la dyspnée.
777	Tiédissent le Centre, resserrent les Intestins et arrêtent la diarrhée.
778	Clarifient le Poumon et éliminent la toxicité.
779	Bi de poitrine avec mucosités troubles bloquées dans la cage thoracique, ou constipation par sécheresse et stagnation de qi
780	Utilisé avec Huang qin, Bei mu etc. pour la toux avec mucosités de type Chaleur
781	Utilisé avec Gua lou, Bei mu etc. pour la toux avec mucosités de type Chaleur
782	Utilisé avec Wu wei zi etc. pour les diarrhées de long cours
783	Utilisé avec He zi etc. pour les diarrhées de long cours
784	Utilisé avec Fu ling etc. pour consolider le Jing et arrêter les pertes séminales
785	Utilisé avec Long gu etc. pour consolider le Jing et arrêter les pertes séminales
786	Utilisé avec Huai hua, Di yu etc. pour les saignements utérins, intestinaux, urinaires, gingivaux ou traumatiques
787	Utilisé avec Xue yu tan, Di yu etc. pour les saignements utérins, intestinaux, urinaires, gingivaux ou traumatiques
788	Utilisé avec Xue yu tan, Huai hua etc. pour les saignements utérins, intestinaux, urinaires, gingivaux ou traumatiques
789	Avec Ju hua, Pi pa ye, Gan cao etc. pour traiter la Chaleur du Poumon (arrêter la toux et calmer l'asthme)
790	Avec Ju hua, Pi pa ye, Gan cao etc. pour traiter la Chaleur du Poumon (arrêter la toux et calmer l'asthme)
791	Avec Ju hua, Pi pa ye, Gan cao etc. pour traiter la Chaleur du Poumon (arrêter la toux et calmer l'asthme)
792	Avec Yin chen hao, Hu zhang etc. pour traiter l'ictère (clarifier la Chaleur et faire s'écouler l'Humidité)
793	Avec Fu ling, Ze xie, Che qian zi etc. pour les œdèmes avec blocage urinaire (clarifier la Chaleur et faire s'écouler l'Humidité)
794	Avec Fu ling, Ze xie, Che qian zi etc. pour les œdèmes avec blocage urinaire (clarifier la Chaleur et faire s'écouler l'Humidité)
795	Avec Fu ling, Ze xie, Che qian zi etc. pour les œdèmes avec blocage urinaire (clarifier la Chaleur et faire s'écouler l'Humidité)
796	Avec Dang gui, Hong hua, Su mu etc. en traumatologie (activer le sang et transformer les stases)
797	Avec Dang gui, Hong hua, Su mu etc. en traumatologie (activer le sang et transformer les stases)
798	Avec Dang gui, Hong hua, Su mu etc. en traumatologie (activer le sang et transformer les stases)
799	Utilisé avec Dong gua pi pour favoriser la diurèse et réduire les œdèmes
800	Associé à Huang qi, Bai zhu, Fu ling etc. en cas d'œdème de surface pendant la convalescence
801	Associé à Huang qi, Bai zhu, Fu ling etc. en cas d'œdème de surface pendant la convalescence
802	Associé à Huang qi, Bai zhu, Fu ling etc. en cas d'œdème de surface pendant la convalescence
803	Ils harmonisent Biao et Li, le Shaoyang, et traitent l'Humidité-Chaleur
806	Tonifient le Qi des Reins, ouvrent l'orifice de l'oreille et calment le Shen.
807	Tonifient la Rate et les Reins, régularisent les urines et arrêtent la diarrhée.
808	Associé à Yin yang huo, Xian mao, Gou qi zi etc. pour l'impuissance, l'éjaculation précoce, l'infertilité par froid de l'utérus
809	Associé à Yin yang huo, Xian mao, Gou qi zi etc. pour l'impuissance, l'éjaculation précoce, l'infertilité par froid de l'utérus
810	Associé à Du zhong, Qiang huo, Rou gui, Niu xi etc. pour les bi Vent-Froid-Humidité avec vide du Foie et des Reins
811	Associé à Du zhong, Qiang huo, Rou gui, Niu xi etc. pour les bi Vent-Froid-Humidité avec vide du Foie et des Reins
812	Associé à Du zhong, Qiang huo, Rou gui, Niu xi etc. pour les bi Vent-Froid-Humidité avec vide du Foie et des Reins
813	Associé à Du zhong, Qiang huo, Rou gui, Niu xi etc. pour les bi Vent-Froid-Humidité avec vide du Foie et des Reins
814	Avec Bai shao, Huang qi, Gan cao pour les douleurs intenses des tendons et muscles par obstruction des vaisseaux par le Vent Humidité
815	Avec Gan jiang, Fu zi etc. pour le bi de poitrine par accumulation de Froid
816	Avec Xiao hui xiang etc. pour les pathologies shan par accumulation de Froid
817	Avec Xi xin etc., mélangé à du jus d'oignon, en application externe sur les tempes pour les céphalées
818	En application externe sur les abcès de type yin
819	Dans Xiao huo luo dan, avec Di long etc., pour chasser le Vent et triompher de l'Humidité
820	Ensemble, ils régularisent le Qi et le sang, éliminent les Stagnations et calment le Shen.
821	Clarifient la Chaleur, drainent l'Humidité, traitent l'ictère, éliminent la toxicité.
822	Drainent l'Humidité et traitent l'ictère.
823	L'un est salé et atteint les couches Yin sans se déployer vers le Yang, l'autre est léger et aromatique et peut faire sortir la Chaleur sans pour autant arriver jusqu'aux profondeurs des couches Yin ; clarifient la Chaleur Vide, tonifient le Yin sans risq
824	Associé à Chai hu, Yu jin, Fo shou etc. pour les douleurs de la poitrine et des flancs par surpression du Foie
825	Associé à Chai hu, Yu jin, Fo shou etc. pour les douleurs de la poitrine et des flancs par surpression du Foie
826	Associé à Chai hu, Yu jin, Fo shou etc. pour les douleurs de la poitrine et des flancs par surpression du Foie
827	Associé à Mu xiang, Sha ren, Huo xiang etc. pour la stagnation de Qi du foyer médian avec douleurs abdominales et épigastriques, RGO, éructations, nausées, perte d'appétit
828	Associé à Mu xiang, Sha ren, Huo xiang etc. pour la stagnation de Qi du foyer médian avec douleurs abdominales et épigastriques, RGO, éructations, nausées, perte d'appétit
829	Associé à Sheng jiang, Ban xia, Fu ling etc. pour la toux avec mucosités abondantes et oppressions thoraciques
830	Associé à Sheng jiang, Ban xia, Fu ling etc. pour la toux avec mucosités abondantes et oppressions thoraciques
831	Associé à Sheng jiang, Ban xia, Fu ling etc. pour la toux avec mucosités abondantes et oppressions thoraciques
832	Avec Mu dan pi et Yu jin, traite l'hématémèse et l'hémoptysie
833	Avec Mu dan pi et Yu jin, traite l'hématémèse et l'hémoptysie ; avec Yu jin, Tao ren et Si gua luo, traite les traumatismes et blessures aux côtes et à l'abdomen
834	Avec Yu jin, Tao ren et Si gua luo, traite les traumatismes et blessures aux côtes et à l'abdomen
835	Avec Mu xiang et Sha ren, traite les nausées et douleurs abdominales
836	Avec Mu xiang et Sha ren, traite les nausées et douleurs abdominales
837	Avec Xiang fu et Chen pi pour traiter les douleurs abdominales dues à une dysharmonie Foie Estomac
838	Avec Xiang fu et Chen pi pour traiter les douleurs abdominales dues à une dysharmonie Foie Estomac
839	Avec Qiang huo, Bai zhu et Ban xia pour traiter les Bi Vent-Humidité
840	Avec Qiang huo, Bai zhu et Ban xia pour traiter les Bi Vent-Humidité
841	Avec Qiang huo, Bai zhu et Ban xia pour traiter les Bi Vent-Humidité
842	Avec Ru xiang, Mo yao et Yan hu suo pour traiter les masses abdominales avec stagnation de Qi et stase de sang
843	Avec Ru xiang, Mo yao et Yan hu suo pour traiter les masses abdominales avec stagnation de Qi et stase de sang
844	Avec Ru xiang, Mo yao et Yan hu suo pour traiter les masses abdominales avec stagnation de Qi et stase de sang
845	Clarifient la Chaleur, assèchent l'Humidité, dispersent les tuméfactions, arrêtent la douleur, drainent l'Humidité.
846	Traitent l'Humidité Chaleur, notamment du Foyer Inférieur et du bas du corps.
847	Clarifient la Chaleur, nourrissent le Yin, dispersent le Feu Vide, neutralisent la toxicité et l'Humidité du Foyer Inférieur.
848	Nourrissent le Yin, rafraîchissent le Sang et clarifient la Chaleur Vide.
849	Brisent les Amas de Sang, dispersent les nouures, mobilisent le Qi et dispersent les masses.
850	L'un est salé et atteint les couches Yin sans se déployer vers le Yang, l'autre est léger et aromatique et peut faire sortir la Chaleur sans pour autant arriver jusqu'aux profondeurs des couches Yin ; clarifient la Chaleur Vide, tonifient le Yin sans risq
851	Nourrissent le Sang du Foie et le yin du Foie et des Reins, font descendre le Qi du Poumon, favorisent la réception du Qi par les Reins, arrêtent la toux et calment la dyspnée.
852	Nourrissent le yin du Foie et des Reins et le Sang du Foie.
853	Tonifient les Reins, diffusent le Qi du Poumon, calment la dyspnée et dispersent les masses.
854	Nourrissent le Yin et le Jing des Reins.
855	Associé à Di gu pi, Qin jiao, Bie jia etc. dans Qing gu san pour clarifier la Chaleur Vide
856	Associé à Bai zhu, Shan zha, Shi jun zi etc. pour traiter la fièvre dans les maladies gan (malnutrition infantile avec accumulation de parasites)
857	Associé à Huang bai, Bai tou weng, Mu xiang etc. pour clarifier la Chaleur et drainer l'Humidité en cas de dysenteries rouges et blanches
858	Associé à Zao xin tu, Wu mei pour clarifier la Chaleur et drainer l'Humidité en cas de diarrhées hémorragiques chroniques
859	Dispersent le Vent-Froid-Humidité et traitent les maladies bi.
860	Traitent la douleur dans les Bi de poitrine
861	Saignements divers du foyer médian et supérieur, permettent l'arrêt des saignements sans créer de stase
862	Clarifient la Chaleur, rafraîchissent le Sang, favorisent la diurèse, traitent les lin
863	Traitent les lin et réduisent les lithiases
864	Clarifient la Chaleur, drainent l'Humidité, favorisent les urines, traitent les lin et évacuent les lithiases
865	En cas de stagnation de Qi et de Froid dans la poitrine et l'abdomen ; En cas de douleur et de froid à l'épigastre avec nausées, vomissements, perte d'appétit
866	En cas de stagnation de Qi et de Froid dans la poitrine et l'abdomen
867	En cas de bi de poitrine avec douleurs vives
868	En cas de bi de poitrine avec douleurs vives
869	En cas de bi de poitrine avec douleurs vives
870	En cas de douleur et de froid à l'épigastre avec nausées, vomissements, perte d'appétit
871	En cas de douleur et de froid à l'épigastre avec nausées, vomissements, perte d'appétit
872	En cas de douleur et de froid à l'épigastre avec nausées, vomissements, perte d'appétit
873	Avec Da huang, Tao ren etc. pour les aménorrhées par stase de sang sévères
874	Avec Da huang, Tao ren etc. pour les aménorrhées par stase de sang sévères ; avec Chai hu, Tao ren, Bie jia etc. pour les masses abdominales et épigastriques (hépatomégalie, splénomégalie, etc.)
875	Avec Chai hu, Tao ren, Bie jia etc. pour les masses abdominales et épigastriques (hépatomégalie, splénomégalie, etc.)
876	Avec Chai hu, Tao ren, Bie jia etc. pour les masses abdominales et épigastriques (hépatomégalie, splénomégalie, etc.)
877	Avec Ru xiang, Mo yao, Gu sui bu, Zi ran tong etc. en cas de fractures, entorses etc.
878	Avec Ru xiang, Mo yao, Gu sui bu, Zi ran tong etc. en cas de fractures, entorses etc.
879	Avec Ru xiang, Mo yao, Gu sui bu, Zi ran tong etc. en cas de fractures, entorses etc.
880	Avec Ru xiang, Mo yao, Gu sui bu, Zi ran tong etc. en cas de fractures, entorses etc.
881	Saignements des intestins, hémorroïdes
882	Associé pour activer le sang et calmer les douleurs
883	Associé pour activer le sang et calmer les douleurs
884	Associé pour activer le sang et calmer les douleurs
885	Associé pour activer le sang et calmer les douleurs
886	Associé pour activer le sang et calmer les douleurs
887	Associé pour activer le sang et calmer les douleurs
888	Clarifient la Chaleur et éliminent la toxicité, traitent les furoncles, abcès, ulcérations douloureuses
889	Avec Tu bie chong en cas de lumbago aigu pour disperser la stase et calmer les douleurs
890	Avec Qiang huo, Gu sui bu, Ru xiang etc. pour les traumatismes au stade aigu, subaigu ou chronique
891	Avec Qiang huo, Gu sui bu, Ru xiang etc. pour les traumatismes au stade aigu, subaigu ou chronique
892	Avec Qiang huo, Gu sui bu, Ru xiang etc. pour les traumatismes au stade aigu, subaigu ou chronique ; avec Su mu, Ru xiang, Mo yao, Xue jie etc. en cas de fracture
893	Avec Su mu, Ru xiang, Mo yao, Xue jie etc. en cas de fracture
894	Avec Su mu, Ru xiang, Mo yao, Xue jie etc. en cas de fracture
895	Avec Su mu, Ru xiang, Mo yao, Xue jie etc. en cas de fracture
896	Avec Xia ku cao, Gou teng, Di long etc. pour calmer le Yang du Foie qui monte
897	Avec Xia ku cao, Gou teng, Di long etc. pour calmer le Yang du Foie qui monte
898	Avec Xia ku cao, Gou teng, Di long etc. pour calmer le Yang du Foie qui monte
899	Avec Ji xue teng, Ru xiang, Mo yao pour les traumatismes
900	Avec Ji xue teng, Ru xiang, Mo yao pour les traumatismes
901	Avec Dang gui, Qiang huo, Du huo, Wei ling xian etc. pour chasser le Vent et l'Humidité
902	Avec Dang gui, Qiang huo, Du huo, Wei ling xian etc. pour chasser le Vent et l'Humidité
903	Avec Dang gui, Qiang huo, Du huo, Wei ling xian etc. pour chasser le Vent et l'Humidité
904	Associé à She xiang et Bing pian dans Su he xiang wan pour restaurer la conscience en réchauffant
905	Associé à She xiang et Bing pian dans Su he xiang wan pour restaurer la conscience en réchauffant
906	Associé à Kun bu, Chuan bei mu, Qing pi, Xia ku cao, Xuan shen, Lian qiao pour les goitres, adénites et nodules thyroïdiens
907	Associé à Zhu ling, Ze xie, Che qian zi pour traiter les œdèmes
908	Favorise la digestion et renforce la Rate
909	Favorise la digestion et renforce la Rate
910	Favorise la digestion et renforce la Rate
911	Régularise le Qi et arrête les douleurs
912	Régularise le Qi et arrête les douleurs
913	Régularise le Qi et arrête les douleurs
914	Régularise le Qi et arrête les douleurs
915	Associé à Xia ku cao, Xuan shen, Jiang can etc. pour traiter les adénopathies et scrofules.
916	Associé à Xia ku cao, Xuan shen, Jiang can etc. pour traiter les adénopathies et scrofules.
917	Dissipe les accumulations de nourriture et tue les parasites
918	Dissipe les accumulations de nourriture et tue les parasites
919	Dissipe les accumulations de nourriture et tue les parasites
920	Dissout les masses et les indurations
921	Dissout les masses et les indurations
922	Dissout les masses et les indurations
923	Dissout les masses et les indurations
924	Ils clarifient la Chaleur et éliminent la toxicité, dispersent les indurations, tuméfactions et abcès, arrêtent la douleur.
925	Associé à Zhu sha lorsque la chaleur accumulée noue les selles et perturbe le Cœur, le Foie, le Shen et le Hun
926	Associé à Long dan cao, Zhi zi, Qing dai, etc. pour le feu du Foie qui s'élève avec constipation, urines rouges, vertiges, céphalées, agitation, voire spasmes, tétanie, épilepsie
927	Associé à Long dan cao, Zhi zi, Qing dai, etc. pour le feu du Foie qui s'élève avec constipation, urines rouges, vertiges, céphalées, agitation, voire spasmes, tétanie, épilepsie
928	Associé à Long dan cao, Zhi zi, Qing dai, etc. pour le feu du Foie qui s'élève avec constipation, urines rouges, vertiges, céphalées, agitation, voire spasmes, tétanie, épilepsie
929	Hémorroïdes qui saignent
930	Avec Shui zhi, Tao ren et Da huang dans Di dang tang, pour briser le sang et expulser la stase.
931	Avec Tao ren, Shui zhi et Da huang dans Di dang tang, pour briser le sang et expulser la stase.
932	Avec Da huang, Shui zhi et Tao ren dans Di dang tang, pour briser le sang et expulser la stase.
933	Avec Mu dan pi, Ru xiang, Mo yao etc. en traumatologie, pour briser le sang et dissoudre les masses.
934	Avec Ru xiang, Mu dan pi, Mo yao etc. en traumatologie, pour briser le sang et dissoudre les masses.
935	Avec Mo yao, Mu dan pi, Ru xiang etc. en traumatologie, pour briser le sang et dissoudre les masses.
936	Associé à Bai zhi en cas de morsure de serpent, par voie externe et interne, pour réduire les gonflements.
937	Dispersent le Vent-Chaleur, clarifient le Foie et éclaircissent les yeux, clarifient le Poumon et arrêtent la toux.
938	Se rendent au Cœur, dissolvent les Mucosités et désobstruent les orifices du Cœur, font communiquer Cœur et Reins, réveillent le Shen
939	Avec Chai hu pour les douleurs de la poitrine et des flancs
940	Avec Xiang fu pour les douleurs de la poitrine et des flancs, et pour les stagnations alimentaires et ballonnements avec nausées
941	Avec Yu jin pour les douleurs de la poitrine et des flancs, et pour la toux chronique avec mucosités abondantes et douleurs des flancs
942	Avec Mu xiang pour les stagnations alimentaires et ballonnements avec nausées
943	Avec Sha ren pour les stagnations alimentaires et ballonnements avec nausées
944	Avec Chen pi pour la toux chronique avec mucosités abondantes et douleurs des flancs
945	Traitent les douleurs rhumatismales de tout le corps, et particulièrement du dos
946	Traitent la douleur causée par le Vent-Humidité (céphalées du Taiyang ou du Jueyin, douleurs articulaires)
947	Traitent la douleur causée par le Vent-Humidité (céphalées et douleurs du corps et des articulations)
948	Brisent les stagnations de Qi et les stases de sang, calment les douleurs et dissipent les accumulations
949	Associé à Gan cao et Da zao dans Gan mai da zao tang pour nourrir le Qi du Cœur et traiter la dysphorie de type vide
950	Bi de poitrine avec mucosités troubles bloquées dans la cage thoracique, ou constipation par sécheresse et stagnation de qi
951	Associé à Rou gui et Dang gui pour les précordialgies.
952	Associé à Rou gui et Dang gui pour les précordialgies.
953	Associé à Kun bu, Hai zao etc. pour le goître.
954	Associé à Kun bu, Hai zao etc. pour le goître.
955	Transforment les lithiases dans les maladies lin par Chaleur Humidité
956	Permettent l'évacuation des calculs rénaux et des lithiases biliaires
957	Avec Shan zha, Mai ya, Zhi shi, Hou po en cas d'accumulation de nourriture
958	Avec Shan zha, Mai ya, Zhi shi, Hou po en cas d'accumulation de nourriture
959	Avec Shan zha, Mai ya, Zhi shi, Hou po en cas d'accumulation de nourriture
960	Avec Huo xiang, Chen pi, Cang zhu en cas d'accumulation d'Humidité trouble ; dans Wu pi yin avec Chen pi, Wu jia pi pour faire s'écouler l'eau et réduire les œdèmes
961	Avec Huo xiang, Chen pi, Cang zhu en cas d'accumulation d'Humidité trouble
962	Associé à Zhu ru en cas d'aphonie pour clarifier la Chaleur et humidifier le Poumon
963	Associé à Bo he, Jie geng, Sang bai pi en cas de Vent Chaleur pour clarifier la Chaleur et humidifier le Poumon
964	Associé à Bo he, Jie geng, Sang bai pi en cas de Vent Chaleur pour clarifier la Chaleur et humidifier le Poumon
965	Associé à Bo he, Jie geng, Sang bai pi en cas de Vent Chaleur pour clarifier la Chaleur et humidifier le Poumon
966	Associé à Chen pi, Ban xia en cas de mucosités abondantes pour clarifier la Chaleur et humidifier le Poumon
967	Associé à Chen pi, Ban xia en cas de mucosités abondantes pour clarifier la Chaleur et humidifier le Poumon
968	Associé à Mai men dong, Fu ling en cas de Canicule blessant les liquides pour produire les liquides organiques et arrêter la soif
969	Associé à Huo ma ren, Yu li ren, Xing ren pour lubrifier les intestins et débloquer les selles
970	Associé à Huo ma ren, Yu li ren, Xing ren pour lubrifier les intestins et débloquer les selles
971	Associé à Jie geng, Chan tui, Gan cao pour favoriser la gorge et traiter l'aphonie
972	Associé à Jie geng, Chan tui, Gan cao pour favoriser la gorge et traiter l'aphonie
973	Associé à Jie geng, Chan tui, Gan cao pour favoriser la gorge et traiter l'aphonie
974	Stagnation de qi et de sang du Foie produisant de la Chaleur
975	Favorisent la sudorification pour éliminer l'agent pathogène du Biao, et clarifient la Chaleur interne.
976	Dispersent le Foie et le nourrissent, régularisent la Rate et arrêtent la douleur.
977	Nourrissent le Sang, retiennent le Yin, rafraîchissent le Sang, drainent et nourrissent le Foie, arrêtent la douleur.
978	Tiédissent sans assécher, nourrissent sans faire stagner et arrêtent la douleur.
979	Calment le Foie et tonifient la Rate, tonifient le Qi et le Sang, harmonisent Foie et Rate, calment la douleur et les spasmes.
980	Assouplissent le Foie, clarifient la Chaleur, calment le Foie et éteignent le Vent.
981	Harmonisent ying wei, libèrent les Vaisseaux et arrêtent la douleur.
982	Clarifient la Chaleur, assèchent l'Humidité, arrêtent la douleur et arrêtent la diarrhée.
983	Nourrissent le Yin, abaissent le Yang, calment le Foie et retiennent le yin.
984	Nourrissent le Yin et le Sang, clarifient la Chaleur Vide et calment le Yang du Foie.
985	Calment le Foie et éteignent le Vent.
986	Mobilisent le Qi, harmonisent le Sang, cassent les accumulations et arrêtent la douleur.
987	Associé avec Ren shen, Suan zao ren, Bai zi ren etc. pour nourrir le sang du Cœur
988	Associé avec Dang gui, Suan zao ren, Bai zi ren etc. pour nourrir le sang du Cœur
989	Associé avec Dang gui, Ren shen, Bai zi ren etc. pour nourrir le sang du Cœur
990	Associé avec Dang gui, Ren shen, Suan zao ren etc. pour nourrir le sang du Cœur
991	Associé avec Dan nan xing etc. pour traiter l'épilepsie et les convulsions infantiles
992	Associé avec Jue ming zi etc. pour traiter les taies avec œil sablonneux, rouge et douloureux
993	Associé avec Ju hua etc. pour traiter les taies avec œil sablonneux, rouge et douloureux
994	Clarifient la Chaleur, favorisent la gorge, dissipent la tuméfaction et calment la douleur.
995	Associé dans Di dang tang avec Tao ren et Da huang pour briser le sang, expulser la stase et dissoudre les masses.
996	Associé dans Di dang tang avec Meng chong et Da huang pour briser le sang, expulser la stase et dissoudre les masses.
997	Associé dans Di dang tang avec Meng chong et Tao ren pour briser le sang, expulser la stase et dissoudre les masses.
998	Associé avec Zi ran tong et autres dans des contextes de traumatologie au niveau musculosquelettique.
999	Associé avec Su mu et autres dans des contextes de traumatologie au niveau musculosquelettique.
1000	Mobilisent le Qi, arrêtent la douleur, traitent les stagnations alimentaires.
1001	Traitent la douleur lombaire, la douleur abdominale et la distension abdominale par agitation du fœtus.
1002	Nourrissent le Sang, le Jing et le Yin sans générer de Stagnation de Qi ou de perte d'appétit.
1003	Renforcent les Reins et calment le Foie, traitent les occlusions, ouvrent les orifices et favorisent l'ouïe.
1004	Tiédissent les Reins, tonifient le Yang, renforcent les lombes, arrêtent la douleur, renforcent les tendons et les os, chassent le Vent-Humidité.
1005	Tonifient le Foie et les Reins, traitent les bi et arrêtent la douleur.
1006	Tonifient le Foie et les Reins, renforcent les tendons et les os, dispersent le Vent-Humidité, désobstruent les canaux et collatéraux, arrêtent la douleur.
1007	Traitent la douleur lombaire, la douleur abdominale et la distension abdominale par agitation du fœtus.
1008	Utilisé avec Mu dan pi pour traiter les abcès intestinaux
1009	Utilisé avec Lian qiao pour traiter les abcès intestinaux
1010	Utilisé avec Da huang pour traiter les abcès intestinaux
1011	Utilisé avec Jin yin hua pour traiter les abcès intestinaux
1012	Utilisé avec Pu gong ying pour traiter les abcès intestinaux
1013	Nourrissent le yin, clarifient la Chaleur Vide et arrêtent la transpiration.
1014	Tonifient le Qi et le Cœur, clarifient la Chaleur, consolident le biao, arrêtent la transpiration.
1015	Nourrissent le Yin, arrêtent la transpiration, tranquilisent le Cœur et calment l'Esprit.
1016	Tonifient le Qi, nourrissent le Cœur, clarifient la Chaleur, ferment les pores de la peau et arrêtent la transpiration.
1017	Stagnation de qi et de sang du Foie produisant de la Chaleur
1018	Calment les douleurs en mobilisant le Qi et le sang (zone épigastrique, abdominale, etc.)
1019	Chassent les mucosités des méridiens et ramifications
1020	Transforment les mucosités troubles dans la région du diaphragme et abaissent le contre-courant de l'Estomac et du Poumon
1021	Drainent le Feu, neutralisent la toxicité, arrêtent la douleur causée par le Feu (y compris la Chaleur-Vide).
1022	Xi xin guide Sheng di huang vers le Foyer Supérieur pour clarifier la Chaleur. Ils dispersent aussi le Vent et arrêtent la douleur sans assécher.
1023	Xi xin guide Shi gao vers le haut pour clarifier la Chaleur. Ils drainent le Feu, désobstruent les Luo et arrêtent la douleur.
1024	Transforment les Mucosités, contribuent à la diffusion du Qi du Poumon, arrêtent la toux et calment la dyspnée.
1025	Traitent les toux avec sifflements respiratoires
1026	Traitent les toux chroniques avec épuisement du Poumon et hémoptysie
1027	Calment les douleurs en mobilisant le Qi et le sang (zone épigastrique, abdominale, etc.)
1028	Stagnation de Qi et de Froid dans l'abdomen
1029	Avec Huang qi etc. pour consolider la surface et le Weiqi
1030	Avec Sheng di huang, Di gu pi, Fu xiao mai etc. pour les transpirations par vide de Yin
1031	Avec Di gu pi, Sha shen, Mai men dong etc. pour la Chaleur Vide et les transpirations par vide de Yin
1032	Avec Fu xiao mai etc. pour les transpirations par vide de Yin
1033	Tonifient le yang de la Rate et des Reins et arrêtent la diarrhée.
1034	Tiédissent le Centre, resserrent les Intestins et arrêtent la diarrhée.
1035	Resserrent les Intestins sans provoquer de Stagnation et mobilisent le Qi sans disperser le Qi correct.
1036	Tonifient le Qi du Poumon, arrêtent la toux et calment la dyspnée
1037	Clarifient la Chaleur, tonifient le Qi et engendrent les Liquides
1038	Transforment les mucosités Froid dans les toux chroniques
1039	Associé à San qi pour arrêter les saignements par l'astringence et le resserrement
1040	Associé à Zong lü tan pour arrêter les saignements par l'astringence et le resserrement
1041	Avec Xiao ji pour traiter les Lin de sang en transformant la stase et faisant s'écouler les urines
1042	Avec Bai mao gen pour traiter les Lin de sang en transformant la stase et faisant s'écouler les urines
1043	Avec Mu tong pour traiter les Lin de sang en transformant la stase et faisant s'écouler les urines
1044	Avec Hua shi et de la chair de poisson blanc en cas de miction difficile
1045	Calment les vomissements avec présence de Froid et/ou de Chaleur dans l'Estomac, avec mucosités
1046	Traitent les vomissements avec mucosités Humidité ou mucosités Chaleur, et Chaleur de l'Estomac
1047	Traitent le mélange Froid et Chaleur sur Estomac et Rate
1048	Réchauffent le Poumon, favorisent la réception de son Qi par les Reins, arrêtent la toux et traitent l'asthme.
1049	Clarifient la Chaleur, traitent la Canicule, favorisent la diurèse sans blesser le Centre, drainent l'Humidité et traitent les maladies lin.
1050	Clarifient la Chaleur, rafraîchissent le sang, favorisent la diurèse, traitent les maladies lin.
1051	Clarifient la Chaleur, favorisent la diurèse, traitent les lin de sang.
1052	Clarifient la Chaleur, favorisent la diurèse, traitent les lin.
1053	Tonifient le Foie et les Reins, renforcent les lombes et calment le fœtus.
1054	Tonifient le yin et le yang du Foie et des Reins.
1055	Tonifient le Foie et les Reins, renforcent les tendons et les Os, arrêtent les métrorragies de la grossesse et calment le fœtus.
1056	Associé à Ding xiang pour abaisser le Qi et arrêter le hoquet
1057	Associé à Shi di pour abaisser le Qi et arrêter le hoquet
1058	Associé à Chen pi pour abaisser le Qi et arrêter le hoquet
1059	Associé à Du zhong pour réchauffer les Reins et soutenir le Yang
1060	Associé à Sang ji sheng pour réchauffer les Reins et soutenir le Yang
1061	Associé à Niu xi pour réchauffer les Reins et soutenir le Yang
1062	Dispersent le Vent, contribuent à la diffusion du Qi du Poumon et désobstruent les orifices du nez.
1063	Avec Jue ming zi, Mi meng hua, Mu zei etc. pour les taies avec larmoiement
1064	Avec Jue ming zi, Mi meng hua, Mu zei etc. pour les taies avec larmoiement
1065	Avec Jue ming zi, Mi meng hua, Mu zei etc. pour les taies avec larmoiement
1066	Avec Shi jue ming, Zhi zi, Xia ku cao etc. pour les vertiges, céphalées, insomnies par yang du Foie qui se transforme en Feu
1067	Avec Shi jue ming, Zhi zi, Xia ku cao etc. pour les vertiges, céphalées, insomnies par yang du Foie qui se transforme en Feu
1068	Avec Shi jue ming, Zhi zi, Xia ku cao etc. pour les vertiges, céphalées, insomnies par yang du Foie qui se transforme en Feu
1069	Associé à Di gu pi, Qing hao, Zhi mu etc. dans Qing gu san pour clarifier la Chaleur Vide et traiter la sensation de cuisson des os.
1070	Associé à Di gu pi, Qing hao, Zhi mu etc. dans Qing gu san pour clarifier la Chaleur Vide et traiter la sensation de cuisson des os.
1071	Associé à Di gu pi, Qing hao, Zhi mu etc. dans Qing gu san pour clarifier la Chaleur Vide et traiter la sensation de cuisson des os.
1072	Associé à Hu huang lian, Ji nei jin, Shi jun zi etc. pour traiter la fièvre dans les cadres de maladie gan (malnutrition infantile avec accumulation de parasites).
1073	Associé à Hu huang lian, Ji nei jin, Shi jun zi etc. pour traiter la fièvre dans les cadres de maladie gan (malnutrition infantile avec accumulation de parasites).
1074	Associé à Hu huang lian, Ji nei jin, Shi jun zi etc. pour traiter la fièvre dans les cadres de maladie gan (malnutrition infantile avec accumulation de parasites).
1075	Associé à Tian hua fen pour nourrir le yin et clarifier la Chaleur du Poumon lors d'une maladie de la tiédeur qui porte atteinte au Yin
1076	Associé à Sheng di huang et Mai men dong pour nourrir l'Estomac et favoriser la génération des Liquides Organiques lorsque la Chaleur blesse le Yin de l'Estomac
1076	Associé à Sheng di huang et Mai men dong dans Yi guan jian pour tonifier le yin du Foie et des Reins
1077	Associé pour traiter les indigestions avec céréales et alcool
1078	Associé pour traiter les indigestions avec céréales et alcool
1079	Associé pour traiter les indigestions avec céréales et alcool
1080	Associé pour traiter les indigestions avec céréales et alcool
1081	Associé pour traiter les indigestions avec céréales et alcool
1082	Associé pour traiter les indigestions avec céréales et alcool
1083	Associé à Jue ming zi pour traiter les yeux rouges, gonflés, douloureux et la formation de taie par Vent-Chaleur
1084	Associé à Long dan cao pour traiter les yeux rouges, gonflés, douloureux et la formation de taie par Vent-Chaleur
1085	Associé à Bo he pour traiter les céphalées ou douleurs dentaires
1086	Associé à Ju hua pour traiter les céphalées ou douleurs dentaires
1087	Associé à Shi gao pour traiter les céphalées ou douleurs dentaires
1088	Association pour tonifier le Qi de la Rate et le Yin de l'Estomac
1089	Association pour tonifier le Qi de la Rate et le Yin de l'Estomac
1090	Association en cas de toux sèche avec vide de Qi et de Yin du Poumon
1091	Froid-vide de l'utérus et stagnation de Qi du Foie, infertilité
1092	Libèrent le biao du Vent Chaleur en clarifiant la Chaleur toxique à l'interne.
1093	Clarifient la Chaleur et éliminent la toxicité, favorisent la gorge.
1094	Clarifient la Chaleur et éliminent la toxicité, rafraîchissent le Sang, nourrissent le Yin, abaissent le Feu, favorisent la gorge, dispersent les gonflements et arrêtent la douleur.
1095	Association purgatif avec Mang xiao
1096	Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)
1097	Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)
1098	Associé à Wu yao, Yi zhi ren et Shi chang pu dans Bi xie fen qing yin pour traiter les maladies lin de graisse (yaoyao)
1099	Associé à Fu zi, Gou ji, Bai zhu, Ze xie pour traiter les bi de type Froid
1100	Associé à Fu zi, Gou ji, Bai zhu, Ze xie pour traiter les bi de type Froid
1101	Associé à Fu zi, Gou ji, Bai zhu, Ze xie pour traiter les bi de type Froid
1102	Associé à Fu zi, Gou ji, Bai zhu, Ze xie pour traiter les bi de type Froid
1103	Associé à Sang zhi, Qin jiao, Yi yi ren pour traiter les bi de type Chaleur
1104	Associé à Sang zhi, Qin jiao, Yi yi ren pour traiter les bi de type Chaleur
1105	Associé à Sang zhi, Qin jiao, Yi yi ren pour traiter les bi de type Chaleur
1106	Avec Ru xiang, Mo yao, Zi ran tong, Xue jie pour les gonflements douloureux suite à un traumatisme ou une fracture
1107	Avec Ru xiang, Mo yao, Zi ran tong, Xue jie pour les gonflements douloureux suite à un traumatisme ou une fracture
1108	Avec Ru xiang, Mo yao, Zi ran tong, Xue jie pour les gonflements douloureux suite à un traumatisme ou une fracture
1109	Avec Ru xiang, Mo yao, Zi ran tong, Xue jie pour les gonflements douloureux suite à un traumatisme ou une fracture
1110	Avec Dan shen, Chuan xiong, Yan hu suo pour traiter les douleurs thoraciques et abdominales par stase de sang
1111	Avec Dan shen, Chuan xiong, Yan hu suo pour traiter les douleurs thoraciques et abdominales par stase de sang ; avec Chuan xiong, Dang gui, Hong hua pour les aménorrhées ou dysménorrhées par stase de sang
1112	Avec Dan shen, Chuan xiong, Yan hu suo pour traiter les douleurs thoraciques et abdominales par stase de sang
1113	Avec Chuan xiong, Dang gui, Hong hua pour les aménorrhées ou dysménorrhées par stase de sang
1114	Avec Chuan xiong, Dang gui, Hong hua pour les aménorrhées ou dysménorrhées par stase de sang
1115	Active le sang et régularise les règles
1116	Active le sang et régularise les règles
1117	Active le sang et régularise les règles
1117	Détend le Foie et régularise son Qi
1118	Réduit les œdèmes et résout la toxicité pour les gonflements infectieux, les gonflements traumatiques, les adénopathies
1119	Détend le Foie et régularise son Qi
1120	Détend le Foie et régularise son Qi
1121	Associé dans Wu ren wan pour humidifier les Intestins et traiter la constipation en mobilisant le Qi
1122	Associé dans Wu ren wan pour humidifier les Intestins et traiter la constipation en mobilisant le Qi
1123	Associé pour favoriser la diurèse et résoudre les œdèmes
1124	Associé pour favoriser la diurèse et résoudre les œdèmes
1125	Associé pour favoriser la diurèse et résoudre les œdèmes
1126	Associé pour favoriser la diurèse et résoudre les œdèmes
1127	Clarifient la Chaleur de la couche du Qi et du Sang, maladies fébriles avec hémorragies
1128	Utilisé lorsque la forte fièvre provoque du Vent, avec perte de connaissance, convulsions, etc. ; également pour l'épilepsie
1129	Utilisé lorsque la forte fièvre provoque du Vent, avec perte de connaissance et convulsions
1130	Utilisé lorsque la forte fièvre provoque du Vent, avec perte de connaissance et convulsions
1131	Utilisé lorsque la forte fièvre provoque du Vent, avec perte de connaissance et convulsions
1132	Utilisé lorsque la forte fièvre provoque du Vent, avec perte de connaissance et convulsions
1133	Utilisé pour l'épilepsie
1134	Utilisé pour l'épilepsie
1135	Apaise le Foie et ancre le Yang
1136	Apaise le Foie et ancre le Yang
1137	Clarifie le Foie et éclaircit les yeux
1138	Clarifie le Foie et éclaircit les yeux
1139	Clarifie le Foie et éclaircit les yeux
1140	Association pour l'insomnie, palpitations, vertiges etc.
1141	Association pour l'insomnie, palpitations, vertiges etc.
1142	Association pour l'insomnie, palpitations, vertiges etc.
1143	Association pour les pathologies bi douloureuses avec vide de sang
1144	Association pour les pathologies bi douloureuses avec vide de sang
1145	Association pour les pathologies bi douloureuses avec vide de sang
1146	Association pour les pathologies bi douloureuses avec vide de sang
1147	Association pour les pathologies bi douloureuses avec vide de sang
1148	Application externe pour les lésions cutanées prurigineuses
1149	Application externe pour les lésions cutanées prurigineuses
1150	Application externe pour les lésions cutanées prurigineuses
1151	Application externe sur les hémorroïdes
1152	Associé pour les palpitations, insomnies et frayeurs par vide de Qi et/ou de sang du Cœur
1153	Associé pour les palpitations, insomnies et frayeurs par vide de Qi et/ou de sang du Cœur
1154	Associé pour les palpitations, insomnies et frayeurs par vide de Qi et/ou de sang du Cœur
1155	Associé pour les palpitations, insomnies et frayeurs par vide de Qi et/ou de sang du Cœur
1156	Associé dans les syndromes d'épuisement avec perte d'appétit, asthénie, souffle court, membres froids, dysphorie
1157	Associé dans les syndromes d'épuisement avec perte d'appétit, asthénie, souffle court, membres froids, dysphorie
1158	Associé dans les syndromes d'épuisement avec perte d'appétit, asthénie, souffle court, membres froids, dysphorie
1159	Associé pour les tableaux de mucosités de type froid sur terrain de vide, avec crachats abondants, souffle court
1160	Associé pour les tableaux de mucosités de type froid sur terrain de vide, avec crachats abondants, souffle court
1161	Associé pour les tableaux de mucosités de type froid sur terrain de vide, avec crachats abondants, souffle court
1162	Associé pour les tableaux de mucosités de type froid sur terrain de vide, avec crachats abondants, souffle court
1163	Associé pour tonifier le Foyer Médian et arrêter les spasmes et la douleur
1164	Associé pour tonifier le Foyer Médian et arrêter les spasmes et la douleur
1165	Associé pour tonifier le Foyer Médian et arrêter les spasmes et la douleur
1166	Associé pour tonifier le Foyer Médian et arrêter les spasmes et la douleur
1167	Associé en pilules avec un peu de jus de gingembre pour humidifier le Poumon et arrêter la toux
1168	Associé en pilules avec un peu de jus de gingembre pour humidifier le Poumon et arrêter la toux
1169	Associé pour lubrifier les Intestins et libérer les selles
1170	Associé pour lubrifier les Intestins et libérer les selles
1171	Associé pour les douleurs gastriques et abdominales (réchauffer le centre et disperser le Froid)
1172	Associé pour les douleurs gastriques et abdominales (réchauffer le centre et disperser le Froid)
1173	Associé pour la perte d'appétit par vide de Rate
1174	Associé pour la perte d'appétit par vide de Rate
1175	Associé pour les pathologies Shan dues au froid (mobiliser le Qi et calmer les douleurs)
1176	Associé pour les pathologies Shan dues au froid (mobiliser le Qi et calmer les douleurs)
1177	Associé pour les pathologies Shan dues au froid (mobiliser le Qi et calmer les douleurs)
1178	Associé pour le Froid-Humidité de la Vessie avec urines difficiles et troubles
1179	Associé pour le Froid-Humidité de la Vessie avec urines difficiles et troubles
1180	Associé pour le Froid-Humidité de la Vessie avec urines difficiles et troubles
1181	Associé pour le Froid-Humidité de la Vessie avec urines difficiles et troubles
1182	Avec Sheng di huang, Da huang, Sheng ma etc. pour traiter la gorge gonflée et douloureuse, les aphtes et ulcérations
1183	Avec Shi gao, Da huang, Bo he etc. pour les douleurs dentaires avec aphtes
1183	Avec Sheng di huang, Shi gao etc. pour clarifier à la fois les couches du Qi et du sang
1184	Avec Jin yin hua, Quan shen, Da huang etc. pour les parotidites type oreillons
1185	Avec Lian qiao, Huang qin, Ge gen etc. en cas de maladie épidémique de type Chaleur toxique
1186	Avec Shui niu jiao, Xuan shen, Zhi zi etc. lorsque la Chaleur pénètre dans les couches Yin
1187	Associé à Hua shi, Zhi zi, Che qian zi etc. dans Ba zheng san pour réguler les urines et débloquer les lin.
1188	Associé à Sheng di huang, Gan cao, Zhu ye dans Dao chi san pour disperser le Feu du Cœur qui se transmet à la Vessie, avec agitation, irritabilité et urines rouges. Également utilisé avec Sheng di huang, Niu xi, Yan hu suo etc. pour les aménorrhées par st
1189	Associé à Wang bu liu xing pour les mastites par blocage de l'allaitement, afin de débloquer les vaisseaux et favoriser la lactation.
1190	Associé à Huang bai, Niu xi, Yi yi ren pour les bi de type Humidité-Chaleur.
1191	Associé à Dang gui, Gui zhi, Da zao etc. dans Dang gui si ni tang pour débloquer les vaisseaux.
1192	Utilisés ensemble dans Chuan xiong cha tiao san avec Fang feng etc. pour disperser le Froid et traiter la douleur, notamment les céphalées du yangming, sinusites frontales et douleurs dentaires
1193	Associés avec Lian qiao, Tian hua fen etc. pour réduire les gonflements, évacuer le pus et éliminer la toxicité
1194	Associés avec Huo xiang, Hou po, Chen pi, Sha ren etc. pour assécher l'Humidité et traiter les diarrhées
1209	En cas de traumatisme, active le sang et transforme la stase.
1210	Nourrissent le Sang, retiennent le Yin, rafraîchissent le Sang, drainent et nourrissent le Foie, arrêtent la douleur.
1211	Assouplissent le Foie, clarifient la Chaleur, calment le Foie et éteignent le Vent.
1212	Harmonisent le yin et le yang, le Qi et le Sang, Yingqi et Weiqi. Tonifient le yin de l'Estomac et le yang de la Rate. Harmonisent les Vaisseaux et arrêtent la douleur.
1213	Associé à Chi shao pour les stases de sang du post partum
1214	En cas de taie cornéenne avec Chaleur toxique, œil rouge, sablonneux, douloureux
1215	Nourrissent le Yin, abaissent le Yang, calment le Foie et retiennent le yin.
1216	Nourrissent le Yin et le Sang, clarifient la Chaleur Vide et calment le Yang du Foie.
1217	Avec Dang gui, Hong hua, Chi shao pour les aménorrhées par stase de sang
1218	Calment le Foie et éteignent le Vent dans un contexte de vide de sang.
1219	Calment le Foie et tonifient la Rate, tonifient le Qi et le Sang, harmonisent Foie et Rate, traitent les spasmes.
1220	Clarifient la Chaleur, assèchent l'Humidité, arrêtent la douleur et arrêtent la diarrhée.
1221	Ils dispersent le Foie sans blesser son Yin, nourrissent le Foie sans faire stagner son Qi, régularisent la Rate et arrêtent la douleur due à la stagnation
1222	Associé à Dan nan xing pour transformer les mucosités et arrêter la toux
1223	Chassent le Vent-Chaleur, transforment les Mucosités, dispersent les indurations
1224	Associé à Gou teng, Quan xie, Jiang can, Niu huang etc. pour traiter l'épilepsie, les convulsions infantiles et l'opisthotonos.
1225	Avec Huang lian, Jiang can, Qing dai etc. pour les mucosités Chaleur
1225	Avec Dan nan xing, Jiang can, Gou teng etc. pour les convulsions infantiles et terreurs nocturnes par mucosités Chaleur
1226	Avec Dan nan xing, Jiang can, Gou teng etc. pour les convulsions infantiles et terreurs nocturnes par mucosités Chaleur
1227	Avec Dan nan xing, Bai jie zi, Bei mu pour les mucosités collantes, jaunes, épaisses
1228	Avec Jiang can, Tian ma, Hu po etc. dans Ding xian wan pour éteindre le Vent et arrêter les convulsions
1229	Chassent le Vent, transforment les Mucosités et éteignent le Vent.
1230	Associé pour traiter la sécheresse du Poumon
1231	Associé pour les toux d'épuisement avec hémoptysie
1232	Associé à Xia ku cao, Xuan shen, Jiang can etc. pour traiter les adénopathies et scrofules.
1233	Associé avec Tian zhu huang etc. pour traiter l'épilepsie et les convulsions infantiles
1019	Transforment les mucosités Chaleur
1234	Avec Sha shen, Mai men dong, Di gu pi etc. pour la Chaleur Vide
1235	Association en cas de toux sèche avec vide de Qi et de Yin du Poumon
1236	Associé en pilules avec un peu de jus de gingembre pour humidifier le Poumon et arrêter la toux
1237	Nourrissent le Sang et Yingqi, arrêtent les saignements.
1238	Harmonisent yingwei, tonifient la Rate et harmonisent le Foyer Médian.
1239	Utilisé ensemble dans Wei jing tang avec Tao ren et Yi yi ren.
1240	Utilisé ensemble dans Wei jing tang avec Lu gen et Yi yi ren.
1241	Utilisé ensemble dans Wei jing tang avec Lu gen et Tao ren.
1242	Utilisé ensemble dans Da huang mu dan tang avec Mu dan pi.
1243	Utilisé ensemble dans Da huang mu dan tang avec Da huang.
1244	Associé avec Huang bai, Bi xie etc. pour traiter les leucorrhées et lin de graisse.
1245	Associé avec Huang bai, Bi xie etc. pour traiter les leucorrhées et lin de graisse.
1246	Utilisé avec Shan zhu yu et autres en cas de métrorragies avec Rate qui ne retient pas le sang
1247	Utilisé en cas de métrorragies avec Rate qui ne retient pas le sang ; également pour les spermatorrhées et leucorrhées par vide de Qi ou de Yang des Reins
1248	Associé à d'autres hémostatiques pour traiter l'hémoptysie ou l'hématémèse
1249	Pour les spermatorrhées et leucorrhées par vide de Qi ou de Yang des Reins
1250	Pour les spermatorrhées et leucorrhées par vide de Qi ou de Yang des Reins
1251	Pour les gastralgies avec remontées acides
1252	Pour les gastralgies avec remontées acides
1253	Associé à Chen pi pour transformer l'Humidité et mobiliser le Qi
1254	Associé à Gan jiang pour transformer l'Humidité et mobiliser le Qi
1255	Associé à Sha ren pour transformer l'Humidité et mobiliser le Qi ; associé à Sha ren et Gan cao pour les régurgitations du nourrisson
1256	Associé à Ban xia pour transformer l'Humidité et mobiliser le Qi
1257	Associé à Xing ren (dans San ren tang) pour transformer l'Humidité et mobiliser le Qi
1258	Associé à Yi yi ren (dans San ren tang) pour transformer l'Humidité et mobiliser le Qi
1259	Associé à Sha ren et Gan cao pour les régurgitations du nourrisson
1260	Associé à Ding xiang pour traiter les nausées du post-partum
1261	Toux chronique avec peu ou pas de mucosités, difficiles à expectorer, ou toux avec mucosités Chaleur
1262	Régularisent les mouvements de montée et de descente
1263	Favorisent le Qi du Poumon, arrêtent la toux, calment la dyspnée
1264	Traitent les douleurs de la poitrine, de l'épigastre et de l'abdomen par stase de sang et stagnation de Qi, et les constipations par sécheresse ou stagnation de Qi
1265	Nourrissent le Yin, clarifient la Chaleur Vide, abaissent le Yang, éteignent le Vent et arrêtent les tremblements.
1266	Tonifient le Foie et les Reins, rafraîchissent le Sang, arrêtent les saignements et noircissent les cheveux.
1267	Tonifient les Reins, nourrissent le Yin, éclaircissent les yeux.
1268	Tonifient le Foie et les Reins, rafraîchissent le Sang, arrêtent les saignements et noircissent les cheveux.
1269	Nourrissent le yin, tonifient les Reins et le Foie, éclaircissent les yeux, humidifient la Sécheresse et lubrifient les Intestins.
1270	Préservent et restaurent le Qi correct tout en éliminant fortement l'Humidité par la diurèse
1271	Associé à Ren shen, Fu ling et Bai zhu dans Shen ling bai zhu san pour renforcer la Rate
1272	Associé à Ren shen, Fu ling et Bai zhu dans Shen ling bai zhu san pour renforcer la Rate
1273	Associé à Ren shen, Fu ling et Bai zhu dans Shen ling bai zhu san pour renforcer la Rate
1274	Associé à Xiang ru, He ye et Hou po dans Xiang ru yin pour clarifier la canicule et transformer l'Humidité
1275	Associé à Xiang ru, He ye et Hou po dans Xiang ru yin pour clarifier la canicule et transformer l'Humidité
1276	Associé à Ge gen, Bai dou kou, Sha ren etc. dans les cas d'intoxication à l'alcool pour son effet antitoxique
1277	Associé à Ge gen, Bai dou kou, Sha ren etc. dans les cas d'intoxication à l'alcool pour son effet antitoxique
1278	Associé à Ge gen, Bai dou kou, Sha ren etc. dans les cas d'intoxication à l'alcool pour son effet antitoxique
1279	Tonifient le Qi, engendrent les Liquides, tonifient la Rate et le Cœur.
1280	Dans Zhi gan cao tang, réchauffent le Yang de la poitrine et traitent les palpitations.
1281	Régularisent les mouvements de montée et de descente et favorisent la diurèse.
1022	Xi xin guide Sheng di huang vers le Foyer Supérieur pour clarifier la Chaleur. Ils dispersent aussi le Vent et arrêtent la douleur.
574	Clarifient la Chaleur dans la couche du Qi et dans la couche du Sang.
715	Préviennent la formation de sang mort en traumatologie.
326	Nourrissent le Sang du Foie et le yin du Foie et des Reins.
1282	Avec Fu shen, Long chi, Jiang can pour les terreurs nocturnes avec spasmes.
1283	Traitent les taies cornéennes avec congestion du Feu du Foie.
1284	Pour l'impuissance par vide de Yang des Reins.
1285	Traitent les œdèmes avec blocage urinaire.
314	Réchauffent le Poumon, favorisent la réception du Qi par les Reins, arrêtent la toux et traitent l'asthme.
1286	Tonifient les vides, traitent les blessures de fatigue.
1287	Réduisent les œdèmes et résolvent la toxicité pour les gonflements infectieux et adénopathies.
1288	Traitent les leucorrhées.
1289	Neutralisent l'acidité gastrique et arrêtent la douleur.
1290	Dans Qing dai tang, avec Wu zei gu, Long gu, Mu li pour arrêter les saignements.
1291	Lubrifient les intestins et débloquent les selles.
1292	Traitent la révolte du Foie sur le Poumon avec mucosités striées de sang.
1293	Traitent le vent au niveau cutané et calment les démangeaisons.
\.

-- alternative_names
COPY alternative_names (drug_id, name) FROM stdin;
384	Hai piao xiao
\.

-- drug_flavors
COPY drug_flavors (drug_id, flavor) FROM stdin;
1	SWEET
2	SWEET
2	PUNGENT
2	BLAND
3	SWEET
3	SALTY
4	PUNGENT
4	SALTY
5	BITTER
6	BITTER
7	BITTER
8	PUNGENT
8	SWEET
8	BITTER
9	BITTER
10	BITTER
10	PUNGENT
11	SWEET
11	BITTER
12	SWEET
12	BLAND
13	SWEET
14	PUNGENT
14	SWEET
15	SWEET
16	PUNGENT
16	BITTER
17	PUNGENT
17	SWEET
18	SWEET
18	BITTER
18	SOUR
19	BITTER
19	SOUR
20	BITTER
20	PUNGENT
21	SWEET
21	PUNGENT
22	SWEET
23	BITTER
23	SWEET
24	PUNGENT
25	BITTER
26	SWEET
26	SOUR
27	SWEET
28	PUNGENT
29	PUNGENT
29	BITTER
30	SWEET
30	BLAND
31	SWEET
32	BITTER
33	PUNGENT
34	PUNGENT
34	SWEET
35	PUNGENT
36	BITTER
36	SWEET
37	SWEET
38	SWEET
39	PUNGENT
39	BITTER
40	SOUR
40	SOUR
41	SWEET
41	BLAND
42	PUNGENT
43	BITTER
44	SWEET
44	BLAND
45	SWEET
46	BITTER
47	PUNGENT
47	SWEET
48	PUNGENT
48	BITTER
49	PUNGENT
50	PUNGENT
51	SWEET
51	SOUR
52	SWEET
53	SWEET
54	BITTER
55	BITTER
55	PUNGENT
56	SWEET
56	SALTY
57	SWEET
57	BITTER
57	SALTY
58	SWEET
58	SOUR
59	SWEET
60	PUNGENT
61	SWEET
61	BITTER
62	PUNGENT
62	SWEET
63	SWEET
64	PUNGENT
64	BITTER
64	AROMATIC
65	PUNGENT
66	BITTER
66	SOUR
67	BITTER
67	SWEET
68	SWEET
69	PUNGENT
70	SWEET
70	SALTY
71	BITTER
72	PUNGENT
73	SWEET
73	BLAND
73	SOUR
74	BITTER
74	SWEET
75	BITTER
75	PUNGENT
76	SWEET
76	SALTY
77	BITTER
78	BITTER
79	SALTY
79	BITTER
80	PUNGENT
80	BITTER
81	PUNGENT
82	BITTER
83	SALTY
84	BITTER
84	SWEET
84	SOUR
85	PUNGENT
85	BITTER
86	PUNGENT
86	SWEET
87	SWEET
88	SWEET
89	PUNGENT
89	BITTER
90	SWEET
91	BITTER
91	SOUR
92	SALTY
93	SWEET
93	SOUR
94	PUNGENT
94	BITTER
95	SWEET
96	PUNGENT
96	BITTER
97	BITTER
97	PUNGENT
98	BITTER
98	PUNGENT
99	SWEET
100	PUNGENT
101	SWEET
101	PUNGENT
102	BITTER
102	SOUR
103	BITTER
103	SOUR
104	PUNGENT
104	BITTER
105	BITTER
106	BITTER
106	SWEET
107	BITTER
108	PUNGENT
109	PUNGENT
109	BITTER
110	SWEET
110	BITTER
111	SALTY
112	SWEET
113	SWEET
113	BLAND
114	BITTER
114	SOUR
115	SOUR
115	SOUR
116	BITTER
117	SWEET
118	PUNGENT
119	SWEET
120	BITTER
120	PUNGENT
121	BITTER
121	PUNGENT
122	SALTY
123	PUNGENT
123	BITTER
124	PUNGENT
124	BITTER
125	BITTER
125	PUNGENT
126	BITTER
126	PUNGENT
127	SWEET
127	SALTY
128	BITTER
129	BITTER
129	SALTY
130	SWEET
131	PUNGENT
132	SWEET
133	SWEET
133	PUNGENT
134	BITTER
134	PUNGENT
135	SWEET
135	PUNGENT
136	PUNGENT
137	BITTER
137	SOUR
138	BITTER
138	PUNGENT
139	SWEET
140	PUNGENT
141	BITTER
142	BITTER
143	BITTER
143	SWEET
144	SWEET
144	BITTER
145	SWEET
146	BITTER
146	PUNGENT
147	SWEET
147	SOUR
148	PUNGENT
148	BITTER
148	SWEET
149	SWEET
149	BLAND
150	PUNGENT
151	SWEET
152	PUNGENT
153	PUNGENT
155	SALTY
156	SOUR
156	SOUR
157	BITTER
157	PUNGENT
158	PUNGENT
159	BITTER
159	SOUR
160	SALTY
161	PUNGENT
161	BITTER
162	PUNGENT
163	BITTER
163	PUNGENT
164	BITTER
164	SWEET
165	PUNGENT
165	BITTER
166	BITTER
167	BITTER
167	SWEET
168	SWEET
169	SALTY
170	PUNGENT
171	PUNGENT
171	SWEET
172	SWEET
173	SWEET
174	SWEET
175	PUNGENT
176	SOUR
176	SWEET
177	BITTER
177	SOUR
178	SOUR
178	SOUR
179	SWEET
180	SALTY
180	SOUR
181	SWEET
182	PUNGENT
182	SWEET
183	SWEET
183	BITTER
184	BITTER
184	PUNGENT
185	SWEET
185	SOUR
186	PUNGENT
186	BITTER
187	PUNGENT
188	SALTY
188	PUNGENT
189	BITTER
190	PUNGENT
190	BITTER
191	BITTER
192	SWEET
192	BLAND
193	BITTER
194	BITTER
195	BITTER
195	SALTY
195	SWEET
196	BITTER
196	SWEET
197	BITTER
197	PUNGENT
198	SOUR
199	SWEET
200	BITTER
201	SWEET
201	SOUR
202	SWEET
203	SWEET
203	BITTER
204	SWEET
205	BITTER
205	SWEET
205	PUNGENT
206	BITTER
206	SOUR
207	SWEET
208	SWEET
208	SOUR
209	SWEET
209	SOUR
210	BITTER
210	SWEET
211	PUNGENT
212	BITTER
212	PUNGENT
213	BITTER
214	SWEET
214	SALTY
215	PUNGENT
216	PUNGENT
216	SWEET
217	PUNGENT
217	SWEET
218	BITTER
218	SALTY
219	BITTER
220	PUNGENT
221	SALTY
222	SWEET
222	BLAND
223	SALTY
224	SWEET
224	BITTER
225	BITTER
225	SWEET
225	SALTY
226	PUNGENT
226	BITTER
226	SWEET
227	BITTER
228	SALTY
228	BITTER
229	PUNGENT
229	SWEET
230	BITTER
231	SOUR
231	SWEET
232	SWEET
233	SWEET
234	PUNGENT
234	BITTER
235	SWEET
236	PUNGENT
237	PUNGENT
238	SOUR
239	BITTER
240	SWEET
240	SALTY
241	BITTER
241	SALTY
242	BITTER
243	PUNGENT
243	AROMATIC
244	BITTER
244	PUNGENT
245	SWEET
246	SALTY
247	SWEET
247	BLAND
248	BITTER
249	SOUR
249	AROMATIC
250	BITTER
250	SOUR
250	AROMATIC
251	PUNGENT
252	SWEET
252	BITTER
253	SOUR
254	BITTER
254	PUNGENT
255	SWEET
255	BLAND
256	PUNGENT
256	BITTER
257	BITTER
258	PUNGENT
259	PUNGENT
259	SWEET
260	PUNGENT
260	BITTER
261	SWEET
262	BITTER
262	SOUR
263	BITTER
264	BITTER
264	PUNGENT
265	SWEET
266	BITTER
266	PUNGENT
267	PUNGENT
267	BITTER
267	SOUR
268	SWEET
268	SALTY
269	PUNGENT
270	SWEET
270	SOUR
271	BITTER
272	BITTER
273	SALTY
274	SWEET
275	BITTER
276	PUNGENT
276	BITTER
277	PUNGENT
278	SWEET
278	BITTER
279	SWEET
279	SALTY
280	PUNGENT
281	SALTY
282	BITTER
283	PUNGENT
283	BITTER
284	SWEET
285	PUNGENT
286	BITTER
286	PUNGENT
287	PUNGENT
288	BITTER
288	SALTY
289	SWEET
289	BITTER
290	SWEET
290	PUNGENT
291	BITTER
291	PUNGENT
292	BITTER
292	SWEET
293	BITTER
294	PUNGENT
294	SWEET
294	BLAND
295	BITTER
295	SOUR
295	SOUR
296	BITTER
297	PUNGENT
297	BITTER
298	BITTER
298	SWEET
299	PUNGENT
299	BITTER
300	PUNGENT
300	BITTER
301	PUNGENT
301	BITTER
302	PUNGENT
302	BITTER
303	BITTER
304	SWEET
305	PUNGENT
305	BITTER
306	BITTER
307	BITTER
308	SWEET
309	BITTER
310	PUNGENT
311	SWEET
312	SWEET
313	BITTER
314	PUNGENT
314	SALTY
315	PUNGENT
315	SWEET
315	BITTER
316	BITTER
316	SOUR
316	SWEET
317	SWEET
317	SALTY
318	PUNGENT
318	BITTER
319	PUNGENT
320	PUNGENT
320	BITTER
321	SALTY
321	BITTER
322	PUNGENT
323	PUNGENT
324	SALTY
324	PUNGENT
325	BITTER
326	BITTER
326	SWEET
327	BITTER
328	SWEET
329	SALTY
330	PUNGENT
330	BITTER
331	BITTER
331	PUNGENT
331	SALTY
332	PUNGENT
333	PUNGENT
333	BITTER
334	PUNGENT
335	SWEET
336	PUNGENT
337	SWEET
337	BITTER
338	PUNGENT
339	BITTER
340	SWEET
341	SALTY
341	SWEET
342	SWEET
343	SWEET
343	BLAND
344	SWEET
345	SWEET
346	PUNGENT
346	BITTER
346	SWEET
347	BITTER
349	SWEET
350	SWEET
350	BITTER
351	PUNGENT
352	SWEET
352	PUNGENT
353	PUNGENT
353	SWEET
354	SWEET
354	BITTER
355	PUNGENT
355	BITTER
356	BITTER
357	BITTER
357	SOUR
358	BITTER
359	SWEET
359	SALTY
359	PUNGENT
360	SWEET
361	BITTER
361	PUNGENT
361	SWEET
362	SWEET
363	BITTER
363	SOUR
364	BITTER
364	SOUR
365	SALTY
366	SWEET
367	SWEET
367	BITTER
368	SWEET
369	PUNGENT
370	BITTER
371	BITTER
372	PUNGENT
373	PUNGENT
374	SWEET
374	BITTER
376	SWEET
377	SWEET
378	BITTER
379	SWEET
380	SWEET
380	SOUR
382	SWEET
383	BITTER
384	SALTY
384	SOUR
385	SWEET
386	PUNGENT
387	BITTER
387	SOUR
388	BITTER
390	SWEET
390	SALTY
391	SWEET
391	SOUR
392	SWEET
392	BITTER
393	PUNGENT
394	SWEET
394	SOUR
395	BITTER
395	PUNGENT
396	PUNGENT
397	PUNGENT
397	BITTER
398	PUNGENT
398	SALTY
399	PUNGENT
400	SWEET
400	PUNGENT
401	BITTER
401	PUNGENT
\.

-- drug_tropism
COPY drug_tropism (drug_id, tropism) FROM stdin;
1	LUNGS
1	LIVER
1	LARGE_INTESTINE
2	HEART
2	STOMACH
2	SMALL_INTESTINE
3	HEART
3	LIVER
4	LUNGS
4	LARGE_INTESTINE
5	HEART
5	LIVER
5	SPLEEN
6	STOMACH
7	LIVER
8	LIVER
8	LUNGS
9	HEART
9	LUNGS
9	TRIPLE_BURNER
9	STOMACH
9	LIVER
10	LIVER
11	SPLEEN
11	STOMACH
11	LIVER
11	LUNGS
12	KIDNEYS
12	BLADDER
13	LIVER
13	PERICARDIUM
14	SPLEEN
14	STOMACH
15	SPLEEN
15	STOMACH
15	LIVER
16	LIVER
17	LUNGS
17	SPLEEN
17	STOMACH
18	LUNGS
19	LIVER
19	STOMACH
19	LARGE_INTESTINE
20	HEART
20	LIVER
20	KIDNEYS
21	LIVER
21	KIDNEYS
21	SPLEEN
22	LIVER
22	PERICARDIUM
23	HEART
23	LIVER
24	LIVER
24	KIDNEYS
24	LARGE_INTESTINE
25	SPLEEN
25	STOMACH
25	BLADDER
26	SPLEEN
26	KIDNEYS
26	HEART
27	SPLEEN
27	STOMACH
28	LIVER
28	KIDNEYS
28	SPLEEN
28	STOMACH
29	LIVER
29	SPLEEN
29	STOMACH
29	KIDNEYS
30	HEART
30	LUNGS
30	SPLEEN
30	KIDNEYS
31	LUNGS
31	STOMACH
32	HEART
32	LIVER
32	STOMACH
32	LARGE_INTESTINE
32	BLADDER
33	SPLEEN
33	STOMACH
33	LUNGS
34	STOMACH
34	SPLEEN
34	LIVER
35	LIVER
35	HEART
36	SPLEEN
36	STOMACH
37	STOMACH
37	KIDNEYS
38	LIVER
38	STOMACH
39	SPLEEN
39	STOMACH
39	LARGE_INTESTINE
39	GALLBLADDER
39	TRIPLE_BURNER
40	LUNGS
40	LARGE_INTESTINE
40	KIDNEYS
41	SPLEEN
41	STOMACH
41	LUNGS
42	LIVER
42	GALLBLADDER
42	PERICARDIUM
43	LIVER
43	GALLBLADDER
43	STOMACH
43	BLADDER
44	LUNGS
44	STOMACH
44	SMALL_INTESTINE
45	SPLEEN
45	STOMACH
45	LARGE_INTESTINE
46	BLADDER
47	HEART
47	LUNGS
47	BLADDER
48	HEART
48	LIVER
48	SPLEEN
49	LUNGS
49	SPLEEN
49	STOMACH
50	HEART
50	LIVER
51	LIVER
51	LUNGS
51	STOMACH
52	LUNGS
52	LIVER
52	KIDNEYS
53	LIVER
53	KIDNEYS
53	LUNGS
54	LUNGS
54	KIDNEYS
54	LARGE_INTESTINE
55	LIVER
55	HEART
55	BLADDER
56	LUNGS
56	HEART
56	LIVER
57	LIVER
57	LARGE_INTESTINE
58	SPLEEN
58	LARGE_INTESTINE
58	STOMACH
59	HEART
59	SPLEEN
60	LUNGS
61	LUNGS
61	STOMACH
62	HEART
62	SPLEEN
62	KIDNEYS
63	LUNGS
63	LIVER
64	SPLEEN
64	LUNGS
65	SPLEEN
65	STOMACH
66	LIVER
66	LUNGS
66	LARGE_INTESTINE
67	STOMACH
67	LARGE_INTESTINE
67	SMALL_INTESTINE
68	SPLEEN
68	STOMACH
69	LUNGS
69	LIVER
70	LIVER
71	LUNGS
71	LIVER
72	LUNGS
72	BLADDER
73	LIVER
73	GALLBLADDER
73	HEART
74	LIVER
74	KIDNEYS
75	LIVER
75	KIDNEYS
76	HEART
76	LUNGS
76	LIVER
76	KIDNEYS
77	LUNGS
77	KIDNEYS
77	LARGE_INTESTINE
78	LIVER
78	KIDNEYS
79	STOMACH
79	LARGE_INTESTINE
80	LUNGS
81	STOMACH
81	SPLEEN
81	KIDNEYS
82	LIVER
82	STOMACH
83	KIDNEYS
84	LUNGS
84	STOMACH
84	LIVER
85	SPLEEN
85	STOMACH
86	HEART
86	SPLEEN
86	KIDNEYS
86	LIVER
87	HEART
87	LIVER
87	GALLBLADDER
88	LUNGS
88	SPLEEN
88	SMALL_INTESTINE
89	HEART
89	LIVER
89	SPLEEN
90	SPLEEN
90	STOMACH
90	LUNGS
91	LARGE_INTESTINE
91	STOMACH
91	LIVER
92	LIVER
92	STOMACH
92	KIDNEYS
93	LUNGS
94	HEART
94	STOMACH
95	SPLEEN
95	LUNGS
96	LUNGS
97	LUNGS
97	LIVER
97	SPLEEN
98	KIDNEYS
98	SPLEEN
99	LIVER
99	KIDNEYS
99	LARGE_INTESTINE
100	SPLEEN
100	STOMACH
100	LUNGS
101	LIVER
101	HEART
101	SPLEEN
102	LIVER
102	HEART
103	LIVER
103	KIDNEYS
104	LUNGS
104	KIDNEYS
104	LARGE_INTESTINE
105	LUNGS
106	STOMACH
106	LUNGS
106	KIDNEYS
107	HEART
107	LIVER
108	SPLEEN
108	STOMACH
109	SPLEEN
109	STOMACH
109	LIVER
110	LUNGS
111	LUNGS
112	LIVER
112	KIDNEYS
112	BLADDER
113	HEART
113	LUNGS
113	SMALL_INTESTINE
114	STOMACH
115	LIVER
115	KIDNEYS
116	LUNGS
116	KIDNEYS
116	LARGE_INTESTINE
117	HEART
117	STOMACH
118	LUNGS
118	LIVER
119	LUNGS
119	STOMACH
120	STOMACH
120	SPLEEN
120	LARGE_INTESTINE
121	LIVER
121	KIDNEYS
122	LIVER
122	STOMACH
123	KIDNEYS
123	BLADDER
124	HEART
124	LIVER
124	KIDNEYS
124	SPLEEN
125	STOMACH
125	LARGE_INTESTINE
126	HEART
126	LIVER
127	KIDNEYS
128	HEART
128	LIVER
128	STOMACH
128	LARGE_INTESTINE
129	STOMACH
129	LIVER
129	KIDNEYS
130	LARGE_INTESTINE
130	SMALL_INTESTINE
130	BLADDER
131	LUNGS
131	STOMACH
132	HEART
133	SPLEEN
133	STOMACH
134	LUNGS
135	LIVER
135	STOMACH
136	LIVER
137	LIVER
137	SPLEEN
138	LUNGS
139	SPLEEN
139	LUNGS
140	LUNGS
140	SPLEEN
141	KIDNEYS
141	LIVER
142	LIVER
142	HEART
143	LUNGS
143	HEART
144	LARGE_INTESTINE
145	LIVER
146	SPLEEN
146	STOMACH
147	SPLEEN
147	KIDNEYS
148	LIVER
148	SPLEEN
148	TRIPLE_BURNER
149	HEART
149	STOMACH
149	SMALL_INTESTINE
150	HEART
150	SPLEEN
151	KIDNEYS
151	LIVER
151	LUNGS
151	SMALL_INTESTINE
152	LIVER
152	KIDNEYS
152	STOMACH
153	STOMACH
153	LARGE_INTESTINE
155	LIVER
155	KIDNEYS
156	KIDNEYS
156	BLADDER
156	LARGE_INTESTINE
157	HEART
157	STOMACH
158	LUNGS
158	LARGE_INTESTINE
159	LUNGS
159	LIVER
159	SPLEEN
160	LIVER
160	SPLEEN
160	KIDNEYS
161	LIVER
161	STOMACH
162	LUNGS
162	STOMACH
163	LIVER
163	KIDNEYS
164	HEART
164	LIVER
165	LUNGS
165	BLADDER
166	LIVER
166	GALLBLADDER
166	HEART
167	HEART
167	LUNGS
167	KIDNEYS
168	LIVER
169	LUNGS
169	STOMACH
169	LIVER
170	STOMACH
170	LARGE_INTESTINE
170	LUNGS
171	LUNGS
171	SPLEEN
171	LARGE_INTESTINE
171	STOMACH
172	SPLEEN
172	LUNGS
172	KIDNEYS
173	SPLEEN
173	STOMACH
174	LUNGS
175	STOMACH
175	SPLEEN
175	KIDNEYS
176	SPLEEN
176	STOMACH
176	LIVER
177	HEART
177	LUNGS
178	LIVER
179	LUNGS
179	STOMACH
179	LARGE_INTESTINE
180	LIVER
180	KIDNEYS
181	SPLEEN
181	LUNGS
181	KIDNEYS
182	LUNGS
182	STOMACH
183	LUNGS
183	LIVER
184	STOMACH
184	LIVER
184	GALLBLADDER
185	HEART
185	LIVER
185	KIDNEYS
186	STOMACH
186	LARGE_INTESTINE
186	LIVER
187	LIVER
188	LIVER
188	LUNGS
189	HEART
189	LIVER
189	PERICARDIUM
190	LIVER
190	GALLBLADDER
190	HEART
190	LUNGS
191	LIVER
192	LIVER
192	STOMACH
193	LUNGS
193	HEART
193	SMALL_INTESTINE
193	GALLBLADDER
194	STOMACH
194	SPLEEN
194	LARGE_INTESTINE
194	LIVER
194	HEART
195	LIVER
196	HEART
196	LIVER
196	LARGE_INTESTINE
197	LUNGS
197	KIDNEYS
197	LARGE_INTESTINE
198	LARGE_INTESTINE
198	LIVER
199	HEART
199	LUNGS
199	LIVER
200	LUNGS
201	STOMACH
201	LARGE_INTESTINE
202	LIVER
202	KIDNEYS
203	HEART
203	LIVER
203	KIDNEYS
204	HEART
204	KIDNEYS
204	LARGE_INTESTINE
205	LIVER
205	KIDNEYS
206	LIVER
206	GALLBLADDER
206	LARGE_INTESTINE
207	STOMACH
207	LARGE_INTESTINE
208	LIVER
208	PERICARDIUM
209	LIVER
209	HEART
209	GALLBLADDER
210	LIVER
210	KIDNEYS
210	LARGE_INTESTINE
211	SPLEEN
211	STOMACH
212	LIVER
212	SPLEEN
213	STOMACH
213	LARGE_INTESTINE
214	LIVER
214	GALLBLADDER
214	KIDNEYS
214	BLADDER
215	SPLEEN
215	STOMACH
215	HEART
215	LUNGS
216	KIDNEYS
216	LIVER
217	LUNGS
217	STOMACH
217	HEART
218	LIVER
218	HEART
218	STOMACH
219	LARGE_INTESTINE
219	LIVER
220	LIVER
220	LUNGS
221	LIVER
221	LUNGS
221	STOMACH
222	KIDNEYS
222	BLADDER
223	LIVER
224	LIVER
225	LUNGS
225	STOMACH
225	KIDNEYS
226	LIVER
227	LUNGS
228	LUNGS
228	STOMACH
229	BLADDER
229	LIVER
229	SPLEEN
230	LUNGS
230	STOMACH
231	LUNGS
231	KIDNEYS
231	HEART
232	LUNGS
232	LIVER
232	KIDNEYS
232	HEART
233	HEART
233	LUNGS
233	SPLEEN
233	STOMACH
234	LIVER
234	GALLBLADDER
234	STOMACH
235	KIDNEYS
235	LUNGS
236	STOMACH
236	LARGE_INTESTINE
237	LUNGS
237	SPLEEN
237	STOMACH
238	LIVER
238	SPLEEN
239	HEART
239	SMALL_INTESTINE
240	LIVER
240	KIDNEYS
241	HEART
241	LIVER
241	STOMACH
242	HEART
242	LUNGS
242	LARGE_INTESTINE
242	BLADDER
243	LUNGS
243	STOMACH
244	LIVER
244	GALLBLADDER
245	LUNGS
245	HEART
246	LIVER
246	SPLEEN
246	BLADDER
247	LUNGS
247	STOMACH
247	BLADDER
248	LUNGS
248	STOMACH
248	GALLBLADDER
248	LARGE_INTESTINE
249	LARGE_INTESTINE
249	STOMACH
250	LUNGS
250	LARGE_INTESTINE
251	LUNGS
252	LUNGS
252	STOMACH
252	LARGE_INTESTINE
253	LUNGS
253	LARGE_INTESTINE
253	KIDNEYS
254	LUNGS
254	LIVER
255	LUNGS
255	SPLEEN
255	KIDNEYS
255	SMALL_INTESTINE
256	PERICARDIUM
256	LIVER
256	TRIPLE_BURNER
256	GALLBLADDER
257	LIVER
257	KIDNEYS
258	SPLEEN
258	KIDNEYS
259	KIDNEYS
259	LIVER
260	HEART
260	LIVER
260	KIDNEYS
260	SPLEEN
261	HEART
261	LIVER
262	LIVER
262	SMALL_INTESTINE
262	LARGE_INTESTINE
263	LIVER
263	SPLEEN
263	STOMACH
264	SPLEEN
264	STOMACH
264	LIVER
264	GALLBLADDER
265	HEART
265	LIVER
266	LIVER
266	GALLBLADDER
266	KIDNEYS
267	LIVER
267	SPLEEN
267	STOMACH
267	LUNGS
268	HEART
268	LIVER
269	LIVER
269	SPLEEN
270	HEART
270	SMALL_INTESTINE
271	LIVER
271	SPLEEN
272	KIDNEYS
272	BLADDER
272	LARGE_INTESTINE
273	LIVER
273	SPLEEN
273	KIDNEYS
274	LIVER
274	KIDNEYS
275	LIVER
275	STOMACH
275	LARGE_INTESTINE
276	LIVER
276	KIDNEYS
276	BLADDER
277	SPLEEN
277	STOMACH
278	LIVER
278	STOMACH
279	BLADDER
279	SMALL_INTESTINE
280	SPLEEN
280	STOMACH
280	LUNGS
281	LIVER
282	LIVER
282	LARGE_INTESTINE
283	LUNGS
283	SPLEEN
284	LUNGS
284	HEART
284	STOMACH
285	LIVER
286	LIVER
287	HEART
287	SPLEEN
288	LIVER
288	STOMACH
288	KIDNEYS
288	LUNGS
289	SPLEEN
289	STOMACH
289	LIVER
290	LIVER
290	LUNGS
291	LIVER
291	SPLEEN
291	STOMACH
292	LIVER
292	STOMACH
293	LIVER
293	LARGE_INTESTINE
294	LUNGS
294	SMALL_INTESTINE
294	HEART
295	LIVER
295	LARGE_INTESTINE
296	LIVER
297	LIVER
297	STOMACH
298	LUNGS
298	LIVER
299	LUNGS
299	HEART
299	KIDNEYS
300	LIVER
300	SPLEEN
300	STOMACH
300	LUNGS
301	BLADDER
301	KIDNEYS
302	LIVER
302	SPLEEN
303	LUNGS
303	LARGE_INTESTINE
304	HEART
305	LUNGS
305	STOMACH
305	LARGE_INTESTINE
306	STOMACH
306	LARGE_INTESTINE
307	LIVER
308	SPLEEN
308	STOMACH
308	SMALL_INTESTINE
308	BLADDER
309	LIVER
309	SPLEEN
310	SPLEEN
310	STOMACH
310	LARGE_INTESTINE
310	SMALL_INTESTINE
311	LUNGS
311	LARGE_INTESTINE
312	LUNGS
312	LARGE_INTESTINE
313	STOMACH
313	LIVER
313	SMALL_INTESTINE
313	BLADDER
314	HEART
314	STOMACH
314	KIDNEYS
315	LUNGS
315	STOMACH
316	LIVER
316	SPLEEN
317	HEART
317	LIVER
318	LUNGS
318	STOMACH
319	LIVER
319	KIDNEYS
320	HEART
320	SPLEEN
320	LUNGS
321	LIVER
322	SPLEEN
322	STOMACH
322	KIDNEYS
323	LUNGS
323	SPLEEN
323	STOMACH
324	LIVER
324	HEART
324	KIDNEYS
325	LIVER
326	LIVER
326	KIDNEYS
327	LARGE_INTESTINE
327	LIVER
328	HEART
329	KIDNEYS
330	HEART
330	LIVER
330	SPLEEN
331	LUNGS
331	SPLEEN
331	STOMACH
331	LARGE_INTESTINE
332	LUNGS
332	KIDNEYS
332	HEART
333	LUNGS
334	LUNGS
334	SPLEEN
334	KIDNEYS
334	BLADDER
335	HEART
335	LIVER
335	LUNGS
336	SPLEEN
336	STOMACH
336	LARGE_INTESTINE
337	HEART
337	SPLEEN
337	LUNGS
338	LUNGS
338	STOMACH
339	LIVER
339	STOMACH
340	LUNGS
340	STOMACH
340	GALLBLADDER
341	LUNGS
341	KIDNEYS
342	KIDNEYS
342	LUNGS
342	LARGE_INTESTINE
343	STOMACH
343	BLADDER
343	LUNGS
344	LIVER
344	KIDNEYS
345	STOMACH
345	KIDNEYS
346	LUNGS
347	LIVER
349	LIVER
349	STOMACH
350	LUNGS
350	STOMACH
351	BLADDER
352	SPLEEN
352	STOMACH
353	LIVER
353	LUNGS
354	SPLEEN
354	LUNGS
355	LIVER
355	SPLEEN
355	KIDNEYS
356	HEART
356	STOMACH
357	HEART
357	LIVER
357	LARGE_INTESTINE
358	KIDNEYS
358	STOMACH
358	BLADDER
359	HEART
359	LIVER
359	SPLEEN
360	LIVER
361	SMALL_INTESTINE
361	LARGE_INTESTINE
362	LUNGS
362	STOMACH
362	BLADDER
363	LIVER
363	LUNGS
363	STOMACH
364	LIVER
364	LUNGS
364	LARGE_INTESTINE
365	LIVER
365	HEART
366	HEART
366	LIVER
367	HEART
367	LIVER
367	LUNGS
368	SPLEEN
368	LUNGS
368	LARGE_INTESTINE
369	SPLEEN
369	STOMACH
369	KIDNEYS
369	BLADDER
370	HEART
370	STOMACH
371	HEART
371	SMALL_INTESTINE
371	BLADDER
371	LUNGS
372	LUNGS
372	STOMACH
372	LARGE_INTESTINE
373	LIVER
373	LARGE_INTESTINE
374	LIVER
374	SPLEEN
376	SPLEEN
376	STOMACH
377	LUNGS
377	STOMACH
377	LARGE_INTESTINE
377	SMALL_INTESTINE
378	HEART
378	PERICARDIUM
379	HEART
379	LIVER
380	KIDNEYS
380	HEART
382	LUNGS
382	LARGE_INTESTINE
383	STOMACH
384	LIVER
384	KIDNEYS
386	LUNGS
386	SPLEEN
386	STOMACH
387	HEART
387	LIVER
387	SPLEEN
388	LUNGS
388	LARGE_INTESTINE
390	LIVER
390	KIDNEYS
390	HEART
391	LIVER
391	KIDNEYS
392	LIVER
392	KIDNEYS
394	HEART
394	LUNGS
395	BLADDER
395	KIDNEYS
395	SPLEEN
395	LUNGS
396	LUNGS
396	LIVER
397	BLADDER
397	LIVER
397	STOMACH
398	BLADDER
399	LIVER
399	STOMACH
400	LIVER
400	SPLEEN
400	STOMACH
401	LIVER
401	SPLEEN
401	KIDNEYS
\.

-- drug_movement
COPY drug_movement (drug_id, movements) FROM stdin;
1	INWARD
1	DESCENDING
2	DESCENDING
2	INWARD
3	INWARD
4	DESCENDING
4	ASCENDING
5	DESCENDING
6	INWARD
7	INWARD
8	DESCENDING
8	ASCENDING
8	OUTWARD
9	DESCENDING
10	INWARD
10	DESCENDING
11	DESCENDING
12	DESCENDING
13	INWARD
14	ASCENDING
14	DESCENDING
15	DESCENDING
16	ASCENDING
17	DESCENDING
18	DESCENDING
19	INWARD
20	INWARD
20	DESCENDING
21	ASCENDING
22	INWARD
22	DESCENDING
23	INWARD
24	DESCENDING
25	DESCENDING
26	ASCENDING
27	DESCENDING
28	DESCENDING
29	DESCENDING
30	DESCENDING
31	DESCENDING
32	INWARD
32	DESCENDING
33	DESCENDING
33	ASCENDING
34	ASCENDING
35	DESCENDING
36	ASCENDING
36	INWARD
37	INWARD
38	DESCENDING
39	INWARD
39	ASCENDING
39	DESCENDING
40	INWARD
41	DESCENDING
42	ASCENDING
43	DESCENDING
44	DESCENDING
45	DESCENDING
46	INWARD
46	DESCENDING
47	ASCENDING
47	OUTWARD
47	DESCENDING
48	DESCENDING
49	OUTWARD
49	DESCENDING
50	ASCENDING
50	OUTWARD
50	INWARD
51	ASCENDING
52	DESCENDING
52	INWARD
53	DESCENDING
54	DESCENDING
55	DESCENDING
56	DESCENDING
57	DESCENDING
57	ASCENDING
58	ASCENDING
58	INWARD
59	ASCENDING
60	INWARD
61	INWARD
62	INWARD
62	ASCENDING
62	DESCENDING
63	ASCENDING
63	OUTWARD
64	ASCENDING
64	OUTWARD
65	INWARD
66	DESCENDING
66	INWARD
67	INWARD
67	DESCENDING
68	DESCENDING
69	DESCENDING
70	DESCENDING
71	INWARD
72	ASCENDING
73	DESCENDING
74	INWARD
74	DESCENDING
75	DESCENDING
76	INWARD
77	DESCENDING
78	INWARD
79	DESCENDING
80	DESCENDING
81	DESCENDING
82	ASCENDING
83	INWARD
84	INWARD
85	DESCENDING
86	INWARD
86	OUTWARD
87	DESCENDING
88	DESCENDING
89	ASCENDING
90	ASCENDING
90	DESCENDING
91	INWARD
91	DESCENDING
92	INWARD
92	DESCENDING
93	DESCENDING
93	INWARD
94	ASCENDING
95	ASCENDING
96	DESCENDING
97	ASCENDING
98	ASCENDING
99	INWARD
100	DESCENDING
101	ASCENDING
102	INWARD
103	DESCENDING
104	DESCENDING
105	DESCENDING
106	INWARD
107	DESCENDING
108	INWARD
108	DESCENDING
109	ASCENDING
109	OUTWARD
110	INWARD
111	INWARD
111	DESCENDING
112	DESCENDING
113	INWARD
113	DESCENDING
114	DESCENDING
114	INWARD
115	INWARD
115	ASCENDING
116	DESCENDING
117	INWARD
118	ASCENDING
118	OUTWARD
119	DESCENDING
120	DESCENDING
120	ASCENDING
121	INWARD
122	DESCENDING
123	DESCENDING
124	OUTWARD
125	DESCENDING
126	INWARD
126	DESCENDING
127	INWARD
128	DESCENDING
129	ASCENDING
129	INWARD
130	DESCENDING
131	ASCENDING
131	OUTWARD
132	DESCENDING
133	ASCENDING
134	DESCENDING
135	INWARD
136	INWARD
136	DESCENDING
137	INWARD
138	ASCENDING
139	ASCENDING
140	DESCENDING
140	OUTWARD
141	ASCENDING
142	DESCENDING
142	INWARD
143	DESCENDING
144	INWARD
145	DESCENDING
146	DESCENDING
147	ASCENDING
148	DESCENDING
149	DESCENDING
150	ASCENDING
150	OUTWARD
151	DESCENDING
152	INWARD
152	DESCENDING
153	DESCENDING
155	INWARD
155	DESCENDING
156	INWARD
156	ASCENDING
157	INWARD
158	DESCENDING
159	INWARD
160	DESCENDING
160	ASCENDING
161	ASCENDING
162	ASCENDING
162	OUTWARD
163	INWARD
163	OUTWARD
163	DESCENDING
164	INWARD
165	ASCENDING
165	OUTWARD
165	DESCENDING
166	INWARD
166	DESCENDING
167	ASCENDING
168	DESCENDING
169	INWARD
170	DESCENDING
171	ASCENDING
172	ASCENDING
173	ASCENDING
174	DESCENDING
175	INWARD
175	DESCENDING
176	DESCENDING
177	INWARD
178	INWARD
179	DESCENDING
180	DESCENDING
180	INWARD
181	ASCENDING
182	ASCENDING
182	INWARD
182	OUTWARD
183	INWARD
184	DESCENDING
184	OUTWARD
185	DESCENDING
186	ASCENDING
187	INWARD
187	DESCENDING
188	INWARD
188	DESCENDING
189	DESCENDING
190	INWARD
191	INWARD
192	INWARD
193	ASCENDING
193	DESCENDING
194	DESCENDING
195	INWARD
196	INWARD
196	DESCENDING
197	DESCENDING
198	DESCENDING
198	INWARD
199	DESCENDING
200	DESCENDING
201	ASCENDING
201	INWARD
202	ASCENDING
203	ASCENDING
203	DESCENDING
203	INWARD
204	DESCENDING
205	INWARD
205	DESCENDING
206	INWARD
206	DESCENDING
207	DESCENDING
208	DESCENDING
208	INWARD
209	DESCENDING
209	INWARD
210	INWARD
210	DESCENDING
211	DESCENDING
212	INWARD
213	INWARD
213	DESCENDING
214	INWARD
214	DESCENDING
215	DESCENDING
215	INWARD
215	OUTWARD
216	ASCENDING
217	OUTWARD
218	INWARD
219	ASCENDING
219	DESCENDING
219	INWARD
220	ASCENDING
220	OUTWARD
221	DESCENDING
221	INWARD
222	DESCENDING
223	DESCENDING
224	DESCENDING
224	INWARD
225	INWARD
225	DESCENDING
226	INWARD
227	DESCENDING
228	INWARD
229	ASCENDING
229	OUTWARD
230	INWARD
231	INWARD
232	ASCENDING
233	ASCENDING
234	DESCENDING
234	INWARD
235	ASCENDING
236	DESCENDING
237	DESCENDING
237	OUTWARD
238	DESCENDING
239	DESCENDING
240	INWARD
241	INWARD
242	DESCENDING
242	INWARD
243	ASCENDING
243	OUTWARD
243	DESCENDING
244	DESCENDING
245	DESCENDING
246	DESCENDING
247	INWARD
247	DESCENDING
248	INWARD
249	ASCENDING
250	DESCENDING
250	INWARD
251	ASCENDING
252	INWARD
252	DESCENDING
253	INWARD
254	DESCENDING
255	DESCENDING
256	ASCENDING
256	DESCENDING
257	INWARD
258	ASCENDING
259	ASCENDING
260	OUTWARD
261	DESCENDING
262	DESCENDING
263	DESCENDING
264	DESCENDING
265	INWARD
266	ASCENDING
266	OUTWARD
267	DESCENDING
268	DESCENDING
269	ASCENDING
270	DESCENDING
271	DESCENDING
272	DESCENDING
273	DESCENDING
273	INWARD
274	INWARD
275	DESCENDING
276	OUTWARD
276	DESCENDING
277	DESCENDING
278	DESCENDING
279	DESCENDING
280	ASCENDING
281	INWARD
282	INWARD
283	DESCENDING
284	ASCENDING
285	ASCENDING
286	DESCENDING
287	ASCENDING
288	INWARD
288	DESCENDING
289	DESCENDING
290	INWARD
291	DESCENDING
292	INWARD
292	DESCENDING
293	INWARD
293	DESCENDING
294	INWARD
295	DESCENDING
296	INWARD
297	INWARD
298	ASCENDING
298	DESCENDING
299	DESCENDING
300	INWARD
301	ASCENDING
301	OUTWARD
302	INWARD
303	DESCENDING
304	DESCENDING
305	INWARD
306	DESCENDING
307	ASCENDING
308	DESCENDING
309	INWARD
310	OUTWARD
310	DESCENDING
311	DESCENDING
312	INWARD
313	DESCENDING
314	DESCENDING
315	INWARD
315	OUTWARD
316	DESCENDING
316	INWARD
317	DESCENDING
317	INWARD
318	ASCENDING
318	OUTWARD
318	DESCENDING
319	INWARD
320	ASCENDING
321	INWARD
322	DESCENDING
322	INWARD
323	DESCENDING
324	DESCENDING
325	DESCENDING
325	INWARD
326	INWARD
327	INWARD
328	DESCENDING
328	INWARD
329	INWARD
330	OUTWARD
330	INWARD
331	DESCENDING
332	ASCENDING
332	OUTWARD
333	DESCENDING
334	DESCENDING
335	INWARD
336	ASCENDING
337	ASCENDING
337	INWARD
338	INWARD
338	OUTWARD
338	DESCENDING
339	INWARD
340	DESCENDING
341	INWARD
342	INWARD
342	DESCENDING
343	INWARD
343	DESCENDING
344	DESCENDING
345	DESCENDING
346	ASCENDING
346	OUTWARD
347	DESCENDING
349	INWARD
350	DESCENDING
350	INWARD
351	ASCENDING
352	DESCENDING
353	ASCENDING
353	OUTWARD
354	ASCENDING
355	INWARD
356	INWARD
356	DESCENDING
357	INWARD
358	INWARD
358	DESCENDING
359	INWARD
360	DESCENDING
361	INWARD
361	DESCENDING
362	DESCENDING
363	INWARD
363	DESCENDING
364	INWARD
365	DESCENDING
366	DESCENDING
366	INWARD
367	DESCENDING
367	INWARD
368	ASCENDING
368	DESCENDING
369	DESCENDING
370	DESCENDING
371	DESCENDING
372	ASCENDING
372	OUTWARD
373	INWARD
373	DESCENDING
374	DESCENDING
376	ASCENDING
384	INWARD
386	DESCENDING
387	ASCENDING
388	DESCENDING
390	DESCENDING
390	INWARD
391	DESCENDING
392	DESCENDING
394	DESCENDING
394	INWARD
395	INWARD
395	DESCENDING
396	OUTWARD
396	INWARD
396	ASCENDING
397	INWARD
398	ASCENDING
398	OUTWARD
399	ASCENDING
400	DESCENDING
401	OUTWARD
\.

-- drug_contraindications
COPY drug_contraindications (drug_id, contraindication) FROM stdin;
1	Prudence en cas de vide de Rate avec selles molles
1	Interdiction en cas de Mucosités Humidité
2	Attention en cas de vide de Yin avec agitation du Feu
2	Attention en cas de fièvres en bouffées avec sensation de cuisson des os
3	Ne doit pas décocter
3	Ne pas prescrire pendant la grossesse ou les menstruations
3	Ne pas prescrire en absence de stase de sang
3	Attention en cas de prise d'anticoagulants
3	Ne pas dépasser la dose
4	Contre-indiquée pendant la grossesse
4	Contre-indiquée en cas d'hémoptysie
4	Contre-indiquée en cas de vide de Qi ou de Yin
4	Toxique, ne pas surdoser
5	Contre-indiqué pendant la grossesse
6	Ne pas utiliser en cas de déficit de production de lait maternel par Vide de Qi et de Sang
6	Ne pas prescrire pendant la grossesse
7	Ne pas prescrire en cas d'aménorrhée par Froid du sang
7	Incompatible avec Li lu
8	Ne doit pas cuire longtemps
8	Ne pas employer en cas de céphalées par vide de Yang ou avec crainte du Froid
9	Grande prudence en cas de vide de la Rate et de l'Estomac
9	Peut générer de la somnolence, être attentif chez les patients sous sédatifs, sous antihistaminiques, narcotiques, barbituriques, benzodiazépines, etc.
10	Prudence en cas de vide de Qi et de sang
10	Prudence pendant la grossesse
12	Ne pas utiliser en l'absence d'œdème ou d'Humidité
13	Prudence pendant la grossesse, peut provoquer des contractions utérines
13	Envelopper d'une étamine pour la décoction
15	Contient du gluten
15	Stoppe la lactation
17	Ne pas utiliser sur le long terme en cas de vide de Qi ou de sang
17	Inhibition réciproque avec Ren shen, Shu di huang, He shou wu
18	Prudence en cas de prise d'anticoagulants
18	Prudence pendant la grossesse, peut provoquer des contractions
18	Interaction médicamenteuse avec la codéine, le phénobarbital, la morphine : augmente leur propension à déclencher une détresse respiratoire
18	Ne pas prendre sur le long terme
20	Ne pas employer en cas de vide de sang avec Froid
20	Grande prudence en cas de grossesse ou en cas d'hyperménorrhées
20	Prudence si le patient est sous Stribild (traitement HIV), Mu dan pi inhibe les enzymes CYP3A4
21	Ne pas utiliser en cas de Vide de Yin
21	Ne pas utiliser en cas de Yang excessif
21	Ne pas utiliser dans les constipations dues à la Sécheresse
21	Ne pas utiliser dans les mictions courtes et foncées
22	Ne doit pas bouillir plus de 15 à 20 minutes
22	Prudence en l'absence de signes de Chaleur plénitude
24	Toxique
24	Interdiction d'emploi chez les personnes de faible constitution
24	Interdit pendant la grossesse
25	Prudence en cas de Froid-vide du centre
25	Potentielle hépatotoxicité, prudence en cas d'historique de pathologie hépatique
26	Ne pas utiliser si constipation avec selles sèches
27	Ne pas surdoser
27	Ne pas consommer de thé
28	Prudence en cas de vide de Yin
29	Ne pas prendre sur le long terme
29	Contre-indiqué pendant la grossesse
29	Prudence en cas d'intolérance à l'histamine
30	Son action est restreinte par le vinaigre
31	Éviter en cas de froid-vide du foyer médian
32	Incompatible avec Li lu
33	Contient des alcaloïdes pyrrolizidiniques, toxiques — ne pas surdoser
33	Très piquant et dispersant, ne pas employer en cas de vide de Yin ou de Qi
34	Contre-indiquée pendant la grossesse
34	Toxique, ne pas surdoser
35	Déconseillé en cas de vide de Qi du foyer médian
36	Ne pas utiliser si Vide de Yin ou Chaleur interne
37	Humidifiante
39	Ne doit pas cuire longtemps
40	Ne pas utiliser au début d'une toux ou d'une diarrhée
40	Ne pas surdoser
40	Ne pas utiliser sur le long terme
40	Interdite pendant la grossesse
40	Interdite pendant l'allaitement
40	Interdite chez les enfants
40	Interdite en cas d'hypothyroïdie
40	Crée une dépendance
41	Prudence pendant la grossesse
41	Prudence en cas de vide de liquides organiques
42	Prudence en cas de prise d'anticoagulants
42	Vide de Yin
42	Montée de Yang du Foie
43	Effet sédatif : attention si prise de barbituriques, antihistaminiques, narcotiques, benzodiazépines, etc.
43	Interaction médicamenteuse avec les diurétiques, augmente considérablement leur effet
43	Ne pas employer sur un froid-vide du foyer médian
43	Grande prudence en cas de vide de Yin ou de liquides
44	Prudence en cas de vide du foyer médian, utiliser des posologies basses
45	Écraser avant de faire cuire en décoction
46	Contient de l'anthraquinone, ne pas employer sur le long terme.
47	Prudence en cas de maladie de la Chaleur et de Vide de Yin, ou de syndrome du sang
47	Prudence pendant la grossesse
48	Ne pas utiliser pendant la grossesse
49	Ne pas utiliser si les exanthèmes sont déjà sortis
49	Ne pas utiliser si la pathologie est de type chaleur toxique
50	Grande prudence pendant la grossesse
50	Prudence chez les intolérants à l'histamine
50	Prudence en cas de traitement anticoagulant
52	Ne pas utiliser en cas d'atteinte du Vent-Froid sur le biao
52	Ne pas utiliser en cas de vide du centre avec selles molles
53	Humidifiant
54	Hautement toxique, ne pas employer sur le long terme
54	Ne pas surdoser
54	Interdiction absolue chez la femme enceinte
54	Interdiction chez les patients de faible constitution
54	Incompatible avec Gan cao
55	Grande prudence pendant la grossesse, surtout s'il y a vide de sang et pas de stase
55	Prudence si intolérance à l'histamine
55	Prudence si prise d'anticoagulants
56	Prudence pendant la grossesse
56	Prudence en cas de Froid-vide du centre
57	Prudence pendant la grossesse, peut provoquer des contractions utérines
57	Prudence en cas d'hypotension
57	Éviter en cas de froid vide du centre avec selles molles
58	Déconseillé pendant la grossesse
58	Ne pas utiliser en cas d'accumulation d'Humidité-Chaleur
58	Inhibée par Rou gui
59	Ne pas utiliser en cas de Plénitude du Foyer Médian par Stagnation de Mucosités et de Feu
61	Éviter en cas de grossesse
61	Incompatible avec Wu tou
62	Doit cuire 30 à 60 minutes de plus que les autres ingrédients
62	Tester si la sensation anesthésiante est toujours présente avec une goutte sur la langue
62	Attention en cas de grossesse
62	Attention en cas d'hypertension artérielle (HTA)
62	Attention en cas de troubles du rythme
62	Attention en cas d'hyperthyroïdie
62	Attention en cas d'antécédents de maladies cardiovasculaires
62	Incompatible avec Ban xia, Gua lou, Bei mu, Bai lian, Bai ji
63	Prudence pendant la grossesse, peut induire le travail
64	Prudence en cas de vide de yin
64	Prudence en cas de vide de sang
64	Prudence en cas de vide de qi
65	Doit cuire plus longtemps que les autres ingrédients
66	Contient des anthraquinones, toxiques
66	Ne pas utiliser sur le long terme
66	Ne pas employer hors d'un cadre de Chaleur toxique plénitude
67	Prudence en cas de Froid-Vide
69	Toxique, ne doit pas décocter
69	Prise en poudre exclusivement
70	Ne pas employer en cas de vide de Yin
70	Ne pas employer en cas de Chaleur interne
71	Ne pas prescrire sur le long terme
71	Risque hépatotoxique
72	Ne pas employer en cas de transpiration spontanée
72	Ne pas employer hors d'un cadre de plénitude
74	Ne pas utiliser si la Chaleur cause des mictions difficiles, courtes, douloureuses, de couleur jaune foncé ou rouge
74	Ne pas utiliser si la bouche et la langue sont sèches
75	Prudence en cas de vide de Yin ou de sang
76	Prudence en cas de Vide de Yin ou de Feu Plénitude
77	Action purgative drastique, peut endommager le tractus gastro-intestinal, le tractus urinaire et le système nerveux central
77	Interdiction absolue pendant la grossesse
77	Ne pas utiliser en même temps que Ba dou
79	Laxatif puissant, ne pas employer sur le long terme
79	Doit être dissout dans la décoction avant ingestion
80	Contient des alcaloïdes pyrrolizidiniques (toxique)
80	Contre-indiquée pendant la grossesse et l'allaitement
80	Prudence en cas d'hémoptysie
81	Inhibition réciproque avec Yu jin
82	Prudence pendant la grossesse
82	Peut provoquer une photosensibilité cutanée
83	Ne pas utiliser si Vide de Yin ou Feu Plénitude
83	Ne pas surdoser
83	Ne pas utiliser trop longtemps
84	Incompatible avec Fu zi et autres aconits.
85	Prudence en cas de faiblesse du foyer médian
86	À ajouter en fin de cuisson
86	Contre-indiquée pendant la grossesse
86	Impact sur la glycémie, prudence chez les patients sous traitement anti-diabétique
87	Prudence en cas de Froid vide du centre
89	Contre-indiqué pendant la grossesse
90	Attention en cas d'Humidité ou de Chaleur du Foyer Médian
90	Ne pas utiliser si vomissements
90	Ne pas utiliser si éructations
90	Ne pas utiliser si Plénitude du Foyer Médian
90	Ne pas utiliser si toux avec Mucosités-Chaleur
90	Ne pas utiliser dans le kwashiorkor ou symptomatologie apparentée
91	Prudence en cas de Froid-vide du foyer médian
92	Prudence en cas d'intolérance à l'histamine
93	Ne pas utiliser si atteinte du biao
95	Ne pas utiliser en cas de Plénitude du Biao
95	Stagnation de Qi avec accumulation d'Humidité
95	Digestion difficile ou indigestions
95	Quand le Yang s'élève à cause du Vide de Yin
95	Quand les abcès naissent
95	Après l'ouverture des abcès si la Chaleur toxique est encore forte
96	Prudence en cas d'ulcère à l'estomac, irritant
96	Ne pas prescrire en cas de vide de Yin du Poumon
97	Contre-indiquée pendant la grossesse
97	Toxique, doit être préparée pour être ingérée
98	Blesse le Yin et risque de faire flamber le Feu
98	Déconseillé en cas de chaleur vide
99	Ne pas utiliser si diarrhées ou selles pâteuses
100	Éviter en cas de vide de sang, vide de yin, déficience des liquides organiques avec soif marquée
100	Toxique, ne doit pas être surdosée ni employée crue
100	Incompatible avec les aconits
101	Ne pas utiliser en cas d'Humidité du Foyer Médian
101	Ne pas utiliser en cas de diarrhées
102	Prudence en cas de grossesse
102	Ne pas prescrire en cas de diarrhée aiguë ou de vomissements
102	Interaction avec la warfarine (anticoagulant)
103	Contre-indiquée pendant la grossesse
103	Contre-indiquée en cas de règles hémorragiques
103	Prudence en cas de vide des Reins avec spermatorrhée
103	Prudence en cas de vide de Rate avec diarrhées
104	Toxique et drastique ; peut provoquer une détresse respiratoire en cas de surdosage, voire perte de connaissance et convulsions
104	Doit être préparée au vinaigre pour réduire sa toxicité
104	Interdiction absolue chez la femme enceinte
104	Interdiction absolue chez les patients de faible constitution
104	Incompatible avec Gan cao
105	Ne pas employer dans un tableau de Froid
106	Ne pas utiliser en cas de vide de Rate avec selles liquides
107	Déconseillée pendant la grossesse
107	Ne pas prescrire au long cours, contient des traces d'arsenic
107	Ne pas consommer de thé ou de café pendant le traitement
108	Prudence si intolérance à l'histamine
109	Grande prudence en cas de vide de Yin ou de sang
109	Grande prudence en cas de faiblesse du Qi avec transpiration spontanée
110	Ne doit pas être employée crue en cas de vide de Yin, préparer au miel
110	Prudence en cas de vide de Rate, peut accélérer le transit
111	Prudence en cas de Froid-vide du centre
115	Ne pas employer si le Feu de mingmen est excessif
115	Ne pas employer s'il y a Humidité-Chaleur
115	Ne pas employer si les mictions sont difficiles
116	Surdosage peut entraîner une chute brutale de tension et une perte de connaissance
116	Interdiction absolue pendant la grossesse
117	Prudence en cas de vide du centre et de diarrhées
118	Ne pas utiliser en cas de gastrite ou d'ulcère gastro-duodénal
119	Humidifiant
120	Contre-indiquée pendant la grossesse
120	Prudence en cas de vide du foyer médian
120	Peut avoir un effet hypertenseur
121	Ne pas surdoser, peut provoquer nausées, vomissements, vertiges, pertes de connaissance, convulsions
122	Le pangolin est une espèce protégée, se procurer et utiliser cet ingrédient est passible de poursuites
124	Voir Chuan wu
124	Toujours commencer par le plus petit dosage et augmenter très progressivement si nécessaire
124	Très toxique — le plus toxique des aconits
125	Prudence pendant la grossesse
125	Prudence en cas de vide du centre
126	Grande prudence en cas de froid-vide
128	Grande prudence en cas de froid-vide du centre
128	Grande prudence en cas de vide de Yin
128	Ne pas prescrire pendant la grossesse (après la 16e semaine) : présence de berbérine pouvant provoquer une hyperbilirubinémie et des malformations de la vésicule
128	Ne pas prescrire pendant l'allaitement : présence de berbérine pouvant provoquer une hyperbilirubinémie
129	Ne pas utiliser en cas de vide du centre
129	Correspond spécifiquement aux cadres de Chaleur vide et de Chaleur du Sang
130	Prudence pendant la grossesse
130	Déconseillée en cas de vide de Rate avec selles molles
131	Prudence en cas de surface vide avec transpiration abondante
132	La toxicité du sulfure de mercure sur le système nerveux central est aujourd'hui objectivée. Son utilisation est interdite.
135	Toxique. Ne doit pas être utilisé sur le long terme.
136	Interdit si c'est le Vide de Sang qui agite le Vent
136	Ne pas surdoser
136	Déconseillée pendant la grossesse
137	Prudence pendant la grossesse
138	Son action est limitée par la consommation de porc
139	Incompatible avec Li lu
139	Ne pas utiliser dans les cadres de Chaleur
139	Prudence en cas de stagnation de Qi
140	Ne doit pas bouillir longtemps
140	Prudence si une maladie fébrile de long cours a affaibli le Qi et la surface
141	Prudence si Vide de Yin
141	Prudence si Feu Plénitude
141	Prudence si Humidité-Chaleur
142	Dissoudre dans la décoction ou prendre en pilule ou en poudre, ne doit pas cuire
142	Contre-indiquée pendant la grossesse
142	Convient uniquement aux tableaux de Chaleur plénitude
143	Incompatible avec toute sorte d'aconits
143	Ne pas employer en cas de mucosités Froid ou Humidité
144	Contient des anthraquinones, toxiques. Ne pas utiliser sur le long terme.
144	Contre-indiquée chez la femme enceinte.
144	Contre-indiquée pendant les règles.
144	Contre-indiquée pendant l'allaitement.
144	Ne doit pas cuire longtemps pour conserver l'effet purgatif.
144	Un surdosage peut provoquer nausées, vomissements, maux de ventre.
146	Toxique, ne pas prendre sur le long terme
146	Prudence pendant la grossesse
147	Ne pas employer en cas de rétention urinaire ou de constipation
149	Attention en cas de vide de Yin avec agitation du Feu
149	Attention en cas de fièvres en bouffées avec sensation de cuisson des os
255	Prudence en cas de vide du centre
149	Certaines sources la catégorisent contre-indiquée pendant la grossesse
150	Ne pas faire cuire
150	Interdit absolu pendant la grossesse
151	Envelopper dans une étamine pour la cuisson
151	Grande prudence en cas de vide des Reins avec échappements du Jing
152	Extrêmement toxique, respecter scrupuleusement les dosages
152	Strictement interdit pendant la grossesse
155	Ne pas utiliser si Vide de Yin avec élévation du Yang
155	Ne pas utiliser en cas de Chaleur dans la couche du Sang
155	Ne pas utiliser en cas de Feu de l'Estomac
155	Ne pas utiliser en cas de Mucosités-Chaleur dans le Poumon
155	Ne pas utiliser en cas d'atteintes du biao avec fièvre
156	Ne pas utiliser dans les tableaux de Plénitude
157	Incompatible avec Wu tou
157	Ne pas employer en cas de Froid vide
162	Un sachet ou une étamine est nécessaire pour faire cuire Xin yi en drogue brute, car ses soies peuvent irriter la gorge.
163	Prescrire avec prudence en cas de vide de sang
165	Ne pas utiliser si le patient transpire spontanément
165	Ne pas utiliser sur le long terme
165	Ne pas utiliser chez les patients affaiblis
166	Usage strictement interdit (CITES)
167	Nécessite une cuisson séparée
168	CITES
170	Très toxique, très irritant
170	Contient des toxalbumines proches de la ricine
170	Interdiction absolue pendant la grossesse
170	Interdit chez les patients de faible constitution
171	Prudence en cas de Vide de Yin et Yang flottant, montée du Yang du Foie, dyspnée ou oppression thoracique
171	Prudence en cas d'exanthème apparent
172	À utiliser avec précaution en cas d'Humidité du Foyer Médian
172	À utiliser avec précaution en cas de Stagnation de nourriture
173	Certaines sources invitent à la prudence dans l'emploi de Bai bian dou cru, à cause de la toxicité des glycosides cyanogènes qu'il contient
175	Prudence si intolérance à l'histamine
176	Prudence en cas d'intolérance au sorbitol
176	Prudence pendant la grossesse
179	Ne pas manger de haricots en même temps
180	Nécessite une pré-cuisson
180	Concasser avant de cuire
180	Utiliser calcinée (Duan mu li) pour révéler son astringence
181	Saturante et humidifiante
182	Peut blesser le centre par sa nature très froide
182	Ne pas utiliser en cas de froid-vide de la Rate et de l'Estomac
182	Ne pas utiliser en cas de fièvre causée par le Vide de Yin
183	Prudence en cas de vide de Qi et de sang
184	Interaction médicamenteuse : augmente les effets des sédatifs, barbituriques, antihistaminiques, narcotiques, benzodiazépines, etc.
184	Ne convient pas en cas de Froid vide du centre
185	Doit subir une précuisson
185	Contre-indiqué en cas d'émissions nocturnes causées par la Chaleur
185	Ne pas utiliser si Humidité-Chaleur
185	Ne pas utiliser en cas d'atteintes simples du biao
186	Prudence en cas de vide du centre
186	Prudence en cas de diarrhées
186	Prudence en cas de perte d'appétit
187	Interdit pendant la grossesse
187	Ne pas surdoser
189	Ne pas prescrire en cas de troubles de la coagulation
189	Incompatible avec Li lu
189	Son action est nettement diminuée par l'absorption de vinaigre
190	Prudence pendant la grossesse
190	Contre-indiquée s'il n'y a pas de stagnation, ou s'il y a un vide de Yin ou des saignements
190	Inhibe l'agrégation plaquettaire, prudence en cas de prise d'anticoagulants ou antiagrégants
190	Inhibition réciproque avec Ding xiang
192	Ne pas utiliser en cas de vide de Yin sans présence d'Humidité
192	Ne pas consommer de thé pendant les prises
193	Contre-indiquée en cas d'abcès et furoncles par vide de Qi
193	Prudence en cas de froid vide du centre
194	Contient de l'anthraquinone, toxique
194	Prudence en cas de vide du foyer médian
194	Interdite chez la femme enceinte
194	Interdite pendant les règles
194	Interdite pendant l'allaitement
194	Ne pas employer de manière prolongée, plus particulièrement chez les patients faibles, les enfants ou les personnes âgées
194	Ne pas dépasser deux semaines de traitement
195	Contre-indiquée pendant la grossesse
195	Contre-indiquée en l'absence de stase de sang
195	Inhibition réciproque avec Ren shen
196	Contre-indiqué pendant la grossesse
196	Prudence en cas d'allergies aux noix
196	Prudence en cas de prise d'anticoagulants
196	Interaction médicamenteuse avec la codéine, le phénobarbital, la morphine : augmente leur propension à déclencher une détresse respiratoire
197	Toxique et drastique, ne pas employer sur le long terme
197	Peut irriter la peau et les yeux
197	Interdiction absolue chez la femme enceinte
197	Interdit chez les patients de faible constitution
197	Incompatible avec Gan cao
198	Ne pas prescrire sur un froid-vide du centre
198	Ne pas prescrire avec un terrain diarrhéique
199	Prudence en cas de Froid vide du centre
200	Contre-indiquée pendant la grossesse
200	Prudence en cas de vide de Rate avec selles molles
201	Déconseillé pendant la grossesse
201	Contre-indiqué en cas de présence d'agent pathogène en plénitude
202	Ne pas utiliser si Vide de Yin
202	Ne pas utiliser si Feu Plénitude
203	Produit saturant et lourd, grande prudence en cas de vide du foyer médian et de présence de mucosités ou de stagnations
203	Son effet est perturbé par les oignons, l'ail et le radis
204	Ne pas utiliser si selles pâteuses ou diarrhéiques
204	Ne pas utiliser en cas d'abondance de Mucosités
205	Ne pas employer en cas de bi Chaleur
206	Prudence en cas de froid-vide du centre
208	Contre-indiquée pendant la grossesse, surtout si vide de Qi et de sang
210	Ne pas utiliser si selles pâteuses ou diarrhéiques
210	Ne pas utiliser en présence de Mucosités-Humidité abondantes
211	Ne garder que la graine, ne pas utiliser la cosse
211	Écraser avant de cuire
211	Prudence en cas de vide de yin, de sang ou de sécheresse
211	Prudence chez les personnes âgées en situation de grand vide
212	Contre-indiqué pendant la grossesse
212	Inhibé par Xiao shi
213	Contre-indiquée pour les diarrhées de type froid-vide
215	Prudence en cas de troubles de la coagulation
216	Peut blesser le Yin et faire flamber le Feu
217	Ne pas utiliser dans la rougeole lorsque l'exanthème est déjà sorti
218	Doit cuire une à trois heures de plus que les autres ingrédients
218	Prudence en cas de froid-vide du centre
219	Toxique pour le foie et les reins
219	Ne doit pas être utilisé sur le long terme
220	Ne doit pas bouillir longtemps
220	Ne pas utiliser lorsque la Surface est Vide et qu'il y a des transpirations spontanées
220	Ne pas utiliser en cas de vide de Yin ou de sécheresse du sang avec élévation du Yang
221	Contient de l'anthraquinone, toxique. Ne pas utiliser sur le long terme.
222	Prudence en cas de vide de Yin ou d'effondrement du Qi
222	Ne pas prescrire sur le long terme (perturbe la balance électrolytique)
223	Nécessite une pré-cuisson, concasser avant de cuire
223	Prudence en cas de Froid-vide du centre, avec perte d'appétit et selles molles
224	L'infusion peut suffire si on l'utilise seul
224	Ne pas employer sur le long terme
225	Incompatible avec Li lu
226	Pour traiter la tension artérielle haute, ne doit pas cuire longtemps.
227	Incompatible avec toute forme d'aconits
227	Ne pas prescrire en cas de mucosités Froid ou Humidité
230	Le surdosage entraîne vomissements, diarrhées, oppressions et palpitations
230	Ne pas prescrire en cas de vide du centre
231	Ne pas utiliser si atteinte du biao
231	Ne pas utiliser si Chaleur Plénitude interne
231	Ne pas utiliser en début de toux ou de fièvre éruptive
232	Prudence en cas de Vide de Rate et d'Estomac
232	Inappétence
232	Mauvaise digestion
232	Vomissements
232	Diarrhées
233	À utiliser avec précaution en cas d'Humidité du Foyer médian
233	Ne pas utiliser en cas de sensation de Plénitude et de ballonnement de la poitrine et de l'abdomen, ou de vomissements
233	Incompatible avec Gan sui, Jing da ji, Yuan hua, Hai zao
233	Employée à long terme et à haute dose, peut produire des œdèmes de surface, de l'HTA, des spasmes, vertiges, maux de tête etc. Prudence en cas de pathologie rénale, d'HTA, d'hypokaliémie, d'insuffisance cardiaque congestive. Associer à des diurétiques comme Fu ling ou Ze xie pour éviter ces complications, et surveiller la kaliémie et la tension artérielle
234	Prudence en cas de vide de Qi
235	Ne pas utiliser en cas d'atteinte du biao
235	Ne pas employer seul en cas de Feu par vide de Yin
237	Éviter de l'employer dans un cadre de vide de Yin avec manifestations de Chaleur interne
238	Ne pas employer en cas de congestion de Chaleur provoquant des urines rares et foncées
239	Ne pas employer pendant la grossesse, provoque des contractions utérines
239	Prudence en cas de vide de Qi du centre
239	Interaction médicamenteuse avec les diurétiques, dont Qu mai va considérablement démultiplier les effets
240	Ne pas utiliser si pollakiurie par Chaleur dans la Vessie
240	Ne pas utiliser en cas de Feu Vide
241	expose à des sanctions pénales très sévères
241	son action est neutralisée par Chuan wu et Cao wu
242	Prudence pendant la grossesse
242	Contre-indiquée en cas de Froid vide
243	Ne pas cuire longtemps
244	Prudence en cas de faiblesse du foyer médian
245	Humidifiant
246	Déconseillé en l'absence de Chaleur plénitude
246	Déconseillé en cas de vide du foyer médian
247	Déconseillé pendant la grossesse
247	Prudence s'il y a du froid au Foyer Médian
247	Prudence en cas de vide de Qi et de Yin
248	Ne convient pas en cas de froid-vide du centre
248	Prudence si le patient est sous Stribild (traitement HIV), Huang qin inhibe les enzymes CYP3A4
249	Ne pas utiliser en début de diarrhée ou de dysenterie avec plénitude de pathogène
250	Ne pas utiliser si atteinte du biao
250	Ne pas utiliser en cas de Stagnation d'Humidité-Chaleur dans l'interne
251	Ne doit pas cuire longtemps
251	Ne convient pas en cas de froid-vide
252	Incompatible avec toute forme d'aconits
253	Ne pas utiliser dans les toux causées par une atteinte externe
253	Ne pas utiliser dans les diarrhées et dysenteries causées par l'Humidité-Chaleur
256	Attention en cas de Vide de Yin ou d'élévation du Yang du Foie, son mouvement ascendant peut aggraver les excès de montée
257	Ne pas prescrire en cas de vide de Yin
257	Ne pas prescrire sans stase de sang
258	Attention en cas de Vide de Yin ou de Feu Plénitude
258	Ne pas utiliser en cas de pollutions nocturnes, pollakiuries ou métrorragies causées par la Chaleur
259	Ne pas employer en cas de Chaleur Humidité
260	En décoction, doit cuire 30 à 60 minutes de plus que les autres ingrédients
260	Interdite pendant la grossesse
260	Interdite en cas de vide de Yin avec Yang florissant
260	Interdite en cas de syndrome douloureux sur un tableau de Chaleur
260	Strictement respecter les posologies, et ne pas prescrire sur le long terme
260	Ne jamais prescrire la forme non préparée autrement qu'en application externe (ne pas appliquer si la peau est lésée)
260	Incompatible avec Ban xia, Gua lou, Bei mu, Bai lian, Bai ji
261	Prudence pendant la grossesse
262	Peut provoquer nausées, vomissements, diarrhées et transpiration spontanée
263	Toxique, ne pas surdoser
263	Ne pas prendre sur le long terme
263	Prudence en cas d'insuffisance rénale ou hépatique
266	Ne doit pas cuire longtemps
266	Ne pas utiliser en cas de froid-vide du foyer médian
266	Ne pas utiliser en cas de diarrhées
268	CITES, espèce menacée
269	Ne doit pas cuire longtemps
270	Prudence pendant la grossesse
271	Toxique
271	Contient de l'acide aristolochique
272	Attention en cas de froid-vide du centre
272	Ne pas prescrire pendant la grossesse (après la 16e semaine)
272	Ne pas prescrire pendant l'allaitement (présence de berbérine, peut provoquer une hyperbilirubinémie et des malformations de la vésicule)
273	Nécessite une précuisson
273	Ne pas utiliser si Froid-Vide de la Rate et de l'Estomac avec perte d'appétit et selles pâteuses
273	Contre-indiqué pendant la grossesse
274	Utiliser avec prudence si Stagnation de Qi avec Mucosités, douleurs et ballonnements de l'épigastre et de l'abdomen, pertes d'appétit et selles pâteuses.
275	Contre-indiquée en cas de froid-vide du centre
276	Prudence en cas de vide de Yin
276	Prudence en période estivale (nature tiède très marquée)
277	Prudence en cas de vide de Yin et de sang sans trace de Froid ou d'Humidité
278	Prudence pendant la grossesse
278	Prudence en cas de prise d'anticoagulants
279	Prudence en cas de prises de traitement aux effets diurétiques
279	Prudence en cas de vide de Yin
280	Prudence si vide de Yin avec agitation du Feu
280	Prudence si Chaleur plénitude avec épistaxis ou hématémèse
281	Contre-indiqué pendant la grossesse
281	Ne pas utiliser sans tableau de stases de sang
282	Contient des phyto oestrogènes
283	Contre-indiqué pendant la grossesse
284	Contre-indiquée en cas d'abcès et furoncles par vide de Qi
284	Prudence en cas de froid vide du centre
284	Ne pas faire cuire longtemps pour traiter le Vent-Chaleur
284	Faire cuire longtemps pour traiter la Chaleur toxique
285	Doit cuire plus longtemps
285	Contre-indiquée pendant la grossesse
285	Contre-indiquée en cas de vide de sang
285	Contre-indiquée en l'absence de stase de sang
287	Ne pas faire bouillir
288	Incompatible avec Gan cao
291	Attention pendant la grossesse
291	Attention en cas de vide du foyer médian
292	Peut produire des diarrhées en cas de surdosage
293	Espèce protégée (CITES)
293	Contient de l'anthraquinone, toxique
293	Contre-indiquée pendant la grossesse et l'allaitement
293	Contre-indiquée en cas de faiblesse du foyer médian
293	Ne pas consommer sur le long terme
294	Un surdosage peut entraîner agitation et contractions musculaires
294	Ne pas employer dans les œdèmes dus à des vides
295	Incompatible avec Fu ling
295	Se limiter à de petites surfaces en application externe
296	Contre-indiqué chez la femme enceinte
296	Contre-indiqué sur les tableaux de vide
296	Contre-indiqué en cas de forte diarrhée
297	Toxique
297	Présence d'acide aristolochique
299	Grande prudence en cas de Chaleur plénitude
299	Grande prudence en cas de mucosités Feu
299	Grande prudence en cas de gastrites
299	Grande prudence en cas d'ulcères de l'estomac
301	Un dosage trop élevé peut provoquer des nausées
301	Employer avec prudence en cas de bi douloureux avec vide de sang
302	Contre-indiqué pendant la grossesse
302	Contre-indiqué en cas de règles hémorragiques
302	Ne pas associer à la prise d'anticoagulants
303	Toxique
303	Contient des acides aristolochiques
306	Prudence en cas de froid-vide du centre
306	Ne pas utiliser sur le long terme
306	Ne pas faire cuire longtemps
307	Contient de l'acide aristolochique, néphrotoxique. N'employer qu'en application externe.
308	Vente interdite depuis la grippe aviaire
309	Très toxique
309	Contient entre autres choses de la strychnine
310	Prudence pendant la grossesse
310	Prudence en cas de vide de Qi
312	Contient de l'acide sterculique qui peut être toxique à haute dose, respecter la posologie
313	Ne pas surdoser
313	Ne pas utiliser sur le long terme
313	Prudence en cas de froid-vide du centre (peut être préparé sauté chao pour réduire sa nature froide)
314	Prudence en cas de froid-vide du centre
315	Ne pas employer si le pathogène est dans les couches Yin
316	Ne pas utiliser en cas de Froid-Vide
316	Incompatible avec lilu
317	Doit être moulue très finement avant d'être avalée
318	Humidifie les Intestins, ne pas utiliser en cas de selles pâteuses par Vide de Qi.
318	Écraser avant de faire cuire en décoction.
319	Expose à de lourdes sanctions pénales
320	Interdit pendant la grossesse
320	Ne pas faire bouillir
321	Contre-indiqué pendant la grossesse
321	Prudence en cas de prise d'anticoagulants
321	Ne pas surdoser
322	Écraser avant de faire cuire et ajouter en fin de décoction
322	Prudence en cas de Chaleur vide
323	Ne doit pas cuire longtemps
323	Prudence en cas de vide de Yin et de sang
323	Prudence en cas de Feu du Poumon et de l'Estomac sans signe de Froid ou d'Humidité
324	S'utilise à petites doses fréquentes pour permettre sa digestion
324	Interdit si Vide de Rate et d'Estomac
325	Ne pas utiliser pendant la grossesse
325	Ne pas utiliser chez les personnes fragiles, de faible constitution
325	Ne pas utiliser sur le long cours ou hors d'un cadre de Chaleur toxique ou de Feu toxique (plénitude)
327	Contre-indiquée pendant la grossesse
328	Ne pas employer s'il y a un pathogène sur le biao
329	Ne pas utiliser si Chaleur interne ou signes de Feu
330	Contre-indiquée pendant la grossesse
330	Prudence en cas de vide
331	Envelopper dans un tissu pour la décoction
331	Ne pas prescrire en cas de vide de Yin du Poumon
332	Ne pas utiliser dans les transpirations abondantes dues au Vide de Qi
332	Ne pas utiliser en cas de Vide de Yin avec céphalées, ni en cas de toux due à la Chaleur du Poumon avec Vide de Yin
332	Contient de l'acide aristolochique, néphrotoxique, mutagène, cancérigène. Traditionnellement, doit cuire 45 minutes avant les autres ingrédients.
332	Incompatible avec Li lu
334	Ne pas utiliser sur le long terme
336	Ne pas utiliser si diarrhées ou dysenteries avec Chaleur-Humidité
336	Ne pas utiliser si douleurs gastriques par Chaleur de l'Estomac
336	Toxicité : respecter strictement les doses
337	Nécessite une cuisson séparée
337	Ne pas utiliser si plénitude ou Chaleur
337	Interdit en cancérologie
337	Incompatible avec Li lu
337	Antagoniste de Wu ling zhi, Zao jia, Lai fu zi
337	Ne pas boire de thé ni manger de radis ou de navets pendant le traitement
338	Prudence en cas de vide de Yin du Poumon
340	Ne pas utiliser sur un tableau de Froid
341	Ne pas utiliser dans les dyspnées et toux provoquées par le Vent-Froid ou par la Chaleur Plénitude
342	Prudence si selles molles
342	Ne pas utiliser en cas de toux par Mucosités Chaleur
342	Ne pas utiliser en cas de Chaleur vide
343	Prudence pendant la grossesse
344	Ne pas utiliser si Vide de Yin
346	Légère toxicité pouvant entraîner vomissements, douleurs abdominales et diarrhées en cas de surdosage
346	Prudence en cas de vide de sang
347	Dilate les pupilles, attention en cas de glaucome
349	Ne pas employer en cas de Vent-Froid sur le biao
349	Ne pas employer en cas de vide de sang sans signe de Chaleur
350	Attention en cas de Vide de Qi ou de Froid
350	Incompatible avec Li lu
350	Inhibition avec Fang ji
352	Contient du gluten et des amandes de noyau d'abricot, prudence en cas d'allergies
352	Prudence pendant la grossesse
353	Ne convient pas en cas de troubles oculaires par vide de Yin ou de sang
355	Attention en cas de vide de Yin
355	Attention en cas de Chaleur du sang
356	Prudence en cas de faible constitution
356	Ne pas employer hors d'un cadre de Chaleur toxique (plénitude)
358	Prudence en cas de vide de Yin des Reins
359	Contre-indiquée pendant la grossesse
360	Ne doit pas cuire longtemps
360	Prudence pendant la grossesse
360	Peut provoquer des maux de ventre et des diarrhées sur le long terme
361	Interaction médicamenteuse avec la codéine, le phénobarbital et la morphine
361	Peut amplifier la sensation de détresse respiratoire iatrogène
361	Prudence pendant la grossesse
362	Attention pendant la grossesse
364	Ne pas employer s'il y a des stases de sang
365	CITES
365	Nécessite une pré-cuisson séparée (deux heures)
365	Déconseillée en cas de vide de Rate
365	Prudence en cas de terrain allergique
368	Attention en cas d'Humidité du Foyer Médian ou de selles molles
368	Ne pas utiliser en cas de Mucosités Chaleur
368	Ne pas utiliser en cas d'Humidité qui stagne dans le Poumon
368	Ne pas utiliser en cas de sensation de Plénitude et d'oppression dans la poitrine
368	Ne pas utiliser en cas de diarrhées
370	Prudence en cas de froid-vide du centre
371	Déconseillée pendant la grossesse
371	Ne pas employer au long cours
371	Ne pas employer chez les personnes trop faibles
371	Guan mu tong est néphrotoxique (acide aristolochique)
371	Mu tong est néphrotoxique en cas de surdosage
372	Prudence en cas de vide de Yin
372	Prudence en cas de Chaleur du sang
374	Ne doit pas cuire longtemps
376	Découper ou concasser avant de faire cuire
376	Attention en cas d'Humidité ou de Chaleur dans le Foyer Médian
376	Ne pas utiliser en cas de ballonnements, distensions abdominales et épigastriques
376	Ne pas utiliser en cas de stagnation d'aliments
376	Ne pas utiliser en cas de parasites
376	Ne pas utiliser en cas de toux avec Mucosités Chaleur
376	Ne pas utiliser en cas de douleurs dentaires
379	Grande prudence pendant la grossesse
384	Contre-indiqué si Chaleur Vide
384	Peut produire de la constipation
386	Ne doit pas cuire longtemps
386	Prudence en cas de vide de Yin et de sang
386	Prudence en cas de Feu du Poumon et de l'Estomac sans signe de Froid ou d'Humidité
388	Prudence pendant la grossesse
388	Prudence en cas de vide de Qi ou de Yin
388	Prudence chez les enfants
388	Toxique, ne pas surdoser
388	Interaction médicamenteuse avec la codéine, le phénobarbital, la morphine : augmente leur propension à déclencher une détresse respiratoire
390	Ne pas utiliser si Froid-Vide de la Rate et de l'Estomac
390	Ne pas utiliser pendant la grossesse
391	Ne pas utiliser en cas de diarrhées ou de dysenteries dues au Froid-Vide de la Rate et de l'Estomac
392	Ne pas utiliser en cas de diarrhées ou de dysenteries dues au Froid-Vide de la Rate et de l'Estomac
392	Ne pas utiliser dans les Vides de Yang
393	Ne pas utiliser si un abcès purulent est déjà percé
394	Doit subir une précuisson
394	Contre-indiqué en cas d'émissions nocturnes causées par la Chaleur
394	Ne pas utiliser en cas d'Humidité-Chaleur
394	Ne pas utiliser en cas d'atteintes simples du biao
395	Ingrédient puissant, peut facilement blesser le Qi, grande prudence en cas de faiblesse de l'Estomac, de vide de Yin, ou en l'absence d'Humidité
395	NE PAS CONFONDRE AVEC GUANG FANG JI 廣防己 (Aristolochia fangchi y.c. Wuex L. D. Chou et S. M. Hwang), aristoloche néphrotoxique
396	Ne pas faire bouillir trop longtemps.
396	Prudence en cas de transpiration spontanée avec surface vide, ou de céphalées avec vide de Yin.
397	Prudence en cas de manifestations de Feu sur vide de sang, ou en cas de vide de l'Estomac.
398	Ingrédient très puissant, prudence en cas de vide de Yin, de Qi et de Sang.
399	Ne doit pas cuire longtemps.
401	Prudence pendant la grossesse.
\.

-- drug_effects
COPY drug_effects (drug_id, effect) FROM stdin;
1	Lubrifie les intestins et débloque les selles
1	Humidifie le Poumon et arrête la toux
1	Soulage les articulations
1	Traite les vertiges et étourdissements
2	Clarifie la Chaleur, traite la dysphorie et favorise les Liquides Organiques
2	Favorise la diurèse (pour éliminer le Feu du Cœur et de l'Intestin Grêle)
3	Active le sang et transforme la stase
3	Arrête les saignements, referme les blessures et régénère les tissus
4	Expulse les mucosités (expectorant) et ouvre les orifices
4	Disperse les nodosités et réduit les gonflements
4	Autre
5	Active le sang et calme les douleurs
5	Réduit les gonflements et régénère les tissus (Yaoyao en traumatologie)
5	Autre application : par voie externe pour traiter les hémorroïdes
6	Clarifie la Chaleur, élimine la toxicité, réduit les abcès et disperse les nodosités
6	Débloque la lactation
6	Favorise les articulations
7	Clarifie la Chaleur et rafraîchit le Sang
7	Disperse la Stase de Sang et arrête la douleur
7	Réduit les gonflements, les plaies et abcès
8	Chasse le Vent-Chaleur (surtout Huang ju hua)
8	Clarifie le Foie et éclaircit les yeux (surtout Bai ju hua)
8	Calme le Yang du Foie (surtout Bai ju hua)
8	Clarifie la Chaleur et élimine la toxicité (surtout Ye ju hua)
9	Disperse le Feu et traite l'irritabilité (yaoyao)
9	Clarifie la Chaleur et fait s'écouler l'Humidité
9	Rafraîchit le Sang et arrête les saignements (préparé carbonisé chao tan)
9	Résout la toxicité, réduit les gonflements et traite la douleur
10	Apaise le Foie et draine son Qi
10	Chasse le Vent et éclaircit les yeux (préparé sauté, chao)
10	Traite les démangeaisons et atteintes cutanées de type Vent
11	Favorise la digestion et renforce l'Estomac
11	Transforme les mucosités et arrête la toux
11	Clarifie la Chaleur toxique
11	Arrête les douleurs
12	Favorise la diurèse et fait s'écouler l'Humidité
13	Transforme la stase (cru)
13	Arrête les saignements (sauté carbonisé)
13	Fait s'écouler les urines
14	Mobilise le Qi et arrête les douleurs, ouvre la surpression et réveille la Rate
14	Traite le pied d'athlète (application externe)
15	Favorise la digestion et renforce l'Estomac
15	Arrête la lactation et réduit les gonflements
15	Autres applications
16	Chasse le Vent et l'Humidité, désobstrue les canaux et les collatéraux, arrête les douleurs des maladies bi
17	Favorise la digestion, arrête les ballonnements
17	Abaisse le Qi et transforme les mucosités
18	Calme la dyspnée et rassemble le Poumon
18	Retient les urines et arrête les leucorrhées
19	Arrête les saignements par l'astringence et le resserrement
19	Clarifie la Chaleur et résout la toxicité
19	Arrête les diarrhées
20	Clarifie la Chaleur et rafraîchit le Sang
20	Mobilise le Sang et disperse la Stase (préparé à l'alcool, jiu zhi)
21	Tonifie le Foie et les Reins
21	Consolide le Jing et retient les urines
21	Éclaircit les yeux
21	Arrête la diarrhée
21	Arrête la soif
21	Calme le fœtus
22	Éteint le Vent et calme les spasmes
22	Clarifie la Chaleur et apaise le Foie
23	Rafraichit le sang et arrête les saignements
23	Résout la toxicité et réduit les gonflements
23	Autres applications
24	Purge les accumulations d'eau et traite l'œdème
24	Brise les stases de sang et disperse les masses abdominales
25	Clarifie la Chaleur, élimine la toxicité et arrête les démangeaisons
25	Clarifie la Chaleur et assèche l'Humidité
26	Tonifie la Rate et arrête la diarrhée
26	Soutient les Reins et consolide le jing
26	Nourrit le Cœur et calme l'Esprit
26	Autre : traite les lin avec urines sombres et troubles
27	Tue les parasites et dissout les accumulations
28	Disperse le Froid et stoppe les douleurs
28	Régularise le Qi et harmonise le centre
29	Disperse le Froid et arrête les douleurs
29	Réchauffe le centre et arrête les vomissements
29	Soutient le Yang et arrête les diarrhées
30	Favorise la diurèse et fait s'écouler l'Humidité
30	Renforce la Rate et tonifie le centre
30	Calme le Cœur et apaise l'esprit
31	Clarifie la Chaleur et engendre les Liquides Organiques
31	Traite la dysphorie
31	Arrête les vomissements et nausées
31	Favorise la diurèse
31	Fait sortir les exanthèmes
31	Traite les intoxications alimentaires (poissons, coquillages, crustacés et alcool)
32	Clarifie la Chaleur et assèche l'Humidité
32	Chasse le Vent, tue les parasites et arrête les démangeaisons
32	Favorise la diurèse
33	Transforme l'Humidité
33	Libère de la Canicule
33	Autres actions : vide de Qi et de sang du post-partum (désuet), traite la maladie xiaoke, favorise la diurèse, déploie les mécanismes du Qi (du Poumon et du Foie)
70	Chasse le Vent et l'Humidité
34	Assèche l'Humidité et transforme les mucosités, chasse le Vent et calme les spasmes
34	Résout la toxicité et disperse les nodosités
35	Apaise le Foie et calme la frayeur
36	Tonifie le Qi et renforce la Rate (préparé sauté, chao)
36	Assèche l'Humidité et favorise la diurèse (non préparé)
36	Arrête la transpiration spontanée
36	Calme le fœtus
37	Nourrit l'Estomac et favorise la génération des Liquides Organiques
37	Nourrit le yin et clarifie la Chaleur
37	Éclaircit les yeux, renforce le dos, les tendons et les os
38	Draine le Foie et régularise le Qi, ouvre le foyer médian et harmonise l'Estomac
39	Met le Qi en mouvement, arrête les douleurs
39	Renforce la Rate, favorise la digestion
39	Autres applications
40	Resserre le Poumon et arrête la toux
40	Resserre le Gros Intestin et arrête les diarrhées
40	Arrête la douleur
41	Renforce la Rate et fait s'écouler l'Humidité (préparé sauté chao)
41	Traite les bi
41	Arrête les diarrhées (préparé sauté chao)
41	Clarifie la Chaleur et fait s'écouler le pus
42	Active le sang et mobilise le Qi (agit sur le qi dans le sang)
42	Chasse le Vent et calme les douleurs
43	Clarifie la Chaleur et assèche l'Humidité
43	Draine le Feu du Foie et de la Vésicule Biliaire
43	Yaoyao de l'Humidité Chaleur et du Feu plénitude du Foie
43	Accessoirement : favorise l'Estomac et ouvre l'appétit
44	Clarifie la Chaleur et résout la toxicité
44	Favorise la diurèse et réduit les gonflements
45	Lubrifie les Intestins et traite la constipation sèche
46	Régularise les urines et débloque les lin
46	Tue les parasites et calme le prurit
47	Libère la Surface et la couche musculaire
47	Réchauffe et libère les méridiens et les Vaisseaux (grillé jaune)
47	Réchauffe le Yang pour éliminer l'eau ou les stagnations de Mucosités (préparé au miel)
47	Réchauffe le Yang de la poitrine et traite les palpitations
47	Réchauffe le Yang dans Chongmai et Renmai, mobilise le sang et régularise les règles
47	Apaise le reflux brutal et abaisse le contre-courant
48	Disperse la stase et arrête les douleurs
48	Brise le sang et débloque les règles
48	Favorise la digestion et transforme les accumulations
49	Favorise la transpiration et fait sortir les exanthèmes
49	Ouvre l'appétit, favorise la digestion et fait descendre les stagnations de Qi
50	Active le sang et débloque les règles
50	Chasse la stase et arrête les douleurs
50	Transforme les stagnations et élimine les macules
51	Arrête les saignements par l'astringence et le resserrement
52	Rafraîchit le Sang, et traite la sensation de cuisson des os
52	Clarifie la Chaleur du Poumon et abaisse le Feu
53	Tonifie le yin du Foie et des Reins, éclaircit les yeux
53	Humidifie le yin du Poumon et arrête la toux
53	Soutient le Jing et nourrit le sang
54	Purge et élimine les accumulations d'eau et de liquides
54	Réduit les gonflements et disperse les nodosités
55	Active le sang et régularise les règles
55	Fait s'écouler l'eau et réduit les œdèmes
55	Clarifie la Chaleur toxique
56	Dissout les mucosités et fait descendre le Qi
56	Apaise le Foie et calme la frayeur
57	Clarifie la Chaleur, abaisse le Yang du Foie, nourrit le Yin et éclaircit les yeux
57	Humidifie les intestins et évacue les selles (ne doit pas cuire longtemps)
58	Resserre les Intestins et arrête la diarrhée
58	Arrête les saignements par l'astringence
58	Referme les plaies et ulcères et régénère les tissus
58	Traite les leucorrhées par Froid et Humidité
59	Tonifie le Cœur et la Rate
59	Nourrit le sang et calme l'esprit
60	Clarifie la Chaleur du Poumon, libère la gorge et élimine la toxicité
60	Arrête les saignements
61	Clarifie la Chaleur et génère les Liquides Organiques
61	Réduit les gonflements et élimine le pus
62	Restaure le Yang et récupère les inversions (Yaoyao)
62	Soutient le Yang et tonifie le Feu
62	Disperse le Froid et arrête les douleurs
63	Chasse le Vent-Chaleur, favorise la gorge et la voix
63	Traite le prurit et fait sortir les exanthèmes
63	Clarifie la Chaleur des yeux et traite les taies oculaires
63	Éteint le Vent du Foie et arrête les spasmes
64	Régularise le Qi et renforce la Rate
64	Assèche l'humidité et transforme les mucosités
64	Autres applications
65	Réchauffe le centre et arrête les saignements
65	Arrête les vomissements
65	Arrête les diarrhées
66	Clarifie la Chaleur et élimine la toxicité
66	Apaise le Foie et éteint le Vent
66	Rafraîchit le sang et arrête les diarrhées
67	Clarifie la Chaleur, élimine la toxicité, réduit les abcès
67	Draine l'Humidité et débloque les maladies lin
68	Favorise la digestion et harmonise l'Estomac
68	Renforce le centre
69	Calme la dyspnée et arrête la toux
69	Calme les douleurs et les spasmes
70	Désobstrue les canaux et collatéraux
70	Arrête les convulsions et les spasmes
71	Disperse les nodosités et dissout les goitres
71	Clarifie la Chaleur et résout la toxicité
71	Rafraichit le sang et arrête les saignements
72	Libère la Surface et favorise la transpiration (Ma huang du Vent-Chaleur)
72	Fait sortir les exanthèmes et arrête le prurit
72	Élimine l'eau, réduit les œdèmes de type Vent et les gonflements de type Vent
73	Clarifie la Chaleur et élimine la toxicité
73	Draine l'Humidité et traite l'ictère
74	Tonifie le Foie et les Reins, renforce les tendons et les Os
74	Disperse le Vent-Humidité et traite les syndromes bi
74	Consolide le Jing et prévient les échappements
75	Chasse le Vent et assèche l'Humidité
75	Détend les tendons et désobstrue les vaisseaux luo (arrête la douleur)
76	Tonifie le Yang et le Jing
76	Nourrit le Sang et tonifie le Qi
77	Purge et favorise la diurèse
77	Abaisse le Qi du Poumon et élimine les Mucosités
77	Élimine les accumulations intestinales de type Chaleur et plénitude
77	Tue les parasites
78	Chasse le Vent et active la circulation dans les vaisseaux luo
78	Fait s'écouler l'eau et débloque les méridiens/les règles
78	Favorise la lactation
78	Traite les démangeaisons et dermatoses
78	Traite les ballonnements douloureux avec selles incomplètes
79	Purge les accumulations, ramollit les indurations
79	Clarifie la Chaleur et le Feu (application externe)
80	Humidifie le Poumon et fait descendre le Qi
80	Arrête la toux et transforme les mucosités
81	Réchauffe le centre et abaisse les contre-courants
81	Disperse le Froid et calme les douleurs
81	Réchauffe les Reins et soutient le Yang
82	Active le sang et débloque les règles
82	Favorise la lactation et réduit les gonflements (Yaoyao)
82	Fait s'écouler les urines et traite les dysuries lin
83	Réchauffe les Reins et renforce le Yang
84	Arrête les saignements par l'astringence et le resserrement (Yaoyao)
84	Réduit les gonflements et régénère les tissus
85	Tue les parasites et dissout les accumulations
86	Tonifie le feu et soutient le Yang
86	Disperse le Froid et arrête les douleurs
86	Réchauffe les méridiens et débloque les vaisseaux
87	Clarifie la Chaleur et transforme les mucosités
87	Rafraichit le Cœur et calme la frayeur
88	Favorise la diurèse et réduit les œdèmes
89	Active le sang, mobilise le Qi et arrête les douleurs
89	Réduit les gonflements et régénère les tissus (Yaoyao en traumatologie)
90	Tonifie le Qi du centre
90	Calme les spasmes et arrête la douleur
90	Humidifie le Poumon et arrête la toux
90	Évacue les débris alimentaires coincés dans la gorge
91	Clarifie la Chaleur, assèche l'Humidité
91	Resserre les Intestins et arrête les diarrhées
91	Arrête les leucorrhées et les saignements
92	Dissout les mucosités et ramollit les indurations
92	Fait s'écouler l'eau et réduit les œdèmes
93	Arrête la transpiration par l'astringence
94	Ouvre les Orifices et calme l'Esprit
94	Transforme l'Humidité trouble et harmonise le Foyer Médian
94	Profite à la gorge
94	Autres
95	Tonifie le Qi et fait monter le yang
95	Tonifie Weiqi et consolide la Surface
95	Régularise la voie des eaux et réduit les œdèmes
95	Favorise l'évacuation du pus et génère les chairs
96	Expulse les mucosités et arrête la toux
97	Assèche l'Humidité et transforme les mucosités
97	Chasse le Vent et arrête les spasmes
97	Disperse les nodosités et réduit les gonflements
98	Tonifie le yang des Reins, consolide le jing et retient les urines
98	Réchauffe la Rate et arrête la diarrhée
98	Ancre le Qi du Poumon dans les Reins et calme la dyspnée
98	Consolide les os et favorise la cicatrisation en traumatologie
98	Traite les douleurs dentaires
99	Tonifie le jing et le Sang
99	Humidifie la Sécheresse et lubrifie les Intestins
100	Assèche l'Humidité et transforme les mucosités (Humidité ou Froid)
100	Abaisse les contre-courants et arrête les nausées
100	Résout les sensations de plénitude (pi) et disperse les nodosités
101	Tonifie le Sang
101	Mobilise le Sang, régularise les règles et arrête la douleur (Yaoyao en gynécologie)
101	Humidifie les Intestins et débloque les selles
101	Arrête la toux et traite la dyspnée
102	Arrête les saignements par l'astringence et le resserrement
102	Tonifie les vides
102	Réduit les gonflements et traite la toxicité
102	Arrête les dysenteries chroniques
102	Tue les parasites/germes
103	Active le sang et débloque les règles (Chuan)
103	Guide le Feu et le sang vers le bas
103	Tonifie le Foie et les Reins, renforce les tendons et les os (Huai)
103	Fait s'écouler l'eau et traite les dysuries lin (Chuan)
174	Fait s'écouler l'eau et réduit les œdèmes
104	Purge et élimine les accumulations d'eau et de liquides (préparée au vinaigre, cu zhi)
104	Élimine les Mucosités et arrête la toux
104	Tue les parasites et draine les abcès (application externe)
105	Clarifie le Poumon et arrête la toux
105	Abaisse les contre-courants et arrête les nausées
106	Clarifie la Chaleur et disperse le Feu (yaoyao pour la couche du Qi)
106	Nourrit le yin et humidifie la Sécheresse
106	Nourrit le Yin et clarifie le Feu-Vide (préparée au sel, yan zhi)
106	Engendre les Liquides Organiques et calme la soif
106	Neutralise les effets indésirables des drogues chaudes
107	Calme le Foie et ancre le yang
107	Abaisse les contre-courants par la lourdeur
107	Rafraîchit le Sang et arrête les saignements (calciné, duan)
107	En application externe sur l'érysipèle ou autre pathologie de type Chaleur toxique
108	Disperse le Froid et stoppe les douleurs
108	Réchauffe le centre et arrête les vomissements
109	Assèche l'Humidité et renforce la Rate
109	Chasse le Vent et expulse l'Humidité
109	Éclaircit les yeux (héméralopie, yeux secs et sablonneux)
109	Traite les précordialgies et les dysenteries douloureuses
110	Humidifie les Poumons et arrête la toux
110	Élimine les poux et tue les parasites
111	Clarifie le Poumon et transforme les mucosités
111	Ramollit les indurations et disperse les nodosités
112	Favorise la diurèse et réduit les œdèmes
112	Apaise le Foie et draine les voies biliaires
113	Favorise la diurèse et débloque les lin
113	Disperse le Feu du Cœur
114	Abaisse le Qi et arrête le hoquet
115	Tonifie le Foie et les Reins
115	Retient le jing et les urines
115	Consolide les règles et arrête les saignements
115	Retient la transpiration et traite les échappements
116	Élimine les accumulations d'eau et de liquides
116	Réduit les gonflements et disperse les nodosités (application externe)
117	Clarifie la Chaleur et élimine la toxicité
117	Disperse la canicule et favorise la diurèse
118	Disperse le Vent-Froid
118	Ouvre les orifices du nez
118	Traite les taies oculaires et irritations des yeux
119	Nourrit le yin et humidifie la sécheresse
119	Favorise la génération des liquides organiques, arrête la soif et nourrit l'Estomac
120	Brise le Qi et dissout les accumulations
120	Transforme les mucosités et élimine les masses pi
120	Autres actions
121	Chasse le Vent et l'Humidité, renforce les tendons et les os
121	Arrête la douleur et réduit les gonflements
122	Active le sang et dissout les masses
122	Débloque les règles
122	Favorise la lactation
122	Réduit les gonflements et draine le pus
123	Clarifie la Chaleur et fait s'écouler l'Humidité
123	Chasse l'Humidité et arrête le prurit
124	Chasse le Vent et triomphe de l'Humidité
124	Disperse le Froid et calme les douleurs
125	Expulse les parasites et dissout les accumulations
125	Mobilise le Qi et fait s'écouler l'eau
125	Autres applications
126	Clarifie la Chaleur et élimine la toxicité
126	Rafraichit le sang et réduit les gonflements
127	Tonifie les Reins et leur permet d'agripper le Qi
127	Restreint la transpiration
128	Clarifie la Chaleur et assèche l'Humidité (Foyer médian et Cœur)
128	Draine le Feu et élimine la toxicité
128	Fait descendre le Feu du Cœur
129	Clarifie la Chaleur et rafraîchit le Sang
129	Favorise la diurèse et débloque les maladies lin
129	Élimine la toxicité et traite les ulcérations
130	Favorise la diurèse et débloque les lin
130	Lubrifie les intestins et débloque les selles
130	Favorise la lactation
131	Libère la Surface et favorise la transpiration
131	Disperse le Froid et débloque le Yang
131	Élimine la toxicité et disperse les amas
131	Autres fonctions : favorise la lactation, tue les parasites cutanés (application externe ou interne)
132	Calme le Cœur et apaise l'Esprit
132	Clarifie la Chaleur toxique (application externe)
133	Libère la Surface et les muscles du Vent et de la Chaleur
133	Fait sortir les exanthèmes
133	Favorise les Liquides Organiques et arrête la soif
133	Élève le Yang et arrête la diarrhée (préparé wei, cuit sous les cendres)
134	Abaisse le Qi et transforme les mucosités
134	Diffuse le Qi du Poumon et disperse le Vent Chaleur
135	Clarifie la Chaleur, élimine la toxicité, réduit les abcès et disperse les nodosités
136	Éteint le Vent, arrête les tremblements et les convulsions
136	Triomphe de la toxicité et disperse les nodules
136	Désobstrue les vaisseaux luo et arrête la douleur
137	Réchauffe les méridiens et arrête les saignements
137	Réchauffe le centre et calme les douleurs
138	Ouvre et diffuse le Qi du Poumon
138	Expulse les mucosités et favorise la gorge (expectorant)
138	Draine le pus et réduit les gonflements
139	Tonifie le Qi et renforce le Foyer Médian
139	Tonifie le Poumon
139	Nourrit le Sang, favorise la génération des Liquides Organiques
139	Tonifie le Qi dans les syndromes plénitude avec Vide concomitant
140	Libère la Surface et chasse le Froid
140	Régularise le Qi, libère la poitrine, harmonise le Foyer médian, traite les nausées et vomissements
140	Calme le fœtus
140	Traite les indigestions liées à l'absorption de poissons et fruits de mers
141	Réchauffe le yang des Reins
141	Disperse le Froid et arrête la douleur
142	Clarifie la Chaleur et élimine la toxicité
142	Élimine les Mucosités et ouvre les Orifices
142	Éteint le Vent et arrête les spasmes
143	Clarifie la Chaleur et humidifie le Poumon
143	Transforme les mucosités et arrête la toux
144	Purge les accumulations et clarifie la Chaleur
145	Clarifie la Chaleur du Foie, nourrit le sang, éclaircit les yeux et traite les taies oculaires
146	Tue les parasites et dissout les accumulations
146	Soulage le prurit et résout la toxicité
147	Renforce la Rate et arrête les diarrhées
147	Soutient les Reins et consolide le jing
147	Élimine l'Humidité et arrête les leucorrhées
148	Mobilise le Qi et dénoue la surpression
148	Régularise les règles
148	Arrête les douleurs (tropisme abdomen, flancs, gynéco; préparé au vinaigre cu zhi pour plus d'efficacité)
148	Réduit les gonflements
149	Clarifie la Chaleur et traite la dysphorie
149	Favorise la diurèse (pour éliminer le Feu du Cœur et de l'Intestin Grêle)
150	Ouvre les Orifices et réveille l'Esprit
150	Mobilise le Sang, désobstrue les canaux et collatéraux
150	Arrête la douleur
150	Induit le travail dans le cadre des mortinatalités
151	Clarifie la Chaleur, fait s'écouler l'Humidité, régularise les urines et débloque les lin
151	Clarifie la Chaleur du Foie et éclaircit les yeux
151	Clarifie la Chaleur du Poumon et transforme les Mucosités
152	Brise le sang et expulse la stase
152	Disperse les nodosités et dissout les masses
152	Attaque la toxicité et traite les ulcérations
153	Réchauffe le centre et disperse le Froid
155	Réchauffe le yang des Reins
155	Renforce les tendons et les os
155	Mobilise le sang et disperse la stase, réduit les gonflements
156	Consolide le jing et retient les urines
156	Resserre les Intestins et arrête la diarrhée
156	Traite le prolapsus rectal
157	Clarifie la Chaleur, élimine la toxicité
157	Régénère les tissus et réduit les gonflements
157	Application externe ou prise per os, sur abcès, adénopathies, scrofules, brûlures, ulcérations, etc.
158	Abaisse le Qi et transforme les mucosités
158	Arrête la toux et calme la dyspnée
158	Lubrifie les intestins et débloque les selles
159	Rafraichit le sang et arrête les saignements
159	Transforme les mucosités et arrête la toux
159	Application externe
160	Régularise le Qi et arrête les douleurs
160	Réchauffe les Reins et soutient le Yang
161	Mobilise le Qi et disperse les nodosités, disperse le Froid et arrête les douleurs
162	Disperse le Vent-Froid
162	Ouvre les orifices du nez (yaoyao pour les sinusites sans douleurs, le nez bouché et les rhinites)
163	Chasse le Vent et l'Humidité, désobstrue les canaux et collatéraux
163	Tue les parasites et calme les démangeaisons
164	Rafraichit le sang et arrête les saignements
164	Résout la toxicité et réduit les gonflements
164	Autres applications
165	Libère la surface en provoquant la transpiration
165	Favorise la diffusion du Poumon et calme la dyspnée et la toux (préparé au miel)
165	Draine l'eau et réduit les œdèmes
166	Clarifie la Chaleur et élimine la toxicité
166	Éteint le Vent du Foie et traite les spasmes
166	Clarifie la Chaleur du Foie et éclaircit les yeux
167	Tonifie le Qi et nourrit le yin
167	Disperse le Feu et favorise la génération des Liquides Organiques
168	Éteint le Vent, arrête les spasmes et tremblements
168	Calme le Foie et ancre le yang
168	Chasse le Vent et débloque les vaisseaux luo
169	Dissout les mucosités et ramollit les indurations
169	Transforme la stase de sang et disperse les nodosités
169	Traite l'acidité gastrique et calme les douleurs (préparé calciné, duan)
170	Purge les accumulations de nature Froide
170	Élimine les accumulations d'eau pour éliminer l'œdème
170	Élimine les mucosités, profite à la gorge
170	Tue les parasites, traite les ulcérations (application externe)
171	Libère la Surface et fait sortir les exanthèmes
171	Clarifie la Chaleur et élimine la toxicité (à la tête, au visage, aux dents, au yangming)
171	Fait monter le Yang pur et le Qi
172	Tonifie le Qi, renforce la Rate et le Yin de l'Estomac
172	Tonifie le Qi et nourrit le Yin du Poumon
172	Tonifie le Yin des Reins
172	Consolide le Jing et arrête les leucorrhées
173	Renforce la Rate (préparé sauté chao)
173	Clarifie la canicule et transforme l'Humidité (non préparé)
173	Antitoxique
174	Draine la Chaleur du Poumon et calme la dyspnée
174	Fait baisser la tension artérielle
175	Réchauffe le centre et arrête les douleurs
175	Tue les parasites
175	Calme les démangeaisons
176	Favorise la digestion, transforme les accumulations
176	Mobilise le Qi et disperse les stases de sang
176	Traite l'hyperlipidémie, l'hypertension et les pathologies coronariennes
177	Clarifie la Chaleur et élimine la toxicité
177	Rafraîchit le Sang et arrête les saignements
177	Referme les lésions
178	Transforme la stase et arrête les saignements
179	Tue les parasites et dissout les accumulations
179	Libère les selles
179	Humidifie le Poumon
180	Calme l'Esprit par la lourdeur
180	Apaise le Foie et ancre son Yang
180	Ramollit les indurations et disperse les nodules
180	Consolide l'échappement des Liquides par l'astringence (préparé calciné duan)
180	Neutralise l'acidité et arrête la douleur de l'Estomac (préparé calciné duan)
181	Nourrit le yin, et humidifie le Poumon
181	Tonifie le Jing des Reins
181	Traite xiaoke
181	Tonifie le Qi de la Rate
182	Clarifie la Chaleur, disperse le Feu, traite la dysphorie et calme la soif
182	Clarifie la Chaleur et aide à la guérison des plaies, brûlures et eczéma, arrête les saignements et assèche les suintements (préparé calciné duan, en application externe)
183	Chasse le Vent-Chaleur, éclaircit les yeux, traite le larmoiement et traite les taies oculaires
183	Arrête les saignements
184	Chasse le Vent-Humidité, relâche les méridiens et ramifications, traite les douleurs rhumatismales
184	Clarifie la Chaleur-Humidité
184	Traite la Chaleur vide
184	Autres actions : traite les hémorroïdes avec saignements, pus, démangeaisons ; traite les syndromes gan (malnutrition infantile avec fièvre et parasites)
185	Apaise le Foie et ancre son yang
185	Calme l'Esprit par la lourdeur
185	Rassemble, resserre et consolide par l'astringence (calciné, duan)
186	Clarifie la Chaleur, élimine la toxicité, draine le pus et réduit les abcès
186	Chasse la stase de sang et arrête la douleur
187	Éteint le Vent, arrête les tremblements et les convulsions
187	Triomphe de la toxicité et disperse les nodules
187	Désobstrue les vaisseaux luo et arrête la douleur
188	Éteint le Vent, arrête les tremblements et les convulsions
188	Chasse le Vent et arrête la douleur
188	Transforme les mucosités et disperse les nodules
189	Active le sang et débloque les règles
189	Chasse la stase et arrête les douleurs
189	Rafraichit le sang et réduit les gonflements
189	Clarifie la Chaleur du Cœur et calme la dysphorie
190	Active le sang, mobilise le Qi et calme les douleurs
190	Résout la stagnation et clarifie la Chaleur du Cœur
190	Draine la vésicule biliaire et traite l'ictère
190	Rafraichit le sang et arrête les saignements
191	Chasse le Vent Humidité, ouvre les canaux et collatéraux, favorise les articulations
191	Favorise la diurèse et réduit les gonflements
191	Traite le vitiligo
191	Traite la rubéole, l'urticaire, le prurit
192	Clarifie la Chaleur toxique
192	Élimine la toxicité et l'Humidité
192	Favorise les articulations
193	Disperse le Vent-Chaleur
193	Clarifie la Chaleur et élimine la toxicité
193	Réduit les abcès et disperse les nodosités
193	Accessoirement : diurétique, traite les maladies lin par Humidité-Chaleur, ou les membres inférieurs œdémateux et douloureux
194	Purge les accumulations (yaoyao) – crue (sheng)
194	Purge le Feu
194	Clarifie la Chaleur et la toxicité
194	Mobilise le Sang et chasse la Stase – préparée à l'alcool (jiu)
194	Arrête les saignements – préparée carbonisée (chao tan)
194	Évacue l'Humidité-Chaleur et favorise la diurèse
195	Désobstrue et favorise la circulation dans les vaisseaux, active le sang et calme les douleurs
195	Disperse la stase et arrête les saignements
196	Active le sang et chasse la stase
196	Lubrifie les intestins et libère les selles
196	Réduit les gonflements et draine le pus
196	Arrête la toux et calme la dyspnée
197	Purge et élimine les accumulations d'eau et de liquides (préparé au vinaigre, cu zhi)
197	Réduit les gonflements et disperse les nodosités (application externe)
198	Clarifie la Chaleur et élimine la toxicité
198	Rafraîchit le Sang, arrête les saignements et les dysenteries
199	Clarifie la Chaleur et transforme les mucosités
199	Calme la frayeur et ouvre les orifices
200	Clarifie la Chaleur et élimine la toxicité
200	Élimine les Mucosités et favorise la gorge
201	Resserre les Intestins et arrête la diarrhée
201	Arrête les saignements par l'astringence
201	Arrête les leucorrhées de type Froid-vide
202	Tonifie les Reins et consolide le jing
202	Nourrit le Foie et éclaircit les yeux
203	Clarifie la Chaleur et rafraîchit le Sang
203	Nourrit le Yin et produit les Liquides Organiques
204	Nourrit le Cœur et calme l'Esprit
204	Humidifie les Intestins et débloque les selles
268	Apaise le Cœur et le Foie
204	Autres : transpirations nocturnes par vide de Yin ; convulsions infantiles, opisthotonos, épilepsie
205	Tonifie le Foie et les Reins
205	Renforce les tendons et les os
205	Calme le fœtus et arrête les saignements utérins
205	Traite les traumatismes et rassemble les fractures
206	Clarifie la Chaleur et assèche l'Humidité
206	Élimine la toxicité
206	Fait l'astringence
206	Favorise les yeux et la vue
207	Élimine les parasites
207	Favorise la lactation
208	Brise les stases et débloque les règles
208	Rafraichit le sang et élimine le Vent
209	Nourrit le Cœur et le Foie pour calmer l'Esprit (Yaoyao)
209	Arrête la transpiration
209	Favorise la production de liquides organiques, calme la soif, traite la cuisson des os
210	Nourrit le Jing et le Sang du Foie et des Reins (préparé, zhi)
210	Retient le Jing et noircit les cheveux (préparé, zhi)
210	Traite la malaria et traite la toxicité
210	Humidifie les Intestins et débloque les selles
210	Abaisse le cholestérol et traite les maladies cardiovasculaires
211	Assèche l'Humidité et disperse le Froid
211	Expulse les mucosités et traite la malaria
212	Brise le sang et mobilise le Qi
212	Dissout les accumulations et calme les douleurs
213	Clarifie la Chaleur, élimine la toxicité, rafraîchit le Sang et arrête les dysenteries
214	Clarifie la Chaleur et fait s'écouler l'Humidité, favorise la diurèse et débloque les lin
214	Évacue les calculs et traite l'ictère
214	Résout la toxicité et réduit les gonflements
215	Réchauffe le centre et disperse le Froid
215	Restaure le Yang et débloque les vaisseaux
215	Réchauffe le Poumon et transforme les phlegmes
216	Réchauffe les Reins et renforce le Yang
216	Renforce les tendons et les os
216	Disperse le Vent-Humidité et traite les bi
217	Favorise la transpiration et fait sortir les exanthèmes
217	Draine le Vent et libère la surface
218	Mêmes actions que Xi jiao
219	Clarifie la Chaleur et élimine la toxicité
219	Traite la malaria, arrête la dysenterie
219	Traite les verrues (application locale)
220	Libère la surface et disperse le Vent-Chaleur (feuilles)
220	Clarifie la Chaleur de la tête et des yeux
220	Favorise la gorge
220	Favorise la sortie des exanthèmes et calme le prurit
220	Détend le Foie et dénoue sa surpression (tiges, 2 à 3g)
220	Expulse le Qi pestilentiel
221	Clarifie la Chaleur et élimine la toxicité
221	Rafraîchit le Sang et disperse les macules
221	Draine le Foie et clarifie le Poumon
221	Élimine la Canicule et calme la frayeur
222	Favorise la diurèse et fait s'écouler l'Humidité
222	Clarifie la Chaleur et le Feu (vide ou plénitude)
223	Calme le Foie et ancre le Yang
223	Clarifie le Foie et éclaircit les yeux
223	Clarifie le Feu de l'Estomac, arrête la douleur et les saignements
223	Hypotenseur (yaoyao de l'hypertension par Yang du Foie qui monte)
224	Apaise le Foie et ancre le Yang (Luo bu ma ye)
224	Clarifie la Chaleur
224	Favorise la diurèse (Luo bu ma gen)
224	Autre : hypotenseur, hémostatique
225	Clarifie la Chaleur et rafraîchit le sang
225	Nourrit le Yin et les liquides
225	Élimine la toxicité et disperse les nodules
226	Élimine le Vent Humidité, désobstrue les canaux et collatéraux
226	Apaise le Yang du Foie
227	Clarifie la Chaleur et transforme les mucosités
227	Libère les stagnations et disperse les nodosités
228	Clarifie le Poumon et transforme les mucosités
228	Ramollit les indurations et disperse les nodosités
228	Traite l'acidité gastrique et calme les douleurs (préparé calciné, duan)
229	Yaoyao de toutes atteintes par le Vent (interne, externe, froid, chaleur, plénitude, vide, etc.)
229	Chasse le Vent et libère la Surface
229	Disperse le Vent-Froid-Humidité et traite la douleur
229	Chasse le Vent interne et traite les crampes et spasmes musculaires
229	Traite la diarrhée et arrête les saignements
229	Hémostatique (carbonisé chao tan)
230	Clarifie la Chaleur et élimine la toxicité
230	Favorise la gorge et réduit les gonflements
231	Consolide le Qi du Poumon, arrête la toux et nourrit les Reins
231	Favorise la génération de Liquides Organiques et arrête la transpiration
231	Retient le Jing, arrête la diarrhée et la spermatorrhée
231	Apaise le Cœur et calme l'Esprit
232	Tonifie le Sang et arrête les saignements
232	Nourrit le yin et humidifie le Poumon
232	Humidifie les Intestins et débloque les selles
233	Tonifie le centre et favorise le Qi
233	Humidifie le Poumon, expulse les mucosités et arrête la toux
233	Traite les spasmes et calme la douleur
233	Clarifie la Chaleur toxique
233	Traite les empoisonnements
233	Harmonise l'action des autres drogues
234	Draine le Foie et régularise le Qi
234	Dissout les masses et transforme les stagnations
235	Tonifie les Reins et les Poumons
235	Arrête les saignements et transforme les mucosités
235	Arrête la toux et l'asthme, calme la dyspnée
236	Réchauffe le centre, arrête les douleurs, abaisse le qi et dissout les mucosités
237	Libère la Surface et disperse le Froid
237	Réchauffe le Foyer Médian et arrête les nausées et les vomissements
237	Réchauffe le Poumon, arrête la toux et transforme les liquides pathogènes (phlegmes yin)
237	Atténue voire élimine la toxicité des ingrédients
238	Apaise le Foie et détend les tendons
238	Transforme l'Humidité et harmonise l'Estomac
239	Clarifie la Chaleur et favorise la diurèse
239	Brise le Sang et débloque les règles
240	Tonifie le Yang des Reins
240	Consolide le jing et retient les urines
241	Rafraîchit le Sang et arrête les saignements
241	Élimine la toxicité, traite les macules et saignements sous-cutanés
241	Calme l'Esprit et apaise le Vent du Foie
242	Clarifie la Chaleur et élimine la toxicité
242	Assèche l'Humidité et réduit les gonflements
243	Libère la Surface et favorise la transpiration (3 à 5g)
243	Transforme l'Humidité et harmonise le Foyer médian
243	Favorise la diurèse et traite les œdèmes (10g)
244	Clarifie le Foie et éclaircit les yeux
244	Dissipe les nodosités et réduit les gonflements
244	Accessoirement : antihypertensive, antimycosique, antivirale (HPV, VIH, etc.)
245	Humidifie le Poumon et arrête la toux
245	Clarifie le Cœur et apaise l'Esprit
245	Nourrit le yin de l'Estomac et harmonise le Foyer Médian
246	Clarifie la Chaleur et éteint le Vent
246	Arrête la dyspnée, notamment avec râle bronchique dû aux Mucosités (wheezing)
246	Désobstrue les vaisseaux luo
246	Favorise la diurèse
246	Hypotenseur
246	Favorise la cicatrisation en usage externe
247	Clarifie la Chaleur, favorise la diurèse et débloque les lin
247	Débloque le Qi et favorise la lactation
248	Clarifie la Chaleur et assèche l'Humidité (Foyer médian et supérieur; préparé à l'alcool jiu zhi pour orienter au supérieur)
248	Disperse le Feu et élimine la toxicité
248	Arrête les saignements (préparé carbonisé chao tan)
248	Calme le fœtus (préparé sauté chao)
249	Resserre les Intestins et arrête la diarrhée
249	Tue les parasites et calme les douleurs
249	Arrête les métrorragies et les saignements (carbonisé, chao tan)
250	Resserre les Intestins et arrête la diarrhée (préparé torréfié wei)
250	Resserre le Poumon, arrête la toux, favorise la gorge et la voix
250	Autre : traite les saignements utérins, les leucorrhées et les incontinences urinaires par vide du Foie et des Reins
251	Clarifie la Chaleur, élimine la toxicité, réduit les abcès et draine le pus
251	Favorise la diurèse et traite les maladies lin
252	Clarifie la Chaleur et transforme les mucosités
252	Ouvre la poitrine et disperse les nodosités
252	Lubrifie les intestins et débloque les selles
253	Consolide le Qi du Poumon, arrête la toux et fait descendre le Feu
253	Resserre les Intestins et arrête les diarrhées
253	Consolide le Jing et arrête les pertes séminales
253	Arrête la transpiration et les saignements
253	Referme les plaies et ulcérations (application externe)
254	Arrête la toux et calme l'asthme
254	Clarifie la Chaleur et fait s'écouler l'Humidité
254	Active le sang et transforme les stases
255	Favorise la diurèse, réduit les œdèmes
256	Draine et disperse la Chaleur
256	Libère le Shaoyang (mi-externe, mi-interne ; 12 à 24 g)
256	Draine le Foie et dénoue sa surpression (10 à 15 g)
256	Fait monter le Yang pur et traite les effondrements (3 à 5 g)
257	Active le sang et répare les tendons
257	Tonifie les Reins et renforce les os
257	Autres applications
258	Réchauffe les Reins et renforce le Yang
258	Consolide le Jing et retient les urines
258	Réchauffe la Rate et arrête les diarrhées
258	Contrôle la salivation excessive
258	Traite les shan du bas-ventre
258	Traite l'épilepsie infantile avec vide de Rate et abondance de mucosités
259	Tonifie le yang des Reins
259	Renforce les tendons et les os, chasse le Vent-Humidité et traite les bi
260	Chasse le Vent et triomphe de l'Humidité
260	Réchauffe les méridiens et arrête les douleurs
261	Calme l'Esprit et dénoue la surpression de Qi
261	Active le Sang, réduit les gonflements, régénère les tissus
262	Tue les parasites
263	Tue les parasites (ascaris, oxyures, nématodes)
263	Traite la teigne et la gale (voie interne ou voie externe)
263	Traite les caries dentaires
264	Clarifie l'Humidité-Chaleur, traite l'ictère
265	Rafraichit le sang et arrête les saignements
265	Calme le fœtus
265	Résout la toxicité
266	Élimine la Canicule et traite la malaria
266	Clarifie et fait sortir la Chaleur-Vide
266	Rafraîchit le Sang et calme les sensations de cuisson
267	Draine le Foie et dénoue la surpression
267	Régularise le Qi et ouvre le foyer médian
267	Transforme les mucosités et arrête la toux
268	Éteint le Vent interne et calme la frayeur
268	Clarifie la Chaleur toxique
269	Transforme la stase et arrête les saignements
269	Régularise le Qi et calme les douleurs
270	Favorise la diurèse et réduit les œdèmes
270	Draine l'Humidité-Chaleur, traite la jaunisse
270	Élimine la toxicité et draine le pus
271	Régularise le Qi
271	Transforme l'Humidité
271	Active le sang et arrête la douleur
272	Clarifie la Chaleur et assèche l'Humidité
272	Draine le Feu et élimine la toxicité
272	Clarifie la Chaleur Vide (préparé au sel, yan zhi)
272	Accessoire : arrête les saignements dus à la Chaleur (préparé carbonisé, chao tan)
273	Nourrit le yin et ancre le yang
273	Ramollit les indurations et disperse les nodules (préparé au vinaigre cu zhi)
274	Tonifie le Sang
274	Enrichit le Yin du Foie et des Reins
274	Nourrit le Jing et les moelles
274	Arrête la toux et les râles respiratoires
275	Clarifie la Chaleur Vide
275	Traite la fièvre dans les cadres de maladie gan (malnutrition infantile avec accumulation de parasites)
275	Clarifie la Chaleur et draine l'Humidité
276	Chasse le Vent et expulse l'Humidité
276	Débloque les obstructions bi et arrête les douleurs
276	Autres actions : douleurs dentaires, dermatologie (prurit et suintements)
277	Assèche l'Humidité et mobilise le Qi
277	Réchauffe le centre et arrête les nausées
278	Transforme la stase et arrête le sang
278	Active le sang et calme les douleurs
278	Autres applications
279	Clarifie la Chaleur et fait s'écouler l'Humidité, débloque les lin et calme la douleur
280	Mobilise le Qi et arrête les douleurs, disperse le Froid et régularise le centre
281	Brise le sang et expulse les stases
281	Répare les tendons et rassemble les os
282	Rafraichit le sang et arrête les saignements
282	Clarifie le Feu du Foie
283	Active le sang et calme les douleurs
283	Rafraîchit le sang et arrête les saignements
283	Résout la toxicité et régénère les tissus
284	Disperse le Vent-Chaleur (petite dose, cuisson courte)
284	Clarifie la Chaleur et élimine la toxicité (forte dose, cuisson longue)
285	Disperse la stase et calme les douleurs
285	Répare les tendons et rassemble les os
286	Active le sang et désobstrue les vaisseaux luo, mobilise le Qi et calme les douleurs
286	Chasse le Vent et l'Humidité
287	Ouvre les Orifices, réveille l'esprit et évacue le vicié
287	Arrête la douleur
288	Dissout les mucosités et ramollit les indurations
288	Fait s'écouler l'eau et réduit les œdèmes
289	Favorise la digestion et renforce la Rate
289	Régularise le Qi et arrête les douleurs
289	Favorise la lactation
290	Transforme les mucosités et disperse les nodosités
290	Résout la toxicité et réduit les gonflements
291	Dissipe les accumulations de nourriture, tue les parasites
291	Dissout les masses et les indurations
292	Clarifie la Chaleur et élimine la toxicité
292	Favorise la diurèse, élimine l'Humidité et débloque les maladies lin
292	Réduit les abcès et disperse les nodosités
293	Purge les accumulations
293	Clarifie le Feu du Foie
293	Tue les parasites
294	Clarifie la Chaleur et élimine la toxicité
294	Favorise la diurèse et résout les œdèmes
295	Rafraichit le sang et arrête les saignements
295	Résout la toxicité et referme les ulcérations
296	Brise le sang et expulse la stase, disperse les nodosités et dissout les masses
297	Mobilise le Qi et arrête les douleurs
297	Résout la toxicité
297	Antiparasitaire
297	Réduit les gonflements
298	Disperse le Vent-Chaleur
298	Clarifie la Chaleur du Poumon et humidifie la Sécheresse
298	Calme le Foie et éclaircit les yeux
298	Rafraichit le Sang et arrête les saignements
299	Apaise le Cœur et soutient l'Esprit et l'intelligence (préparé zhi)
299	Expulse les Mucosités et ouvre les Orifices (non préparé)
299	Transforme les Mucosités du Poumon (préparé au miel mi zhi)
299	Traite les abcès et réduit les gonflements
300	Draine le Foie et dénoue la surpression
300	Régularise le Qi et harmonise le centre
300	Assèche l'Humidité et transforme les mucosités
301	Libère la Surface et disperse le Froid
301	Chasse le Vent-Froid-Humidité et traite la douleur
302	Brise le sang et mobilise le Qi
302	Dissout les accumulations et calme les douleurs
303	Clarifie la Chaleur et transforme les Mucosités
303	Arrête la toux et calme la dyspnée
303	Clarifie les intestins et réduit les hémorroïdes
304	Nourrit le Qi du Cœur, traite la dysphorie de type vide (irritabilité)
305	Débloque le Yang et disperse les nouures
305	Mobilise le Qi et guide la stagnation vers le bas
306	Tue les parasites
306	Autres applications
307	Chasse le Vent et l'Humidité, désobstrue les vaisseaux et les collatéraux, arrête la douleur
308	Favorise la digestion et renforce l'Estomac
308	Retient le Jing et contient son émission
308	Traite les maladies lin de pierre
309	Disperse les nodosités et réduit les œdèmes
309	Désobstrue les vaisseaux luo et calme la douleur
310	Mobilise le Qi et guide la stagnation vers le bas
310	Fait s'écouler l'eau et réduit les œdèmes
311	Clarifie la Chaleur et humidifie le Poumon
311	Produit les liquides organiques et arrête la soif
311	Lubrifie les intestins et débloque les selles
312	Clarifie le Poumon et transforme les mucosités
312	Favorise la gorge et traite l'aphonie
312	Lubrifie les intestins et débloque les selles
313	Mobilise le Qi et arrête les douleurs (préparé au vinaigre, cu zhi)
313	Tue les parasites et traite la teigne
314	Clarifie la Chaleur et disperse le Feu
314	Usage externe pour disperser le Feu toxique ou calmer les brûlures
315	Libère la Surface
315	Traite l'irritabilité et dissipe la surpression de Chaleur dans la poitrine
316	Nourrit le Sang et régularise les règles
316	Apaise le Foie pour calmer son yang et son Vent
316	Assouplit le Foie et arrête la douleur et les spasmes
316	Retient le Yin et arrête la transpiration
317	Apaise la frayeur et calme l'esprit
317	Éclaircit les yeux et traite les taies oculaires
317	Favorise la cicatrisation et la régénération des chairs
318	Chasse le Vent et clarifie la Chaleur
318	Diffuse le Qi du Poumon et fait sortir les exanthèmes
318	Clarifie la Chaleur toxique et profite à la gorge
319	Chasse le Vent, arrête la douleur, renforce les tendons et les os
320	Ouvre les Orifices, restaure la conscience et ravive l'Esprit
320	Clarifie la Chaleur, arrête la douleur et les démangeaisons
321	Brise le sang et expulse la stase, disperse les nodosités et dissout les masses
322	Transforme l'Humidité, mobilise le Qi, ouvre l'Estomac
322	Réchauffe la Rate, arrête la diarrhée
322	Régularise le Qi et apaise le fœtus
322	Traite le bentun avec aphtes et ulcérations de la bouche par agitation et remontée du Feu ministre
322	Avec Fu zi, ancre le Yang véritable entre les Reins et chasse l'Humidité
323	Transforme l'Humidité et mobilise le Qi
323	Réchauffe le centre et arrête les nausées
324	Calme l'esprit et la frayeur
324	Ancre le yang et apaise le Foie
324	Améliore l'ouïe et éclaircit les yeux
324	Traite la dyspnée et aide les Reins à agripper le Qi du Poumon
325	Clarifie la Chaleur et élimine la toxicité
325	Réduit les gonflements et arrête la douleur
325	Refroidit le Foie et calme les frayeurs et convulsions
326	Tonifie le Foie et les Reins, renforce les tendons et les os, chasse le Vent-Humidité
326	Calme le fœtus
326	Autres actions
327	Clarifie la Chaleur et élimine la toxicité
327	Mobilise le Sang et arrête la douleur
328	Tonifie le Qi, élimine la Chaleur et arrête la transpiration
329	Tonifie le Yang des Reins
330	Mobilise le sang et le Qi, calme les douleurs
331	Dissout les mucosités et fait circuler l'eau
331	Abaisse le Qi et arrête les nausées
332	Disperse le Vent et le Froid et traite la douleur
332	Libère la Surface du Vent-Froid
332	Réchauffe le Poumon et transforme les liquides pathogènes
332	Désobstrue les orifices
333	Humidifie le Poumon et fait descendre le Qi
333	Transforme les mucosités et arrête la toux
334	Mobilise le Qi et arrête les douleurs
334	Réchauffe les Reins et disperse le Froid
335	Favorise l'Estomac et favorise la production des Liquides Organiques
335	Arrête la transpiration et clarifie la Chaleur Vide
336	Resserre les Intestins et arrête la diarrhée
336	Réchauffe le Foyer Médian et mobilise le Qi
337	Tonifie fortement Yuanqi
337	Tonifie la Rate et soutient le Poumon
337	Produit les Liquides Organiques et traite la soif
337	Calme l'Esprit et améliore la fonction mentale
338	Réchauffe le Poumon et transforme les mucosités
338	Fait circuler le Qi et disperse les nodosités, désobstrue les vaisseaux luo et calme les douleurs
338	Yaoyao des mucosités « entre la peau et les membranes »
339	Arrête les saignements par l'astringence et le resserrement
339	Transforme la stase et fait s'écouler les urines
340	Clarifie la Chaleur et transforme les mucosités
340	Calme la dysphorie et arrête les nausées
341	Tonifie le Poumon et les Reins
341	Soutient le Yang et le Jing
341	Ancre le Qi dans les Reins et calme la dyspnée
342	Tonifie les Reins et soutient le Poumon
342	Ancre le Qi du Poumon aux Reins et calme le râle respiratoire (avec la peau)
342	Humidifie les Intestins et libère les selles (sans la peau)
343	Régularise les urines et débloque les lin
343	Clarifie la Chaleur et la Canicule
343	Élimine l'Humidité et referme les ulcérations (usage externe)
344	Tonifie le Foie et les Reins, renforce les tendons et les Os
344	Calme le fœtus
344	Abaisse la tension artérielle
345	Abaisse le Qi et arrête le hoquet
345	Réchauffe les Reins et soutient le Yang
346	Ouvre le nez et arrête la douleur
346	Disperse le Vent-Humidité
347	Clarifie et draine le Feu du Foie, éclaircit les yeux et traite les taies oculaires
347	Accessoirement : hypotenseur
349	Clarifie la Chaleur Vide
349	Traite la fièvre dans les cadres de maladie gan (malnutrition infantile avec accumulation de parasites)
350	Nourrit le yin et clarifie la Chaleur du Poumon
350	Nourrit l'Estomac et favorise la génération des Liquides Organiques
350	Tonifie le yin du Foie et des Reins
351	Libère la Surface et disperse le Froid
351	Disperse le Vent-Froid-Humidité et traite la douleur
352	Favorise la digestion et harmonise l'Estomac
353	Disperse le Vent-Chaleur, éclaircit les yeux et traite les taies oculaires
354	Tonifie le Qi
354	Favorise la génération des Liquides Organiques et traite les atteintes fébriles chroniques
355	Réchauffe les méridiens et arrête les saignements
355	Disperse le Froid et régularise les règles
355	Calme le fœtus
355	Autre application : usage externe pour calmer les démangeaisons avec présence d'Humidité ; traiter le Froid et l'Humidité qui entravent le Poumon
356	Clarifie la Chaleur et élimine la toxicité
356	Rafraîchit le Sang et libère la gorge
356	Propriétés antibactériennes et antivirales
357	Rafraichit le sang et arrête les saignements
357	Résout la toxicité et tue les parasites
357	Purgatif
358	Fait s'écouler l'Humidité et élimine le trouble
358	Chasse le Vent et l'Humidité pour traiter les bi
358	Traite les abcès et ulcérations par Humidité Chaleur
359	Disperse la stase et réduit les œdèmes
359	Active le sang et régularise les règles
360	Active le sang et régularise les règles
360	Réduit les œdèmes et résout la toxicité
360	Détend le Foie et régularise son Qi
361	Humidifie les Intestins et traite la constipation en mobilisant le Qi
361	Favorise la diurèse et résout les œdèmes
362	Rafraichit le sang et arrête les saignements
362	Clarifie la Chaleur et fait s'écouler les urines
362	Autres applications
363	Rafraichit le sang et arrête les saignements par l'astringence et le resserrement
363	Clarifie la Chaleur et résout la toxicité
364	Arrête les saignements par l'astringence et le resserrement
364	Tropisme marqué sur la sphère gynécologique, tant qu'il n'y a pas de stases de sang
365	Calme le Foie et éteint le Vent
365	Apaise le Foie et ancre le Yang
365	Clarifie le Foie et éclaircit les yeux
365	Clarifie la Chaleur toxique
366	Nourrit le Cœur et calme l'Esprit
366	Chasse le Vent et débloque la circulation dans les vaisseaux luo
367	Calme l'esprit et tonifie les vides
367	Arrête la toux et expulse les mucosités
368	Tonifie le Foyer Médian et arrête les spasmes et la douleur
368	Humidifie le Poumon et arrête la toux
368	Lubrifie les Intestins et libère les selles
368	Antitoxique
368	Autres
369	Réchauffe le centre et disperse le Froid
369	Mobilise le Qi et calme les douleurs
370	Clarifie la Chaleur et élimine la toxicité
370	Rafraîchit le Sang et traite les macules
371	Régularise les urines et débloque les lin
371	Disperse le Feu du Cœur et de l'Intestin Grêle
371	Débloque les vaisseaux et favorise la lactation
372	Libère la Surface, chasse le Vent et ouvre les orifices du nez
372	Disperse le Froid et traite la douleur
372	Réduit les gonflements, évacue le pus et élimine la toxicité
372	Assèche l'Humidité, traite les leucorrhées et les diarrhées
373	Clarifie la Chaleur et élimine la toxicité
373	Rafraîchit le sang et arrête les saignements
373	Traite la dysenterie
374	Mobilise le Qi et dénoue la surpression
374	Active le sang et arrête les douleurs
376	Tonifie le centre et soutient le Qi de la Rate et de l'Estomac
376	Nourrit le Sang et calme l'Esprit
376	Harmonise l'action des autres drogues et atténue leur toxicité
377	Clarifie la Chaleur, transforme les mucosités, fait s'écouler le pus et réduit les abcès
378	Clarifie le Cœur et traite la dysphorie
378	Fait communiquer Cœur et Reins
378	Consolide le Jing
378	Arrête les saignements
379	Active le sang et chasse la stase
379	Désobstrue les méridiens
379	Rafraîchit le sang et résout la toxicité
380	Consolide les Reins et retient le Jing, traite l'incontinence et les leucorrhées
381	Propriétés identiques à Jin yin hua
381	Désobstrue les méridiens et ramifications, plus particulièrement dans les syndromes Bi par Vent-Chaleur avec articulations gonflées, rouges, douloureuses, avec difficultés à les mouvoir
382	Humidifie le Poumon et arrête la toux
382	Lubrifie les intestins et débloque les selles
383	Débloque le Qi, ouvre la poitrine
383	Harmonise l'Estomac
383	Calme le fœtus
383	Arrête les métrorragies et les leucorrhées
384	Arrête les saignements par l'astringence
384	Consolide le jing et arrête les leucorrhées
384	Neutralise l'acidité gastrique et arrête la douleur
384	Chasse l'Humidité et favorise la cicatrisation (application externe)
385	Libère la surpression, calme l'esprit, régularise le Qi et harmonise l'Estomac
385	Plus puissant que He huan pi pour calmer l'esprit et dénouer la stagnation
385	Harmonise le foyer médian et relâche la poitrine
386	Transforme l'Humidité et mobilise le Qi
386	Réchauffe le centre et arrête les nausées
387	Clarifie la Canicule et fait s'écouler l'humidité, fait monter le Yang pur et arrête les saignements
387	Hypolipidémiante
388	Arrête la toux et calme la dyspnée
388	Lubrifie les intestins et débloque les selles
389	Clarifie la Chaleur toxique
389	Rafraîchit le sang et arrête les saignements
390	Nourrit le yin et ancre le yang
390	Tonifie le yin et le jing des Reins, renforce les Os
390	Nourrit le Sang du Cœur
390	Arrête les saignements
390	Favorise la cicatrisation
391	Tonifie le yin du Foie et des Reins
391	Rafraîchit le Sang et arrête les saignements
391	Chasse l'Humidité et traite les démangeaisons
392	Tonifie le yin du Foie et les Reins
392	Nourrit le Jing, noircit les cheveux et éclaircit les yeux
393	Perce et réduit les masses, abcès, ulcérations
394	Calme le Cœur et apaise l'Esprit
395	Chasse le Vent-Humidité et arrête la douleur
395	Favorise la diurèse et réduit les gonflements
396	Libère la Surface et chasse le Vent. Froid, dans Jing fang bai du san, avec Fang feng etc. Chaleur, dans Yin qiao san, avec Bo he, Jin yin hua, Lian qiao etc. Avec Tian ma, Quan xie, Jiang can etc. pour calmer les spasmes et convulsions (Vent interne par montée de Yang du Foie). Avec Ren shen, Dang gui, Huang qi, Shu di huang etc. pour calmer les vertiges du post-partum (Vent interne par vide de Sang).
396	Chasse le Vent, fait sortir les exanthèmes, traite le prurit et réduit les ulcérations. Dans Xiao feng san, avec Fang feng, Niu bang zi, Chan tui etc. Avec Fang feng, Qiang huo, Du huo, Sheng ma, Chan tui, Ge gen etc. lorsque les exanthèmes ne sortent pas lors d'une fièvre éruptive. Avec Fang feng, Zhi ke, Chuan xiong, Qiang huo etc. pour traiter les ulcérations au stade initial. Avec Bai zhi, Lian qiao, Tian hua fen etc. pour traiter les abcès au stade initial. Avec Pu gong ying, Zao jiao ci, Tian hua fen etc. pour les abcès du sein.
396	Arrête les saignements (carbonisé, chao tan). Dans Huai hua san, avec Huai hua etc.
397	Chasse le Vent-Chaleur, favorise et éclaircit la tête et les yeux. Avec Ju hua, Bo he, Chuan xiong etc. pour les maux de tête dus au Vent-Chaleur. Avec Sheng ma, Shi gao, Huang lian etc. pour les douleurs dentaires et gingivales. Avec Chan tui, Ju hua, Jue ming zi etc. pour les conjonctivites avec yeux rouges, gonflés, larmoiement.
397	Disperse le Vent et arrête la douleur dans les obstructions douloureuses (syndromes Bi) dues au Vent-Humidité. Dans Qiang huo sheng shi tang, avec Qiang huo, Du huo, Chuan xiong, Fang feng etc.
397	En application locale, avec Fu zi, Ting li zi etc. pour traiter les pelades dues au Vent qui agite le haut.
398	Chasse le Vent et expulse l'Humidité. En ingrédient unique avec de l'alcool tiède, pour les paresthésies des membres, spasmes et rétraction des tendons, articulations bloquées, etc. Avec Qiang huo, Du huo, Niu xi, Qin jiao etc. pour les douleurs articulaires. Avec Dang gui, Rou gui etc. pour les maladies bi douloureuses. Avec Sang zhi, Qin jiao, Dang gui, Can sha etc. pour les paresthésies et raideurs des doigts.
398	Désobstrue les vaisseaux et collatéraux et arrête la douleur. Yaoyao des douleurs, restrictions de mobilité et paresthésies dans les syndromes bi. En ingrédient unique, ou avec Chuan wu, Wu ling zhi, Wu yao etc. pour tous types de douleurs (traumatismes, céphalées, odontalgies, gastralgies etc.).
398	Dissout les arêtes de poisson et os coincés dans la gorge, en décoction avec un peu de vinaigre et de sucre (gargarisme, puis avaler doucement). Traite les maladies de la peau avec prurit et suintement, ulcérations blanches ou violacées, avec Ku shen, Cang zhu, He shou wu etc. ; eczéma infantile avec Zhu ling, Lian qiao, Zi cao, Bai xian pi, Huang lian etc.
399	Chasse le Vent et arrête la douleur. Avec Wei ling xian, Wu jia pi etc. pour les maladies bi. Avec Du zhong, Xu duan, Du huo, Niu xi etc. pour les lombalgies. Avec Gao liang jiang, Xiang fu, Yan hu suo etc. pour les douleurs épigastriques ou abdominales. Avec Wu ling zhi, Tao ren, Hong hua etc. en traumatologie ou gynécologie. En bains de bouche pour les douleurs dentaires.
399	Chasse le Vent et arrête le prurit. Avec Ku shen, Di fu zi, Bai xian pi etc. pour les dermatoses avec démangeaisons.
400	Chasse le Vent et expulse l'Humidité. Avec Fang ji, Yi yi ren, Hua shi, Zhi zi etc. pour les bi Chaleur. Avec Qiang huo, Du huo, Wei ling xian etc. pour les bi Froid. En application externe (compresses chaudes) sur les douleurs rhumatismales.
400	Transforme l'Humidité trouble et harmonise l'Estomac. Avec Mu gua, Wu zhu yu, Yi yi ren, Huang lian, Huang qin, Zhi zi, Tong cao etc. pour traiter l'accumulation d'Humidité trouble provoquant ballonnements, nausées, vomissements et faiblesse des tendons.
401	Chasse le Vent et élimine l'Humidité. Avec Qiang huo, Fang feng, Fang ji, Yi yi ren etc. pour les douleurs rhumatismales avec prédominance d'Humidité. Avec Song jie, Wei ling xian etc. pour les séquelles de poliomyélite. Avec Bing lang, Da fu pi etc. pour traiter les œdèmes avec rétention urinaire. En ingrédient unique, en application externe pour l'érysipèle.
401	Détend les tendons et active la circulation dans les vaisseaux luo. Avec Hu zhang, Da xue teng etc. pour les rétractions des tendons, restrictions de mobilité articulaire, paresthésies et engourdissements. Avec Huang qi, Dang gui, Chuan xiong, Chi shao yao, Ji xue teng etc. pour les spasmes, hypertonicité et paresthésies. Avec San qi, Pu huang, Da huang, Tao ren etc. en traumatologie.
\.
