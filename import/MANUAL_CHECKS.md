# Vérifications manuelles à faire

## 1. Bei mu — association ambiguë (6 cas)

`bei mu` est référencé dans 6 associations mais deux drogues correspondent en base :
- `Chuan bei mu` (川貝母)
- `Zhe bei mu` (浙貝母)

À vérifier dans les PDFs pour chaque drogue source et corriger dans une migration SQL :

| Drogue source  | Effet de l'association |
|----------------|------------------------|
| Hai fu shi     | Avec Dan nan xing, Bai jie zi, Bei mu pour les mucosités collantes, jaunes, épaisses |
| Ba dou         | (à vérifier) |
| Wu bei zi      | (à vérifier) |
| Tai zi shen    | (à vérifier) |
| Yue ji hua     | (à vérifier) |
| Ting li zi     | (à vérifier) |

---

## 2. Ingrédients absents de la base (parsing raté)

Ces ingrédients existent dans les PDFs mais n'ont pas été détectés par `chunk_drugs.py`,
probablement à cause d'un format de titre non standard (ex. `Da zao / Hong zao`, `(Han) Fang ji`).

Il faut corriger `chunk_drugs.py` pour les détecter, puis relancer le pipeline de parsing,
et créer une migration SQL pour les insérer.

Au total : **96 associations** vers **41 ingrédients** qui ne peuvent pas être résolues tant
que ces ingrédients ne sont pas en base.

| Occurrences | Ingrédient       | Note                              |
|-------------|------------------|-----------------------------------|
| 14          | xing ren         |                                   |
| 8           | zhi ke           |                                   |
| 8           | da zao           | titre `Da zao / Hong zao` dans PDF |
| 5           | fang ji          | titre `(Han) Fang ji` dans PDF    |
| 3           | xiong huang      |                                   |
| 3           | ye ju hua        |                                   |
| 3           | zhi gan cao      | forme préparée de Gan cao, peut-être pas une entrée séparée |
| 3           | she chuang zi    |                                   |
| 3           | fu shen          | partie de Fu ling, peut-être pas une entrée séparée |
| 2           | lu jiao jiao     | dérivé de Lu jiao                 |
| 2           | gua lou pi       | dérivé de Gua lou                 |
| 2           | bai dou kou      |                                   |
| 2           | che qian cao     |                                   |
| 2           | gua lou ren      | dérivé de Gua lou                 |
| 2           | fu ling pi       | dérivé de Fu ling                 |
| 2           | bai ji li        |                                   |
| 2           | ju he            |                                   |
| 2           | hu zhang         |                                   |
| 1           | he ye            |                                   |
| 1           | wu zei gu        |                                   |
| 1           | hong teng        |                                   |
| 1           | hei dou          |                                   |
| 1           | han fang ji      | variante de Fang ji               |
| 1           | hong zao         | autre nom de Da zao               |
| 1           | shu di           | forme préparée de Sheng di huang  |
| 1           | chuan jiao       |                                   |
| 1           | bai fu zi        |                                   |
| 1           | he tao ren       |                                   |
| 1           | si gua luo       |                                   |
| 1           | lian zi rou      | dérivé de Lian zi                 |
| 1           | xia ku cai       |                                   |
| 1           | cang er zi       |                                   |
| 1           | hai piao xiao    |                                   |
| 1           | sheng di         | autre nom de Sheng di huang       |
| 1           | chi qian zi      |                                   |
| 1           | ma zi ren        |                                   |
| 1           | long chi         |                                   |
| 1           | zao jiao ci      |                                   |
| 1           | lu jiao shuang   | dérivé de Lu jiao                 |
| 1           | gui jia          |                                   |
| 1           | sheng jiang pi   | dérivé de Sheng jiang             |
| 1           | ren dong teng    |                                   |
