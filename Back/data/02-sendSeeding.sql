

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
    'abbatiale-de-guitres',
    'Abbatiale de Guîtres, promenade en Pays Gabay',
    'Point de départ du parcours, l''Abbatiale de Guîtres (XIe et XVe siècles) est un monument imposant situé sur les chemins de Saint Jacques de Compostelle. Nous poursuivrons notre promenade à travers la douceur du Pays Gabay (prononcer gabaye) à la rencontre de trois rivières, l''Isle, la Dronne et le Lary.',
    ARRAY['/img/Abbatiale1.webp','/img/Abbatiale2.webp','/img/Abbatiale3.webp'],
    'Facile',
    235,
    12.95,
    'Gironde',
    'Se garer sur le parking de l''abbatiale.

(D) Prendre le petit escalier qui descend sur le port (côté route). Prendre en face la rue du Lary jusqu''au chemin des graves.

(1) Emprunter à droite ce chemin qui, sans changer de direction deviendra plus loin le chemin des carrelets. Suivre ce chemin jusqu''au bout.

(2) Confluence de l''Isle et de la Dronne.

(3) Au bout du chemin, prendre la route sur la droite puis, tourner à gauche pour monter aux Jourdennes.

(4) Prendre à droite puis la première à droite pour rejoindre le panorama des Jourdennes(5), qui domine la ville de Coutras. Quittez le panorama et prendre la rue à droite jusqu''à une patte d''oie.

(6) Prendre alors à gauche par le chemin de Cure Bourse.

(7) Au lieu-dit Les Ouillers, prendre le chemin à droite. A la sortie du bois, prendre à gauche puis aussitôt à droite.

(8) A la première intersection, prendre à gauche (épingle à cheveux), passer le pont sur le Lary et prendre à droite vers Chabreville.
Monter la côte et continuez sur la route.

(9) Avant le stop, prendre sur la gauche par Petit Rétiveau.

(10) Au bout du chemin, prendre à droite pour revenir sur Guîtres par le Chemin des Moulins (A).

Points de passages
D/A : km 0 - alt. 26 m - Parking de l''Abbatiale de Guîtres - Isle (rivière) - Affluent de la Dordogne
1 : km 0.43 - alt. 8 m - A droite au chemin des graves. - Lary (rivière) - Affluent de l''Isle
2 : km 3.38 - alt. 10 m - Confluence Isle et Dronne (rivière) - Affluent de l''Isle
3 : km 3.95 - alt. 21 m - Prendre la route sur la droite et tourner à gauche
4 : km 4.61 - alt. 58 m - Prendre à droite puis la première à droite
5 : km 4.97 - alt. 57 m - Panorama des Jourdennes
6 : km 5.44 - alt. 65 m - Prendre à gauche par le chemin de Cure Bourse
7 : km 6.01 - alt. 50 m - Lieu-dit Les Ouillers, prendre le chemin à droite
8 : km 7.76 - alt. 16 m - A la première intersection, prendre à gauche
9 : km 9.5 - alt. 34 m - Avant le stop, prendre sur la gauche
10 : km 10.28 - alt. 19 m - Au bout du chemin, prendre à droite
D/A : km 12.95 - alt. 26 m - Parking de l''Abbatiale de Guîtres
Informations pratiques
Pas d''équipement particulier.',
    ST_GeomFromText(
        'LINESTRING(-0.187961 45.03991, -0.187838 45.039937, -0.187661 45.039569, -0.18757 45.039599, -0.187532 45.039562, -0.187489 45.039565, -0.187634 45.039527, -0.187489 45.039543, -0.187618 45.039501, -0.187521 45.039508, -0.187645 45.039467, -0.187591 45.039391, -0.187532 45.039361, -0.18742 45.039357, -0.187221 45.039429, -0.186942 45.039455, -0.186652 45.039516, -0.186449 45.039527, -0.185859 45.039433, -0.185875 45.039433, -0.18507 45.039349, -0.184249 45.039285, -0.18411 45.039497, -0.183471 45.0393, -0.1825 45.039001, -0.181739 45.0388, -0.181165 45.038682, -0.178236 45.03828, -0.176862 45.038023, -0.175596 45.037643, -0.173536 45.037249, -0.171562 45.036901, -0.169545 45.036582, -0.16697 45.036067, -0.165855 45.035763, -0.163881 45.03549, -0.162378 45.035263, -0.16122 45.035172, -0.160576 45.035172, -0.159589 45.035081, -0.158323 45.034975, -0.156735 45.034823, -0.155941 45.034838, -0.155662 45.034823, -0.153752 45.035596, -0.152186 45.036233, -0.150963 45.036901, -0.150191 45.03734, -0.149225 45.037598, -0.148796 45.037856, -0.148495 45.038326, -0.14798 45.039463, -0.147551 45.040433, -0.147358 45.040888, -0.14738 45.041313, -0.147337 45.041737, -0.147251 45.042222, -0.146929 45.042723, -0.146586 45.043193, -0.146307 45.043526, -0.14577 45.04383, -0.145277 45.044087, -0.14547 45.044254, -0.146156 45.044375, -0.147015 45.044527, -0.147852 45.044845, -0.148216 45.045058, -0.148345 45.045603, -0.149912 45.046119, -0.14901 45.04712, -0.148581 45.047711, -0.147487 45.047286, -0.147315 45.047226, -0.147444 45.046907, -0.147208 45.04715, -0.147401 45.047301, -0.147937 45.047483, -0.148538 45.04768, -0.148066 45.048484, -0.147787 45.049075, -0.147637 45.04953, -0.147465 45.05047, -0.149225 45.049848, -0.150577 45.049409, -0.151585 45.049196, -0.152422 45.048924, -0.153109 45.048681, -0.153474 45.048347, -0.153774 45.048135, -0.154503 45.048696, -0.15489 45.048817, -0.155297 45.048908, -0.156048 45.049848, -0.156757 45.050546, -0.157143 45.051076, -0.157593 45.051667, -0.157679 45.052016, -0.158023 45.052471, -0.158323 45.052607, -0.15843 45.052789, -0.158623 45.053092, -0.158795 45.053244, -0.158945 45.053411, -0.158967 45.053775, -0.159696 45.05385, -0.159889 45.053926, -0.159846 45.054169, -0.159353 45.055063, -0.158859 45.056018, -0.158473 45.056639, -0.15755 45.057428, -0.156971 45.057867, -0.156456 45.058337, -0.15592 45.05911, -0.155297 45.059883, -0.154954 45.060368, -0.154782 45.060959, -0.155469 45.060474, -0.15577 45.060171, -0.156199 45.060126, -0.157036 45.060232, -0.157615 45.060353, -0.15858 45.060429, -0.15916 45.060474, -0.15916 45.060671, -0.15901 45.061065, -0.158795 45.061793, -0.158366 45.062581, -0.158302 45.063051, -0.158473 45.063248, -0.159138 45.063354, -0.159653 45.063551, -0.159954 45.063551, -0.16049 45.062808, -0.160834 45.062339, -0.161005 45.062096, -0.161348 45.061929, -0.162357 45.062111, -0.163108 45.062323, -0.163988 45.062551, -0.164996 45.062717, -0.16564 45.062854, -0.166477 45.062566, -0.16697 45.062263, -0.167893 45.062035, -0.168666 45.061884, -0.169073 45.061793, -0.169567 45.061656, -0.169631 45.061611, -0.169545 45.061247, -0.169116 45.061035, -0.168344 45.060247, -0.168065 45.05961, -0.167893 45.059065, -0.167893 45.058686, -0.167893 45.058322, -0.167721 45.058004, -0.1674 45.057731, -0.167164 45.057276, -0.16697 45.056761, -0.166649 45.056185, -0.166434 45.055988, -0.166155 45.056018, -0.165898 45.056048, -0.165576 45.055988, -0.165404 45.055927, -0.166691 45.054305, -0.167271 45.053729, -0.167421 45.053471, -0.16785 45.053183, -0.168537 45.052804, -0.169138 45.052547, -0.16976 45.052228, -0.170296 45.051986, -0.170811 45.051667, -0.17124 45.051364, -0.171455 45.051076, -0.171713 45.050712, -0.172228 45.050152, -0.172421 45.049924, -0.173086 45.04956, -0.174545 45.048848, -0.175553 45.048302, -0.176948 45.047468, -0.177742 45.047029, -0.178579 45.046543, -0.179137 45.046043, -0.179416 45.04577, -0.180103 45.04527, -0.180703 45.044679, -0.181261 45.044133, -0.18154 45.043921, -0.181626 45.043739, -0.182141 45.043329, -0.182248 45.043041, -0.182184 45.042859, -0.182935 45.042602, -0.183235 45.042329, -0.183943 45.042071, -0.184394 45.041722, -0.184652 45.041586, -0.184823 45.041586, -0.185209 45.041692, -0.185703 45.041207, -0.186218 45.040661, -0.186433 45.040251, -0.186647 45.040024, -0.186926 45.039797, -0.187098 45.03969, -0.187441 45.039599, -0.18772 45.039675, -0.187827 45.039979, -0.187935 45.039903)',
        4326
    )
);

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'autour-de-la-cite-de-sainte-suzanne',
        'Autour de la Cité de Sainte-Suzanne',
        'Venez découvrir les charmants petits sentiers situés au nord de Sainte-Suzanne. Le long de votre balade, vous pourrez visiter le camp des anglais (ou camp de Beugy), et aurez un beau point de vue sur le bocage Mayennais.',
        ARRAY['/img/Lacite1.webp','/img/Lacite2.webp','/img/Lacite3.webp'],
        'Facile',
        130,
        6.86,
        'Mayenne',
        'Se garer sur le parking de l''abbatiale.

(D) Prendre le petit escalier qui descend sur le port (coté route). Prendre en face la rue du Lary jusqu''au chemin des graves.

(1) Emprunter à droite ce chemin qui, sans changer de direction deviendra plus loin le chemin des carrelets. Suivre ce chemin jusqu''au bout.

(2) Confluence de l''Isle et de la Dronne.

(3) Au bout du chemin, prendre la route sur la droite puis, tourner à gauche pour monter aux Jourdennes.

(4) Prendre à droite puis la première à droite pour rejoindre le panorama des Jourdennes(5), qui domine la ville de Coutras. Quittez le panorama et prendre la rue à droite jusqu''à une patte d''oie.

(6) Prendre alors à gauche par le chemin de Cure Bourse.

(7) Au lieu-dit "Les Ouillers", prendre le chemin à droite. A la sortie du bois, prendre à gauche puis aussitôt à droite.

(8) A la première intersection, prendre à gauche (épingle à cheveux), passer le pont sur le Lary et prendre à droite vers Chabreville.
Monter la côte et continuez sur la route.

(9) Avant le stop, prendre sur la gauche par Petit Rétiveau.

(10) Au bout du chemin, prendre à droite pour revenir sur Guîtres par le Chemin des Moulins (A).

Points de passages
D/A : km 0 - alt. 26 m - Parking de l''Abbatiale de Guîtres - Isle (rivière) - Affluent de la Dordogne
1 : km 0.43 - alt. 8 m - A droite au chemin des graves. - Lary (rivière) - Affluent de l''Isle
2 : km 3.38 - alt. 10 m - Confluence Isle et - Dronne (rivière) - Affluent de l''Isle
3 : km 3.95 - alt. 21 m - Prendre la route sur la droite et tourner à gauche
4 : km 4.61 - alt. 58 m - Prendre à droite puis la première à droite
5 : km 4.97 - alt. 57 m - Panorama des Jourdennes
6 : km 5.44 - alt. 65 m - Prendre à gauche par le chemin de Cure Bourse
7 : km 6.01 - alt. 50 m - Lieu-dit "Les Ouillers" prendre le chemin à droite
8 : km 7.76 - alt. 16 m - A la première intersection, prendre à gauche
9 : km 9.5 - alt. 34 m - Avant le stop, prendre sur la gauche
10 : km 10.28 - alt. 19 m - Au bout du chemin, prendre à droite
D/A : km 12.95 - alt. 26 m - Parking de l''Abbatiale de Guîtres
Informations pratiques
Pas d''équipement particulier.',
        ST_GeomFromText(
            'LINESTRING(-0.350932 48.097627, -0.350283 48.097466, -0.349934 48.097376, -0.349731 48.097322, -0.349554 48.097337, -0.349586 48.097122, -0.349816 48.09696, -0.350036 48.096724, -0.350345 48.096671, -0.350519 48.096513, -0.351351 48.096591, -0.351436 48.096523, -0.351387 48.096366, -0.351442 48.096194, -0.351544 48.096136, -0.351528 48.095595, -0.351979 48.095453, -0.352342 48.095332, -0.352584 48.095187, -0.352783 48.094972, -0.352971 48.094746, -0.353244 48.094485, -0.353582 48.094184, -0.353979 48.094338, -0.354392 48.094417, -0.354462 48.094542, -0.354478 48.094642, -0.354794 48.094691, -0.358491 48.095875, -0.359075 48.095624, -0.359735 48.095327, -0.360529 48.094908, -0.361339 48.094485, -0.361886 48.093972, -0.362257 48.093643, -0.362559 48.093556, -0.362916 48.093646, -0.363163 48.093847, -0.363356 48.09399, -0.363587 48.094152, -0.363839 48.094395, -0.363966 48.094795, -0.36429 48.095062, -0.364949 48.095323, -0.365454 48.095527, -0.365824 48.095803, -0.366006 48.09604, -0.366355 48.096298, -0.366966 48.096735, -0.367417 48.096986, -0.367755 48.097222, -0.36805 48.097276, -0.368549 48.097423, -0.368973 48.097634, -0.369102 48.097956, -0.369139 48.098325, -0.368989 48.098702, -0.368898 48.098988, -0.369203 48.09925, -0.36952 48.099443, -0.369316 48.099898, -0.36915 48.100385, -0.369158 48.100771, -0.369048 48.100887, -0.368899 48.100946, -0.368747 48.101055, -0.36884 48.101105, -0.369182 48.101149, -0.369091 48.101535, -0.369199 48.101569, -0.369579 48.101664, -0.369853 48.101668, -0.369783 48.102116, -0.369713 48.102381, -0.369692 48.102535, -0.369756 48.102628, -0.369879 48.1027, -0.370035 48.102725, -0.370142 48.102786, -0.370191 48.102895, -0.369724 48.103792, -0.368495 48.103187, -0.368275 48.103416, -0.36812 48.103681, -0.367878 48.103803, -0.367765 48.104368, -0.367632 48.104935, -0.366854 48.10506, -0.366511 48.105243, -0.365878 48.105734, -0.365674 48.105856, -0.365148 48.10606, -0.364472 48.106271, -0.364013 48.106513, -0.363201 48.106734, -0.362777 48.106891, -0.362326 48.107199, -0.362004 48.107539, -0.36164 48.107726, -0.361265 48.107959, -0.362122 48.108879, -0.361613 48.109044, -0.361098 48.109101, -0.360497 48.109115, -0.359912 48.109033, -0.359177 48.108872, -0.358292 48.108728, -0.357788 48.108671, -0.357359 48.108596, -0.356651 48.108442, -0.356286 48.108521, -0.355621 48.108177, -0.355326 48.107965, -0.355208 48.107822, -0.353598 48.107532, -0.350954 48.106909, -0.349301 48.106533, -0.347848 48.106117, -0.347719 48.106157, -0.347124 48.106178, -0.3467 48.106128, -0.345825 48.106143, -0.344581 48.106189, -0.344688 48.105705, -0.344811 48.105293, -0.344946 48.1051, -0.345053 48.104914, -0.345219 48.104745, -0.345402 48.104563, -0.345654 48.104057, -0.345729 48.103746, -0.345809 48.103545, -0.346169 48.103649, -0.346678 48.103721, -0.347022 48.103832, -0.347258 48.104, -0.34781 48.103814, -0.348159 48.103602, -0.348342 48.103476, -0.348514 48.103236, -0.348734 48.102928, -0.348858 48.102734, -0.34899 48.102395, -0.348942 48.102281, -0.349323 48.102202, -0.349795 48.10213, -0.350111 48.102023, -0.351155 48.102006, -0.351973 48.101761, -0.352306 48.101672, -0.352331 48.101372, -0.352263 48.101045, -0.35222 48.100776, -0.352112 48.100618, -0.351903 48.100497, -0.351694 48.100421, -0.351404 48.100342, -0.351141 48.100292, -0.35089 48.1001, -0.350767 48.100002, -0.350498 48.099673, -0.350256 48.099468, -0.350396 48.099321, -0.350534 48.099051, -0.350594 48.098652, -0.350707 48.098068, -0.350954 48.097627)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'boucle-antique-de-paussac-saint-juste',
        'Boucle antique de Paussac Saint-Juste',
        'Quelques points intéressants dans le village : vous passerez devant la Tour Pigeonnier, la Pierre à Sacrifice ou Peyre d’Ermale ou Dermale. Plus loin, site d’escalade et village troglodytique des XIIe-XIIIe siècles. Ne pas rater le dolmen de Peyrelevade, époque néolithique, inscrit au titre des Monuments Historiques depuis 1960, et les sculptures visibles du portail d''une carrière.',
        ARRAY['/img/Paussac1.webp','/img/Paussac2.webp','/img/Paussac3.webp'],
        'Facile',
        195,
        10.29,
        'Dordogne',
        'Se garer sur le parking de l''abbatiale.

(D) Prendre le petit escalier qui descend sur le port (coté route). Prendre en face la rue du Lary jusqu''au chemin des graves.

(1) Emprunter à droite ce chemin qui, sans changer de direction deviendra plus loin le chemin des carrelets. Suivre ce chemin jusqu''au bout.

(2) Confluence de l''Isle et de la Dronne.

(3) Au bout du chemin, prendre la route sur la droite puis, tourner à gauche pour monter aux Jourdennes.

(4) Prendre à droite puis la première à droite pour rejoindre le panorama des Jourdennes(5), qui domine la ville de Coutras. Quittez le panorama et prendre la rue à droite jusqu''à une patte d''oie.

(6) Prendre alors à gauche par le chemin de Cure Bourse.

(7) Au lieu-dit "Les Ouillers", prendre le chemin à droite. A la sortie du bois, prendre à gauche puis aussitôt à droite.

(8) A la première intersection, prendre à gauche (épingle à cheveux), passer le pont sur le Lary et prendre à droite vers Chabreville.
Monter la côte et continuez sur la route.

(9) Avant le stop, prendre sur la gauche par Petit Rétiveau.

(10) Au bout du chemin, prendre à droite pour revenir sur Guîtres par le Chemin des Moulins (A).

Points de passages
D/A : km 0 - alt. 26 m - Parking de l''Abbatiale de Guîtres - Isle (rivière) - Affluent de la Dordogne
1 : km 0.43 - alt. 8 m - A droite au chemin des graves. - Lary (rivière) - Affluent de l''''''Isle
2 : km 3.38 - alt. 10 m - Confluence Isle et - Dronne (rivière) - Affluent de l''Isle
3 : km 3.95 - alt. 21 m - Prendre la route sur la droite et tourner à gauche
4 : km 4.61 - alt. 58 m - Prendre à droite puis la première à droite
5 : km 4.97 - alt. 57 m - Panorama des Jourdennes
6 : km 5.44 - alt. 65 m - Prendre à gauche par le chemin de Cure Bourse
7 : km 6.01 - alt. 50 m - Lieu-dit "Les Ouillers" prendre le chemin à droite
8 : km 7.76 - alt. 16 m - A la première intersection, prendre à gauche
9 : km 9.5 - alt. 34 m - Avant le stop, prendre sur la gauche
10 : km 10.28 - alt. 19 m - Au bout du chemin, prendre à droite
D/A : km 12.95 - alt. 26 m - Parking de l''Abbatiale de Guîtres
Informations pratiques
Pas d''équipement particulier.',
        ST_GeomFromText(
            'LINESTRING(0.539294 45.348242, 0.539562 45.348061, 0.539396 45.347826, 0.539248 45.347648, 0.538983 45.347319, 0.538835 45.347138, 0.538749 45.347043, 0.538618 45.347026, 0.538486 45.346953, 0.538438 45.346862, 0.538242 45.346751, 0.538049 45.346615, 0.537937 45.346478, 0.537843 45.346368, 0.537631 45.346289, 0.537384 45.34621, 0.537081 45.346121, 0.536746 45.346016, 0.536126 45.345878, 0.535997 45.345841, 0.535764 45.345835, 0.535557 45.345848, 0.535147 45.34579, 0.534836 45.345743, 0.53464 45.345686, 0.534444 45.345612, 0.534265 45.345562, 0.534098 45.345535, 0.533809 45.345513, 0.533495 45.345479, 0.533318 45.345467, 0.533203 45.345464, 0.533007 45.345475, 0.532894 45.345465, 0.532749 45.345445, 0.532583 45.345411, 0.532366 45.345343, 0.532127 45.345281, 0.531961 45.345226, 0.531754 45.345175, 0.531604 45.345094, 0.53136 45.34493, 0.53114 45.344787, 0.530837 45.344596, 0.530692 45.344502, 0.530362 45.344261, 0.530115 45.344086, 0.529909 45.344003, 0.529678 45.343929, 0.529348 45.343859, 0.528486 45.343686, 0.528389 45.343486, 0.528228 45.34326, 0.528159 45.343166, 0.528062 45.34309, 0.527719 45.343105, 0.527451 45.343037, 0.527059 45.342951, 0.526356 45.343252, 0.525889 45.343399, 0.525546 45.343448, 0.525476 45.34349, 0.525063 45.343494, 0.524747 45.343614, 0.5245 45.343633, 0.52413 45.343505, 0.523862 45.343501, 0.523636 45.343531, 0.52354 45.343607, 0.522971 45.343825, 0.522564 45.344014, 0.522161 45.344361, 0.521791 45.344783, 0.521324 45.345341, 0.521075 45.34562, 0.520882 45.34599, 0.520882 45.346713, 0.52071 45.347377, 0.520839 45.347973, 0.521214 45.348448, 0.521418 45.348862, 0.521418 45.349209, 0.521536 45.349443, 0.521858 45.349624, 0.522169 45.34988, 0.521708 45.349812, 0.521204 45.349745, 0.520828 45.349571, 0.520281 45.349179, 0.51982 45.348893, 0.51938 45.348749, 0.519036 45.348764, 0.518425 45.349058, 0.51776 45.349307, 0.517352 45.349533, 0.516762 45.350076, 0.516494 45.350182, 0.515893 45.350235, 0.51502 45.350308, 0.515208 45.349958, 0.515675 45.349535, 0.515846 45.349294, 0.515857 45.349102, 0.516109 45.348789, 0.516173 45.348536, 0.516415 45.348408, 0.516173 45.348529, 0.516109 45.348793, 0.515852 45.349109, 0.515841 45.349294, 0.515669 45.349543, 0.515208 45.349958, 0.514999 45.350304, 0.514693 45.350433, 0.514509 45.350687, 0.514005 45.351358, 0.51364 45.351916, 0.513254 45.352225, 0.512771 45.352429, 0.512052 45.352504, 0.511961 45.351841, 0.511929 45.351622, 0.511993 45.351366, 0.511982 45.350966, 0.51195 45.350679, 0.511811 45.350197, 0.511735 45.349873, 0.511532 45.349647, 0.511317 45.349473, 0.511253 45.349247, 0.511392 45.348862, 0.511912 45.348116, 0.512385 45.347362, 0.512792 45.346744, 0.512964 45.346351, 0.512621 45.345824, 0.512363 45.345371, 0.512106 45.344904, 0.511762 45.344617, 0.511505 45.3443, 0.51232 45.343908, 0.513415 45.34332, 0.514144 45.342611, 0.515045 45.34096, 0.513822 45.340221, 0.513007 45.339723, 0.512449 45.339331, 0.511634 45.339135, 0.511183 45.338984, 0.50996 45.338818, 0.50893 45.338486, 0.50923 45.337461, 0.509552 45.336254, 0.509767 45.335877, 0.510925 45.335273, 0.512406 45.334896, 0.513672 45.33458, 0.514788 45.334112, 0.51541 45.333659, 0.516655 45.333418, 0.517749 45.333358, 0.518994 45.333177, 0.519423 45.333101, 0.520045 45.333237, 0.52056 45.333403, 0.520946 45.333358, 0.521847 45.333011, 0.522341 45.33289, 0.52277 45.332769, 0.523693 45.332769, 0.524358 45.332845, 0.524809 45.332739, 0.525302 45.332453, 0.525753 45.332272, 0.526353 45.332196, 0.526675 45.332121, 0.526847 45.331925, 0.526868 45.331698, 0.528027 45.33114, 0.528971 45.33099, 0.529765 45.330869, 0.530624 45.330582, 0.531546 45.330341, 0.533113 45.331306, 0.534228 45.332242, 0.534958 45.332996, 0.535065 45.33378, 0.535344 45.334489, 0.535559 45.334987, 0.535559 45.33547, 0.535752 45.336043, 0.535859 45.33639, 0.536117 45.33737, 0.536288 45.338019, 0.536203 45.338893, 0.536245 45.339708, 0.536267 45.340296, 0.536954 45.341292, 0.537361 45.342121, 0.537662 45.342574, 0.537946 45.342883, 0.538161 45.343539, 0.538279 45.343916, 0.538268 45.344142, 0.537978 45.344821, 0.537957 45.345145, 0.53801 45.345824, 0.537946 45.346329, 0.537997 45.346506, 0.538142 45.346646, 0.538431 45.346804, 0.53871 45.346977, 0.538893 45.347105, 0.539145 45.34743, 0.539467 45.347837, 0.539655 45.348086, 0.539365 45.34827)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'boucle-des-sept-fontaines-a-montmin',
        'Boucle des Sept Fontaines à Montmin',
        'Cette boucle parcourt le vallon suspendu de Montmin et vous fera découvrir le monument des Sept Fontaines (1642) un édifice chrétien bien particulier par sa conception.',
       ARRAY['/img/Fontaines1.webp','/img/Fontaines2.webp','/img/Fontaines3.webp'],
        'Facile',
        165,
        7.09,
        'Haute-Savoie',
        'Pour aller à Montmin depuis Annecy, il vous faudra franchir le Col de la Forclaz (point de vue sur le Lac d''Annecy). Sur la route du col, un autre point vue remarquable sur la Baie de Talloires au hameau de Saint-Germain.

Départ au parking de l’église de Montmin.

(D/A) Le circuit débute 100 m en contrebas de l''église. Suivre le panneau indiquant Plan Montmin par le chemin rural qui va au Sud, passe à la Grange de la Revenne (orthographié Revenaz localement) et conduit directement à la fontaine

(1). Suivre ensuite la route goudronnée jusqu’à Plan Montmin que l''on traverse.

(2) Peu avant la chapelle de Plan Montmin, prendre sur la droite la direction de la Perrière par le chemin rural du Plan Montmin aux Outellières. Traverser deux fois un ruisseau pour arriver à la Perrière.

(3) À la Perrière, remonter la route (D42 )sur une dizaine de mètres et prendre à gauche la direction de la Côte (Col de la Forclaz) par le chemin rural du Moulin à La Perrière. Laisser un chemin à droite puis à gauche et, une fois à la route, virer à droite pour rejoindre le hameau de la Côte.

(4) Traverser le hameau puis suivre la départementale en direction de Montmin sur 300m.
Au niveau du cimetière, prendre à gauche pour rejoindre le point de départ (D/A)

Points de passages
D/A : km 0 - alt. 1 056 m - Parking de l’église de Montmin
1 : km 1.71 - alt. 1 040 m - Les Sept Fontaines.
2 : km 2.69 - alt. 974 m - A droite direction La Perrière
3 : km 4.46 - alt. 979 m - Chemin à gauche à la sortie de La Perrière.
4 : km 5.96 - alt. 1 023 m - Hameau de La Côte
D/A : km 7.08 - alt. 1 057 m - Parking de l’église de Montmin
Informations pratiques',
        ST_GeomFromText(
            'LINESTRING(6.264714 45.803362, 6.264521 45.802494, 6.265029 45.802176, 6.264693 45.801574, 6.264729 45.800935, 6.265072 45.800591, 6.265609 45.800052, 6.265931 45.799603, 6.265995 45.799334, 6.266274 45.799229, 6.266639 45.799454, 6.267561 45.799633, 6.26813 45.799562, 6.268044 45.799143, 6.267508 45.798665, 6.267497 45.798347, 6.267765 45.797991, 6.267915 45.797393, 6.26798 45.796869, 6.268151 45.796585, 6.269063 45.796357, 6.26858 45.795987, 6.268237 45.795628, 6.268344 45.795224, 6.268151 45.794835, 6.267937 45.794386, 6.268559 45.793772, 6.268033 45.793735, 6.26754 45.793574, 6.267518 45.793301, 6.267626 45.793062, 6.267347 45.792718, 6.267111 45.792389, 6.26686 45.792127, 6.26651 45.79185, 6.266038 45.791596, 6.26563 45.790563, 6.265437 45.789965, 6.265244 45.788618, 6.265158 45.788139, 6.265115 45.787735, 6.265265 45.787167, 6.26548 45.786538, 6.265587 45.786164, 6.265802 45.78567, 6.266102 45.785027, 6.265995 45.784608, 6.265823 45.784204, 6.265377 45.783858, 6.265136 45.784219, 6.265094 45.784608, 6.264765 45.785029, 6.264514 45.785446, 6.263978 45.786134, 6.263613 45.786763, 6.263098 45.787436, 6.262755 45.788109, 6.262347 45.788902, 6.262347 45.78971, 6.262626 45.790563, 6.262669 45.791072, 6.262583 45.791521, 6.262841 45.792179, 6.263119 45.792703, 6.263119 45.793137, 6.262819 45.793556, 6.262755 45.793843, 6.262626 45.794244, 6.262755 45.794603, 6.262583 45.795141, 6.262798 45.79571, 6.262883 45.796219, 6.263119 45.796623, 6.263849 45.796862, 6.263656 45.797266, 6.26336 45.7972, 6.263205 45.797703, 6.26278 45.798045, 6.263227 45.798137, 6.262819 45.798642, 6.26209 45.799154, 6.26106 45.79942, 6.260781 45.799794, 6.260695 45.800572, 6.260609 45.801066, 6.259665 45.801305, 6.259429 45.801679, 6.259064 45.801978, 6.258463 45.802561, 6.25812 45.802352, 6.257841 45.801997, 6.256618 45.802819, 6.256425 45.80313, 6.256489 45.803534, 6.25679 45.804046, 6.257262 45.804446, 6.257433 45.804988, 6.258013 45.805422, 6.25827 45.805688, 6.25827 45.806092, 6.258335 45.806395, 6.258092 45.806714, 6.259365 45.807486, 6.259987 45.807946, 6.260266 45.80856, 6.260673 45.809072, 6.261296 45.808949, 6.261317 45.80838, 6.261467 45.807902, 6.261982 45.807262, 6.262476 45.806963, 6.262948 45.806974, 6.264536 45.806574, 6.264557 45.806275, 6.264193 45.806021, 6.263999 45.805677, 6.263484 45.805452, 6.263399 45.805318, 6.263399 45.805213, 6.263999 45.805075, 6.264192 45.804626, 6.264604 45.804246, 6.264922 45.803773, 6.264701 45.803386, 6.264754 45.803393)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'circuit-autour-de-l-etang-de-bellebouche',
        'Circuit autour de l''Étang de Bellebouche',
        'L''Étang de Bellebouche est l''un des plus anciens, l''un des plus grands et l''un des plus beaux plans d''eaux du Parc Naturel Régional de La Brenne. Une petite partie est réservée à des loisirs nautiques mais laisse une grande place à un site naturel que vous pourrez admirer tranquillement à l''aide de jumelles dans trois observatoires aux abords de l''étang.',
        ARRAY['/img/Bellebouche1.webp','/img/Bellebouche2.webp','/img/Bellebouche3.webp'],
        'Facile',
        165,
        9.75,
        'Indre',
        'Le départ est au bout du parking de la base nautique situé entre un camping et un village de vacances nature, à gauche de l''entrée.

(D/A) Prendre le chemin en terre blanc le plus au Sud et suivre le balisage Rouge et Jaune du GR® de Pays de la Brenne ou le balisage Bleu. Continuer sur ce chemin, entre pairies à gauche et l''étang à droite, pendant environ 1km jusqu''au parcours de santé.

(1) Suivre la sente du parcours de santé (balisage Bleu ou Rouge et Jaune) qui serpente sous les chênes et les pins sur 1km.

(2) Après un virage à gauche, vous rejoignez le chemin quitté précédemment que vous prenez sur la droite.
Puis après 100m, tourner à droite pour rejoindre un premier observatoire en bois d''où vous pourrez admirer la faune locale. Revenir par le même trajet au chemin que vous prenez sur la droite.

(3) Arrivé à une intersection, continuer tout droit le sentier balisé Rouge et Jaune et laisser à droite le balisage Bleu. Longer les Loges du Grand Brun pour arriver sur une petite route. Prendre à droite, découvrir sur la gauche l''Étang du Grand Brun.
À l''intersection suivante, prendre la D21 sur la droite: vous êtes sur une ancienne route "agricole" rectiligne tracée à l''époque Napoléon III. Au bout de 600m, prendre à droite la direction du second observatoire sur un sentier en lisière de forêt. Au niveau d''une grande allée forestière, tourner à droite pour atteindre le bâtiment en bois. Revenir ensuite sur vos pas et prendre l''allée forestière en face qui ramène sur la D21.

(4) Prendre la route par la droite sur environ 400m.

(5) Tourner à droite dans une large allée forestière et parcourir environ 200m.

(6) Continuer à gauche le petit sentier qui s''enfonce dans le bois (balisage Bleu) et serpente à travers de multiples essences d''arbres et franchi deux minuscules collines (des buttons).

(7) Arrivé sur une large allée, l''emprunter à gauche: elle tourne ensuite vers le Nord-Ouest. Au bout de la ligne droite, prendre à droite pour cheminer en lisière de bois et rejoindre l’Étang de Bellebouche au niveau d''un golf miniature.

(8) Laisser en face le chemin balisé Bleu pour prendre à droite la direction du dernier observatoire et suivre les pancartes avec un dessin de jumelles. Une fois atteint le troisième observatoire, reprendre le même chemin en sens inverse.

(9) Environ 1200m après le départ de l''observatoire, prendre une sente sur la droite à travers le taillis en direction de l''étang que l''on aperçoit au loin. Une fois au bord, longer l''étang jusqu''au restaurant puis après les jeux de plein air pour les enfants, rejoindre en direction des toilettes le chemin du PR® au balisage Bleu et poursuivre à droite. Ce chemin permet de revenir au parking en longeant la chaussée de l''étang et ses bondes (D/A).

Points de passages
D/A : km 0 - alt. 109 m - Parking de la base nautique situé près du camping
1 : km 0.8 - alt. 109 m - Parcours de santé
2 : km 1.7 - alt. 112 m - Tourner à droite
3 : km 2.37 - alt. 109 m - Continuer tout droit
4 : km 4.45 - alt. 108 m - Prendre la D21 à droite
5 : km 4.83 - alt. 109 m - Tourner à droite dans la large allée forestière
6 : km 5.04 - alt. 110 m - Prendre le sentier à gauche (balisage bleu)
7 : km 5.44 - alt. 117 m - Retour sur le parcours au balisage bleu
8 : km 7.11 - alt. 110 m - Prendre la direction de l''observatoire
9 : km 7.4 - alt. 112 m - Rejoindre au retour l''étang sur la droite
D/A : km 9.75 - alt. 109 m - Parking de la base nautique situé près du camping
Informations pratiques
Prévoir des chaussures étanches pour certaines zones humides !
L''itinéraire débute au parking du site de Bellebouche.
Restauration et bar à la fin du circuit sur la base de loisir avec toilettes à l''extérieur.
Chasse possible en automne et en hiver sur la partie Ouest du parcours.
Chiens interdits de juin à septembre, autorisés en laisse le reste de l''année.',
        ST_GeomFromText(
            'LINESTRING(1.30585 46.798241, 1.305963 46.798201, 1.305947 46.798124, 1.305893 46.797977, 1.305866 46.797863, 1.305894 46.797776, 1.306027 46.797635, 1.306065 46.797576, 1.306081 46.797477, 1.30607 46.79733, 1.306081 46.797238, 1.30614 46.797154, 1.306258 46.797018, 1.306285 46.796948, 1.306301 46.796765, 1.306371 46.796577, 1.306499 46.796357, 1.306623 46.796232, 1.30673 46.796148, 1.306843 46.796081, 1.306945 46.795971, 1.306993 46.795861, 1.30695 46.795773, 1.306881 46.795721, 1.306747 46.79567, 1.306645 46.795618, 1.30658 46.795549, 1.306537 46.795394, 1.306532 46.795277, 1.306586 46.795185, 1.306757 46.795068, 1.306902 46.794965, 1.307004 46.794869, 1.307143 46.794612, 1.307202 46.794414, 1.307181 46.79412, 1.307095 46.793731, 1.306934 46.793378, 1.306891 46.793224, 1.306918 46.79311, 1.306924 46.793029, 1.306999 46.79293, 1.307429 46.792632, 1.30766 46.792456, 1.307859 46.792268, 1.308121 46.792081, 1.308272 46.792, 1.308197 46.791912, 1.308256 46.791761, 1.308454 46.791559, 1.308717 46.791343, 1.308942 46.791122, 1.309125 46.79092, 1.309173 46.790649, 1.309162 46.790432, 1.309178 46.790204, 1.309264 46.789914, 1.309527 46.789536, 1.309849 46.789176, 1.310299 46.78872, 1.310653 46.788375, 1.311029 46.788048, 1.311335 46.787729, 1.311555 46.787391, 1.311641 46.787236, 1.311689 46.786876, 1.311716 46.786704, 1.311818 46.786516, 1.312354 46.786021, 1.312654 46.785734, 1.31288 46.785565, 1.313266 46.786006, 1.313389 46.786201, 1.313502 46.786123, 1.313776 46.785863, 1.314119 46.785583, 1.313974 46.785411, 1.313786 46.785238, 1.313631 46.78508, 1.313566 46.784897, 1.313695 46.785091, 1.313867 46.78526, 1.314097 46.785466, 1.314183 46.785521, 1.314328 46.785418, 1.314934 46.784981, 1.31502 46.784904, 1.315074 46.784746, 1.315272 46.784595, 1.315691 46.784261, 1.315889 46.784085, 1.316029 46.784015, 1.316286 46.783978, 1.316806 46.783919, 1.317338 46.783853, 1.317643 46.783774, 1.317729 46.783704, 1.318013 46.783282, 1.318244 46.782977, 1.318346 46.78283, 1.318378 46.782756, 1.318394 46.782624, 1.318458 46.782514, 1.318501 46.782455, 1.318319 46.782411, 1.317782 46.782176, 1.317342 46.781981, 1.316607 46.781721, 1.316205 46.781592, 1.315846 46.781449, 1.31561 46.781313, 1.315492 46.781232, 1.315052 46.780791, 1.314569 46.780277, 1.313593 46.7793, 1.306823 46.780031, 1.307037 46.780361, 1.307107 46.78042, 1.307236 46.780475, 1.307611 46.780534, 1.307971 46.780578, 1.30826 46.780578, 1.308427 46.7806, 1.30855 46.78067, 1.3087 46.780832, 1.308818 46.781023, 1.308824 46.781133, 1.308792 46.781324, 1.308695 46.781438, 1.308593 46.781548, 1.308523 46.781614, 1.308475 46.781665, 1.308352 46.781743, 1.308303 46.781816, 1.308282 46.781919, 1.308191 46.782081, 1.308099 46.782228, 1.30804 46.782352, 1.308046 46.782411, 1.308099 46.782595, 1.308116 46.78269, 1.308073 46.782756, 1.308019 46.782823, 1.308046 46.78287, 1.308293 46.782925, 1.308529 46.78297, 1.308201 46.782918, 1.307965 46.782852, 1.307975 46.782767, 1.303881 46.780408, 1.303892 46.780342, 1.299106 46.780871, 1.299182 46.78101, 1.299745 46.782665, 1.299463 46.782698, 1.299126 46.782779, 1.298876 46.782909, 1.298785 46.782983, 1.298748 46.783174, 1.298657 46.783321, 1.298506 46.783541, 1.298244 46.783659, 1.297957 46.783817, 1.297829 46.78414, 1.297865 46.784456, 1.29801 46.784634, 1.297849 46.784886, 1.297831 46.785119, 1.297997 46.785292, 1.297847 46.785477, 1.297265 46.785642, 1.296155 46.785932, 1.295576 46.78652, 1.295093 46.786893, 1.292979 46.789056, 1.291515 46.790426, 1.290436 46.791579, 1.290733 46.791675, 1.291345 46.791866, 1.292144 46.792116, 1.292423 46.792233, 1.292686 46.792329, 1.293126 46.79245, 1.293528 46.792483, 1.293893 46.792535, 1.294285 46.792637, 1.29458 46.792678, 1.295519 46.792913, 1.29628 46.793111, 1.296908 46.793298, 1.297691 46.793545, 1.297938 46.793651, 1.29827 46.793864, 1.298587 46.794029, 1.298946 46.794143, 1.299284 46.794184, 1.29966 46.794162, 1.299761 46.79411, 1.299815 46.793978, 1.299949 46.793798, 1.300266 46.79332, 1.300641 46.792792, 1.300684 46.792692, 1.300738 46.792472, 1.300808 46.792108, 1.300732 46.791734, 1.300743 46.79148, 1.300711 46.791179, 1.300743 46.790985, 1.300765 46.790871, 1.30085 46.790783, 1.301081 46.790739, 1.301392 46.790639, 1.301612 46.790537, 1.302154 46.79018, 1.302288 46.790144, 1.302363 46.790177, 1.302551 46.790357, 1.302814 46.79061, 1.302975 46.790698, 1.303254 46.790724, 1.303452 46.790533, 1.303549 46.790478, 1.303683 46.790331, 1.303908 46.790085, 1.303983 46.79, 1.304042 46.789831, 1.304101 46.789585, 1.304235 46.789347, 1.304284 46.789078, 1.304251 46.788924, 1.304155 46.78877, 1.304133 46.788572, 1.304155 46.788384, 1.304246 46.788237, 1.304337 46.788289, 1.304434 46.788403, 1.304498 46.788469, 1.304622 46.788531, 1.30453 46.78852, 1.304439 46.78845, 1.304273 46.788267, 1.304176 46.788432, 1.304187 46.788707, 1.304332 46.789016, 1.304294 46.789266, 1.304209 46.789435, 1.304085 46.789692, 1.304048 46.78996, 1.303822 46.790206, 1.303613 46.790463, 1.303415 46.790599, 1.303297 46.790742, 1.303098 46.790742, 1.302862 46.790683, 1.302696 46.790548, 1.302556 46.790415, 1.302385 46.790228, 1.302304 46.790184, 1.302229 46.790173, 1.302133 46.790224, 1.301945 46.790357, 1.301553 46.790603, 1.301365 46.790676, 1.30107 46.790761, 1.300926 46.79079, 1.300861 46.790827, 1.300781 46.790922, 1.30077 46.791018, 1.300732 46.791172, 1.300743 46.791282, 1.300818 46.791642, 1.30121 46.79187, 1.301226 46.791987, 1.301247 46.792244, 1.301237 46.792358, 1.301151 46.792435, 1.301097 46.792509, 1.300963 46.792722, 1.300802 46.792927, 1.300732 46.793034, 1.300716 46.793247, 1.300754 46.793482, 1.300936 46.793879, 1.300963 46.793989, 1.301081 46.794147, 1.301306 46.794272, 1.301516 46.794334, 1.301655 46.794441, 1.301746 46.794565, 1.301757 46.794672, 1.301805 46.79479, 1.301998 46.794841, 1.302159 46.794958, 1.302202 46.795109, 1.302261 46.7953, 1.302293 46.795429, 1.302234 46.795487, 1.302052 46.79555, 1.301929 46.795586, 1.301805 46.795653, 1.301896 46.795774, 1.302009 46.79584, 1.302159 46.795976, 1.30239 46.796207, 1.302476 46.796317, 1.302599 46.796299, 1.302717 46.796358, 1.302728 46.796424, 1.302583 46.796446, 1.302675 46.796571, 1.302776 46.796648, 1.302948 46.796747, 1.303109 46.796776, 1.303286 46.796879, 1.303463 46.796953, 1.30408 46.797224, 1.30475 46.7975, 1.30518 46.797808, 1.305437 46.797918, 1.305743 46.798139, 1.305796 46.798231)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'de-besse-et-saint-anastaise-au-lac-pavin',
        'De Besse-et-Saint-Anastaise au Lac Pavin',
        'Au départ de l’hôtel Le Clos à Besse-et-Saint-Anastaise, cette boucle permet de faire le tour du Lac Pavin en utilisant le sentier de découverte et le GR®30.',
        ARRAY['/img/Besse1.webp','/img/Besse2.webp','/img/Besse3.webp'],
        'Moyenne',
        250,
        11.87,
        'Puy-de-Dôme',
        '(D/A) A la sortie de l’hôtel, aller à droite puis tout de suite à gauche pour traverser la rivière.

(1) Tout de suite après, prendre à droite le Sentier découverte. Suivre ce sentier qui va longer le ruisseau. Passage en sous bois et découverte de la source Goyon (fontaine minérale, eau très ferrugineuse). Au détour du Chemin de découverte, on peut voir quelques cascades et le ruisseau courir entre les rochers, très joli parcours.

(2) Traverser une petite route et continuer sur le chemin. Traverser le hameau Les Sagnes et continuer sur le chemin.

(3) Au bout, tourner à gauche et emprunter le pont sur le ruisseau. Suivre à droite la D149 puis tout de suite à gauche une petite route. Au bout, traverser la D978 et continuer sur la petite route qui conduit au bord du Lac Pavin.

(4) Virer à droite et entreprendre le tour du lac. A une fourche, suivre à droite le chemin du (celui du bas effectue un tour complet). Monter, continuer le tour du lac en ignorant les départs sur la droite. Atteindre le belvédère (beau panorama sur le lac). Continuer quelques mètres sur la route.

(5) Prendre aussitôt un chemin sur la droite. Suivre le GR®30 (balisage Rouge et Balnc). Arrivé à une route, la suivre à droite sur une centaine de mètres.

(6) Quitter la route en tournant à gauche et, immédiatement après, continuer à gauche avec le GR®.

(7) Au croisement en T, tourner à droite, toujours sur le GR®.

(8) Suivre à gauche une petite route. Après 150m environ, la quitter pour un chemin qui part sur la gauche. Retour à l’hôtel Le clos, arrivé au carrefour prendre sur la gauche.

(9) Au rond-point, continuer tout droit Rue du Grand Mèze. A la fourche, aller à gauche dans la place du même nom. Au croisement, continuer en face, légèrement en biais sur la droite, dans le Chemin de Ronde.

(10) Au carrefour, prendre la 1ère à gauche, la Rue du Quartier de la Bessou. Plus loin, obliquer à gauche, Rue de la Résistance. Au croisement, continuer tout droit et rejoindre le ruisseau longé au départ. Ignorer le 1er pont sur ce ruisseau.

(1) Emprunter le 2ème pont, à droite, pour rejoindre le point de départ (D/A).

Points de passages
D/A : km 0 - alt. 1 030 m - Hôtel Le Clos vers la - Couze Pavin (rivière) - Affluent de l''Allier
1 : km 0.09 - alt. 1 026 m - Carrefour de la boucle
2 : km 2.61 - alt. 1 147 m - Petite route
3 : km 3.69 - alt. 1 168 m - Rioubes Bas
4 : km 4.6 - alt. 1 203 m - Lac Pavin
5 : km 6.46 - alt. 1 268 m - Belévdère - Départ sur la droite
6 : km 7.34 - alt. 1 262 m - Croisement
7 : km 8.3 - alt. 1 211 m - Croisement en T
8 : km 9.93 - alt. 1 114 m - Petite route
9 : km 10.82 - alt. 1 048 m - Rond-point
10 : km 11.16 - alt. 1 030 m - Carrefour
D/A : km 11.87 - alt. 1 030 m - Hôtel Le Clos
Informations pratiques
Pas de point d''eau jusqu''au Lac Pavin.
Au lac, restaurant, café.',
        ST_GeomFromText(
            'LINESTRING(2.92606 45.515339, 2.925382 45.515286, 2.925209 45.515015, 2.924014 45.515131, 2.923569 45.514822, 2.923162 45.514698, 2.922604 45.514378, 2.921538 45.513622, 2.920498 45.513243, 2.91972 45.512892, 2.91933 45.512595, 2.918869 45.512453, 2.917873 45.51204, 2.917355 45.511915, 2.916575 45.511594, 2.915427 45.51127, 2.914913 45.511232, 2.914146 45.510845, 2.913657 45.51065, 2.912972 45.510492, 2.912652 45.5105, 2.912275 45.510396, 2.911845 45.510382, 2.911064 45.510228, 2.910513 45.510155, 2.909808 45.509972, 2.909563 45.509843, 2.908942 45.509676, 2.908744 45.5096, 2.908527 45.509626, 2.907649 45.50953, 2.906765 45.509434, 2.906513 45.50922, 2.906068 45.509157, 2.905769 45.509165, 2.905329 45.509083, 2.904881 45.509198, 2.904474 45.509174, 2.904117 45.509057, 2.903965 45.509055, 2.903802 45.509136, 2.903744 45.509245, 2.904158 45.509384, 2.904275 45.509476, 2.904263 45.509569, 2.904142 45.509632, 2.903863 45.509636, 2.903575 45.509585, 2.903104 45.50939, 2.902485 45.509234, 2.90207 45.509199, 2.90168 45.509123, 2.901739 45.508968, 2.90169 45.508836, 2.901253 45.508701, 2.900987 45.508528, 2.900826 45.508136, 2.900749 45.50805, 2.900639 45.508054, 2.900516 45.507911, 2.900403 45.507678, 2.899837 45.507584, 2.899572 45.507618, 2.898923 45.507348, 2.898551 45.507455, 2.898315 45.507214, 2.897972 45.507259, 2.897886 45.507109, 2.897478 45.507169, 2.89677 45.507259, 2.896191 45.507334, 2.89544 45.507139, 2.894238 45.506928, 2.894045 45.507079, 2.893809 45.507124, 2.89353 45.507049, 2.893187 45.506898, 2.892865 45.506763, 2.892135 45.506567, 2.891771 45.506357, 2.891234 45.506011, 2.889732 45.505545, 2.886621 45.504627, 2.886127 45.504612, 2.885591 45.504101, 2.885677 45.50353, 2.885247 45.503545, 2.884926 45.503304, 2.884539 45.502808, 2.884947 45.501364, 2.884904 45.500883, 2.883745 45.500206, 2.883488 45.49989, 2.883767 45.49971, 2.885226 45.49995, 2.885805 45.499634, 2.886509 45.499382, 2.885677 45.498708, 2.885097 45.49816, 2.884475 45.497799, 2.884003 45.497363, 2.883393 45.496852, 2.882844 45.496506, 2.882698 45.49582, 2.882522 45.494282, 2.882737 45.493768, 2.883164 45.493362, 2.884042 45.492662, 2.88431 45.49171, 2.885269 45.491046, 2.886234 45.490971, 2.887071 45.491151, 2.887737 45.491211, 2.888402 45.491166, 2.891234 45.491873, 2.89205 45.492264, 2.892822 45.49261, 2.892994 45.492926, 2.893466 45.493468, 2.894088 45.493663, 2.896234 45.493783, 2.897371 45.493618, 2.89838 45.493392, 2.900156 45.49327, 2.900718 45.493588, 2.901276 45.493693, 2.902001 45.493811, 2.902521 45.49434, 2.902971 45.494521, 2.902725 45.493797, 2.902996 45.493819, 2.903336 45.494325, 2.903851 45.494671, 2.905611 45.494972, 2.906662 45.495137, 2.907263 45.495859, 2.90758 45.496218, 2.907842 45.496626, 2.907907 45.497348, 2.908465 45.49792, 2.909623 45.498281, 2.910215 45.498575, 2.909795 45.499258, 2.913035 45.49977, 2.915889 45.500161, 2.918013 45.499469, 2.919623 45.498973, 2.920749 45.498875, 2.921017 45.499003, 2.921275 45.499243, 2.921822 45.499664, 2.923045 45.50007, 2.92473 45.501071, 2.926832 45.502169, 2.927433 45.502251, 2.927744 45.502657, 2.928088 45.502845, 2.928399 45.503755, 2.928549 45.504522, 2.928517 45.504808, 2.928699 45.505251, 2.929472 45.505996, 2.929654 45.506402, 2.929982 45.50717, 2.930089 45.507806, 2.930712 45.508599, 2.930937 45.509332, 2.931349 45.5098, 2.931875 45.510274, 2.932025 45.510612, 2.93254 45.511026, 2.931896 45.511537, 2.932036 45.511906, 2.932336 45.512703, 2.932519 45.512894, 2.931596 45.513146, 2.931349 45.513349, 2.930974 45.513582, 2.928925 45.513936, 2.928195 45.514108, 2.927648 45.514379, 2.92709 45.514469, 2.925953 45.514845, 2.925202 45.515018, 2.925384 45.515289, 2.92606 45.515341)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'de-la-baie-d-yves-au-fort-de-fouras-par-le-sentier-cotier',
        'De la Baie d''Yves au Fort de Fouras par le sentier côtier',
        'L''essentiel du parcours s’effectue le long du sentier côtier entre la réserve naturelle de la Baie d''Yves et la commune de Fouras. Vous croiserez de nombreux pontons de pêche au carrelet sur votre route et pourrez visiter le Fort Vauban à l''estuaire de la Charente. Vous aurez sous les yeux un paysage totalement différent selon la marée.',
        ARRAY['/img/Baie1.webp','/img/Baie2.webp','/img/Baie3.webp'],
        'Moyenne',
        335,
        19.36,
        'Charente-Maritime',
        'Départ du parking de la Baie d''Yves sur la RD137 dans le sens La Rochelle-Rochefort. Une fois sur l''aire de repos, se garer une centaine de mètres plus loin sur un parking en terre situé sur la droite.

(D/A) Pour rejoindre le parcours, aller au fond de ce parking en terre et emprunter le chemin de gauche pour rejoindre l''océan.

(1) Une fois sur la plage, prendre au bout de la digue à gauche. Arrivé à la Ferme du Rocher, virer à gauche et rejoindre une petite route.

(2) La quitter immédiatement en virant à droite pour contourner la Ferme du Rocher arriver en bordure de falaise (le chemin initial de droite est fermé). Rester ensuite sur le sentier du littoral jusqu''à Fouras. A proximité du Fief des Roches, après le premier carrelet de Fouras, rester sur le sentier qui borde des champs.

(3) A une cinquantaine de mètres d''une haie d''épineux empêchant de poursuivre tout droit, prendre le chemin à droite en sous-bois. Poursuivre sur le sentier du littoral en bordure des carrelets. Passer devant la maison de retraite puis un camping. Arrivé Boulevard de la Mer, continuer tout droit en longeant la plage Nord.

(4) Au petit port en bout de plage Nord, remonter jusqu''au passage piéton à gauche et rejoindre le rond-point de la D937. Traverser la départementale pour rejoindre le chemin en sous-bois et prendre en direction du casino sur la gauche.

(5) Contourner le casino et après avoir traversé l''Avenue du Bois Vert, prendre à gauche puis emprunter la Place Bugeau pour rejoindre la Grand Plage. Poursuivre vers le Fort Vauban qui vous fait face.

(6) Après une petite visite au fort, poursuivre votre randonnée vers le Sud et longer le parking du fort Place Vauban. Emprunter les escaliers en bout du parking, passer devant la capitainerie et rejoindre la plage Sud.

(7) Traverser la plage, rejoindre son entrée principale et remonter sur la route. Prendre en direction du Nord le Boulevard de la Mer et le suivre jusqu''à son extrémité pour retrouver la plage Nord. Reprendre à droite le chemin de l''aller en sens inverse.

(2) Au niveau de la ferme du Rocher, virer à droite pour d’accéder directement au parking par l''aire de repos (D/A).

Points de passages
D/A : km 0 - alt. 2 m - Aire de repos de la baie d''Yves
1 : km 0.27 - alt. 3 m - Plage, prendre à gauche au bout de la digue
2 : km 0.63 - alt. 5 m - Bifurcation à proximité de la Ferme du Rocher
3 : km 6.19 - alt. 7 m - Chemin en sous-bois
4 : km 8.61 - alt. 3 m - Petit Port à l''extrémité de la plage Nord
5 : km 8.84 - alt. 11 m - Contourner le casino
6 : km 9.88 - alt. 10 m - Fort Vauban , poursuivre au Sud
7 : km 10.3 - alt. 8 m - Traverser la plage
D/A : km 19.36 - alt. 2 m - Aire de repos de la Baie d''yves
Informations pratiques
Pas de point d''eau avant d''arriver en ville de Fouras - Parcours sans difficulté si ce n''est sa longueur -

En cas de pluie, il est possible, pour éviter de marcher dans la boue très présente à cet endroit, de modifier l’itinéraire au niveau du (3). En ce cas, au lieu de prendre le chemin en sous-bois, continuer le long du champ jusqu''à une haie d''épineux. Monter le long du champ à gauche et, à une croisée de chemins, prendre à droite. Poursuivre tout droit et rejoindre ensuite une petit place de terre puis par la droite le chemin du littoral.',
        ST_GeomFromText(
            'LINESTRING(-1.052978 46.033497, -1.053516 46.033132, -1.054067 46.032878, -1.054235 46.032791, -1.054443 46.032732, -1.054953 46.032632, -1.055484 46.032546, -1.056052 46.032621, -1.056202 46.032215, -1.056202 46.031976, -1.05624 46.031734, -1.056299 46.030904, -1.056299 46.030468, -1.056294 46.030174, -1.05639 46.030062, -1.056481 46.029943, -1.056315 46.029857, -1.056052 46.029805, -1.055816 46.029779, -1.05573 46.029622, -1.055961 46.029436, -1.056224 46.02925, -1.056664 46.029276, -1.056873 46.029388, -1.057297 46.029641, -1.057753 46.029567, -1.058466 46.029406, -1.059233 46.02925, -1.059968 46.02909, -1.060178 46.029008, -1.060387 46.028945, -1.060564 46.0289, -1.060703 46.028792, -1.060805 46.02868, -1.060934 46.028539, -1.060988 46.028397, -1.060993 46.028237, -1.060982 46.028058, -1.060945 46.027872, -1.060934 46.027704, -1.060945 46.02757, -1.06095 46.027302, -1.06095 46.026606, -1.060923 46.026051, -1.060875 46.025615, -1.060821 46.025306, -1.060768 46.025093, -1.060574 46.024818, -1.060349 46.024296, -1.060263 46.023939, -1.060105 46.023549, -1.060033 46.023194, -1.06 46.022885, -1.059958 46.022661, -1.059947 46.022527, -1.059944 46.022465, -1.059928 46.022416, -1.059901 46.022353, -1.05989 46.022286, -1.05984 46.022195, -1.059861 46.022035, -1.059791 46.021916, -1.059636 46.021503, -1.059367 46.020583, -1.059233 46.020199, -1.059067 46.01983, -1.058906 46.019461, -1.058826 46.019271, -1.058718 46.018992, -1.05837 46.018705, -1.058177 46.018482, -1.058 46.018295, -1.05779 46.018035, -1.05764 46.017509, -1.057506 46.01704, -1.057318 46.01682, -1.056299 46.015941, -1.055221 46.014943, -1.054486 46.014272, -1.053402 46.013173, -1.053172 46.012934, -1.053016 46.012636, -1.05286 46.012256, -1.052689 46.011664, -1.052646 46.011254, -1.052614 46.01039, -1.052576 46.009723, -1.052576 46.009, -1.052522 46.008095, -1.052528 46.007394, -1.05256 46.006876, -1.052565 46.005747, -1.052603 46.005021, -1.052673 46.004592, -1.052721 46.004417, -1.05315 46.003087, -1.053654 46.001928, -1.054786 45.999979, -1.055114 45.999357, -1.055671 45.998597, -1.055961 45.99822, -1.056197 45.997889, -1.057238 45.996935, -1.057774 45.996458, -1.058209 45.996089, -1.058434 45.99582, -1.05933 45.995019, -1.059877 45.994643, -1.060151 45.994453, -1.060186 45.994347, -1.06054 45.994124, -1.060864 45.994002, -1.061089 45.993953, -1.061503 45.99389, -1.062382 45.993953, -1.062621 45.993923, -1.063265 45.993863, -1.063597 45.993848, -1.064016 45.993818, -1.06437 45.993893, -1.064705 45.994017, -1.064973 45.994084, -1.065252 45.994102, -1.065499 45.994154, -1.065923 45.994311, -1.066422 45.994546, -1.066679 45.99471, -1.066851 45.994803, -1.06758 45.99503, -1.068197 45.99525, -1.068535 45.995325, -1.068846 45.995373, -1.069383 45.995403, -1.069662 45.995477, -1.070053 45.9956, -1.070456 45.995749, -1.070638 45.995846, -1.070949 45.995891, -1.071456 45.995948, -1.071445 45.996008, -1.071419 45.996045, -1.071429 45.996097, -1.071496 45.996096, -1.071588 45.996085, -1.071765 45.996122, -1.071963 45.996148, -1.072097 45.996171, -1.072253 45.996171, -1.072419 45.996118, -1.072537 45.996115, -1.072661 45.996145, -1.072811 45.996118, -1.072966 45.996122, -1.073165 45.99613, -1.073395 45.996122, -1.073798 45.996063, -1.073927 45.996014, -1.074179 45.995981, -1.074549 45.995954, -1.075005 45.995928, -1.075301 45.995921, -1.075558 45.99588, -1.076072 45.995753, -1.076383 45.995653, -1.076512 45.995671, -1.076764 45.995869, -1.076893 45.995917, -1.07707 45.995936, -1.077446 45.995902, -1.077741 45.995872, -1.077955 45.995872, -1.078202 45.995872, -1.078374 45.995891, -1.078588 45.995872, -1.078889 45.99591, -1.079184 45.995973, -1.07935 45.996055, -1.079473 45.996077, -1.079602 45.996096, -1.079752 45.996115, -1.079956 45.996178, -1.080149 45.996294, -1.080337 45.996461, -1.08046 45.996558, -1.080605 45.996629, -1.080782 45.996655, -1.081029 45.996636, -1.081281 45.996595, -1.081544 45.996588, -1.08185 45.996554, -1.082054 45.996431, -1.082198 45.996316, -1.082316 45.996197, -1.082579 45.995921, -1.082708 45.995809, -1.083714 45.995451, -1.084773 45.995135, -1.085186 45.994986, -1.08546 45.994911, -1.086624 45.994751, -1.087429 45.994367, -1.087788 45.993931, -1.087965 45.993819, -1.088266 45.993607, -1.088759 45.993364, -1.089328 45.993103, -1.089837 45.992861, -1.090433 45.992645, -1.091822 45.992209, -1.093077 45.991956, -1.094153 45.991802, -1.095829 45.9919, -1.096763 45.992045, -1.097235 45.992261, -1.09723 45.992641, -1.097466 45.992995, -1.097833 45.993371, -1.098163 45.993644, -1.098544 45.993677, -1.098748 45.993677, -1.098748 45.99348, -1.098962 45.993498, -1.099145 45.993174, -1.098984 45.992913, -1.098648 45.992305, -1.098412 45.991679, -1.098209 45.990948, -1.098445 45.990926, -1.098455 45.990784, -1.098681 45.990702, -1.09835 45.990171, -1.098151 45.989933, -1.098065 45.989593, -1.098217 45.989083, -1.098115 45.988866, -1.098056 45.988636, -1.097967 45.988408, -1.097891 45.988179, -1.097768 45.987722, -1.097565 45.987275, -1.097489 45.986902, -1.097607 45.986746, -1.097554 45.986522, -1.097275 45.986522, -1.097007 45.986194, -1.096739 45.98579, -1.097028 45.985648, -1.097318 45.985984, -1.097382 45.986299, -1.097747 45.986157, -1.097532 45.985911, -1.097307 45.985984, -1.097039 45.985626, -1.0972 45.985529, -1.096966 45.985225, -1.096642 45.984457, -1.096385 45.984217, -1.09603 45.984465, -1.095676 45.984442, -1.095623 45.984293, -1.095494 45.983995, -1.09544 45.983801, -1.095193 45.983861, -1.094882 45.983965, -1.094605 45.98407, -1.094316 45.984178, -1.094176 45.984245, -1.094056 45.984375, -1.093756 45.984472, -1.093412 45.984413, -1.093091 45.984308, -1.092704 45.984241, -1.092501 45.984263, -1.092586 45.98439, -1.092619 45.984524, -1.092731 45.985093, -1.092968 45.986234, -1.093182 45.9873, -1.093407 45.988366, -1.093531 45.988952, -1.093713 45.989838, -1.093885 45.990632, -1.094153 45.991795, -1.093096 45.991951, -1.09182 45.992208, -1.09131 45.992335, -1.0909 45.992451, -1.090057 45.992742, -1.089575 45.992954, -1.088539 45.993417, -1.087788 45.993853, -1.087638 45.994039, -1.087472 45.994289, -1.087257 45.994423, -1.08678 45.994658, -1.086511 45.99474, -1.086345 45.994766, -1.085315 45.994922, -1.084765 45.99513, -1.083725 45.995451, -1.082789 45.995731, -1.082606 45.995817, -1.082402 45.996048, -1.08229 45.996137, -1.082091 45.996346, -1.081973 45.996435, -1.081871 45.996484, -1.081737 45.996521, -1.081614 45.996532, -1.08141 45.996536, -1.081168 45.996592, -1.080857 45.996633, -1.080562 45.996581, -1.080278 45.996357, -1.080117 45.99623, -1.079833 45.9961, -1.079575 45.996051, -1.079409 45.99604, -1.079291 45.995977, -1.079071 45.995917, -1.078733 45.995858, -1.078476 45.995839, -1.078293 45.99585, -1.078062 45.995858, -1.077843 45.995846, -1.07759 45.995865, -1.077349 45.995887, -1.077183 45.995899, -1.077 45.995899, -1.07688 45.995844, -1.076668 45.995772, -1.076534 45.995638, -1.076453 45.995627, -1.076387 45.995615, -1.076296 45.99566, -1.076153 45.99571, -1.076001 45.995753, -1.07585 45.99579, -1.075687 45.995824, -1.075486 45.995883, -1.075338 45.995909, -1.075174 45.995917, -1.075054 45.995919, -1.074928 45.995923, -1.074686 45.995941, -1.07444 45.995952, -1.074257 45.995969, -1.073997 45.995991, -1.073839 45.996032, -1.073635 45.996073, -1.07349 45.996092, -1.073297 45.996107, -1.073088 45.996107, -1.072889 45.996103, -1.072723 45.996107, -1.072605 45.996114, -1.072487 45.996103, -1.072364 45.996114, -1.072288 45.996126, -1.072213 45.996129, -1.072176 45.996155, -1.072047 45.996144, -1.071902 45.996111, -1.071832 45.996111, -1.071655 45.996081, -1.071527 45.996055, -1.071473 45.996036, -1.071505 45.995977, -1.071449 45.995914, -1.070828 45.995869, -1.070556 45.995742, -1.070258 45.995639, -1.069964 45.995526, -1.069669 45.995404, -1.069347 45.995361, -1.069007 45.995373, -1.068686 45.995321, -1.068369 45.995261, -1.068063 45.995158, -1.067764 45.995049, -1.06747 45.994953, -1.067153 45.994866, -1.066866 45.994743, -1.066621 45.994588, -1.066331 45.994463, -1.06606 45.994334, -1.06577 45.994207, -1.065487 45.994089, -1.065157 45.994044, -1.064837 45.994016, -1.064614 45.993961, -1.064359 45.993885, -1.063981 45.993823, -1.063584 45.993856, -1.063257 45.993871, -1.062935 45.993879, -1.062654 45.993916, -1.06233 45.993893, -1.061994 45.99389, -1.061663 45.993854, -1.061324 45.993864, -1.060996 45.99391, -1.060682 45.994035, -1.060424 45.994169, -1.060199 45.994352, -1.059979 45.994512, -1.059748 45.994665, -1.059512 45.99484, -1.059276 45.995, -1.059098 45.995198, -1.058896 45.995388, -1.058689 45.995577, -1.05844 45.995739, -1.058262 45.995939, -1.058086 45.99613, -1.057892 45.996312, -1.057667 45.99649, -1.057474 45.996648, -1.057275 45.99683, -1.057136 45.996931, -1.05705 45.997043, -1.056841 45.997207, -1.056664 45.997385, -1.056524 45.997486, -1.056449 45.997583, -1.056235 45.997751, -1.056068 45.997952, -1.056031 45.998079, -1.055902 45.99819, -1.055768 45.998414, -1.055596 45.998578, -1.055425 45.998809, -1.055264 45.999018, -1.05513 45.999212, -1.05499 45.999446, -1.054903 45.999652, -1.054727 45.999845, -1.054635 46.000069, -1.0545 46.000277, -1.054384 46.000492, -1.054246 46.000698, -1.054109 46.000905, -1.053975 46.001118, -1.053878 46.001337, -1.053752 46.001553, -1.053613 46.001768, -1.05348 46.001987, -1.053364 46.00221, -1.053291 46.002441, -1.053207 46.002665, -1.053125 46.002894, -1.05305 46.003113, -1.052978 46.003343, -1.052882 46.003565, -1.052839 46.003792, -1.052737 46.004016, -1.052684 46.004248, -1.052636 46.004482, -1.052602 46.00472, -1.052552 46.004953, -1.052534 46.005179, -1.05254 46.005413, -1.052515 46.005642, -1.052512 46.005878, -1.052492 46.006116, -1.052466 46.006352, -1.05248 46.006585, -1.052484 46.006813, -1.052489 46.007049, -1.052464 46.007285, -1.05248 46.007516, -1.052482 46.007741, -1.05247 46.007978, -1.052466 46.008212, -1.052447 46.008443, -1.052499 46.008676, -1.052507 46.00891, -1.052535 46.00914, -1.052522 46.009406, -1.052549 46.010006, -1.052565 46.010826, -1.052621 46.011989, -1.052772 46.012719, -1.053094 46.013166, -1.053866 46.013664, -1.05451 46.01432, -1.055755 46.015422, -1.056591 46.016326, -1.057299 46.016763, -1.057385 46.017324, -1.057514 46.017801, -1.0579 46.018427, -1.058651 46.01906, -1.058796 46.019496, -1.059102 46.020021, -1.059279 46.020446, -1.059493 46.021191, -1.059692 46.021854, -1.059783 46.022088, -1.059799 46.022286, -1.05967 46.022431, -1.059761 46.022491, -1.059896 46.022666, -1.059965 46.022934, -1.060008 46.02334, -1.060142 46.023738, -1.060266 46.024111, -1.060384 46.024454, -1.06047 46.024707, -1.060614 46.024942, -1.060738 46.025161, -1.060867 46.025776, -1.060883 46.026167, -1.060909 46.027173, -1.06092 46.027967, -1.060914 46.028429, -1.060705 46.02873, -1.060582 46.028831, -1.060501 46.02889, -1.059718 46.029114, -1.059122 46.029248, -1.058264 46.029427, -1.057438 46.029602, -1.057331 46.02962, -1.057175 46.029527, -1.056987 46.029434, -1.056778 46.0293, -1.056682 46.029233, -1.056413 46.029237, -1.056242 46.029214, -1.05599 46.029367, -1.055845 46.029483, -1.055695 46.029576, -1.055732 46.029758, -1.055695 46.030079, -1.055598 46.030384, -1.055362 46.030712, -1.054997 46.031129, -1.054729 46.031423, -1.054445 46.03168, -1.05394 46.032172, -1.053565 46.032585, -1.053372 46.032797, -1.053227 46.032931, -1.052884 46.033289, -1.052977 46.033464)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'ferme-de-blin-vallee-de-la-druyes',
        'Ferme de Blin - Vallée de la Druyes',
        'Depuis l''ancien château médiéval, partir à la découverte d''un village construit en partie entre un ancien marais en partie asséché et la falaise. La vallée de la Druyes vous accueille dans un écrin de verdure qui tranche avec les pierres calcaires qui soutiennent l''édifice en ruine.
Druyes-les-Belles-Fontaines est classé dans les villages "Cités de caractères de Bourgogne - Franche-Comté".',
        ARRAY['/img/Blin1.webp','/img/Blin2.webp','/img/Blin3.webp'],
        'Moyenne',
        200,
       10.46,
        'Yonne',
        'Le départ se fait depuis le parking du château (la Ville).

(D/A) S''engager dans la rue qui mène au château en passant sous la porte de la Ville. Passer à droite du château, descendre le chemin qui aboutit sur une petite voie. Continuer à descendre pour arriver sur la Place Jean Bertin. Virer à gauche, puis à droite pour passer sur le pont qui franchit la Druyes. Longer la rue jusqu''à l''église.

(1) Prendre tout de suite à droite avant la mairie le chemin piéton (Chemin des Sources).

(2) Après être passé devant une guinguette située à main gauche, emprunter le chemin montant dans une partie végétalisée. Prenez le temps de jeter un œil sur le lac. À mi-chemin de la côte, bifurquer à gauche dans le premier chemin.

(3) Arrivé sur une ancienne voie ferrée, tourner à gauche, passer sur le viaduc et profiter du point de vue de part et d''autre. Au bout de cette portion, couper la route D104. Cette nouvelle voie goudronnée se termine rapidement en chemin qui contourne par la gauche le terrain de foot et arrive sur la D148.

(4) Passer tout droit pour descendre dans le chemin.

(5) À l''endroit où s''arrêtent les haies de bordure, prendre en épingle sur la gauche. Monter le raidillon et atteindre une voie large et stabilisée. L''emprunter par la droite, arriver à la ferme de Blin.

(6) Tourner à gauche entre les vestiges de l''ancien pont, laisser la source, sa fontaine et son bassin à main gauche et poursuivre par la droite. Arrivé au croisement de 4 chemins à hauteur d''une maison, tourner à gauche. Traverser la rivière sur le pont et aboutir sur la route D73. L''emprunter à droite sur 150m pour la quitter en prenant le chemin de gauche. Le suivre en laissant les chemins latéraux jusqu''au prochain croisement avec une voie goudronnée.

(7) À ce carrefour, faire une baïonnette gauche/droite pour suivre la direction de Fontenailles. Laisser la Rue des Roussiottes à gauche, poursuivre par la Rue des Grandes Chenevières. À la patte d''oie, tourner deux fois de suite à gauche jusqu''à la mare située sur la gauche.

(8) Prendre en direction du Nord-Ouest, la Rue des Railly. Elle se termine en chemin. Entrer en sous-bois et suivre en descendant dans la Vallée Morin.

(9) Virer à gauche, laisser un premier chemin sur la droite et remonter par le sentier large en limite d''une partie boisée. Quitter ce bois et prolonger jusqu''à un double croisement de 6 routes et chemins

(10) Rester vigilant pour emprunter le troisième sur la droite pendant presque un kilomètre.

(11) Passer tout droit le carrefour en direction du réservoir semi-enterré. En arrivant sur la D104, virer à gauche, puis 50m après, monter le chemin de terre sur la droite qui aboutit sur le parking (D/A).

Points de passages
D/A : km 0 - alt. 204 m - Château Fort de Druyes-les-Belles-Fontaines
1 : km 0.73 - alt. 170 m - Église Saint-Romain (Druyes-les-Belles-Fontaines)
2 : km 0.88 - alt. 175 m - Monter le chemin situé sur la gauche du lac
3 : km 1.62 - alt. 194 m - Tourner à gauche en direction du - Viaduc de Druyes-les-Belles Fontaines
4 : km 3.09 - alt. 198 m - Passer tout droit
5 : km 3.5 - alt. 172 m - Virage en épingle sur la gauche
6 : km 4.35 - alt. 168 m - Ferme de Blin, source et fontaine. Vers la - Druyes (rivière) - Affluent de l''Yonne
7 : km 6.58 - alt. 229 m - Décrire un gauche/droite
8 : km 7.21 - alt. 229 m - Mare (ancien abreuvoir)
9 : km 8.18 - alt. 205 m - Fond de la Vallée Morin
10 : km 8.91 - alt. 224 m - Double croisement de 6 routes et chemins
11 : km 9.89 - alt. 215 m - Tracer tout droit
D/A : km 10.46 - alt. 204 m - Château Fort de Druyes-les-Belles-Fontaines
Informations pratiques
Ce parcours peut se faire aussi en VTT. Les sources et fontaines sont nombreuses mais l''eau n''est pas potable même si elle est très claire. Une densité importante de palmipèdes habitent le marais et la rendent impropre à la consommation humaine.
Cette randonnée est proposée par l''Office de Tourisme de Puisaye-Forterre.
Le balisage est assuré par l''association À chacun son chemin en Puisaye-Forterre suivant la charte graphique de la Communauté de Communes de Puisaye-Forterre dans le sens de la description et porte le N°51.
La présence du balisage impose toutefois de partir au minimum avec ce descriptif et la carte IGN jointe.

En cas de soucis, merci de remplir ce questionnaire (1 à 2 minutes seulement).
Attention lors des traversées de routes.

Soyez toujours prudent et prévoyant lors d''une randonnée. Visorando et l''auteur de cette fiche ne pourront pas être tenus responsables en cas d''accident survenu sur ce circuit.

Télécharger fiche et carte PDF
Pendant la rando ou à proximité
De nombreux points de vue jalonnent ce circuit.
À visiter : la poterne, le château, le lavoir situé juste avant le premier pont, l''église.
À voir également : les galeries, les expositions estivales, le tilleul classé (au pied de l''église).
Ce village classé comme "Site touristique majeur" a vu naître le Capitaine Coignet et l''ingénieur Jean Bertin (1917-1975), inventeur de l''aérotrain, du naviplane et de l''hydroglisseur.
Au (3), au carrefour, en face l''arrivée, une pancarte vous indique le site de Panama. Vous pourrez y aller en suivant les indications (20mn en aller-retour). Cela vaut le détour !

Druyes-les-Belles-Fontaines a obtenu en 2017 le label Cité de Caractère de Bourgogne - Franche-Comté.',
        ST_GeomFromText(
            'LINESTRING(3.425135 47.550587, 3.424814 47.550268, 3.424588 47.550068, 3.424416 47.549851, 3.423086 47.549069, 3.422785 47.549055, 3.422485 47.549269, 3.422206 47.549471, 3.422035 47.549471, 3.421713 47.549464, 3.42108 47.549602, 3.420737 47.549406, 3.42049 47.549153, 3.420704 47.548747, 3.420855 47.548631, 3.420811 47.548497, 3.421154 47.548186, 3.420628 47.547954, 3.420446 47.547729, 3.420275 47.547425, 3.419996 47.547338, 3.41991 47.547418, 3.419835 47.547512, 3.419609 47.54762, 3.419245 47.547751, 3.418869 47.547896, 3.418386 47.548156, 3.418504 47.548678, 3.418525 47.548808, 3.417657 47.549822, 3.417228 47.549243, 3.416809 47.548627, 3.416337 47.548026, 3.415876 47.54762, 3.415135 47.546781, 3.414127 47.54568, 3.414212 47.545506, 3.415211 47.544941, 3.416198 47.544535, 3.419288 47.543406, 3.419395 47.543246, 3.420961 47.542305, 3.422388 47.54174, 3.423053 47.541291, 3.424019 47.540408, 3.424223 47.540132, 3.424502 47.539973, 3.425081 47.539553, 3.425122 47.539194, 3.425596 47.539161, 3.426497 47.539176, 3.427163 47.538481, 3.428214 47.538089, 3.428729 47.537999, 3.428906 47.537945, 3.429325 47.537724, 3.430044 47.537434, 3.430355 47.537354, 3.430816 47.537224, 3.431288 47.537036, 3.431765 47.536891, 3.432554 47.536536, 3.433531 47.536311, 3.43379 47.536306, 3.433745 47.536411, 3.433729 47.536469, 3.433774 47.536522, 3.433892 47.536569, 3.434675 47.536936, 3.434788 47.536978, 3.436647 47.537018, 3.440949 47.537177, 3.442333 47.537293, 3.443041 47.537351, 3.444114 47.537351, 3.444436 47.537467, 3.444608 47.537626, 3.445359 47.53764, 3.445895 47.537553, 3.446668 47.537423, 3.447419 47.537278, 3.44817 47.536974, 3.448792 47.536684, 3.449339 47.536279, 3.450187 47.535525, 3.450583 47.535077, 3.451839 47.534048, 3.452697 47.535033, 3.454392 47.536409, 3.454789 47.536337, 3.45539 47.536308, 3.455647 47.536366, 3.45672 47.538162, 3.45701 47.538669, 3.457535 47.539683, 3.457965 47.540263, 3.459628 47.541769, 3.460636 47.54258, 3.461505 47.543435, 3.461924 47.543942, 3.462482 47.544724, 3.462439 47.545115, 3.462975 47.545969, 3.463308 47.546955, 3.463544 47.548722, 3.463436 47.548924, 3.463007 47.549084, 3.462321 47.54904, 3.461698 47.54933, 3.461388 47.549677, 3.460894 47.549807, 3.458984 47.550271, 3.458233 47.550285, 3.457611 47.550561, 3.456731 47.551169, 3.45598 47.551835, 3.455336 47.552718, 3.455068 47.553052, 3.454789 47.553182, 3.454006 47.553544, 3.453791 47.553761, 3.45347 47.554442, 3.453287 47.554717, 3.453051 47.555108, 3.452557 47.555079, 3.451914 47.554876, 3.45142 47.554862, 3.450573 47.554804, 3.45009 47.554862, 3.449618 47.554746, 3.449317 47.554659, 3.448513 47.55434, 3.447708 47.553819, 3.447236 47.553559, 3.446935 47.553385, 3.446699 47.553327, 3.446206 47.553197, 3.445648 47.553211, 3.44539 47.553153, 3.444468 47.552979, 3.444318 47.552907, 3.443974 47.552921, 3.443674 47.552907, 3.442537 47.552704, 3.442 47.552574, 3.441571 47.552603, 3.441024 47.552545, 3.440477 47.552371, 3.439587 47.552009, 3.43891 47.551879, 3.438266 47.551864, 3.437816 47.551951, 3.437473 47.552024, 3.437237 47.552038, 3.436764 47.551951, 3.436271 47.551995, 3.435424 47.552081, 3.433996 47.552284, 3.433567 47.552313, 3.433095 47.552154, 3.432645 47.552154, 3.431786 47.552154, 3.430703 47.552067, 3.430284 47.552183, 3.429748 47.552342, 3.42948 47.552371, 3.428965 47.552269, 3.428622 47.552168, 3.428321 47.552009, 3.427978 47.551705, 3.427763 47.55156, 3.427387 47.551444, 3.4258 47.551039, 3.425413 47.550706, 3.425113 47.550619)',
            4326
        )
    );


INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'l-askar-puis-l-argandoita-en-passant-par-le-chene-millenaire',
        'L''Askar puis l''Argandoita en passant par le chêne millénaire',
        'Une belle randonnée qui nous permet de découvrir le magnifique village d''Urdax puis de nous élever à deux reprises pour admirer les sommets alentours d''où on aperçoit même l''océan.
Enfin la rencontre du chêne millénaire ne peut pas laisser insensible.',
        ARRAY['/img/laskar1.webp','/img/laskar2.webp','/img/laskar3.webp'],
        'Moyenne',
        210,
        8.64,
        'Pyrénées-Atlantiques',
        '(D/A) De la place, se diriger vers le Nord-Ouest, l''itinéraire est fléché en Vert-et-Blanc.
Au tabac, tourner à gauche et suivre le même balisage.
Admirer les belles maisons le long de la petite route qui se transforme en piste après la dernière habitation.
Passer près d''une petite grange et cheminer, en montant, à l''ombre de la forêt, atteindre une pancarte.

(1) Prendre à droite le chemin "Loiara" toujours balisé Vert-et-Blanc.
Continuer à cheminer, alternativement à l''ombre et au soleil, sans s''occuper des petits diverticules pour parvenir au débouché d''un bois.

(2) Découvrir Plein-Sud, le sommet de l''Alkuruntz.
Plus loin, longer par la droite une jolie petite maison et après 100m de piste bifurquer à droite, le chemin est toujours balisé.
Rencontrer de beaux spécimens de chênes et le chemin s''élève sérieusement.
Puis atteindre un plateau herbeux.

(3) Ignorer, juste après un muret en pierres, un chemin qui part à gauche et continuer le chemin balisé avec l''Azkar en point de mire. Arriver au col.

(4) Admirer la nouvelle vue que vous avez sur l''océan au loin.
De là, prendre Nord-Est, le chemin évident qui mène au sommet de l''Azkar.

(5) D''en haut, s''amuser avec une carte à découvrir le nom des différents sommets alentour.
Redescendre au col (l''aller/retour, petite pause comprise vous aura pris 1/4h).

(4) À la pancarte du col, prendre la direction "Urdazubi" pour redescendre sur l''autre versant.
Le chemin est toujours balisé en Vert-et-Blanc. Passer devant un abreuvoir (eau non-potable) qui sert souvent de rendez-vous aux Pottoks du coin.
1/4h après le col, à un croisement, ignorer un chemin qui monte à gauche et continuer à descendre à droite. 1/4h après, rejoindre une route et l''emprunter par la droite pour monter vers les antennes, bien en vue, de l''Argandoita. Dans la montée, juste avant un passage canadien, remarquer le chemin qui part à gauche (Nord) et qui sera suivi plus tard.

(6) Monter au sommet de l''Ardangoita par le sentier de droite et découvrir en bas la non-photogénique zone commerciale de Dantxarinea.

(7) Redescendre et retrouver le carrefour (aller/retour 1/4h).

(6) Prendre, à droite, le chemin indiqué "Axularen Txokoa" toujours balisé Vert-et-Blanc.
100m plus loin, délaisser le sentier à gauche et continuer à descendre parmi les fougères.
Encore plus loin atteindre un nouveau panneau.

(8) Suivre à gauche l''indication "Axularen Txokoa". La descente est parfois raide et délicate s''il a plu.
Arriver à un magnifique chêne millénaire dont le tronc atteint 6m de diamètre.
Prendre à droite toujours la direction "Axularen Txokoa". Traverser, plus loin, un passage canadien en ignorant un sentier qui part à droite.
Plus bas, à une patte d''oie continuer tout droit (à gauche le balisage est barré).
Passer le long de la ferme Axular et descendre jusqu''à la route N-121-B.

(9) L''emprunter à gauche. 150m plus loin, après avoir traversé la Nivelle, tourner à droite, (le balisage restant toujours le même) et cheminer jusqu''au village sur une ravissante petite route bordée de fontaines d''eau potable, sculptures, lavoir, belles fermes, etc...
Arriver sur la place du village en retraversant la Nive(D/A).
Points de passages

    D/A : km 0 - alt. 99 m - Place du village
    1 : km 1.02 - alt. 169 m - Pancarte Vert et Blanc à droite
    2 : km 1.53 - alt. 206 m - Vue Alkuruntz
    3 : km 2.47 - alt. 340 m - Plateau herbeux
    4 : km 2.98 - alt. 382 m - Col
    5 : km 3.2 - alt. 392 m - Sommet de l''Azkar
    6 : km 4.8 - alt. 292 m - Passage canadien
    7 : km 5.21 - alt. 340 m - Sommet de l''Ardangoita
    8 : km 5.98 - alt. 243 m - Pancarte à gauche
    9 : km 7.24 - alt. 97 m - Jonction Route N-121-B. - Nivelle (fleuve)
    D/A : km 8.64 - alt. 99 m - Place du village

Informations pratiques

Au départ on trouve une fontaine et des WC.
Le long de la randonnée quelques ruisselets et un abreuvoir permettent de se rafraîchir (tête, nuque, membres) mais l''eau n''est pas potable.
Il faut attendre le dernier 1/4h pour trouver de l''eau potable à profusion.
',
        ST_GeomFromText(
            'LINESTRING(-1.504055 43.266512, -1.504449 43.266828, -1.504741 43.266914, -1.505022 43.267008, -1.505337 43.267069, -1.505458 43.266858, -1.505551 43.266636, -1.505706 43.26644, -1.505848 43.266227, -1.505898 43.266004, -1.505853 43.265781, -1.505885 43.265553, -1.505896 43.265322, -1.505968 43.265098, -1.506056 43.264874, -1.506083 43.264647, -1.506164 43.264426, -1.506131 43.264198, -1.506014 43.263983, -1.506093 43.263763, -1.506174 43.263537, -1.50622 43.263304, -1.506339 43.26309, -1.506487 43.262891, -1.506522 43.262666, -1.506673 43.262463, -1.506767 43.262244, -1.506949 43.262057, -1.507072 43.26185, -1.507159 43.261632, -1.507254 43.26141, -1.507392 43.261199, -1.50751 43.260982, -1.507533 43.260756, -1.50762 43.260536, -1.507761 43.26033, -1.507936 43.260136, -1.508104 43.259937, -1.508308 43.259756, -1.508532 43.25959, -1.50867 43.25938, -1.508944 43.259249, -1.50918 43.259099, -1.509774 43.258986, -1.510002 43.258823, -1.510331 43.258433, -1.510631 43.258368, -1.510843 43.258192, -1.511603 43.257493, -1.511746 43.257287, -1.512053 43.256634, -1.512095 43.256403, -1.512014 43.256184, -1.512274 43.256057, -1.512591 43.256062, -1.512888 43.256125, -1.513198 43.256131, -1.513489 43.256056, -1.513787 43.255989, -1.514064 43.255881, -1.51436 43.255806, -1.514654 43.255718, -1.514707 43.255493, -1.51475 43.255266, -1.51491 43.255066, -1.514905 43.254833, -1.515032 43.254622, -1.515267 43.254472, -1.515506 43.254327, -1.515744 43.254183, -1.51584 43.253967, -1.516045 43.253791, -1.516344 43.253724, -1.516234 43.253941, -1.516247 43.254168, -1.51622 43.254394, -1.516166 43.254617, -1.516234 43.254837, -1.516322 43.255054, -1.516163 43.255249, -1.516145 43.255474, -1.516084 43.2557, -1.516019 43.255927, -1.516078 43.256151, -1.516158 43.256371, -1.51607 43.256589, -1.515979 43.256807, -1.515789 43.256985, -1.515635 43.257183, -1.515465 43.257376, -1.515389 43.257606, -1.515353 43.257831, -1.515161 43.258009, -1.514881 43.258116, -1.514588 43.2582, -1.514331 43.258325, -1.514266 43.258548, -1.514414 43.258748, -1.514478 43.258968, -1.514459 43.259198, -1.514381 43.259424, -1.514359 43.259654, -1.514252 43.259873, -1.514378 43.260084, -1.514492 43.2603, -1.514459 43.260528, -1.51457 43.260747, -1.514644 43.260975, -1.514689 43.261198, -1.514854 43.261391, -1.51338 43.262448, -1.513152 43.262601, -1.512913 43.262746, -1.513217 43.262679, -1.513329 43.262468, -1.513579 43.262323, -1.513842 43.262193, -1.514014 43.261999, -1.514244 43.261847, -1.51451 43.261727, -1.514766 43.261586, -1.514992 43.261429, -1.515128 43.261641, -1.515313 43.261823, -1.515625 43.261803, -1.515899 43.261909, -1.516205 43.261862, -1.516418 43.261696, -1.516642 43.261538, -1.516879 43.261392, -1.517148 43.261267, -1.517443 43.261186, -1.517744 43.261121, -1.518049 43.261157, -1.518361 43.261195, -1.518678 43.261206, -1.518995 43.261187, -1.519227 43.261027, -1.51952 43.261113, -1.519751 43.261266, -1.519893 43.261469, -1.519852 43.261693, -1.520013 43.261886, -1.520164 43.26209, -1.520199 43.262315, -1.52007 43.26253, -1.519923 43.262732, -1.520047 43.262944, -1.520355 43.262916, -1.520594 43.26277, -1.520902 43.262757, -1.520768 43.262966, -1.520534 43.263129, -1.520348 43.263313, -1.52024 43.263524, -1.519983 43.263651, -1.519738 43.263795, -1.519528 43.263961, -1.519412 43.264174, -1.519384 43.264403, -1.519202 43.264587, -1.519074 43.264798, -1.518965 43.26501, -1.518862 43.265234, -1.518819 43.265461, -1.518916 43.265678, -1.519161 43.265821, -1.519124 43.266052, -1.519172 43.266279, -1.519163 43.266508, -1.51892 43.266648, -1.518719 43.266818, -1.518617 43.267037, -1.51841 43.26721, -1.518206 43.267384, -1.518007 43.267564, -1.517853 43.267765, -1.517788 43.267987, -1.517696 43.268202, -1.517531 43.2684, -1.51733 43.268579, -1.517163 43.268773, -1.51697 43.268958, -1.516743 43.269119, -1.516541 43.269293, -1.516409 43.2695, -1.516276 43.269708, -1.516022 43.269845, -1.515746 43.269951, -1.515441 43.269888, -1.515322 43.269673, -1.515311 43.269445, -1.515342 43.269673, -1.515447 43.269887, -1.515755 43.269929, -1.516008 43.269794, -1.516207 43.269619, -1.516385 43.269432, -1.516594 43.269266, -1.516752 43.269066, -1.516957 43.268895, -1.517167 43.268716, -1.517364 43.268535, -1.517536 43.268348, -1.517732 43.268171, -1.517807 43.26795, -1.517869 43.267725, -1.517954 43.267947, -1.518089 43.268159, -1.518195 43.268378, -1.518191 43.268613, -1.518119 43.268832, -1.518065 43.269058, -1.518088 43.269292, -1.518085 43.269518, -1.51813 43.269743, -1.518133 43.26997, -1.518101 43.270201, -1.518103 43.270434, -1.518022 43.270659, -1.517866 43.270862, -1.517748 43.271071, -1.517538 43.271471, -1.51764 43.271689, -1.517599 43.271913, -1.517432 43.272103, -1.517278 43.272302, -1.517149 43.27251, -1.516854 43.272835, -1.516558 43.27291, -1.516268 43.272986, -1.516017 43.273123, -1.515703 43.273134, -1.515395 43.273074, -1.515073 43.273074, -1.514772 43.273154, -1.514483 43.273233, -1.514177 43.273299, -1.513869 43.273311, -1.513552 43.273274, -1.513306 43.273136, -1.513018 43.273039, -1.51271 43.272991, -1.512401 43.273006, -1.512088 43.273006, -1.511776 43.273018, -1.511464 43.273072, -1.511147 43.273083, -1.510849 43.273145, -1.510537 43.273132, -1.510223 43.27309, -1.509903 43.273082, -1.509584 43.273072, -1.509266 43.273049, -1.50895 43.273028, -1.508641 43.272978, -1.508335 43.273009, -1.508034 43.27307, -1.507923 43.272854, -1.50788 43.272631, -1.507871 43.272405, -1.507578 43.272332, -1.507338 43.272186, -1.507174 43.271984, -1.506973 43.271805, -1.506838 43.2716, -1.506522 43.271576, -1.506206 43.271574, -1.505895 43.27156, -1.505591 43.271507, -1.505375 43.271673, -1.505309 43.271902, -1.505185 43.272112, -1.505072 43.272331, -1.504965 43.272555, -1.504887 43.272777, -1.504812 43.273, -1.504707 43.273218, -1.504583 43.273431, -1.504578 43.273667, -1.504264 43.273714, -1.503952 43.273688, -1.503723 43.273534, -1.503104 43.273479, -1.502794 43.273413, -1.501876 43.273256, -1.501543 43.272863, -1.501608 43.27266, -1.50149 43.272475, -1.501061 43.272225, -1.500889 43.271787, -1.501114 43.2713, -1.501329 43.270894, -1.501179 43.270129, -1.5012 43.269316, -1.501479 43.268816, -1.501822 43.268472, -1.502144 43.268082, -1.502548 43.267751, -1.502702 43.267519, -1.502663 43.267288, -1.502852 43.266879, -1.50311 43.266691, -1.503484 43.266405, -1.504062 43.266461)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'la-crete-des-alpilles',
        'La crête des Alpilles',
        'Belle balade entre la crête sauvage et escarpée des Alpilles et la plaine de Romanin.',
        ARRAY['/img/laCrete1.webp','/img/laCrete2.webp','/img/laCrete3.webp'],
        'Moyenne',
        355,
        15.48,
        'Bouches-du-Rhône',
        'Départ depuis le parking des Antiques de Glanum à Saint-Rémy-de-Provence.
Attention, Parking payant de 10h à 18h : 4€ (Mai 2018).

(D/A) Depuis le parking, traverser la D5, puis descendre à gauche en direction de Saint-Rémy-de-Provence sur 100 mètres.
Après le pont, prendre à droite direction Égalières, et passer devant le Cloître Saint-Paul de Mausole. Suivre le balisage du GR®6 (Rouge et Blanc) par le Chemin des Carrières jusqu''à un oratoire.

(1) Un panneau Saint-Clerg invite à partir à droite en montée. Passer devant le Site Antique de Glanum et suivre le vallon par le sentier de découverte jusqu''à une petite route sur les hauteurs.

(2) Prendre à gauche et continuer cette route qui se dirige vers la tour de Télécommunications. Au niveau d''une citerne, laisser la piste qui part à droite, puis celle de gauche.

(3) À quelques mètres du signal de la Caume, laisser le GR®6 qui part à gauche vers la Gaudre de Valrugue.
Continuer sur ce chemin de terre balisé GR®, passer devant la tour. Avant la borne géodésique, prendre à droite le sentier pour arriver devant un panneau (zone protégée).
Suivre les crêtes vers la gauche en empruntant le GR®6. Après quelques passages rocheux escarpés, descendre vers le versant Sud des Alpilles.
Le GR®6 passe entre les rochers, dans un sous-bois, jusqu''au Col de Vallongue (passage rocheux étroit).

(4) Descendre à gauche des roches et des éboulis jusqu''à un sous-bois, pour arriver sur un chemin et retrouver le GR®653D.

(5) Tourner à gauche, longer l''aérodrome, franchir une barrière, laisser à gauche la piste de la cave de Romanin.

Plus de balisage
(6) Lorsque le chemin fait un virage à 90° à droite, laisser partir le balisage à droite. Passer la barrière par la droite, ne pas prendre le chemin qui part à gauche, mais trouver un sentier qui le longe par la droite. Il retrouve le chemin et continue tout droit. Laisser le prochain chemin à droite et poursuivre jusqu''à un croisement (138).

(7) Laisser le chemin de droite et de gauche et prendre le sentier en face qui démarre derrière un petit panneau métallique.
Couper un premier chemin et poursuivre jusqu''à retrouver un autre chemin. Le couper à nouveau et continuer en face sur un petit sentier qui va remonter et sortir du bois et déboucher sur un grand espace dégagé.

(8) Couper à nouveau le chemin et continuer tout droit sur le sentier à découvert ; 50m plus loin, laisser le sentier de droite et prendre le sentier qui part à gauche à 90° vers les Alpilles.
100m plus loin, il vire à droite et rejoint une fourche. Continuer sur le sentier de gauche qui monte. Après une partie plus sauvage, au niveau d''un champ, laisser le chemin de droite et poursuivre à gauche sur un chemin qui devient plus large.
Ce chemin longe le pied des Alpilles pendant environ 800m et rejoint un croisement (départ du sentier de la Gaudre de Valrugue ; GR®6).

(9) Poursuivre tout droit sur le même chemin pendant un peu plus d''un kilomètre jusqu''à rejoindre le site de Glanum. Prendre à droite sur le chemin balisé Jaune pour retrouver l''oratoire passé à l''aller.

(1) Prendre à gauche et faire le même chemin qu''à l''aller pour revenir au parking (D/A)
Points de passages

    D/A : km 0 - alt. 106 m - Parking - Site de Glanum
    1 : km 0.44 - alt. 109 m - Oratoire. Bifurcation à droite
    2 : km 2.55 - alt. 275 m - Intersection avec petite route. À gauche
    3 : km 3.36 - alt. 288 m - Fourche. Quitter le GR6
    4 : km 8.36 - alt. 261 m - Col de Vallongue.
    5 : km 8.88 - alt. 136 m - Jonction avec le GR653D. À gauche
    6 : km 9.55 - alt. 140 m - Dans le virage quitter la balisage
    7 : km 10.76 - alt. 138 m - Continuer tout droit
    8 : km 11.46 - alt. 145 m - Continuer tout droit
    9 : km 13.22 - alt. 147 m - Continuer tout droit
    D/A : km 15.48 - alt. 106 m - Parking - Site de Glanum

Informations pratiques

Quelques passages rocheux délicats par temps de pluie.

Variante :
(6) Il est possible de poursuivre à droite sur le GR®653D qui retrouve le circuit au point(1).
Cette portion est bien balisée mais moins sauvage.
',
        ST_GeomFromText(
            'LINESTRING(4.830858 43.775944, 4.831473 43.776033, 4.831581 43.776767, 4.831609 43.777172, 4.831815 43.776987, 4.832041 43.776818, 4.833208 43.776653, 4.833192 43.776401, 4.83383 43.776316, 4.834308 43.776281, 4.833857 43.775768, 4.83353 43.77538, 4.833782 43.775259, 4.833916 43.775157, 4.833868 43.774918, 4.833846 43.774561, 4.83405 43.77436, 4.834431 43.774352, 4.834435 43.774291, 4.834369 43.774249, 4.834206 43.774222, 4.834171 43.773936, 4.834043 43.773774, 4.833809 43.773558, 4.834043 43.773194, 4.834396 43.772892, 4.834584 43.772601, 4.834707 43.772417, 4.834888 43.772044, 4.835375 43.771544, 4.835979 43.771068, 4.836404 43.77062, 4.836883 43.770366, 4.837333 43.77027, 4.837784 43.770101, 4.838127 43.769863, 4.838533 43.769365, 4.838607 43.769092, 4.838922 43.768594, 4.839136 43.768336, 4.83942 43.768009, 4.839672 43.767535, 4.840002 43.76709, 4.840074 43.766948, 4.840117 43.766675, 4.840084 43.766482, 4.839804 43.765631, 4.839792 43.765383, 4.839727 43.765112, 4.83956 43.764629, 4.839533 43.763792, 4.839608 43.763527, 4.839817 43.76322, 4.840131 43.762969, 4.840175 43.762755, 4.840289 43.762642, 4.840517 43.762587, 4.840938 43.762673, 4.841126 43.762553, 4.841171 43.762427, 4.841088 43.762126, 4.840976 43.762085, 4.840638 43.762097, 4.840431 43.762049, 4.839967 43.761753, 4.83982 43.761651, 4.839507 43.761625, 4.839372 43.761601, 4.839259 43.76153, 4.839235 43.76133, 4.839358 43.761028, 4.839545 43.760742, 4.839828 43.760425, 4.84016 43.760224, 4.840994 43.759825, 4.841485 43.759748, 4.842285 43.759972, 4.842525 43.759929, 4.842743 43.759769, 4.843268 43.758981, 4.843522 43.758837, 4.843824 43.758829, 4.844315 43.758863, 4.844522 43.758893, 4.845643 43.75929, 4.846388 43.759469, 4.846868 43.759388, 4.84752 43.759114, 4.848113 43.758921, 4.848813 43.758853, 4.849296 43.758872, 4.850283 43.759025, 4.851034 43.759453, 4.85149 43.759711, 4.851809 43.759816, 4.851861 43.759892, 4.851839 43.759992, 4.851651 43.76017, 4.850959 43.760611, 4.850991 43.76071, 4.851603 43.760755, 4.851951 43.760737, 4.852203 43.760689, 4.852509 43.760569, 4.852678 43.76042, 4.852688 43.760263, 4.852688 43.760084, 4.852751 43.75998, 4.853684 43.759484, 4.853759 43.759399, 4.853684 43.759211, 4.853467 43.759016, 4.853314 43.758914, 4.853638 43.75892, 4.85417 43.759066, 4.854637 43.759236, 4.854931 43.759363, 4.855946 43.759641, 4.85686 43.759825, 4.857721 43.75998, 4.858984 43.760228, 4.860316 43.76052, 4.861495 43.760783, 4.862144 43.760937, 4.86238 43.761049, 4.862443 43.761238, 4.862431 43.761435, 4.862258 43.761693, 4.862123 43.76197, 4.86224 43.762006, 4.862325 43.761926, 4.862518 43.761907, 4.862752 43.761816, 4.863099 43.761475, 4.863123 43.76128, 4.863258 43.76112, 4.863369 43.761052, 4.863823 43.76089, 4.863946 43.76079, 4.863984 43.760689, 4.864246 43.760499, 4.864606 43.760379, 4.865019 43.760391, 4.865243 43.760334, 4.865445 43.760331, 4.865702 43.760235, 4.865808 43.760131, 4.866081 43.76003, 4.866154 43.759922, 4.866571 43.759728, 4.866747 43.759668, 4.866924 43.759662, 4.867127 43.759674, 4.867468 43.759621, 4.867776 43.759645, 4.86801 43.759646, 4.868222 43.759709, 4.868511 43.759722, 4.868677 43.759745, 4.868779 43.759783, 4.869117 43.759775, 4.869268 43.759802, 4.869455 43.759806, 4.869749 43.759857, 4.870183 43.759865, 4.870391 43.760021, 4.870502 43.760023, 4.870592 43.760087, 4.870799 43.760109, 4.870889 43.760184, 4.871213 43.760243, 4.871343 43.760303, 4.871496 43.760322, 4.871606 43.760263, 4.872099 43.760217, 4.872517 43.760241, 4.872796 43.760236, 4.872908 43.76021, 4.873031 43.760231, 4.873299 43.76021, 4.873396 43.760227, 4.873438 43.760282, 4.874161 43.760296, 4.874332 43.760232, 4.874633 43.7602, 4.874746 43.760145, 4.875062 43.760183, 4.875197 43.760125, 4.875321 43.76012, 4.87545 43.760077, 4.875708 43.760065, 4.876288 43.759855, 4.876632 43.7598, 4.87683 43.759662, 4.877085 43.759585, 4.87725 43.759616, 4.877351 43.759624, 4.877507 43.759581, 4.877738 43.759577, 4.877963 43.75957, 4.878071 43.759625, 4.878451 43.759776, 4.878607 43.759771, 4.87924 43.7595, 4.879653 43.759405, 4.880013 43.759417, 4.880898 43.759538, 4.881334 43.759537, 4.881642 43.759636, 4.881753 43.759726, 4.88202 43.759754, 4.882194 43.759842, 4.88244 43.759699, 4.88239 43.759654, 4.882471 43.759611, 4.882484 43.759447, 4.882445 43.759337, 4.882567 43.75923, 4.882646 43.759054, 4.882633 43.758748, 4.882786 43.758593, 4.882895 43.758574, 4.882994 43.758602, 4.883158 43.758689, 4.883273 43.758684, 4.883664 43.758612, 4.88385 43.75866, 4.884134 43.758669, 4.884534 43.758657, 4.884831 43.758717, 4.88517 43.758769, 4.885256 43.758735, 4.885545 43.758717, 4.885684 43.758789, 4.886231 43.758795, 4.886413 43.758747, 4.886573 43.758748, 4.886872 43.758702, 4.887535 43.758909, 4.887833 43.758969, 4.888215 43.758949, 4.888376 43.759029, 4.888559 43.759046, 4.888741 43.758997, 4.888956 43.758984, 4.889149 43.759041, 4.889364 43.759131, 4.889482 43.759167, 4.889837 43.759161, 4.890267 43.759141, 4.890772 43.759179, 4.890931 43.759123, 4.891111 43.759113, 4.891353 43.759085, 4.891525 43.758975, 4.891932 43.758825, 4.892284 43.758849, 4.892422 43.758825, 4.892743 43.758887, 4.89286 43.758918, 4.892982 43.758898, 4.893103 43.758915, 4.893271 43.758982, 4.893733 43.759014, 4.89404 43.759201, 4.894287 43.759275, 4.894396 43.759192, 4.894563 43.759168, 4.894727 43.759097, 4.894971 43.759211, 4.895115 43.759287, 4.895269 43.759302, 4.895422 43.759325, 4.895585 43.759325, 4.89572 43.759395, 4.89609 43.75942, 4.896353 43.759538, 4.896723 43.759631, 4.896803 43.759686, 4.89691 43.760248, 4.896851 43.760449, 4.89691 43.760634, 4.896935 43.76083, 4.89698 43.761017, 4.897061 43.761051, 4.897077 43.761245, 4.897136 43.761338, 4.897045 43.761586, 4.897061 43.761773, 4.897211 43.762013, 4.897219 43.76232, 4.897302 43.762463, 4.897396 43.762537, 4.897733 43.762675, 4.897804 43.762755, 4.897801 43.762924, 4.897704 43.763201, 4.897656 43.763297, 4.897562 43.763345, 4.897472 43.76354, 4.897481 43.763788, 4.897528 43.763877, 4.897688 43.763998, 4.897432 43.764009, 4.896446 43.764277, 4.895766 43.764195, 4.895507 43.764139, 4.895399 43.76408, 4.894867 43.764164, 4.894581 43.764281, 4.894256 43.76434, 4.893846 43.764234, 4.893652 43.764213, 4.892191 43.764388, 4.891842 43.764467, 4.891236 43.76453, 4.890532 43.764457, 4.889923 43.764468, 4.88969 43.764485, 4.889229 43.764376, 4.888124 43.76426, 4.887019 43.764229, 4.885259 43.764159, 4.88366 43.764171, 4.881965 43.76419, 4.88115 43.763904, 4.880613 43.764202, 4.879197 43.764066, 4.87777 43.763919, 4.877009 43.764516, 4.875313 43.764826, 4.873844 43.765082, 4.872964 43.765376, 4.872406 43.765376, 4.871161 43.765732, 4.870346 43.765608, 4.868908 43.766259, 4.867664 43.767251, 4.866913 43.767437, 4.866698 43.766414, 4.866183 43.766151, 4.86614 43.76674, 4.865475 43.766848, 4.864896 43.767142, 4.864209 43.767204, 4.863544 43.767204, 4.862879 43.767406, 4.862514 43.767809, 4.862407 43.768212, 4.860518 43.768103, 4.860218 43.768336, 4.85981 43.768289, 4.859274 43.768909, 4.858888 43.769048, 4.858566 43.769529, 4.858115 43.769467, 4.857557 43.769234, 4.856506 43.769296, 4.855755 43.769405, 4.855454 43.769622, 4.855047 43.76956, 4.854467 43.769591, 4.853845 43.769808, 4.852322 43.770009, 4.851742 43.769994, 4.850476 43.770335, 4.848588 43.77066, 4.847665 43.770954, 4.845992 43.771388, 4.844286 43.771717, 4.84361 43.771946, 4.843181 43.771931, 4.841507 43.772147, 4.840734 43.772395, 4.840219 43.77238, 4.83964 43.772535, 4.837677 43.772723, 4.83625 43.772744, 4.835349 43.772969, 4.83419 43.773073, 4.833804 43.773515, 4.834158 43.773941, 4.834179 43.77422, 4.834469 43.774274, 4.834404 43.774359, 4.83404 43.774351, 4.833814 43.774592, 4.833868 43.774894, 4.833804 43.775235, 4.833546 43.77539, 4.833868 43.775769, 4.834286 43.776257, 4.833203 43.776386, 4.833208 43.776653, 4.832621 43.776733, 4.832032 43.776811, 4.831593 43.777176, 4.831583 43.776769, 4.83154 43.776396, 4.83147 43.776019, 4.830864 43.775944)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'la-dent-du-chat-et-le-molard-noir',
        'La Dent du Chat et le Molard Noir',
        'Variante de la "Dent du Chat" avec un circuit qui passe par le Molard Noir et un départ au dessus de Caton, au lieu du traditionnel "Col du Chat".',
        ARRAY['/img/laDent1.webp','/img/laDent2.webp','/img/laDent3.webp'],
        'Difficile',
        390,
        13.04,
        'Savoie',
        'Depuis Caton, Village au dessus du Bourget du Lac, poursuivre la Départementale 42 jusqu''au parking du Sentier Botanique (630m), point de départ de notre randonnée. Avant de vous équiper, prenez le temps d''admirer la vue sur l''aéroport de Chambéry-Aix-les-Bains et de ses alentours.

(D/A) Le chemin, fléché en Rouge, est bien tracé et commence un peu plus haut sur la droite de la route.
Un premier tronçon chemine en lacets à travers une végétation touffue et permet de rejoindre la route un peu avant le parking des Côtes (885m). Ce premier tronçon d''une heure environ peut être effectué en voiture et diminuer ainsi le circuit total.

(1) prendre la route à droite. Près du parking, un panneau présente les circuits réalisables sur le Mont du Chat. Une stèle détériorée relative à Pierre Allègre est visible dans la boucle de la route.
Ensuite, poursuivre un peu plus loin sur la droite par un sentier qui permet d''atteindre rapidement la Fontaine des Côtes (1068m), point de jonction avec le trajet de retour.

(2) Prendre à droite par le Sentier de la dent du Chat pour atteindre le Carrefour des Quatre Chemins au pied de la Dent.

(3) Cette dernière est accessible en 10 minutes par une voie aménagée avec des câbles et des échelles pour atteindre une petite plateforme au sommet de La Dent du Chat à 1390 mètres. De ce point de vue, il est possible d''admirer la région autour du Lac du Bourget à l''Est et la Vallée du Rhône à l''Ouest.
Descendre par la même voie jusqu''au Carrefour des Quatre Chemins.

(3) Continuer par le Sentier des Crêtes balisé en Jaune vers le Molard Noir atteignable en 20 minutes. Quelques parties escarpées sont sécurisées par des câbles.

(4) Arrivés au Molard Noir, 1452 mètres, nous apercevons la Dent du Chat en contrebas au Nord qui semble bien petite et l''émetteur du Chat au Sud. Deux tables d''orientation permettent de repérer le paysage aux alentours vers l''est et vers l''ouest.
Pour la descente, suivre le chemin des crêtes jusqu''à une bifurcation (panneau Route du Relais (1400m)) qui permet à droite de passer vers l''émetteur du Chat.

(5) Poursuivre à gauche pour rejoindre directement la route qu''il faut descendre sur quelques centaines de mètres.

(6) Quitter la route pour un chemin à gauche, un peu moins bien tracé que celui emprunté pour la montée, qui qui permet de rejoindre la Fontaine des Côtes.

(2) Rejoindre le parking du Sentier Botanique (D/A) par le même chemin qu''à l''aller.
Points de passages

    D/A : km 0 - alt. 605 m - Parking du Sentier Botanique
    1 : km 2.41 - alt. 882 m - Route à droite
    2 : km 3.8 - alt. 1 049 m - Début de la boucle
    3 : km 5.67 - alt. 1 321 m - Aller-retour Dent du Chat - Dent du Chat
    4 : km 6.62 - alt. 1 370 m - Tables d''orientation
    5 : km 7.23 - alt. 1 451 m - À gauche
    6 : km 7.68 - alt. 1 396 m - Chemin à gauche
    D/A : km 13.04 - alt. 605 m - Parking du Sentier Botanique

Informations pratiques

Le premier tronçon jusqu''au parking des Côtes, d''une heure environ, peut être effectué en voiture et diminuer ainsi le circuit total.
',
        ST_GeomFromText(
            'LINESTRING(5.844406 45.658165, 5.844106 45.65815, 5.843717 45.657978, 5.843368 45.657787, 5.842902 45.657521, 5.842617 45.657288, 5.842269 45.656861, 5.841587 45.656302, 5.8417 45.656677, 5.841839 45.657138, 5.841968 45.657566, 5.842108 45.657963, 5.842188 45.658417, 5.842193 45.658927, 5.842215 45.659362, 5.842156 45.659827, 5.842006 45.660217, 5.841818 45.660561, 5.841577 45.660089, 5.841314 45.65971, 5.84104 45.659317, 5.840616 45.658871, 5.840203 45.658481, 5.839699 45.657809, 5.839608 45.658229, 5.839624 45.658642, 5.839651 45.659039, 5.839597 45.659538, 5.839484 45.659999, 5.83956 45.660573, 5.839715 45.661056, 5.839707 45.661495, 5.839771 45.66196, 5.839742 45.662346, 5.839836 45.662874, 5.83975 45.663204, 5.839538 45.662845, 5.839399 45.662507, 5.839149 45.66214, 5.838937 45.661679, 5.838701 45.661135, 5.838406 45.660468, 5.838031 45.660089, 5.837639 45.65962, 5.837097 45.659122, 5.836598 45.658623, 5.835917 45.658248, 5.835853 45.658447, 5.836014 45.658953, 5.836231 45.659395, 5.836373 45.65983, 5.836593 45.66001, 5.83648 45.660794, 5.836915 45.661465, 5.837119 45.661874, 5.836963 45.662271, 5.836893 45.66259, 5.836711 45.662597, 5.836531 45.662514, 5.836341 45.662114, 5.83611 45.662129, 5.836137 45.662541, 5.836016 45.662949, 5.835869 45.66283, 5.835762 45.662515, 5.83559 45.662042, 5.835171 45.661555, 5.835016 45.661458, 5.834922 45.66175, 5.834978 45.66208, 5.83485 45.662275, 5.834576 45.661911, 5.83405 45.661424, 5.833857 45.661817, 5.833718 45.662241, 5.833728 45.66283, 5.833868 45.663651, 5.833353 45.663178, 5.833289 45.664153, 5.833283 45.664835, 5.833334 45.665244, 5.833401 45.665878, 5.83353 45.666489, 5.833541 45.66737, 5.83368 45.667898, 5.833739 45.668667, 5.833991 45.6696, 5.834139 45.670357, 5.834235 45.670995, 5.833871 45.671617, 5.833763 45.672029, 5.834246 45.672382, 5.834493 45.673221, 5.834128 45.672936, 5.833763 45.672621, 5.834021 45.673101, 5.833463 45.672696, 5.833731 45.673101, 5.833238 45.672734, 5.833463 45.673401, 5.832669 45.672681, 5.83284 45.673251, 5.832991 45.673566, 5.833184 45.673903, 5.832733 45.673491, 5.83254 45.673783, 5.832218 45.674151, 5.832068 45.67487, 5.832669 45.674968, 5.833077 45.675238, 5.833549 45.675545, 5.833034 45.675245, 5.832669 45.67499, 5.832057 45.6749, 5.832165 45.674128, 5.832487 45.673746, 5.8321 45.673371, 5.831789 45.672839, 5.831392 45.672322, 5.830995 45.672104, 5.830523 45.671879, 5.830416 45.671444, 5.830051 45.671489, 5.829579 45.671632, 5.829751 45.671812, 5.829536 45.671579, 5.829193 45.671145, 5.828946 45.670897, 5.828678 45.670822, 5.828549 45.670357, 5.82797 45.669847, 5.827659 45.669315, 5.827079 45.668993, 5.826983 45.668678, 5.82665 45.668371, 5.826468 45.667823, 5.825802 45.667321, 5.825942 45.666811, 5.825974 45.666278, 5.826167 45.666098, 5.82591 45.665694, 5.825588 45.665184, 5.825502 45.664809, 5.825566 45.664404, 5.82548 45.663939, 5.825127 45.663512, 5.825813 45.663909, 5.825813 45.663692, 5.826103 45.663819, 5.826081 45.663669, 5.826307 45.663752, 5.826307 45.663609, 5.826682 45.663729, 5.82665 45.663332, 5.8268 45.662987, 5.82709 45.662897, 5.827734 45.663295, 5.82782 45.663122, 5.828324 45.663729, 5.828506 45.663699, 5.828442 45.663017, 5.82871 45.662987, 5.828871 45.662845, 5.829053 45.662927, 5.829139 45.662815, 5.8293 45.66289, 5.829343 45.662747, 5.829429 45.662845, 5.829504 45.662687, 5.829622 45.662792, 5.829643 45.662627, 5.829783 45.662822, 5.829804 45.66262, 5.829944 45.662785, 5.829955 45.662522, 5.830169 45.662815, 5.830201 45.662672, 5.830309 45.66277, 5.830362 45.662335, 5.830555 45.662515, 5.830781 45.662132, 5.830802 45.662312, 5.830888 45.662222, 5.830942 45.66196, 5.831092 45.662162, 5.831178 45.661727, 5.831285 45.661832, 5.831285 45.661735, 5.831435 45.661825, 5.831521 45.661547, 5.83166 45.66166, 5.832057 45.661532, 5.832047 45.661855, 5.832154 45.661825, 5.832132 45.661975, 5.832452 45.662511, 5.832999 45.663201, 5.833101 45.662807, 5.83331 45.663073, 5.833868 45.663677, 5.833742 45.662829, 5.833745 45.662241, 5.83382 45.661806, 5.834056 45.66145, 5.834533 45.6619, 5.83485 45.662301, 5.835016 45.662076, 5.834909 45.661716, 5.835 45.661443, 5.835161 45.66154, 5.835595 45.662042, 5.835745 45.6625, 5.835874 45.662837, 5.836016 45.662919, 5.836137 45.662541, 5.836116 45.662129, 5.836309 45.662106, 5.836553 45.662514, 5.836716 45.662623, 5.836883 45.662586, 5.836974 45.662279, 5.837146 45.661874, 5.836936 45.66145, 5.836523 45.66079, 5.836582 45.66004, 5.836395 45.659819, 5.836271 45.659392, 5.836019 45.658934, 5.835912 45.658458, 5.835933 45.658274, 5.836631 45.658642, 5.837092 45.659122, 5.837639 45.659635, 5.838041 45.660074, 5.838395 45.660464, 5.838669 45.661131, 5.8389 45.661701, 5.839141 45.662125, 5.839372 45.662511, 5.83957 45.662826, 5.839742 45.663193, 5.839849 45.662837, 5.839763 45.662354, 5.839801 45.661945, 5.839737 45.661487, 5.839685 45.66106, 5.839535 45.660565, 5.839511 45.66001, 5.83956 45.659534, 5.839613 45.659058, 5.839651 45.658653, 5.839624 45.658252, 5.83971 45.657813, 5.840235 45.658451, 5.840638 45.658874, 5.841072 45.659294, 5.841357 45.659718, 5.841555 45.660097, 5.841813 45.660539, 5.841995 45.660194, 5.842145 45.65983, 5.842204 45.659373, 5.842199 45.658957, 5.842172 45.658417, 5.842102 45.657982, 5.841952 45.657577, 5.841866 45.657157, 5.841732 45.656685, 5.841603 45.65631, 5.842263 45.656872, 5.842623 45.657285, 5.842923 45.657509, 5.843363 45.657776, 5.843733 45.657993, 5.844114 45.658124, 5.844393 45.658143)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'le-hameau-des-monts-et-les-gorges-du-gorgonnet',
        'Le hameau des Monts et les Gorges du Gorgonnet',
        'Vous commencez par longer l''Isère au milieu des noyers. Puis vous vous élevez sur les contreforts du Vercors, pour, ensuite, revenir par la passerelle de la Gaffe et les gorges sauvages très encaissées du Gorgonnet.',
        ARRAY['/img/leHameau1.webp','/img/leHameau2.webp','/img/leHameau3.webp'],
        'Moyenne',
        315,
        13.50,
        'Isère',
        'Garez-vous sur l''esplanade du Port de Saint-Gervais, le long de l''Isère. Le Port de Saint-Gervais se situe au Sud de Vinay, sur la rive gauche de l''Isère.

(D/A) Vous quittez l''esplanade du Port de Saint-Gervais en prenant le chemin de terre, sur la digue vers le Nord-Est (à contre-courant de la rivière). Vous longez l''Isère à main gauche. Vous avez la montagne à main droite.

(1) Vous dépassez une première barrière (panneau "interdiction à tous véhicules"). Vous dépassez la seconde en ignorant le chemin qui part sur la droite.

(2) Très rapidement, vous parvenez à une fourche. Vous prenez sur la droite, quittant ainsi la rive de la rivière pour sinuer dans les noyeraies.

(3) Vous parvenez à la D1532 que vous traversez (bien que la visibilité soit bonne, soyez prudent. Ça roule très vite. Ici le 90km/h est un minimum à respecter).
Vous prenez, en face, le Chemin du Lignet. Parvenu à une autre petite route, vous vous engagez sur la droite pour arriver à la Chapelle Saint-Roch.
Vous la dépassez pour prendre, ensuite, sur la gauche (panneau "Le Lignet 2 min). Vous traversez le hameau. Vous avez désormais un balisage Jaune/Vert que vous allez suivre jusqu''à la fin.

(4) À la sortie du hameau, vous prenez sur la droite le chemin de terre qui monte très rapidement dans la montagne. Vous en avez pour 2,4 km de montée sur un magnifique chemin muletier. Vous gardez votre chemin en ignorant les embryons de chemins qui peuvent partir de droite ou de gauche.

(5) Lorsque votre sentier débouche sur une large piste cailloutée, vous la prenez sur la droite. Plus loin, le balisage vous confirme votre choix.
Des travaux sont venus perturber la montée. Une conduite a été enterrée.
- Soit vous prenez l''esplanade qui recouvre cette conduite, droit dans la pente. Vous arriverez légèrement à gauche du (6).
- Soit vous êtes vigilant et reprenez l''ancien chemin dès qu''il s''écarte de la conduite (et ce, à 3 reprises).
Un peu après, un riverain souhaite que vous contourniez sa maison sur la gauche. Vous le faites.
Une fois la maison dépassée, vous vous engagez sur le chemin qui monte fermement, à gauche également. Puis vous arrivez dans une noyeraie.

(6) Vous débouchez sur une petite route (panneau "Les Monts"). Vous la prenez sur la droite. Parvenu au col, vous ignorez la petite route qui part sur la gauche. Vous poursuivez tout droit. Votre petite route descend un long moment. Vous la suivez.

(7) Après un virage en épingle, vous débouchez sur la D35. Vous la prenez sur la droite. Elle enjambe en même temps un ruisseau. Attention ! Ça n''est pas évident. Aussitôt le ruisseau passé, vous vous engagez sur la gauche (dès la fin du muret de pierre). Ça descend fermement, et c''est assez malaisé au début, mais ça ira mieux ensuite.
Vous longez un moment le ruisseau (c''est très joli...). Vous débouchez dans une prairie. Le chemin disparaît lorsque les herbes sont hautes. Il faut repérer, de l''autre côté de la prairie, une sorte de vieille barrière en bois. Si vous avez une bonne vue, vous y verrez de loin, le balisage (ça n''était pas mon cas...). Vous vous dirigez vers elle en respectant le foin au maximum (marchez en file indienne si vous êtes à plusieurs).
Vous enjambez la barrière pour prendre un joli sentier bien tracé.
Puis, vous débouchez de nouveau dans une prairie où le sentier n''est, de nouveau, pas très évident. Au début vous longez les pylônes (électriques ?) puis vous passez dessous pour partir sur la gauche. Vous retrouvez très rapidement le chemin. Vous débouchez sur un chemin que vous prenez sur la gauche.
Vous arrivez sur un autre chemin (il y a un gué à gauche). Vous prenez à droite.

(8) Vous prenez, très rapidement, la première petite route à gauche (après l''ancien four à pain). Vous la suivez jusqu''à parvenir à un élevage de cochons au lieu-dit le Moléron (pancarte publicitaire sur la gauche). Aussitôt cet élevage, vous prenez le chemin qui grimpe fermement sur votre droite. Vous débouchez sur une piste que vous empruntez sur la gauche.

(9) Très rapidement, vous arrivez au panneau "Le Moleton". Vous poursuivez en face (Chemin de la Gaffe). Vous remontez un très joli vallon.

(10) À l''oreille vous vous entendez que vous arrivez près d''un cours d''eau. Sur la droite, en contrebas, vous avez la passerelle de La Gaffe que vous devez franchir. Prenez toute fois le temps de profiter du lieu. C''est un endroit que j''apprécie beaucoup (le jour où j''y suis allé, il n''y avait personne...).
La passerelle franchie, vous poursuivez, vous débouchez sur un premier chemin, vous prenez à droite, puis sur un second. Vous prenez encore à droite.
Vous êtes sur un chemin en corniche. Par endroit, c''est impressionnant. Sans vouloir être "anxiogène"... Si vous avez des enfants avec vous, soyez vigilants, par endroits, il n''y a pas de parapet.
Vous suivez votre petite route jusqu''à parvenir au hameau des Rez. Vous ignorez un chemin qui part sur la droite, un autre sur la gauche.

(11) Au premier carrefour, vous prenez sur la gauche (Impasse des Rez). Le revêtement bitumé fait rapidement place à une piste. Vous la suivez un bon moment en ignorant ce qui part de droite ou de gauche. Lorsque vous débouchez sur une autre piste, vous allez à droite. Vous dépassez le hameau des Buissières.

(12) Vous débouchez sur une petite route, vous prenez à droite, pour parvenir au cimetière de Rovon.

(13) Le long du mur extérieur du cimetière vous avez un point d''eau. Vous pouvez vous servir, je ne pense pas que les résidents y trouvent à redire... Au carrefour suivant (Croix de Mazuit), vous prenez à gauche, puis à droite. Arrivé au lavoir, vous descendez sur la droite le Chemin du Lavoir. Vous débouchez sur une ruelle, vous tournez sur la droite puis au croisement suivant à gauche pour rejoindre la D1532.

(14) Vous traversez la D1532 et continuez en face, puis vous tournez à droite pour retrouver votre point de départ, le Port de Saint-Gervais (D/A).
Points de passages

    D/A : km 0 - alt. 182 m - Port de Saint-Gervais - Isère (rivière) - Affluent du Rhône
    1 : km 1.08 - alt. 182 m - Première barrière. Panneau, interdit aux véhicules
    2 : km 2.11 - alt. 180 m - Fourche. Prendre à droite
    3 : km 2.73 - alt. 184 m - Traversée de D1532
    4 : km 3.37 - alt. 206 m - Hameau le Lignet. Traversée du - Versoud (cours d''eau) - Affluent de l''Isère
    5 : km 4.2 - alt. 373 m - Piste cailloutée
    6 : km 5.02 - alt. 508 m - Panneau, Les Monts - 514m
    7 : km 6.8 - alt. 400 m - Jonction avec la D35
    8 : km 7.45 - alt. 267 m - Panneau Pierre Mouton - 272m
    9 : km 8.24 - alt. 363 m - Panneau, Le Moleton - 300m
    10 : km 9.06 - alt. 343 m - Passerelle de La Gaffe sur la - Drevenne (rivière) - Affluent de l''Isère
    11 : km 10.46 - alt. 215 m - Hameau des Rez
    12 : km 12.06 - alt. 236 m - Panneau, Les Buissieres - 235 m
    13 : km 12.36 - alt. 223 m - Point d''eau au cimetière
    14 : km 13 - alt. 190 m - Traversée de la D1532
    D/A : km 13.49 - alt. 182 m - Port de Saint-Gervais

Informations pratiques

Vous trouverez un point d''eau au cimetière de Rovon, en fin de balade.

Le classement en difficulté "moyenne" tient à la longueur de la balade et surtout au dénivelé important entre les hameaux du Lignet et des Monts (328m en 2,4km).

Des travaux sont venus chevaucher le sentier muletier entre les repères 5 et 6. Soit vous prenez l''esplanade qui recouvre une conduite, soit vous reprenez l''ancien chemin dès qu''il se présente.

Du hameau du Lignet jusqu''à la fin de la balade, le circuit bénéficie d''un balisage Jaune/Vert. Attention ! Plusieurs circuits ont ce même balisage. Il convient donc d''être attentifs lors des croisements de circuits (c''est le cas, notamment, au hameau des Monts).

Commerces et services sont présents à Vinay (au Nord Ouest).
',
        ST_GeomFromText(
            'LINESTRING(5.466902 45.207216, 5.467615 45.207575, 5.467604 45.207658, 5.468672 45.208274, 5.469047 45.208486, 5.469246 45.208641, 5.469466 45.208808, 5.469723 45.208946, 5.469939 45.209112, 5.470185 45.209253, 5.470405 45.209423, 5.470672 45.209566, 5.470898 45.209729, 5.471146 45.209879, 5.471388 45.210046, 5.471604 45.210225, 5.471858 45.210377, 5.472124 45.210518, 5.472384 45.21069, 5.472635 45.21086, 5.472878 45.211008, 5.473135 45.211159, 5.473357 45.211347, 5.473601 45.211495, 5.473837 45.211654, 5.474085 45.211815, 5.474334 45.211965, 5.474519 45.212155, 5.474771 45.212307, 5.475012 45.212464, 5.475251 45.212626, 5.475473 45.212792, 5.475666 45.212981, 5.475878 45.213153, 5.476067 45.213346, 5.476241 45.213556, 5.47645 45.213742, 5.47661 45.213942, 5.476795 45.21413, 5.476978 45.214314, 5.477157 45.214503, 5.477349 45.214695, 5.477559 45.214878, 5.477741 45.215085, 5.477879 45.21529, 5.47807 45.215485, 5.478242 45.21567, 5.478429 45.215855, 5.478745 45.216252, 5.478953 45.216444, 5.479128 45.216646, 5.479319 45.216848, 5.479472 45.217047, 5.479857 45.217401, 5.480061 45.21759, 5.480297 45.217783, 5.480527 45.217956, 5.480763 45.218085, 5.480994 45.21821, 5.481281 45.218346, 5.481559 45.21848, 5.481834 45.218593, 5.482157 45.218706, 5.482422 45.218834, 5.482703 45.218969, 5.482983 45.219086, 5.483234 45.219242, 5.483484 45.219394, 5.48374 45.219535, 5.484015 45.219664, 5.484259 45.21981, 5.48455 45.219931, 5.484815 45.220057, 5.485078 45.22019, 5.485393 45.220261, 5.485701 45.220299, 5.486022 45.220344, 5.486326 45.220405, 5.486637 45.22045, 5.486953 45.220503, 5.487275 45.220529, 5.487603 45.220554, 5.487893 45.220652, 5.488021 45.220719, 5.488098 45.220838, 5.488215 45.220949, 5.488339 45.220992, 5.48866 45.221028, 5.488985 45.221083, 5.489307 45.221102, 5.489623 45.221059, 5.489952 45.221008, 5.490222 45.220873, 5.490491 45.220751, 5.490761 45.220621, 5.491038 45.220486, 5.491262 45.220325, 5.491575 45.220257, 5.491893 45.220342, 5.492163 45.220488, 5.49242 45.220594, 5.492737 45.220726, 5.493007 45.220815, 5.49327 45.220946, 5.493587 45.220978, 5.49387 45.220868, 5.494159 45.220749, 5.494403 45.220589, 5.494555 45.220545, 5.494624 45.220415, 5.49468 45.220179, 5.494761 45.219951, 5.494898 45.21973, 5.495094 45.219542, 5.495231 45.219445, 5.49541 45.219455, 5.495752 45.219445, 5.495934 45.219562, 5.496186 45.219812, 5.496368 45.219974, 5.496618 45.220124, 5.496942 45.220208, 5.497254 45.220272, 5.497566 45.220325, 5.497899 45.220325, 5.498232 45.220366, 5.49856 45.220416, 5.498889 45.220415, 5.499067 45.220522, 5.499829 45.220553, 5.500151 45.220534, 5.500458 45.220472, 5.500526 45.220243, 5.500513 45.220016, 5.500337 45.219821, 5.500185 45.219616, 5.500032 45.219413, 5.499919 45.219191, 5.499698 45.219028, 5.499575 45.218817, 5.499414 45.218621, 5.499319 45.218404, 5.499167 45.218201, 5.49895 45.218028, 5.498755 45.217844, 5.499084 45.217874, 5.499391 45.217809, 5.499705 45.21774, 5.500057 45.217735, 5.500295 45.217585, 5.500332 45.217354, 5.500572 45.217189, 5.500859 45.217088, 5.501128 45.216956, 5.501401 45.216813, 5.501682 45.216669, 5.501839 45.21647, 5.502105 45.216337, 5.502259 45.216252, 5.502253 45.216137, 5.502049 45.21598, 5.50074 45.216143, 5.500354 45.216184, 5.500177 45.216131, 5.500006 45.216052, 5.499984 45.215859, 5.500403 45.215523, 5.500344 45.215307, 5.500215 45.215028, 5.500242 45.214807, 5.500216 45.214582, 5.500267 45.214356, 5.500268 45.21413, 5.500145 45.213913, 5.500101 45.213684, 5.500139 45.213457, 5.500155 45.21323, 5.500139 45.213003, 5.5001 45.212774, 5.500049 45.212544, 5.500027 45.21232, 5.499956 45.212093, 5.499909 45.211854, 5.499912 45.211372, 5.499791 45.211105, 5.499759 45.210807, 5.499603 45.21061, 5.49971 45.210459, 5.499486 45.21038, 5.499178 45.210316, 5.498863 45.210241, 5.498546 45.210168, 5.498247 45.210122, 5.497919 45.210115, 5.497602 45.210013, 5.497476 45.209784, 5.497334 45.209544, 5.497243 45.20942, 5.497146 45.209321, 5.497017 45.209186, 5.496864 45.208985, 5.496741 45.208773, 5.496708 45.208542, 5.49674 45.208315, 5.496748 45.208077, 5.496683 45.207856, 5.49657 45.207642, 5.49645 45.207427, 5.496344 45.207208, 5.496256 45.206989, 5.496189 45.206762, 5.496141 45.20653, 5.496033 45.20631, 5.495915 45.206089, 5.495956 45.205866, 5.495955 45.205614, 5.495804 45.205429, 5.495615 45.205243, 5.495456 45.205038, 5.495188 45.204945, 5.49485 45.204952, 5.494571 45.204876, 5.493955 45.204724, 5.493674 45.20461, 5.493363 45.204523, 5.493102 45.204379, 5.493028 45.204148, 5.493171 45.203905, 5.493182 45.203724, 5.493121 45.203516, 5.492946 45.203346, 5.492624 45.203244, 5.492233 45.203198, 5.492035 45.203074, 5.491831 45.202896, 5.491601 45.202732, 5.491393 45.202553, 5.491218 45.202354, 5.49101 45.202171, 5.490931 45.201952, 5.490798 45.201605, 5.49081 45.201369, 5.490754 45.201141, 5.490649 45.200923, 5.49052 45.200708, 5.490388 45.200502, 5.490205 45.200309, 5.490237 45.200075, 5.490258 45.19985, 5.49039 45.199637, 5.490421 45.199412, 5.490436 45.199184, 5.490387 45.199044, 5.490463 45.19896, 5.490794 45.198957, 5.491068 45.198814, 5.491138 45.198589, 5.491229 45.198303, 5.491085 45.19822, 5.490993 45.198303, 5.490558 45.198256, 5.490229 45.198189, 5.48963 45.198326, 5.488928 45.198288, 5.488713 45.198307, 5.488526 45.198368, 5.4882 45.198552, 5.487864 45.19853, 5.487635 45.19869, 5.487382 45.198834, 5.487064 45.198878, 5.486772 45.198772, 5.486592 45.198874, 5.486279 45.198821, 5.48604 45.198665, 5.485645 45.198712, 5.485484 45.198704, 5.485425 45.198719, 5.485388 45.198753, 5.485318 45.198908, 5.485254 45.199104, 5.485151 45.199326, 5.485099 45.19955, 5.484921 45.199747, 5.484744 45.199902, 5.484041 45.198874, 5.484009 45.198685, 5.48425 45.198409, 5.4844 45.198247, 5.484599 45.198096, 5.484733 45.197933, 5.484722 45.197797, 5.484521 45.197596, 5.484346 45.197402, 5.484141 45.197226, 5.484014 45.197007, 5.48407 45.196761, 5.484254 45.196571, 5.484288 45.196319, 5.484322 45.196127, 5.484273 45.195901, 5.48405 45.195732, 5.4838 45.195577, 5.483572 45.195405, 5.483315 45.194953, 5.483251 45.194728, 5.483001 45.194587, 5.482835 45.19439, 5.48277 45.19416, 5.482754 45.193918, 5.482716 45.193703, 5.482684 45.193484, 5.48258 45.193261, 5.482442 45.193015, 5.482367 45.192788, 5.482307 45.192607, 5.482191 45.192157, 5.482178 45.19193, 5.482127 45.191705, 5.482008 45.191291, 5.481809 45.190981, 5.481499 45.190627, 5.481377 45.19041, 5.480764 45.189803, 5.480599 45.1896, 5.480405 45.189416, 5.480243 45.189207, 5.480033 45.189038, 5.479808 45.188861, 5.479676 45.188642, 5.479512 45.188436, 5.479294 45.188259, 5.479027 45.188134, 5.478755 45.188004, 5.478663 45.187787, 5.478661 45.187677, 5.478913 45.187212, 5.478811 45.187166, 5.478655 45.18711, 5.478467 45.187193, 5.478317 45.187231, 5.477963 45.187389, 5.478054 45.187794, 5.478022 45.187979, 5.477492 45.188193, 5.477158 45.18824, 5.476735 45.188327, 5.476375 45.188743, 5.475705 45.189049, 5.475002 45.189166, 5.473988 45.189189, 5.473167 45.189393, 5.472202 45.189862, 5.471832 45.19041, 5.471585 45.190565, 5.470887 45.190576, 5.470662 45.190599, 5.470877 45.190694, 5.471526 45.19089, 5.471649 45.191147, 5.471762 45.191364, 5.471909 45.191575, 5.472039 45.191789, 5.472177 45.191994, 5.472259 45.192222, 5.472192 45.192454, 5.472414 45.192831, 5.472476 45.193055, 5.47254 45.193279, 5.472632 45.1935, 5.472653 45.19373, 5.472755 45.193947, 5.472526 45.19411, 5.472204 45.194145, 5.471883 45.194181, 5.471772 45.194397, 5.471606 45.194604, 5.471349 45.194584, 5.471005 45.19461, 5.470651 45.194648, 5.47034 45.194693, 5.470004 45.194663, 5.469695 45.194583, 5.469385 45.194496, 5.469104 45.194378, 5.46879 45.194448, 5.468527 45.194596, 5.468296 45.194693, 5.468055 45.194575, 5.467814 45.194429, 5.467528 45.194492, 5.467211 45.194526, 5.466926 45.194408, 5.466696 45.19423, 5.466487 45.194048, 5.466215 45.193913, 5.465898 45.193871, 5.465566 45.193872, 5.465238 45.193877, 5.464919 45.193829, 5.464602 45.193803, 5.46428 45.193785, 5.463979 45.193686, 5.46366 45.193613, 5.463328 45.193637, 5.463013 45.193767, 5.462374 45.194149, 5.46203 45.194288, 5.461741 45.194421, 5.461451 45.194504, 5.461178 45.194614, 5.46088 45.194665, 5.460587 45.194785, 5.460351 45.194945, 5.46011 45.195096, 5.459807 45.195193, 5.459522 45.1953, 5.459354 45.195381, 5.459333 45.195483, 5.459295 45.195608, 5.45921 45.195698, 5.459003 45.195874, 5.458824 45.196072, 5.458585 45.196222, 5.458328 45.196359, 5.458023 45.196451, 5.457895 45.196657, 5.457879 45.196885, 5.457928 45.197108, 5.458008 45.197336, 5.458152 45.197555, 5.458313 45.197744, 5.45856 45.197891, 5.458834 45.197975, 5.459118 45.19802, 5.459392 45.198285, 5.459585 45.198436, 5.459644 45.198542, 5.459392 45.198697, 5.459048 45.198855, 5.459333 45.199018, 5.459558 45.199195, 5.459772 45.199328, 5.460041 45.199434, 5.460405 45.199464, 5.460641 45.199528, 5.460733 45.199676, 5.460838 45.199859, 5.460957 45.200075, 5.461078 45.2003, 5.461216 45.20051, 5.461478 45.200677, 5.46173 45.200825, 5.461937 45.200974, 5.462201 45.201116, 5.462517 45.201269, 5.462452 45.201382, 5.462163 45.201488, 5.461937 45.201624, 5.461723 45.201791, 5.461969 45.202108, 5.462077 45.202259, 5.462291 45.202562, 5.46271 45.202728, 5.463096 45.202597, 5.463482 45.202445, 5.463836 45.202309, 5.464126 45.202211, 5.464351 45.202559, 5.464491 45.202786, 5.464619 45.203103, 5.464716 45.203375, 5.464813 45.203579, 5.464898 45.203844, 5.464941 45.204063, 5.46507 45.20432, 5.465059 45.204532, 5.464941 45.204827, 5.464716 45.205106, 5.46448 45.205371, 5.46433 45.205484, 5.464241 45.205587, 5.464423 45.205727, 5.464652 45.205873, 5.464889 45.206026, 5.465144 45.206177, 5.465357 45.206343, 5.465604 45.206483, 5.465825 45.206638, 5.466057 45.206792, 5.466318 45.206943, 5.466591 45.207065, 5.466907 45.207212)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'le-sentier-du-granite-a-la-roche-d-oetre', 
        'Le sentier du granite à la Roche d''Oëtre',
        'S''il y avait un paradis de la randonnée, l''Espace Naturel Sensible de la Roche d''Oëtre et les gorges de la Rouvre seraient certainement bien positionnés ! Site classé et Espace Naturel Sensible du département de l''Orne, la Roche d''Oëtre, située au cœur des Montagnes de Normandie, est un site incontournable et un lieu de rendez-vous pour les amoureux et amateurs de nature sauvage et de randonnée.',
        ARRAY['/img/leSentier1.webp','/img/leSentier2.webp','/img/leSentier3.webp'],
        'Moyenne',
        185,
        8.83,
        'Orne',
        'Stationnement sur le parking du site de la Roche d''Oëtre.

(D/A) Traverser les parkings et rejoindre l''Office du Tourisme. Longer le bâtiment par la gauche, tourner à droite, avant le restaurant, et passer entre les deux bâtiments.

(1) Tourner à droite, emprunter le sentier, sur environ 200 m. À la croisée des chemins, prendre à gauche et emprunter le raidillon sinueux qui descend dans les gorges de la Rouvre.

(2) Tourner à gauche et longer la Rouvre à main droite, pendant environ 2,5 km, jusqu''à atteindre la Maison du Paysage.

(3) Passer derrière celle-ci et continuer à longer la Rouvre, à main droite, pendant environ 500 m jusqu''à atteindre la D224.

(4) Traverser avec prudence la D224 et tourner à gauche dans le sentier qui longe la route, par la droite. Suivre le sentier sur environ 300 m, tourner à gauche au premier croisement de chemins, poursuivre sur 200 m, puis tourner de nouveau à gauche au second croisement pour rejoindre la D224, au niveau du lieu-dit l''Oullière.

(5) Traverser, avec prudence, la D224 et tourner à droite, en direction du bourg de Bréel. Parcourir une bonne centaine de mètres et prendre à gauche, en direction de l''église. Contourner l''église par la gauche, remonter jusqu''à la mairie, longer la D229 par le trottoir de gauche, sur environ 150 m, jusqu''à atteindre un chemin sur gauche, peu avant le lieu-dit la Rôrie.

(6) Suivre le chemin jusqu''à atteindre un calvaire et la D329. Traverser, avec prudence, la D 329, tourner à gauche et la longer sur environ 200 m.

(7) Au lieu-dit le Douit de Bréel, tourner à droite et emprunter la route, sur environ 200 m. S''engager à gauche dans le premier chemin à l''entrée du lieu-dit le Hamel, puis tourner encore à gauche à la croisée suivante. Poursuivre sur le chemin, traverser le lieu-dit la Bagottière et aller en face, jusqu''à atteindre le lieu-dit Oëtre.

(8) Bifurquer à droite et suivre le chemin jusqu''à la route. Tourner à gauche, passer à proximité d''un pylône, tourner de nouveau à gauche, à l''intersection suivante, et poursuivre jusqu''à retrouver la D229.

(9) Tout en restant bien sur le bas-côté, longer, prudemment, la D329 sur environ 300 m, jusqu''à approcher du site de la Roche d''Oëtre. Traverser, avec prudence, la D329, serrer à gauche en direction des bâtiments, longer le café par la droite, puis le restaurant par la gauche.

(1) Virer à droite, passer entre les deux bâtiments, tourner à gauche, longer l''Office du Tourisme et rejoindre le lieu de stationnement, sur les parkings du site de la Roche d''Oëtre (D/A).
Points de passages

    D/A : km 0 - alt. 148 m - Parking du site de la Roche d''Oëtre
    1 : km 0.23 - alt. 152 m - Croisement de la boucle
    2 : km 0.61 - alt. 91 m - Intersection - Rouvre (rivière) - Affluent de l''Orne
    3 : km 3.13 - alt. 105 m - Maison du Paysage
    4 : km 3.62 - alt. 100 m - Route D224
    5 : km 4.16 - alt. 119 m - Lieu-dit l''Oullière
    6 : km 4.79 - alt. 140 m - Chemin sur gauche avant la Rôrie
    7 : km 5.64 - alt. 161 m - Le Douit de Bréel
    8 : km 7.39 - alt. 191 m - Lieu-dit Oëtre
    9 : km 8.06 - alt. 179 m - Route D329
    D/A : km 8.83 - alt. 149 m - Parking du site de la Roche d''Oëtre

Informations pratiques

Ce circuit est balisé "Sentier du granite" de bout en bout.
Les sentiers empruntent parfois des propriétés privées et des milieux naturels fragiles : merci de ne pas quitter le sentier balisé, respectez les propriétés traversées, ne faites pas de feu et ne laissez pas vos déchets sur place. L''accès au sentier du bord de Rouvre (sentier du granite) n''est pas autorisé de mi-septembre à fin février pour des raisons de crues et de pratique de la chasse.
',
        ST_GeomFromText(
            'LINESTRING(-0.382106 48.830236, -0.381898 48.830058, -0.38194 48.829824, -0.382007 48.829599, -0.38201 48.829454, -0.381718 48.829387, -0.381641 48.829234, -0.381312 48.829153, -0.381124 48.829095, -0.380946 48.828984, -0.380935 48.828805, -0.381025 48.828678, -0.381238 48.828736, -0.381555 48.82881, -0.381896 48.828893, -0.382187 48.828959, -0.382374 48.828999, -0.382694 48.82896, -0.383018 48.829016, -0.383222 48.829153, -0.383386 48.829261, -0.38361 48.829215, -0.383597 48.829069, -0.383752 48.828951, -0.383897 48.828843, -0.384084 48.828688, -0.383952 48.828474, -0.384211 48.828409, -0.384401 48.828327, -0.384379 48.828101, -0.384425 48.827958, -0.384187 48.82789, -0.383854 48.827814, -0.383516 48.827744, -0.383207 48.827671, -0.382872 48.827603, -0.382525 48.827531, -0.382234 48.82745, -0.381908 48.827389, -0.381692 48.827329, -0.381575 48.827154, -0.38149 48.827104, -0.381178 48.826921, -0.381007 48.826751, -0.380872 48.826528, -0.380831 48.826321, -0.380892 48.826092, -0.381012 48.825918, -0.381116 48.825748, -0.381166 48.825568, -0.381093 48.825352, -0.380932 48.825144, -0.380916 48.824908, -0.380905 48.824694, -0.380869 48.824509, -0.380869 48.824275, -0.380836 48.824054, -0.380807 48.823814, -0.380759 48.823608, -0.380664 48.823385, -0.380524 48.823183, -0.380391 48.822983, -0.380218 48.822793, -0.380068 48.822612, -0.379929 48.822405, -0.379807 48.822202, -0.379681 48.821987, -0.379606 48.821769, -0.379553 48.821539, -0.379517 48.821323, -0.379526 48.8211, -0.37957 48.820861, -0.379636 48.820637, -0.379735 48.820429, -0.379853 48.820214, -0.379987 48.819962, -0.380134 48.819767, -0.380283 48.819579, -0.38048 48.81937, -0.380688 48.819147, -0.380874 48.818974, -0.381072 48.81878, -0.381302 48.81856, -0.381509 48.818408, -0.381854 48.818221, -0.382104 48.818124, -0.382448 48.818021, -0.382779 48.817939, -0.383146 48.817879, -0.383465 48.817828, -0.383818 48.817793, -0.384105 48.817774, -0.38452 48.817799, -0.384907 48.817865, -0.38525 48.818009, -0.38553 48.818139, -0.385816 48.818262, -0.38614 48.818314, -0.386463 48.818299, -0.386789 48.818245, -0.387111 48.818177, -0.387415 48.818092, -0.387723 48.818008, -0.387961 48.817884, -0.388195 48.817738, -0.38842 48.817576, -0.388629 48.817416, -0.388912 48.817235, -0.389193 48.817062, -0.38944 48.81694, -0.389731 48.816801, -0.390054 48.816704, -0.390399 48.816597, -0.390664 48.816587, -0.390836 48.816675, -0.391119 48.81672, -0.391457 48.816658, -0.391798 48.816645, -0.391984 48.816619, -0.392171 48.816594, -0.392345 48.816587, -0.392518 48.816563, -0.392778 48.81642, -0.393075 48.816275, -0.393328 48.816162, -0.393591 48.815984, -0.39384 48.815837, -0.394211 48.81582, -0.394379 48.81577, -0.394534 48.815703, -0.394698 48.815661, -0.394857 48.815582, -0.395003 48.815492, -0.39515 48.81529, -0.395108 48.81508, -0.395266 48.814975, -0.395373 48.814869, -0.39548 48.814764, -0.395557 48.814585, -0.395767 48.814392, -0.39588 48.814194, -0.395866 48.814074, -0.395822 48.813953, -0.395781 48.813849, -0.395691 48.813745, -0.395482 48.813575, -0.395351 48.813384, -0.395437 48.813185, -0.395619 48.813003, -0.395824 48.81281, -0.39598 48.812611, -0.39613 48.812402, -0.396293 48.812188, -0.396424 48.811964, -0.396558 48.811773, -0.396676 48.811562, -0.396829 48.811359, -0.397071 48.811395, -0.397251 48.811487, -0.397467 48.811618, -0.397641 48.811655, -0.397677 48.811522, -0.397444 48.811365, -0.397219 48.811206, -0.396994 48.811053, -0.396872 48.810968, -0.396693 48.810788, -0.396723 48.810685, -0.396737 48.810461, -0.396745 48.810302, -0.396672 48.810215, -0.396502 48.810039, -0.396234 48.809876, -0.3959 48.809726, -0.395658 48.80996, -0.395356 48.810109, -0.395089 48.810223, -0.394802 48.810349, -0.394487 48.810467, -0.394169 48.810557, -0.393934 48.810623, -0.393828 48.810693, -0.393856 48.810917, -0.393883 48.811146, -0.393912 48.811286, -0.393895 48.811442, -0.39366 48.811534, -0.393336 48.811578, -0.393012 48.811645, -0.392653 48.811723, -0.392272 48.811794, -0.392214 48.81193, -0.392183 48.812154, -0.392198 48.812383, -0.39217 48.812608, -0.39212 48.812843, -0.392115 48.813077, -0.392143 48.813214, -0.392066 48.813383, -0.391768 48.813358, -0.391441 48.81333, -0.391278 48.813318, -0.391083 48.813265, -0.390773 48.813194, -0.390461 48.813113, -0.390111 48.813052, -0.389782 48.812995, -0.389453 48.812924, -0.389112 48.812825, -0.388804 48.812714, -0.388527 48.812592, -0.38823 48.812482, -0.387905 48.812408, -0.387951 48.812585, -0.38806 48.812798, -0.388088 48.81302, -0.388092 48.81318, -0.388035 48.813243, -0.387895 48.813439, -0.387751 48.813656, -0.387604 48.813859, -0.38745 48.814063, -0.387317 48.814284, -0.387161 48.81451, -0.386981 48.814761, -0.386792 48.814823, -0.386652 48.814835, -0.386304 48.814883, -0.385969 48.814937, -0.385634 48.814988, -0.385416 48.815009, -0.38529 48.815005, -0.384949 48.815044, -0.3846 48.815072, -0.384258 48.815116, -0.38391 48.815161, -0.383575 48.815204, -0.38325 48.815213, -0.382904 48.81519, -0.382725 48.815168, -0.382505 48.815191, -0.382254 48.815302, -0.38196 48.815364, -0.381692 48.815249, -0.381324 48.815315, -0.380923 48.815439, -0.38064 48.815557, -0.380369 48.815697, -0.380101 48.815851, -0.379892 48.816, -0.379679 48.815868, -0.379447 48.815727, -0.379415 48.815511, -0.379349 48.815293, -0.37947 48.815126, -0.379726 48.814952, -0.379897 48.814777, -0.379994 48.81465, -0.380048 48.814524, -0.380118 48.814291, -0.380143 48.814178, -0.379965 48.814063, -0.37983 48.813866, -0.379714 48.813653, -0.379679 48.813435, -0.379631 48.813283, -0.379333 48.813346, -0.379271 48.813456, -0.379144 48.813559, -0.378954 48.813717, -0.378711 48.813906, -0.378413 48.813959, -0.378072 48.81397, -0.377707 48.813964, -0.377419 48.813998, -0.377256 48.814065, -0.377044 48.814084, -0.376701 48.814084, -0.376361 48.814071, -0.376031 48.814126, -0.375888 48.814195, -0.375726 48.814231, -0.375428 48.8143, -0.375129 48.814444, -0.374873 48.814582, -0.37459 48.814737, -0.374355 48.814904, -0.374168 48.815095, -0.37409 48.815155, -0.374105 48.815328, -0.374226 48.815544, -0.374361 48.815753, -0.374424 48.815975, -0.374454 48.8162, -0.374537 48.816435, -0.374636 48.81665, -0.374675 48.816763, -0.374627 48.816876, -0.374565 48.817103, -0.374415 48.817321, -0.374289 48.817514, -0.374197 48.817752, -0.374043 48.817953, -0.37395 48.818062, -0.37393 48.818179, -0.373996 48.818403, -0.374007 48.818518, -0.374108 48.818624, -0.37426 48.818809, -0.374404 48.819022, -0.374486 48.819135, -0.374525 48.819241, -0.374516 48.819469, -0.374526 48.81958, -0.374465 48.819705, -0.374304 48.819892, -0.37413 48.820094, -0.373942 48.820266, -0.373697 48.820279, -0.373476 48.820253, -0.373172 48.820124, -0.372855 48.820016, -0.372602 48.820187, -0.372362 48.82036, -0.372164 48.820547, -0.372035 48.820669, -0.372221 48.820775, -0.372513 48.820903, -0.372793 48.821053, -0.373081 48.821177, -0.373394 48.821289, -0.373514 48.821307, -0.373484 48.821521, -0.373401 48.821688, -0.373213 48.82187, -0.373028 48.821969, -0.372924 48.82208, -0.372859 48.822188, -0.372832 48.8223, -0.372756 48.822526, -0.372681 48.822633, -0.37252 48.822716, -0.372248 48.822859, -0.371981 48.823004, -0.371732 48.823143, -0.371836 48.823208, -0.372067 48.823377, -0.372303 48.82354, -0.372558 48.823702, -0.372794 48.823865, -0.373061 48.824007, -0.373246 48.824164, -0.373468 48.824363, -0.37365 48.824565, -0.373708 48.824694, -0.37371 48.82484, -0.37396 48.824977, -0.374242 48.825125, -0.374517 48.825249, -0.37481 48.825372, -0.37508 48.825515, -0.375373 48.825625, -0.375679 48.825744, -0.375952 48.82586, -0.37624 48.826004, -0.376505 48.826149, -0.3768 48.826274, -0.377085 48.826413, -0.377347 48.826525, -0.377631 48.826657, -0.37791 48.826792, -0.3782 48.826915, -0.378439 48.82705, -0.37857 48.827138, -0.378635 48.827244, -0.37875 48.827451, -0.378873 48.827663, -0.379015 48.827768, -0.379114 48.827856, -0.379414 48.827986, -0.379695 48.828106, -0.379928 48.828259, -0.380031 48.828384, -0.380307 48.828463, -0.380575 48.828365, -0.380698 48.828513, -0.380825 48.828614, -0.381007 48.828687, -0.380823 48.828934, -0.381072 48.82908, -0.381293 48.82915, -0.381517 48.829203, -0.381709 48.829381, -0.382001 48.829451, -0.381997 48.829596, -0.381931 48.829826, -0.381888 48.830057, -0.382088 48.830236)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'le-val-de-loire-et-les-trois-viaducs',
        'Le Val de Loire et les trois viaducs',
        'Petite randonnée le long de la Loire et dans le val puis à flanc de colline, dans les vignes du Sancerrois sur la trace de l''ancienne voie ferrée reliant Cosne-sur-Loire à Bourges.
Beaux points de vue sur le fleuve, les communes de Saint-Satur et Ménétréol, la ville de Sancerre, les vignes et le canal latéral.
À faire plutôt au printemps ou à l''automne.',
        ARRAY['/img/leVal1.webp','/img/leVal2.webp','/img/leVal3.webp'],
        'Moyenne',
        235,
        13.02,
        'Cher',
        'Départ sur le parking à la hauteur du 39 Quai de Loire Hervé Mhun à Saint-Satur au lieu-dit de Saint-Thibault.

(D/A) Dos à la Loire, démarrer à gauche au bout du quai par le GR®31, sur le circuit de la Loire à vélo.
Passer le petit pont sur la Vauvise et aller jusqu''au carrefour vers Ménétréol-sous-Sancerre.

(1) Prendre le chemin à gauche jusqu''au bord de la Loire. Tourner à droite vers la Pointe et faire 500 m sur un chemin empierré longeant le fleuve. Beau point de vue sur le méandre.

(2) Poursuivre le chemin et rejoindre le circuit de la Loire à vélo. Traverser et faire 700 m entre deux champs jusqu''à la Route de la Gargaude. La prendre à droite pendant 300 m jusqu''au carrefour des Aubelles

(3) Tourner à gauche dans l''allée de platanes sur le GR®31. Traverser de nouveau la Vauvise puis le canal et la route pour entrer dans le village de Ménétréol-sous-Sancerre. Monter dans le village par la Rue de l’Église sur 300 m et monter à gauche la Rue de la Chaume à Got pour rejoindre le tracé de l''ancienne voie ferrée Cosne-sur-Loire - Bourges.

(4) Suivre à droite l''ancienne voie ferrée jusqu''au viaduc de Ménétréol-sous-Sancerre, laisser le GR®31 à gauche et continuer tout droit. Franchir le viaduc ferroviaire métallique puis continuer sur la trace plus étroite de la voie ferrée jusqu''à l''ancienne gare de Sancerre au lieu-dit le Haut de Creux.

(5) Prendre tout droit la route et franchir le viaduc de Saint-Satur puis continuer jusqu''à l''ancienne gare. Traverser la Rue de la Gare et continuer par la piste cyclable (variante de la Loire à vélo) longeant l''ancienne voie ferrée, puis une vigne. Passer une butte et descendre la route pour passer à droite sous le pont de chemin de fer avant de traverser la route départementale D955 et le canal sur le Pont de la Cabarette.

(6) Prendre à gauche le chemin herbeux descendant sur la droite de la piste cyclable. À 500 m environ, traverser le ru sur la passerelle métallique et déboucher sur le golf du Sancerrois (trou N°13).

(7) Prendre le chemin (GR®31) à droite pour traverser le golf jusqu''à l''entrée à 800 m environ, puis continuer environ 100 m.

(8) Obliquer dans le champ à gauche le long de la haie pour rejoindre le bord de la Loire. Continuer à droite le long du fleuve et dépasser la piscine, puis la guinguette et le camping jusqu''au canal de jonction.

(9) Prendre l''escalier et franchir le canal par le pont au-dessus de la porte de l''écluse. (Attention ! danger. Ne pas passer par la porte de l''écluse). Continuer le long de la Loire sur le Quai Georges Simenon et traverser la Rue des Ponts. Continuer sur le Quai Hervé Mhun pour rejoindre le parking (D/A).
Points de passages

    D/A : km 0 - alt. 146 m - Parking Quai de Loire Hervé Mhu. Vers pont de la - Vauvise (rivière) - Affluent de la Loire
    1 : km 1.88 - alt. 145 m - Bifurcation à gauche
    2 : km 2.7 - alt. 145 m - La Pointe - Loire (fleuve)
    3 : km 3.96 - alt. 146 m - Carrefour des Aubelles
    4 : km 4.8 - alt. 180 m - Carrefour de la voie ferrée
    5 : km 6.54 - alt. 187 m - Ancienne gare de Sancerre
    6 : km 9.93 - alt. 148 m - Pont de la Cabarette - Canal latéral à la Loire
    7 : km 10.64 - alt. 146 m - Golf du Sancerrois
    8 : km 11.84 - alt. 146 m - Bifurcation 100 m avant la piscine
    9 : km 12.48 - alt. 146 m - Canal de jonction
    D/A : km 13.02 - alt. 146 m - Parking à la hauteur du 39 Quai de Loire Hervé Mhu

Informations pratiques

Soyez toujours prudent et prévoyant lors d''une randonnée. Visorando et l''auteur de cette fiche ne pourront pas être tenus responsables en cas d''accident survenu sur ce circuit.

Les balisages GR® et PR® sont la propriété intellectuelle de la Fédération Française de Randonnée Pédestre.
',
        ST_GeomFromText(
            'LINESTRING(2.865914 47.336432, 2.864104 47.335499, 2.863117 47.335121, 2.86254 47.334041, 2.862572 47.333082, 2.862916 47.332274, 2.863109 47.331685, 2.863073 47.331219, 2.863088 47.33099, 2.863092 47.330758, 2.863116 47.330528, 2.863137 47.330301, 2.86313 47.330072, 2.863157 47.329835, 2.863204 47.329612, 2.863269 47.329384, 2.863278 47.329159, 2.863327 47.328934, 2.863336 47.3287, 2.863335 47.32847, 2.863275 47.328247, 2.863059 47.328076, 2.862836 47.327897, 2.86249 47.327652, 2.862732 47.327507, 2.862907 47.327313, 2.863114 47.327127, 2.863291 47.326926, 2.863565 47.326789, 2.863843 47.326664, 2.864127 47.32653, 2.864377 47.326374, 2.864639 47.326229, 2.864909 47.326095, 2.865154 47.325929, 2.865414 47.325783, 2.865593 47.325593, 2.865759 47.325395, 2.865901 47.325188, 2.866061 47.324977, 2.8662 47.324765, 2.866338 47.324547, 2.866541 47.32436, 2.866696 47.324149, 2.866835 47.323938, 2.866936 47.323724, 2.867029 47.3235, 2.867133 47.323277, 2.867254 47.323057, 2.867338 47.322828, 2.867424 47.322597, 2.867545 47.322382, 2.867661 47.322082, 2.867993 47.32228, 2.868263 47.322418, 2.868519 47.322567, 2.868776 47.322721, 2.86903 47.322871, 2.869302 47.323001, 2.869567 47.323148, 2.869822 47.323296, 2.87009 47.323431, 2.870344 47.323592, 2.870623 47.323726, 2.870882 47.323869, 2.871083 47.32398, 2.871413 47.323687, 2.871593 47.323496, 2.871799 47.323315, 2.871988 47.323118, 2.872123 47.3229, 2.872297 47.322697, 2.8725 47.322511, 2.872673 47.322316, 2.872864 47.32212, 2.873007 47.321911, 2.873222 47.321729, 2.873404 47.321536, 2.873554 47.321328, 2.873704 47.321112, 2.873845 47.320905, 2.874002 47.320703, 2.874135 47.320496, 2.874267 47.320279, 2.874334 47.320277, 2.87407 47.320141, 2.873814 47.319992, 2.873525 47.31987, 2.873273 47.31972, 2.873007 47.31958, 2.872742 47.319439, 2.872469 47.319302, 2.87221 47.319152, 2.871941 47.31902, 2.871683 47.318873, 2.871416 47.318733, 2.871155 47.318584, 2.870897 47.318442, 2.870617 47.318314, 2.87037 47.318205, 2.870129 47.317995, 2.869823 47.317884, 2.869516 47.317782, 2.869196 47.317694, 2.868878 47.317608, 2.868557 47.317535, 2.868248 47.317444, 2.867941 47.317357, 2.86763 47.317275, 2.8673 47.317198, 2.866987 47.317115, 2.866667 47.317036, 2.866343 47.31696, 2.866034 47.316876, 2.86572 47.316803, 2.865399 47.316715, 2.865088 47.316624, 2.864776 47.316542, 2.864459 47.316463, 2.864143 47.316378, 2.863835 47.316287, 2.863513 47.316199, 2.863198 47.316106, 2.862854 47.316008, 2.862602 47.316208, 2.862394 47.316385, 2.862171 47.316559, 2.861984 47.316747, 2.861829 47.31695, 2.861671 47.31716, 2.861527 47.317373, 2.861419 47.317588, 2.861294 47.317799, 2.861185 47.318013, 2.861116 47.318085, 2.860521 47.318027, 2.86021 47.317994, 2.859807 47.317925, 2.859534 47.317885, 2.859121 47.317849, 2.858831 47.317816, 2.858563 47.31781, 2.858246 47.317735, 2.857908 47.317707, 2.857564 47.317677, 2.857224 47.317675, 2.856885 47.317692, 2.856554 47.317707, 2.856234 47.317634, 2.855894 47.317606, 2.85554 47.317577, 2.855239 47.317548, 2.854978 47.31745, 2.854763 47.317275, 2.854386 47.317024, 2.854456 47.316876, 2.854502 47.316647, 2.854566 47.316423, 2.854624 47.316197, 2.854646 47.315967, 2.854725 47.315741, 2.854883 47.315537, 2.855015 47.315322, 2.855065 47.315097, 2.855219 47.31489, 2.855412 47.314699, 2.855422 47.31447, 2.85525 47.31434, 2.855099 47.314543, 2.854919 47.314736, 2.854761 47.314934, 2.854601 47.315136, 2.85445 47.315345, 2.85431 47.315553, 2.854157 47.315762, 2.85401 47.315973, 2.853882 47.316181, 2.853801 47.316395, 2.853693 47.316602, 2.853585 47.316819, 2.853495 47.317038, 2.853404 47.317264, 2.853334 47.317493, 2.853271 47.317718, 2.853231 47.317942, 2.853189 47.318165, 2.853135 47.31839, 2.853106 47.31862, 2.853092 47.318853, 2.853088 47.319085, 2.853096 47.319315, 2.853085 47.319544, 2.8531 47.319769, 2.8531 47.320003, 2.853081 47.320228, 2.853072 47.320455, 2.853036 47.320683, 2.852987 47.320915, 2.852971 47.321141, 2.852928 47.321368, 2.85286 47.321592, 2.852924 47.321818, 2.852886 47.322052, 2.852864 47.322277, 2.852778 47.322495, 2.852754 47.32273, 2.852769 47.322961, 2.85273 47.323191, 2.852688 47.323422, 2.852658 47.323648, 2.8526 47.323874, 2.85255 47.324099, 2.852511 47.324327, 2.852484 47.324553, 2.852449 47.324787, 2.852411 47.325016, 2.852398 47.325252, 2.852361 47.325484, 2.852342 47.325712, 2.852338 47.325944, 2.852313 47.326177, 2.852297 47.326411, 2.852277 47.326647, 2.852363 47.326871, 2.852417 47.327098, 2.852418 47.327326, 2.852428 47.327555, 2.852418 47.327787, 2.852435 47.328013, 2.852445 47.328244, 2.852458 47.328472, 2.852493 47.328702, 2.852511 47.328932, 2.852412 47.329053, 2.851888 47.329111, 2.851511 47.329209, 2.851897 47.329395, 2.851939 47.329641, 2.851951 47.329876, 2.851978 47.330102, 2.852009 47.33033, 2.852045 47.330554, 2.852037 47.330788, 2.852051 47.331019, 2.852079 47.331251, 2.852108 47.331481, 2.852137 47.331706, 2.852108 47.331933, 2.852077 47.332163, 2.851963 47.332382, 2.851847 47.332608, 2.851685 47.332806, 2.851467 47.332989, 2.851246 47.333157, 2.851019 47.333334, 2.850815 47.333512, 2.850595 47.333689, 2.850362 47.333848, 2.85011 47.334006, 2.849874 47.334178, 2.849645 47.334343, 2.849431 47.334522, 2.84919 47.334691, 2.849017 47.334884, 2.848807 47.335065, 2.848643 47.335272, 2.848471 47.335474, 2.848338 47.335683, 2.848204 47.335888, 2.848077 47.336098, 2.847981 47.336315, 2.847893 47.336538, 2.847805 47.336759, 2.847769 47.33699, 2.84773 47.337223, 2.84771 47.33745, 2.847714 47.337681, 2.847768 47.337905, 2.847838 47.338131, 2.847876 47.338356, 2.847939 47.338582, 2.848052 47.338806, 2.848134 47.339025, 2.848248 47.339244, 2.848381 47.339458, 2.848495 47.339676, 2.84867 47.339871, 2.848863 47.340061, 2.849076 47.340246, 2.849289 47.340422, 2.849508 47.340592, 2.849748 47.340761, 2.849994 47.340921, 2.850247 47.341074, 2.850521 47.341211, 2.850796 47.341343, 2.851086 47.341461, 2.851368 47.341582, 2.851659 47.341701, 2.851959 47.341816, 2.852235 47.341946, 2.852517 47.342076, 2.852796 47.342197, 2.853044 47.342354, 2.853293 47.342502, 2.853528 47.342671, 2.853749 47.342843, 2.853959 47.343027, 2.854043 47.343202, 2.854283 47.343416, 2.854455 47.343617, 2.85463 47.343814, 2.85477 47.344022, 2.854886 47.344238, 2.854991 47.34446, 2.855112 47.344673, 2.855217 47.344888, 2.855244 47.345119, 2.855274 47.345355, 2.855281 47.345588, 2.855285 47.345814, 2.855288 47.346044, 2.855334 47.346276, 2.855342 47.346513, 2.85533 47.346745, 2.855343 47.346974, 2.85534 47.347207, 2.85538 47.347438, 2.85542 47.347666, 2.855477 47.347897, 2.855523 47.348126, 2.855528 47.348355, 2.855605 47.348575, 2.855743 47.348788, 2.85582 47.349011, 2.855944 47.349226, 2.856109 47.349429, 2.856264 47.349634, 2.856407 47.349847, 2.856543 47.350057, 2.856784 47.350213, 2.857069 47.350339, 2.857289 47.350508, 2.857534 47.35067, 2.857785 47.350827, 2.858062 47.350967, 2.85834 47.351107, 2.858624 47.351241, 2.858903 47.351377, 2.85918 47.351502, 2.859473 47.351627, 2.859757 47.351745, 2.860042 47.35187, 2.860344 47.351972, 2.860681 47.352022, 2.860979 47.352135, 2.861288 47.352231, 2.861554 47.352371, 2.861767 47.352551, 2.862159 47.352747, 2.862308 47.352636, 2.862563 47.352487, 2.862898 47.352419, 2.863199 47.352313, 2.863437 47.352154, 2.863828 47.351958, 2.864029 47.352146, 2.864251 47.352314, 2.864495 47.352468, 2.864726 47.35263, 2.864966 47.352792, 2.865195 47.352961, 2.865406 47.353144, 2.865691 47.353268, 2.865964 47.353411, 2.866239 47.353552, 2.866506 47.353695, 2.866755 47.353854, 2.867008 47.354016, 2.867183 47.354213, 2.867336 47.354414, 2.867429 47.354637, 2.867538 47.354854, 2.867671 47.355068, 2.867762 47.355288, 2.867888 47.355505, 2.868039 47.355707, 2.868164 47.355916, 2.868302 47.356167, 2.868559 47.356217, 2.868892 47.356225, 2.869246 47.356257, 2.869804 47.356239, 2.869777 47.356083, 2.869748 47.355895, 2.869665 47.355674, 2.869519 47.35544, 2.869444 47.3552, 2.869407 47.354978, 2.869439 47.354749, 2.869476 47.354535, 2.869468 47.354307, 2.869472 47.354077, 2.869498 47.353848, 2.86945 47.353597, 2.869283 47.353427, 2.869157 47.35321, 2.868949 47.353032, 2.86875 47.352844, 2.868557 47.35265, 2.868356 47.35247, 2.868122 47.352302, 2.867969 47.3521, 2.867838 47.351883, 2.867714 47.351665, 2.867608 47.35145, 2.86755 47.351212, 2.867501 47.350981, 2.867545 47.350758, 2.867659 47.350538, 2.867817 47.350332, 2.867851 47.350096, 2.867816 47.349869, 2.867774 47.349642, 2.867703 47.349417, 2.867659 47.349194, 2.867575 47.348975, 2.867455 47.348758, 2.867439 47.348527, 2.86737 47.348294, 2.867325 47.348058, 2.867302 47.347842, 2.867157 47.347626, 2.867145 47.347386, 2.867097 47.347157, 2.866987 47.346932, 2.86696 47.346713, 2.866934 47.346475, 2.866839 47.346247, 2.86678 47.346023, 2.867054 47.345892, 2.867357 47.345828, 2.867851 47.345772, 2.867863 47.345599, 2.867844 47.345364, 2.867858 47.345135, 2.867802 47.344905, 2.867803 47.344675, 2.867744 47.344445, 2.867691 47.344218, 2.867697 47.343991, 2.867725 47.343761, 2.867651 47.343696, 2.867641 47.343466, 2.867548 47.343248, 2.867488 47.34302, 2.867487 47.342787, 2.867489 47.342552, 2.867435 47.342329, 2.867396 47.342097, 2.867408 47.341871, 2.867298 47.341657, 2.867095 47.341466, 2.866844 47.341308, 2.866369 47.341067, 2.866493 47.340943, 2.866681 47.340729, 2.866714 47.340494, 2.86664 47.340273, 2.866608 47.340047, 2.866598 47.339819, 2.866647 47.339594, 2.866714 47.339372, 2.866723 47.339144, 2.866729 47.33891, 2.866688 47.338686, 2.866647 47.338457, 2.866618 47.338227, 2.86659 47.338001, 2.866598 47.337775, 2.866587 47.337546, 2.866517 47.33732, 2.866127 47.336741, 2.865901 47.336439)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'les-caisses-et-les-cretes-au-dessus-de-mouries',
        'Les Caisses et les crêtes au-dessus de Mouriès',
        'Jolie randonnée dans cette partie des Alpilles qui permet de découvrir les falaises blanches des "Caisses de Jean Jean", les "Caisses de Servanne", les crêtes du Castellas et ses points de vue, et aussi de longer le Golf de Servanne à Mouriès. Randonnée sans difficulté mais quelques passages sur petites routes goudronnées.',
        ARRAY['/img/lesCaisses1.webp','/img/lesCaisses2.webp','/img/lesCaisses3.webp'],
        'Moyenne',
        230,
        11.80,
        'Bouches-du-Rhône',
        'Départ du parking du Castellas (parking du Pin de la Fée) sur la D24 route de Eygalières, 2 km environ au Nord de Mouriès.

(D/A) Du parking, prendre à gauche la route d''Eygalières (D24) et longer cette route goudronnée sur 500 m.

(1) Au bout de la ligne droite (panneau Caisses de Jean Jean Sud), prendre la route en terre dans le prolongement et, qui va peu de temps après, longer une partie du golf.

(2) Au bout de 500 m, vous allez trouver un chemin fléché à gauche et un autre à droite. Il faut les laisser et continuer tout droit.

(3) 400 m après on se rapproche des petites falaises qui sont sur la gauche et dans un élargissement qui sert parfois de petit parking, prendre à gauche, à 90° un sentier non balisé, pas très bien marqué qui grimpe sur les crêtes (un pin un peu plus isolé que les autres sert de repère). Grimper à travers la colline (on a alors le début des falaises sur sa droite), le petit entier porte quelques marques bleues, et 500 m plus loin, atteindre un petit plat (petite borne N°10 avec plaque céramique bleue) et au pied des falaises blanches dites des "Caisses de Jean Jean". Continuer le sentier en descendant (remarquer un immense pied de lierre en forme de cœur). On peut retrouver l''oppidum des caisses de Jean-Jean (VIe - 1er siècle) classé Monument historique en 1937, avec des vestiges de maisons et un rempart). Il faut longer les "Caisses de Jean Jean" pendant 1,8 km environ. Le sentier devient chemin de terre qu''il faut suivre jusqu''à un chemin départemental goudronné. Bifurquer à gauche et rejoindre une petite route goudronnée 200 m plus loin environ.

(4) Prendre tout de suite à droite, entre deux pierres et sur une trace de canal la petite route goudronnée, direction Le Cagalou, la Herrero, le Gour Blanc, qui traverse de belles oliveraies. La suivre pendant 800 m. On peut d''ailleurs marcher sur le bas côté de la route pour éviter le goudron. On aperçoit au bout d''un moment le canal sur la gauche. Longer ce dernier et passer devant une armoire à haute tension à main droite.

(5) Juste après, tourner à droite sur le chemin direction Le Cagalou. Suivre ce chemin pendant 1,5 km. Longer, à un moment, un mur en pierres d''une grande maison, passer devant le Cagalou et on revient au départ de la boucle en retrouvant le sentier montant qui avait permis d''accéder aux crêtes et aux falaises de Jean Jean.

(3) Ne pas remonter et continuer sur 200 m environ.

(2) Au croisement des chemins, prendre à droite celui qui borde le golf (passage canadien) et qui permet de longer par le bas et, d''un peu plus loin, les "Caisses de Jean Jean" versant Sud que l''on a sur notre droite (on peut faire une halte à la source de l''Olivier "dite l''eau de Marius qui la plaque est présente"). Suivre ce chemin en allant tout droit sur 1,9 km environ et rejoindre une route goudronnée.

(6) Prendre à gauche et suivre cette route sur 400 m en ligne droite.

(7) Sur cette route, dans le premier virage, prendre à gauche une petite sente qui permet de longer la route tout en marchant dans la garrigue assez touffue au départ puis entre des oliviers. rester en dessous de la route sans y remonter jusqu''à, 600 m plus loin, passer devant le portail d''entrée du Château de Servanne. Reprendre alors la route sur 300 m environ.

(8) Tout juste avant le premier virage, prendre sur la gauche (un ou deux blocs de pierre ou de béton servent de repères) un sentier qui permet de rejoindre la colline. Après une courte montée, retrouver assez vite un chemin que l''on prend sur la gauche et qui va passer au bas de la citerne réserve d''eau.

Continuer ce chemin (ne pas suivre un double balisage Jaune sur un pin qui indique de tourner à gauche et qui permet de retrouver le sentier que l''on va suivre ultérieurement). Donc, aller tout droit et rester sur ce chemin pendant 500 m environ. On aperçoit alors un sentier de pierres qui, sur la gauche, va permettre de monter rapidement (un peu raide) sur les crêtes du Castellas.

(9) Sur les crêtes, prendre à droite vers l''Est, (on retrouve le balisage Jaune). Suivre le sentier des crêtes (1,2 km) puis le chemin à gauche qui permet en descente de rejoindre facilement le parking (D/A).
Points de passages

    D/A : km 0 - alt. 39 m - Parking du Castellas
    1 : km 0.53 - alt. 47 m - En face. Quitter la route
    2 : km 1.09 - alt. 55 m - Bifurcation commune A/R
    3 : km 1.49 - alt. 64 m - Bifurcation commune A/R
    4 : km 3.66 - alt. 64 m - À droite après le - Gaudre de Malaga (rivière) - Affluent du canal de la Vallée des Baux
    5 : km 4.48 - alt. 79 m - À droite. Armoire à haute tension
    6 : km 8.76 - alt. 57 m - À gauche. Route goudronnée
    7 : km 9.13 - alt. 51 m - À gauche. Sente
    8 : km 9.91 - alt. 39 m - À gauche. Blocs de pierre ou de béton
    9 : km 10.49 - alt. 82 m - À droite. Les crêtes
    D/A : km 11.8 - alt. 40 m - Parking du Castellas

Informations pratiques

Point d''eau à la source de l''Olivier sur la partie qui longe le golf.
',
        ST_GeomFromText(
            'LINESTRING(4.882828 43.698586, 4.883096 43.698625, 4.883322 43.69871, 4.883772 43.700634, 4.884019 43.703062, 4.883622 43.705001, 4.883418 43.705156, 4.88329 43.705334, 4.883107 43.706443, 4.883075 43.707103, 4.883214 43.707801, 4.88329 43.707917, 4.883622 43.708212, 4.884298 43.708724, 4.885146 43.709631, 4.885639 43.710065, 4.886143 43.710608, 4.886143 43.710662, 4.885907 43.710639, 4.885575 43.710585, 4.885264 43.7106, 4.884384 43.710624, 4.883322 43.710562, 4.882742 43.710577, 4.88226 43.710686, 4.881959 43.710686, 4.881788 43.710833, 4.881562 43.710973, 4.881294 43.711089, 4.881069 43.711166, 4.880833 43.711171, 4.880704 43.711136, 4.880586 43.71112, 4.880409 43.711116, 4.880307 43.711097, 4.88021 43.711093, 4.880092 43.711085, 4.880007 43.711097, 4.87984 43.711101, 4.879577 43.711097, 4.879406 43.711089, 4.879298 43.71107, 4.879127 43.71107, 4.878982 43.711097, 4.878869 43.711132, 4.878708 43.71112, 4.878451 43.711143, 4.878193 43.711171, 4.877855 43.711217, 4.877684 43.711252, 4.877512 43.711264, 4.87734 43.711271, 4.877088 43.711298, 4.877045 43.711298, 4.876209 43.711388, 4.875978 43.711434, 4.875801 43.711488, 4.875624 43.711535, 4.875302 43.711582, 4.874991 43.711647, 4.874814 43.711663, 4.87468 43.71169, 4.874417 43.711694, 4.873939 43.711764, 4.873752 43.711772, 4.873403 43.711779, 4.873108 43.711779, 4.872899 43.711772, 4.872577 43.711764, 4.872319 43.711717, 4.871874 43.71162, 4.871826 43.711566, 4.87159 43.711426, 4.871305 43.711333, 4.871005 43.711244, 4.870656 43.711116, 4.870383 43.711039, 4.870168 43.711015, 4.869868 43.710829, 4.869653 43.710756, 4.869299 43.710659, 4.86902 43.710597, 4.868843 43.710569, 4.8688 43.71055, 4.868387 43.710484, 4.868098 43.710461, 4.867781 43.710484, 4.867534 43.710438, 4.86733 43.710379, 4.866955 43.710341, 4.866563 43.710317, 4.8663 43.710329, 4.865914 43.710314, 4.865442 43.710275, 4.865276 43.710267, 4.865115 43.710314, 4.864477 43.710442, 4.864257 43.71048, 4.864117 43.710484, 4.863742 43.710461, 4.863538 43.710476, 4.862814 43.710538, 4.862567 43.710631, 4.86247 43.710647, 4.862073 43.710531, 4.861708 43.710422, 4.861397 43.710399, 4.861065 43.71043, 4.860818 43.710492, 4.860528 43.710538, 4.860453 43.710538, 4.860271 43.710507, 4.860003 43.710461, 4.859992 43.710585, 4.860711 43.712609, 4.861118 43.712741, 4.86335 43.713633, 4.863436 43.713811, 4.863726 43.713997, 4.865077 43.714601, 4.865549 43.714912, 4.865738 43.715137, 4.865932 43.715388, 4.866218 43.715543, 4.866402 43.71561, 4.866688 43.71558, 4.866984 43.715499, 4.867332 43.715528, 4.86773 43.715255, 4.868047 43.715026, 4.868384 43.714819, 4.868783 43.715026, 4.86912 43.715167, 4.869985 43.715346, 4.870772 43.715457, 4.870946 43.715671, 4.871161 43.716011, 4.871242 43.716351, 4.871304 43.716506, 4.871406 43.716624, 4.871631 43.716683, 4.872049 43.716668, 4.87349 43.716705, 4.874052 43.716705, 4.874315 43.716742, 4.874599 43.71668, 4.874808 43.716603, 4.874975 43.716599, 4.875549 43.716521, 4.875876 43.716475, 4.876337 43.716331, 4.878665 43.715882, 4.87873 43.715889, 4.880184 43.715234, 4.881267 43.714687, 4.881648 43.71449, 4.881906 43.714358, 4.882131 43.714187, 4.882297 43.713978, 4.882485 43.713722, 4.882614 43.713582, 4.883509 43.712741, 4.883912 43.712543, 4.885827 43.712027, 4.885999 43.71176, 4.88616 43.711473, 4.886444 43.71112, 4.886192 43.710647, 4.885993 43.710407, 4.885848 43.710252, 4.885403 43.709825, 4.885022 43.709561, 4.884454 43.708879, 4.88374 43.708332, 4.883257 43.707909, 4.883011 43.70784, 4.882319 43.707781, 4.880328 43.707747, 4.879636 43.707762, 4.878977 43.707832, 4.878472 43.70789, 4.877694 43.707847, 4.876922 43.707778, 4.876096 43.707692, 4.875409 43.707669, 4.874647 43.70765, 4.874079 43.707735, 4.873773 43.707816, 4.873322 43.707937, 4.872958 43.707991, 4.872636 43.708076, 4.872201 43.708173, 4.871391 43.708324, 4.870941 43.708433, 4.870485 43.708541, 4.870308 43.708557, 4.869551 43.708495, 4.869117 43.708468, 4.868902 43.708452, 4.867357 43.70827, 4.86571 43.708068, 4.865635 43.708022, 4.865469 43.708084, 4.864745 43.708099, 4.863838 43.708146, 4.862856 43.708208, 4.862234 43.708309, 4.861548 43.708452, 4.860775 43.708611, 4.860754 43.708638, 4.86011 43.706812, 4.859659 43.705676, 4.859654 43.70549, 4.859756 43.705462, 4.859772 43.705358, 4.859965 43.705179, 4.859997 43.704985, 4.860105 43.704784, 4.860137 43.704644, 4.860319 43.704582, 4.860464 43.704524, 4.860582 43.704497, 4.860641 43.70445, 4.860818 43.704443, 4.860936 43.704388, 4.861059 43.704361, 4.861215 43.704268, 4.861354 43.704179, 4.861371 43.704121, 4.86143 43.704047, 4.861569 43.703892, 4.861719 43.703795, 4.861853 43.703729, 4.8618 43.703838, 4.861875 43.703779, 4.861923 43.703702, 4.861971 43.703527, 4.862116 43.703361, 4.862143 43.703132, 4.862309 43.703027, 4.863173 43.702678, 4.863506 43.702472, 4.863709 43.702224, 4.864133 43.701809, 4.864257 43.701526, 4.864321 43.701321, 4.864391 43.7011, 4.864423 43.701057, 4.864498 43.700289, 4.864654 43.70027, 4.864879 43.700289, 4.865351 43.700363, 4.865614 43.700405, 4.865903 43.700402, 4.866064 43.700413, 4.866113 43.70039, 4.86615 43.70046, 4.86615 43.700565, 4.866177 43.700665, 4.866268 43.70071, 4.866327 43.700759, 4.86644 43.700834, 4.866504 43.700879, 4.866596 43.700976, 4.866708 43.701026, 4.866778 43.701061, 4.866901 43.701139, 4.866987 43.70117, 4.867041 43.701189, 4.867089 43.701197, 4.867159 43.70122, 4.867196 43.701139, 4.867282 43.701022, 4.867357 43.70098, 4.867422 43.700972, 4.867481 43.700984, 4.867545 43.700999, 4.867583 43.701019, 4.867626 43.701053, 4.867706 43.701065, 4.867862 43.701112, 4.867969 43.701042, 4.868103 43.700968, 4.868216 43.700922, 4.868414 43.700865, 4.868629 43.700896, 4.868741 43.70098, 4.868757 43.701158, 4.868714 43.701305, 4.868714 43.701476, 4.868757 43.701825, 4.868704 43.70205, 4.868768 43.702243, 4.86894 43.702306, 4.869433 43.702259, 4.870292 43.702143, 4.870817 43.702104, 4.871622 43.702011, 4.871912 43.701832, 4.872094 43.701801, 4.87233 43.701809, 4.872512 43.701825, 4.873199 43.701817, 4.873392 43.701732, 4.873757 43.701615, 4.874476 43.701631, 4.874851 43.701623, 4.87527 43.701654, 4.875398 43.701794, 4.875635 43.701763, 4.875881 43.701747, 4.876171 43.701607, 4.876493 43.701507, 4.876943 43.701421, 4.87704 43.701344, 4.877383 43.701204, 4.877694 43.701103, 4.877802 43.701065, 4.87807 43.700995, 4.878617 43.700754, 4.879261 43.700529, 4.879475 43.70046, 4.879926 43.700266, 4.879894 43.700079, 4.879969 43.699994, 4.880033 43.699823, 4.880098 43.699715, 4.88028 43.699684, 4.88043 43.699591, 4.880645 43.699513, 4.880645 43.699459, 4.880656 43.699405, 4.881063 43.699412, 4.881267 43.699249, 4.881439 43.699094, 4.88205 43.698924, 4.882179 43.698753, 4.882372 43.698598, 4.88263 43.698505, 4.882748 43.698613, 4.882834 43.698691)',
            4326
        )
    );



INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'les-suquets-de-penne',
        'Les Suquets de Penne',
        'Du village-rocher de Penne, le circuit promènera le randonneur jusqu''au belvédère des Suquets.
Paysages de campagne et forêts se partagent dans les multiples facettes du décor de falaises calcaires.
De fortes montées et descentes feront la joie des sportifs.
La fin du parcours se déroulera, tranquillement, le long de l''Aveyron avant un dernier, court, rampaillou au pied du village.',
        ARRAY['/img/lesSuquets1.webp','/img/lesSuquets2.webp','/img/lesSuquets3.webp'],
        'Moyenne',
        205,
        9.22,
        'Tarn',
        'Se garer sur le Parking de la Salle des Fêtes.

Le circuit sera balisé en Jaune. Par tronçons intermittents, le PR® se superposera avec le GRP® Cordes-Penne-Coustous, balisé Rouge Jaune et avec le GR®46, balisé Rouge Blanc.

(D/A) Sur la D133 avec le dos à la mairie et le parking à main droite, avancer vers la Salle des Fêtes et la dépasser. Au carrefour en Y, rester sur la route en abandonnant le GRP® qui court à droite. Laisser aussi un second sentier partant à droite.
Passer devant un calvaire. À la sortie de la courbe, détecter une sente à gauche.

(1) Virer fortement dans cette sente. Tout de suite après, virer fortement à droite. La sente descend en creux, passe par une chicane et deux petits ponts de bois.
Elle remonte sur la route à son extrémité. Aller à gauche vers le carrefour en T, croisement avec la D33. Bifurquer à droite en direction de Roussel, sans toutefois s''y rendre.

(2) Ici, devant le panneau "Les Suquets", à la cote 169, s''engouffrer dans le chemin à gauche. Le chemin devient sentier dans le bois avant d''aboutir sur la route de Roussergue.

À la route, poursuivre paisiblement, plein Nord, pour atteindre le village. Entrer dans Roussergue (la sortie se fera à gauche de l''église).

(3) Devant l’église, filer dans le chemin à gauche. À la fourche, descendre dans la branche de gauche. Franchir le Bombic, contourner la ferme et arriver sur la route de Janoye, D9. Cheminer à gauche sur environ 100 m pour détecter une sente, en épingle serrée, à droite.

(4) Gravir ce fort rampaillou, par quelques marches. Zigzaguer jusqu''à la Grotte de la Pyramide. Accéder plus haut à une charmante fontaine.

(5) Après s''être rafraîchi à la fontaine, reprendre la montée. Cette dernière s''aplanit vers le croisement en T.

(6) Au croisement, suivre le chemin à gauche. Rencontrer le GRP®Cordes-Penne-Coustous à quelques mètres. Le tracé du GRP® sur la carte IGN est erroné à cet endroit.
Suivre la courbe à gauche.

Le sentier balisé Rouge Jaune se dessine, joliment, jusqu''à une petite clairière orné d''un cairn imposant en son centre, devant le belvédère des Suquets.

(7) Prendre le temps d''admirer le point de vue puis, dos au belvédère, poursuivre le sentier, en face et à gauche du cairn.

La descente emprunte une large piste empierrée. Passer deux épingles, successives et relativement rapprochées, sous Pech Grignal. Joindre le GR®46 à une fourche inversée.

À la fourche, virer fortement à gauche sur le GR®46. Dans le virage suivant, continuer à descendre, à droite, vers Amiel. Dans le hameau et à la fourche, pencher à gauche. Descendre jusqu''à la D115 et la traverser, prudemment, en se dirigeant vers la gauche.

(8) S''engager dans la large piste à droite. Longer l''Aveyron. La large piste revient vers la D115. De nouveau, la traverser, prudemment.
Poursuivre, en face, sur la D9 sur environ 200 m. Franchir un pont dans cet intervalle. Arriver au carrefour en T devant les bâtisses de Granier.

(9) Quitter la D9. Tourner à droite et traverser un deuxième pont.
Conserver la droite pour emprunter la Route de Roudoulié, parallèlement à la D115. Dépasser la gare désaffectée et la fromagerie. Gagner une sente à gauche après une large courbe de la route.

(10) Virer dans le rampaillou qui dessert le village. Les dernières marches marquent la fin de la montée. Déboucher sur la rue principale. Tourner à gauche.
Passer devant le bar la Terrasse. À la fourche, filer à droite pour dépasser la mairie et retrouver le parking de la Salle des Fêtes (A/D).
Points de passages

    D/A : km 0 - alt. 175 m - Parking de la Salle des Fêtes
    1 : km 0.6 - alt. 179 m - Virage dans sente à gauche
    2 : km 1.33 - alt. 174 m - Bifurcation à gauche
    3 : km 2.61 - alt. 187 m - Église de Roussergue
    4 : km 3.29 - alt. 163 m - Janoye
    5 : km 3.87 - alt. 274 m - Fontaine
    6 : km 4.18 - alt. 288 m - Croisement en T
    7 : km 4.96 - alt. 279 m - Promontoire des Suquets - Les Suquets
    8 : km 6.75 - alt. 121 m - D115, large piste à droite
    9 : km 7.81 - alt. 120 m - Carrefour en T (pont)
    10 : km 8.77 - alt. 129 m - Virage dans rampaillou
    D/A : km 9.22 - alt. 175 m - Parking de la Salle des Fêtes

Informations pratiques

Point d''eau et toilettes à Penne.
Fontaine au point (5), eau non potable mais rafraîchissante en saison estivale.',
        ST_GeomFromText(
            'LINESTRING(1.733168 44.075728, 1.733447 44.075744, 1.733677 44.075652, 1.733887 44.075532, 1.734081 44.075419, 1.734261 44.075283, 1.734422 44.07514, 1.734602 44.074998, 1.734791 44.074855, 1.735006 44.074771, 1.735267 44.074745, 1.735518 44.074726, 1.735797 44.074706, 1.736066 44.0747, 1.736318 44.074674, 1.736569 44.074648, 1.736821 44.074648, 1.737099 44.074622, 1.737223 44.07462, 1.737367 44.074627, 1.737593 44.074745, 1.7378 44.074907, 1.737953 44.075056, 1.738141 44.075179, 1.738294 44.075322, 1.738483 44.075477, 1.738734 44.075535, 1.73888 44.075552, 1.739004 44.075535, 1.739255 44.07549, 1.739453 44.075354, 1.739523 44.075287, 1.739529 44.075352, 1.739539 44.075406, 1.739593 44.075337, 1.739636 44.075294, 1.7397 44.075348, 1.739781 44.075391, 1.739867 44.075364, 1.739985 44.075348, 1.74007 44.075356, 1.740172 44.07536, 1.740242 44.075364, 1.740339 44.075371, 1.74043 44.075371, 1.740521 44.075429, 1.740607 44.075464, 1.740709 44.075498, 1.740822 44.075498, 1.740902 44.075495, 1.74095 44.075545, 1.74102 44.075595, 1.7411 44.075587, 1.741202 44.075564, 1.741294 44.075545, 1.741422 44.075552, 1.741535 44.075514, 1.741637 44.075502, 1.741717 44.075468, 1.741835 44.075429, 1.741953 44.075429, 1.742018 44.075371, 1.742093 44.075356, 1.742227 44.075325, 1.742383 44.075313, 1.742436 44.075344, 1.742468 44.075429, 1.742517 44.075525, 1.742577 44.07564, 1.742696 44.075607, 1.742946 44.075579, 1.74323 44.075541, 1.743493 44.075506, 1.743734 44.07546, 1.743933 44.075425, 1.744094 44.075402, 1.744286 44.075367, 1.744537 44.075309, 1.744789 44.075244, 1.745049 44.075199, 1.745292 44.075114, 1.745408 44.075086, 1.74558 44.075028, 1.745773 44.07492, 1.745966 44.074809, 1.746175 44.074689, 1.746368 44.074624, 1.746481 44.074566, 1.746642 44.07452, 1.746878 44.074473, 1.747017 44.074446, 1.747178 44.074441, 1.747302 44.074423, 1.747383 44.074408, 1.747378 44.07456, 1.747268 44.074752, 1.747178 44.074933, 1.747071 44.075108, 1.746936 44.075263, 1.746729 44.075393, 1.746505 44.075471, 1.7463 44.07557, 1.746064 44.075645, 1.745849 44.075749, 1.745586 44.075849, 1.745372 44.075948, 1.745141 44.076029, 1.745007 44.076168, 1.744948 44.076295, 1.744943 44.076403, 1.74505 44.076561, 1.744986 44.076688, 1.744959 44.076869, 1.744941 44.077071, 1.744936 44.07726, 1.744893 44.077422, 1.744845 44.077603, 1.74478 44.077808, 1.744716 44.078011, 1.744646 44.078158, 1.744496 44.078335, 1.744322 44.078482, 1.744148 44.078601, 1.744089 44.078701, 1.74404 44.078809, 1.743989 44.078974, 1.743971 44.079162, 1.743945 44.079339, 1.743926 44.079544, 1.743917 44.079751, 1.743902 44.079971, 1.74387 44.080168, 1.74387 44.08033, 1.743838 44.080522, 1.743837 44.08071, 1.743864 44.080904, 1.743917 44.081079, 1.743989 44.081266, 1.744034 44.081454, 1.744079 44.081629, 1.74407 44.081836, 1.744061 44.082018, 1.744062 44.082211, 1.744025 44.082393, 1.744041 44.082601, 1.744041 44.082766, 1.744034 44.082969, 1.744047 44.08317, 1.744047 44.083362, 1.744058 44.083559, 1.744078 44.083645, 1.744095 44.083728, 1.744169 44.083784, 1.744288 44.083867, 1.74439 44.083944, 1.744485 44.084027, 1.744591 44.08409, 1.744727 44.084235, 1.744802 44.084327, 1.744927 44.084376, 1.745011 44.08442, 1.745097 44.084435, 1.745152 44.084464, 1.745216 44.08455, 1.745247 44.08462, 1.74527 44.084719, 1.745323 44.084809, 1.745404 44.084827, 1.745548 44.084817, 1.745662 44.084773, 1.745779 44.084766, 1.745887 44.084784, 1.745934 44.084863, 1.746014 44.084932, 1.746127 44.084971, 1.746245 44.085005, 1.746429 44.085062, 1.746567 44.085106, 1.746712 44.085136, 1.746819 44.085126, 1.746932 44.085098, 1.747053 44.085029, 1.747152 44.085052, 1.747277 44.085087, 1.747409 44.085102, 1.747511 44.085158, 1.747592 44.085229, 1.74769 44.085307, 1.747774 44.085352, 1.747906 44.085398, 1.74801 44.085452, 1.748113 44.085508, 1.74823 44.085545, 1.748346 44.085553, 1.748466 44.085583, 1.74858 44.085598, 1.748713 44.085625, 1.748822 44.08567, 1.748938 44.085679, 1.749083 44.085702, 1.749099 44.085784, 1.74911 44.085861, 1.749174 44.085984, 1.749217 44.086071, 1.749233 44.086142, 1.749265 44.086204, 1.749313 44.086265, 1.749329 44.086331, 1.749378 44.086427, 1.749424 44.086498, 1.74949 44.086527, 1.749539 44.086535, 1.749582 44.086585, 1.749608 44.086639, 1.749619 44.086716, 1.749514 44.086731, 1.749405 44.086735, 1.749244 44.086738, 1.748993 44.086744, 1.748741 44.086764, 1.748477 44.086781, 1.748257 44.086801, 1.747984 44.086801, 1.747839 44.086801, 1.747726 44.086796, 1.747607 44.086797, 1.747516 44.086797, 1.747512 44.086857, 1.747681 44.086952, 1.747689 44.087024, 1.747592 44.087074, 1.747721 44.087082, 1.747861 44.087055, 1.747812 44.087097, 1.747791 44.087155, 1.747914 44.087144, 1.748041 44.087185, 1.748032 44.087232, 1.74801 44.087282, 1.74793 44.087329, 1.748043 44.087356, 1.748187 44.087386, 1.748064 44.087433, 1.747996 44.087489, 1.747887 44.087502, 1.747771 44.087547, 1.747561 44.087593, 1.747411 44.087636, 1.747196 44.087639, 1.746928 44.087643, 1.746657 44.08769, 1.746397 44.087638, 1.746155 44.087682, 1.745925 44.087751, 1.745646 44.087794, 1.74541 44.087805, 1.745168 44.087759, 1.744911 44.087767, 1.744712 44.087709, 1.744572 44.087664, 1.744448 44.087679, 1.744169 44.087638, 1.7441 44.08761, 1.744014 44.087602, 1.74395 44.087652, 1.743917 44.087691, 1.743828 44.087755, 1.743697 44.087872, 1.743622 44.087907, 1.743584 44.08793, 1.743553 44.08798, 1.743621 44.088033, 1.743622 44.088088, 1.743563 44.088118, 1.743488 44.088165, 1.743488 44.088254, 1.743557 44.08825, 1.743643 44.08825, 1.743767 44.088284, 1.743901 44.088311, 1.743992 44.088327, 1.744164 44.088358, 1.744319 44.088385, 1.744459 44.088423, 1.744587 44.088458, 1.744727 44.088496, 1.744845 44.088554, 1.744952 44.088604, 1.745113 44.08865, 1.745285 44.088681, 1.745435 44.088697, 1.745585 44.08872, 1.745725 44.088751, 1.745886 44.08877, 1.74602 44.088797, 1.746213 44.088828, 1.74639 44.088843, 1.746497 44.088847, 1.74661 44.088862, 1.746744 44.088862, 1.746835 44.088855, 1.74691 44.088835, 1.747076 44.088851, 1.74713 44.088859, 1.747227 44.088882, 1.747184 44.088928, 1.747135 44.08897, 1.747066 44.089001, 1.746996 44.089055, 1.746905 44.089055, 1.746797 44.089101, 1.746663 44.08907, 1.746583 44.089043, 1.746486 44.089047, 1.746358 44.089059, 1.746245 44.089074, 1.746122 44.089078, 1.745993 44.089086, 1.745891 44.089078, 1.745746 44.089067, 1.745601 44.08904, 1.745478 44.089013, 1.745365 44.08899, 1.745194 44.088982, 1.745059 44.088966, 1.744974 44.088974, 1.744861 44.088966, 1.744738 44.08892, 1.74462 44.088874, 1.744496 44.088851, 1.74433 44.088812, 1.744206 44.088828, 1.744094 44.088828, 1.743965 44.088866, 1.743879 44.088893, 1.743788 44.088924, 1.743708 44.088955, 1.743595 44.088986, 1.743514 44.088993, 1.743396 44.088997, 1.743327 44.088963, 1.743262 44.088912, 1.743214 44.088843, 1.743134 44.088762, 1.743042 44.08867, 1.742962 44.088593, 1.742876 44.088523, 1.742812 44.088473, 1.742731 44.0884, 1.742645 44.088327, 1.742565 44.088254, 1.74249 44.088173, 1.742409 44.088088, 1.742324 44.08803, 1.742195 44.087976, 1.742055 44.087926, 1.741873 44.087895, 1.741744 44.087837, 1.741648 44.087787, 1.741519 44.087706, 1.741417 44.087606, 1.741347 44.08751, 1.74131 44.087402, 1.741304 44.087302, 1.741277 44.087225, 1.741127 44.08714, 1.741031 44.087048, 1.740891 44.086967, 1.740822 44.086866, 1.74073 44.086789, 1.740666 44.086689, 1.740639 44.086597, 1.740564 44.086493, 1.740505 44.086393, 1.740414 44.086315, 1.740302 44.086254, 1.740173 44.08613, 1.740093 44.085999, 1.740037 44.08587, 1.739932 44.086076, 1.739874 44.086214, 1.739839 44.086421, 1.739857 44.086519, 1.739824 44.086631, 1.739722 44.086777, 1.739704 44.086965, 1.739696 44.087078, 1.73968 44.087173, 1.739685 44.087267, 1.739561 44.087321, 1.739486 44.087421, 1.739411 44.087498, 1.739315 44.087602, 1.739257 44.087659, 1.739171 44.087747, 1.7391 44.087822, 1.739022 44.087871, 1.738907 44.08798, 1.738757 44.08813, 1.738569 44.088284, 1.738413 44.088431, 1.738177 44.088569, 1.737971 44.08868, 1.737775 44.088812, 1.73755 44.088916, 1.737352 44.088996, 1.737154 44.089115, 1.737186 44.089038, 1.737271 44.08892, 1.737335 44.088777, 1.737233 44.088816, 1.737094 44.088878, 1.736917 44.088978, 1.736692 44.089066, 1.736477 44.089174, 1.736262 44.089271, 1.736059 44.089354, 1.735807 44.089462, 1.735603 44.089575, 1.735374 44.089678, 1.735159 44.089781, 1.734916 44.089846, 1.734701 44.089936, 1.734476 44.090027, 1.734243 44.090131, 1.734032 44.090256, 1.73382 44.090344, 1.733623 44.090467, 1.733393 44.090564, 1.733222 44.090679, 1.733088 44.090783, 1.733104 44.090706, 1.73321 44.090519, 1.733302 44.090348, 1.733408 44.090203, 1.733524 44.090027, 1.73365 44.089852, 1.733775 44.089697, 1.73391 44.089542, 1.734009 44.089367, 1.734171 44.089211, 1.734296 44.089043, 1.734431 44.088875, 1.734595 44.088741, 1.734737 44.088564, 1.734852 44.088423, 1.734674 44.088461, 1.734485 44.088557, 1.734252 44.088635, 1.734059 44.088741, 1.733838 44.088842, 1.733596 44.088966, 1.733388 44.089073, 1.733157 44.089184, 1.732985 44.089296, 1.732778 44.089406, 1.732581 44.089509, 1.732347 44.089587, 1.732114 44.089671, 1.731898 44.089762, 1.731682 44.089859, 1.731476 44.089956, 1.731386 44.090006, 1.73129 44.090084, 1.731209 44.090199, 1.731116 44.090247, 1.730973 44.090303, 1.730883 44.090254, 1.730641 44.090213, 1.730485 44.090176, 1.730389 44.09017, 1.730222 44.090164, 1.730119 44.090144, 1.730083 44.09006, 1.730164 44.089936, 1.730351 44.089814, 1.730587 44.089702, 1.730785 44.089637, 1.731027 44.089516, 1.731139 44.089463, 1.731178 44.089393, 1.731172 44.089336, 1.731252 44.08929, 1.731359 44.089224, 1.731602 44.089153, 1.731808 44.089049, 1.732033 44.088946, 1.732257 44.088849, 1.732482 44.088752, 1.732604 44.088639, 1.73269 44.088554, 1.732802 44.088461, 1.732953 44.088373, 1.733157 44.088279, 1.733389 44.088156, 1.733586 44.088017, 1.733793 44.087916, 1.733973 44.087774, 1.734197 44.087633, 1.734368 44.087521, 1.734525 44.087397, 1.734734 44.087281, 1.734944 44.087173, 1.735094 44.087069, 1.735292 44.086919, 1.735459 44.08678, 1.73564 44.086654, 1.73578 44.086496, 1.735919 44.086361, 1.736085 44.086219, 1.736172 44.086102, 1.736301 44.085956, 1.736443 44.085812, 1.736553 44.085613, 1.736698 44.08547, 1.736803 44.085307, 1.736896 44.085131, 1.73702 44.084946, 1.737159 44.084761, 1.737261 44.084634, 1.737414 44.084465, 1.737548 44.084297, 1.73769 44.084148, 1.737797 44.08398, 1.737905 44.08384, 1.737948 44.083686, 1.738076 44.08354, 1.738151 44.08351, 1.738236 44.083518, 1.738366 44.083505, 1.738462 44.083391, 1.738499 44.083194, 1.73851 44.083098, 1.738538 44.082946, 1.738599 44.082769, 1.738774 44.082642, 1.738977 44.082561, 1.739165 44.082449, 1.739401 44.082335, 1.739331 44.082273, 1.739191 44.08215, 1.739004 44.081976, 1.738779 44.081786, 1.738628 44.08168, 1.738419 44.081568, 1.738213 44.081402, 1.738054 44.081263, 1.737909 44.081136, 1.737722 44.080954, 1.73753 44.0808, 1.73736 44.080671, 1.737162 44.080548, 1.736987 44.0804, 1.736778 44.080249, 1.736616 44.080142, 1.736439 44.080023, 1.73623 44.079865, 1.736053 44.079737, 1.735877 44.079628, 1.735646 44.079524, 1.735426 44.079405, 1.735228 44.079289, 1.735035 44.079197, 1.73481 44.079093, 1.734611 44.078987, 1.734375 44.0789, 1.73415 44.078773, 1.733945 44.078712, 1.73374 44.078605, 1.733488 44.078521, 1.733227 44.078443, 1.732994 44.078352, 1.732778 44.078301, 1.732557 44.078249, 1.732329 44.078171, 1.732101 44.078141, 1.731847 44.078123, 1.731618 44.078075, 1.731377 44.078067, 1.731167 44.078083, 1.73092 44.078129, 1.73062 44.078183, 1.730346 44.078218, 1.730126 44.078245, 1.72988 44.078341, 1.729696 44.078396, 1.729692 44.078279, 1.72975 44.078188, 1.729788 44.078096, 1.729836 44.077988, 1.729879 44.077903, 1.730029 44.077757, 1.730173 44.077601, 1.730357 44.077478, 1.73056 44.077379, 1.730766 44.077284, 1.730882 44.077217, 1.730957 44.077125, 1.730946 44.077055, 1.730928 44.076973, 1.730898 44.076874, 1.730866 44.076809, 1.730978 44.076793, 1.731072 44.076811, 1.731349 44.076809, 1.731569 44.0768, 1.731681 44.076724, 1.731751 44.076627, 1.731891 44.076484, 1.732024 44.076354, 1.732148 44.076292, 1.732288 44.076225, 1.732405 44.07618, 1.732546 44.076129, 1.732669 44.076067, 1.732835 44.075986, 1.733006 44.075903, 1.733065 44.075818, 1.73314 44.075733)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'saute-ruisseaux-pres-de-loire-sur-rhone',       
        'Saute-ruisseaux près de Loire-sur-Rhône',
        'Marche ombragée en bordures de ruisseaux dans un ravin rhodanien. Un espace de nature d''un calme surprenant vu sa proximité des centres urbains.',
        ARRAY['/img/saute1.webp','/img/saute2.webp','/img/saute3.webp'],
        'Moyenne',
        245,
        11.19,
        'Rhône',
        'Stationner sur le parking de la piscine de Loire-sur-Rhône.
Trois sentiers communaux sont fléchés. La randonnée suit le sentier n°2.

(D/A) Prendre la Montée des Pérouzes et rejoindre le quartier du Savot.

(1) Prendre la route à droite, c''est la Rue du Savot.
Au bout de la petite rue goudronnée, un chemin de terre descend dans le vallon pour arriver au ruisseau du Morin.

(2) Le traverser par le petit pont et le suivre, d''abord rive gauche, puis en franchissant plusieurs gués sur 2 km environ. Laisser un premier sentier non balisé qui monte sur la gauche

(3) Virer à gauche. Après un franchissement à gué de la rive gauche à la rive droite, le sentier balisé s''éloigne du cours d''eau, en montée prononcée dans le bois. Sur un replat, au niveau d''une cabane en pierre, laisser le chemin qui part tout droit et prendre à droite. À la sortie du couvert, le chemin s''élargit, et devient rectiligne. Parvenir à la route Le Polaine qui est aussi le nom du hameau.

(4) Prendre à droite la petite route goudronnée. À la sortie du hameau elle fait place à un chemin caillouteux.

(5) À la première fourche, en l''absence de balisage, prendre à droite un chemin herbeux. Plus loin, descendre vers la gauche. Arriver en sous-bois. Laisser un chemin qui monte à gauche pour suivre une descente prononcée par un sentier raviné.

(6) Juste avant d''atteindre le ruisseau Morin, remonter sur la gauche. Dans la montée, laisser les chemins partant à gauche. Le chemin est ensuite élargi par des engins forestiers et débouche sur un chemin d''exploitation, le prendre à gauche.
C''est un point haut et découvert du circuit. Vaste panorama sur les Monts d''Or, les Monts du Lyonnais, Lyon et, avec un peu de chance, les Alpes.

(7) Poursuivre sur le chemin de gauche en lisière de bois pour parvenir à la voie communale bitumée des Pérouzes.

(8) La suivre à gauche. Ne pas prendre le premier chemin balisé à gauche, rester sur la route, puis tourner franchement à droite au point coté 407, voie sans issue, direction Chainfray. Dans le virage, virer dans le chemin à gauche. Il descend à l''Est d''un petit étang. Ignorer le chemin à gauche qui y mène, continuer tout droit. La descente s''accentue pour se terminer au ruisseau Rolland.

(9) Le traverser à gué et prendre à gauche le sentier qui suit la rive droite du cours d''eau.
Traverser plus loin, au prix d''une courte montée un peu raide, de l''autre côté. Revenir rive droite un peu après. Cette double traversée permet d''éviter les obstacles d''arbres couchés sur le chemin.
Rester rive droite, sur le beau sentier en sous-bois qui surplombe le ruisseau, balisé de points Rouges, et de plus rares traits Jaunes.
Ce balisage conduit à traverser à nouveau plus bas. Le chemin s''éloigne du cours d''eau, en montant, rive gauche.
À l''intersection suivante continuer à monter jusqu''au hameau "le Fatigue".

(10) Juste avant le hameau, bifurquer franchement à droite. Le chemin se fait étroit, et a tendance à être envahi par les ronces, mais ce passage n''est pas trop long. Ensuite, le sentier devient raide en redescendant au ruisseau Rolland.

(11) Après avoir traversé le ruisseau prendre à gauche pour le suivre vers l''aval.
Après une dernière traversée à gué, le chemin remonte et s''élargit.
Traverser la route et prendre le chemin qui passe sous un petit pont au niveau du hameau le Moriat.

(12) À la route descendre à gauche puis, avant une ancienne ferme aux toits multiples, tourner à droite et retrouver la route dans un virage. La prendre à gauche en descente. Rejoindre Loire-sur-Rhône au niveau du Savot.

(1) Retrouver et reprendre le début de l''itinéraire pour rallier le parking de départ (D/A).
Points de passages

    D/A : km 0 - alt. 178 m - Parking de la piscine de Loire-sur-Rhône
    1 : km 0.21 - alt. 195 m - Le Savot
    2 : km 0.73 - alt. 200 m - Pont sur le ruisseau Morin
    3 : km 2.16 - alt. 270 m - Dernier gué sur le ruisseau Morin
    4 : km 2.82 - alt. 359 m - Hameau le Polaine
    5 : km 3.4 - alt. 353 m - À droite à la fourche
    6 : km 4.27 - alt. 328 m - Ruisseau Morin
    7 : km 4.92 - alt. 411 m - À gauche
    8 : km 5.4 - alt. 419 m - À gauche à la C6
    9 : km 6.75 - alt. 345 m - Ruisseau Rolland, premier gué
    10 : km 8.41 - alt. 339 m - Hameau le Fatigue
    11 : km 8.93 - alt. 292 m - Retour au ruisseau Rolland
    12 : km 10.42 - alt. 251 m - Chemin de droite
    D/A : km 11.19 - alt. 179 m - Parking de la piscine de Loire-sur-Rhône

Informations pratiques

Cette randonnée fait partie de trois circuits balisés sur la commune :
- le n° 1, intitulé "Les Roches" est donné pour 6,3km et 160m de dénivelé,
- le n° 3 intitulé "Les Ruisseaux", fait 15km, dénivelé non précisé,
- celui-ci est numéroté 2 et intitulé "Les Hauteurs".
À l''usage, le balisage est parfois défaillant, ce qui justifie, à mon sens, ce descriptif plus précis sur Visorando.

Cette randonnée est idéale par temps chaud car elle est très ombragée et rafraichie par les cours d''eau. S''abstenir par temps pluvieux, ou juste après, les sentiers seraient boueux et glissants. Les nombreuses traversées à gué sont faciles lorsque le ruisseau ne sont pas trop haut. En juger au point (2), éviter d''aller plus loin en cas de crue.
À noter que j''ai également suivi ce circuit sans difficultés en février 2015 (mais la fraîcheur est alors moins appréciée)

Pas de points d''eau potable, prévoir le nécessaire. Des chaussures de randonnée hautes et imperméables sont préférables. Les bâtons peuvent aider dans les descentes parfois prononcées.

Le calcul automatique de dénivelé du logiciel Visorando indique 290m. cumulés, mais la mesure à l''altimètre sur le terrain est de 450 m.

En partant en milieu de matinée, possibilité de pique-niquer entre les points (6) et (7). Pas de table, mais le paysage compense.
',
        ST_GeomFromText(
            'LINESTRING(4.798405 45.562539, 4.797675 45.561878, 4.796989 45.561059, 4.796924 45.561119, 4.796624 45.561059, 4.796055 45.561194, 4.795175 45.561292, 4.794221 45.561232, 4.79406 45.561164, 4.793813 45.561067, 4.793212 45.560939, 4.792386 45.560714, 4.791817 45.560481, 4.791238 45.560376, 4.790862 45.560248, 4.79053 45.560308, 4.79039 45.560383, 4.790294 45.560376, 4.789436 45.559977, 4.788845 45.55979, 4.788363 45.559722, 4.787129 45.559377, 4.786914 45.559189, 4.786732 45.558866, 4.786539 45.558738, 4.785863 45.558648, 4.785423 45.558483, 4.785004 45.55822, 4.784575 45.558069, 4.784232 45.557987, 4.783803 45.557739, 4.783502 45.557574, 4.782698 45.557326, 4.782322 45.557198, 4.781357 45.556762, 4.781056 45.556589, 4.779597 45.555493, 4.77934 45.555192, 4.779189 45.554937, 4.778632 45.554726, 4.777956 45.554681, 4.777677 45.554561, 4.777516 45.554471, 4.777172 45.554381, 4.776743 45.554231, 4.776207 45.554133, 4.775992 45.554095, 4.775595 45.553847, 4.775542 45.553855, 4.77552 45.55369, 4.775563 45.553622, 4.775381 45.553547, 4.775381 45.553472, 4.775703 45.553554, 4.775778 45.553532, 4.775831 45.553427, 4.775767 45.553231, 4.775166 45.552871, 4.774866 45.552585, 4.774769 45.55245, 4.77449 45.55221, 4.774544 45.552119, 4.774683 45.551999, 4.774683 45.551826, 4.77434 45.551436, 4.774565 45.551428, 4.774726 45.551301, 4.775338 45.549896, 4.775617 45.549159, 4.774522 45.548836, 4.774286 45.548814, 4.773965 45.548956, 4.773031 45.548934, 4.772688 45.548926, 4.772377 45.548836, 4.772205 45.548686, 4.77199 45.548536, 4.771604 45.548363, 4.771379 45.548167, 4.771207 45.547754, 4.771121 45.547702, 4.770993 45.547739, 4.770617 45.54801, 4.770445 45.5481, 4.769952 45.548205, 4.76978 45.548498, 4.769587 45.548791, 4.769426 45.548964, 4.769373 45.549107, 4.769201 45.549174, 4.768926 45.549157, 4.768647 45.549022, 4.768143 45.548519, 4.768057 45.548459, 4.76796 45.548256, 4.767842 45.547767, 4.767714 45.547595, 4.767639 45.547189, 4.767671 45.547016, 4.767553 45.546963, 4.767403 45.547001, 4.767381 45.547099, 4.767199 45.547166, 4.767059 45.547317, 4.766952 45.547369, 4.766469 45.547625, 4.766383 45.54764, 4.766137 45.547549, 4.765976 45.547482, 4.765804 45.547497, 4.765471 45.547595, 4.765267 45.547835, 4.765042 45.54803, 4.764602 45.54809, 4.764162 45.547993, 4.763905 45.547827, 4.763755 45.54782, 4.763819 45.548023, 4.763926 45.548203, 4.764066 45.548338, 4.763851 45.548692, 4.763572 45.548631, 4.763315 45.548744, 4.763143 45.548624, 4.762693 45.547812, 4.762971 45.547722, 4.763079 45.547549, 4.762929 45.547271, 4.762811 45.547061, 4.762778 45.546918, 4.762542 45.546791, 4.76222 45.546708, 4.762124 45.54664, 4.761899 45.546355, 4.761899 45.546047, 4.761566 45.545431, 4.761233 45.544972, 4.760944 45.544664, 4.76074 45.544567, 4.760429 45.544514, 4.760397 45.544371, 4.760418 45.544288, 4.760611 45.544251, 4.760847 45.544236, 4.761469 45.544356, 4.761673 45.544341, 4.761942 45.544251, 4.762188 45.544101, 4.762467 45.543958, 4.762725 45.543823, 4.762929 45.543823, 4.763218 45.543853, 4.763572 45.543988, 4.76413 45.54401, 4.765053 45.543928, 4.765278 45.543845, 4.765997 45.543439, 4.767006 45.54362, 4.767478 45.54362, 4.769087 45.543447, 4.767893 45.542679, 4.767421 45.542047, 4.767293 45.541446, 4.767191 45.541322, 4.767121 45.541311, 4.767228 45.541183, 4.767475 45.54098, 4.768054 45.540345, 4.768199 45.54009, 4.768333 45.53956, 4.768521 45.539308, 4.768666 45.539166, 4.769095 45.538621, 4.769175 45.538425, 4.769234 45.538331, 4.769884 45.537678, 4.77012 45.537392, 4.77027 45.537215, 4.770318 45.537076, 4.769996 45.536896, 4.769932 45.536862, 4.769867 45.536765, 4.769406 45.536404, 4.769395 45.536163, 4.769803 45.535585, 4.770125 45.535164, 4.770189 45.535051, 4.770855 45.535502, 4.771606 45.535848, 4.772131 45.536171, 4.773054 45.536682, 4.77402 45.537539, 4.774534 45.537899, 4.774985 45.5382, 4.775371 45.538726, 4.775779 45.539109, 4.776391 45.53953, 4.776498 45.539748, 4.777045 45.540199, 4.777303 45.540372, 4.777324 45.540695, 4.77741 45.540875, 4.778139 45.541416, 4.778375 45.541792, 4.778579 45.542153, 4.779202 45.542408, 4.77933 45.542626, 4.779384 45.542897, 4.779405 45.542972, 4.779502 45.543163, 4.779577 45.54334, 4.779652 45.543483, 4.779883 45.543438, 4.780092 45.543475, 4.780371 45.54358, 4.780521 45.543723, 4.780618 45.543926, 4.780666 45.544155, 4.780789 45.544422, 4.780907 45.544674, 4.781406 45.545425, 4.781481 45.545605, 4.781642 45.545887, 4.781776 45.54603, 4.781766 45.546105, 4.781664 45.546176, 4.781176 45.546499, 4.781133 45.546575, 4.78116 45.54662, 4.781256 45.546612, 4.781927 45.546804, 4.782222 45.546965, 4.782409 45.547089, 4.782662 45.547112, 4.78301 45.54704, 4.783225 45.547014, 4.783547 45.546901, 4.783724 45.546841, 4.783842 45.546834, 4.784212 45.546943, 4.785124 45.547277, 4.785473 45.547435, 4.785537 45.547461, 4.785655 45.54745, 4.785896 45.547379, 4.786234 45.547337, 4.786325 45.547251, 4.786229 45.547127, 4.785923 45.546838, 4.785966 45.546774, 4.786358 45.546916, 4.786894 45.547209, 4.787313 45.547555, 4.787495 45.547871, 4.787624 45.548044, 4.787656 45.548209, 4.787988 45.548765, 4.788396 45.549719, 4.788611 45.549959, 4.788782 45.550643, 4.789094 45.551237, 4.78919 45.551635, 4.78963 45.552026, 4.790284 45.552311, 4.790563 45.552769, 4.790681 45.5531, 4.791153 45.553641, 4.791443 45.553896, 4.791593 45.553956, 4.791894 45.553934, 4.792237 45.554159, 4.792484 45.55449, 4.792731 45.55461, 4.792784 45.554708, 4.792398 45.555083, 4.791926 45.555444, 4.792055 45.555774, 4.792248 45.556022, 4.79272 45.557254, 4.792548 45.557562, 4.792205 45.557863, 4.792505 45.557788, 4.792613 45.557765, 4.792763 45.557713, 4.79287 45.557705, 4.792999 45.55796, 4.793149 45.558163, 4.793331 45.558299, 4.7936 45.558591, 4.793868 45.558937, 4.79434 45.559117, 4.794501 45.559185, 4.794522 45.559215, 4.794426 45.559283, 4.794458 45.559448, 4.794587 45.559718, 4.794855 45.559944, 4.795542 45.560184, 4.796389 45.560545, 4.796797 45.560777, 4.797022 45.561078, 4.797408 45.561536, 4.797891 45.562115, 4.79832 45.56255)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'tour-de-l-aiguille',
        'Tour de l''Aiguille',
        'Cette randonnée aux portes de l''Estérel vers les Pointes de l''Esquillon et de l''Aiguille propose un programme varié : début dans les mimosas, passage par le mémorial Notre-Dame-d''Afrique puis à proximité du Palais Bulles (de Pierre Cardin). Point de vue sur le littoral au-dessus de la Pointe de l''Esquillon, remontée au milieu des eucalyptus avant de redescendre face au Golfe de la Napoule à la Pointe de l''Aiguille et de revenir à Théoule par la plage du même nom.',
        ARRAY['/img/tour1.webp','/img/tour2.webp','/img/tour3.webp'],
        'Moyenne',
        205,
        8.82,
        'Alpes-Maritimes',
        'Se garer sur la Rue Jean-Baptiste Pastor ou au parking au bout de cette rue à droite.

Balisage Rouge-Blanc

(D/A) À la balise 508, emprunter la piste qui remonte le Vallon de l''Autel au bout de la Rue Jean-Basptiste Pastor en direction du Col de Théoule. Le chemin passe dans un vallon assez sombre au cœur des mimosas et en contrebas de la voie ferrée. Puis il prend un peu d''altitude et se retrouve en contre-haut de celle-ci.

Absence de balisage

Au niveau d''une balise non numérotée indiquant la direction du GR® par un sentier sur la droite, poursuivre tout droit sur la piste.
Juste après, dans un virage au niveau d''un petit vallon, monter sur la gauche par un sentier en rive gauche. Le sentier est un peu obstrué par les mimosas sur les premiers mètres puis est bien visible par la suite, même s''il n''est pas facile à cause de quelques passages un peu raides et délicats dus au ravinement.
En arrivant sur une large dalle rocheuse, remonter sur la droite et rejoindre un autre sentier montant aussi de la droite.
Monter ensuite sur la gauche en contournant un bloc rocheux par la gauche et retrouver le sentier bien marqué juste au-dessus.
Poursuivre sur ce sentier jusqu''à une belle et large piste juste au-dessus du mémorial Notre-Dame-d''Afrique.
Descendre à droite par la piste pour rejoindre cette étonnante statue.

Balisage Rouge-Blanc

(1) Contourner Notre-Dame-d''Afrique et poursuivre tout droit par la piste jusqu''à un virage à droite. Amorcer le virage et à la sortie de celui-ci, descendre sur la gauche par un sentier non balisé en contrebas de la piste.

Absence de balisage

Ce sentier descend à travers une pinède vers le quartier de Miramar. Rejoindre la route au niveau de la balise 513.

(2) Monter par le Boulevard de l''Estérel sur la gauche. Passer à côté du Palais Bulles de Pierre Cardin et juste après celui-ci descendre par l''escalier sur la gauche. Cet escalier passe juste à côté du théâtre de verdure de cette somptueuse villa.
En bas de l''escalier, tourner à gauche pour rejoindre le Col de l''Esquillon, puis monter sur la droite en direction de la table d''orientation. Celle-ci s''atteint par le sentier au bout de cette impasse.

(3) Profiter panorama sur la Calanque des Deux Frères au Nord (avec une autre maison bulles visible), les Îles de Lérins à l''Est et le quartier du Trayas à l''Ouest surmonté du Pic de l''Ours et du Pic du Cap Roux.
Revenir sur ses pas jusqu''à la balise 513 par le Col de l''Esquillon, l''escalier et le Palais Bulles.

Balisage Jaune

(2) De retour à cette balise, emprunter le sentier qui progresse en corniche sur la droite en direction de la Pointe de l''Aiguille.
Le sentier est de niveau jusqu''à une zone éboulée et grillagée. Emprunter les marches qui montent sur la gauche et continuer en direction Nord sur le sentier bien marqué et balisé.
Après une descente et un passage au-dessus de la seconde maison bulles, on arrive au niveau d''une piste à la balise 512.

(4) Poursuivre tout droit vers les habitations et rejoindre une petite rue, puis à la balise520, tourner à gauche en direction de la Pointe de l''Aiguille.
Monter par cette piste au milieu des mimosas puis des eucalyptus avant de retrouver des pins vers Théoule Supérieur. Poursuivre jusqu''à la balise 519.

(5) Descendre sur la droite toujours en direction de la Pointe de l''Aiguille. Remonter à travers les eucalyptus pour atteindre un superbe belvédère sur le Golfe de la Napoule dans un espace légèrement aménagé avec quelques bancs et tables.
Descendre par le chemin en lacets jusqu''à la Rue Abel Balif au niveau de la balise518.
Tourner à gauche puis descendre cette rue sur la droite et rejoindre la route du bord de mer, RD 6098.
Traverser prudemment et remonter vers la droite (par le trottoir sur la gauche de la route) pour rejoindre l''entrée du Parc Départemental de la Pointe de l''Aiguille.

(6) Emprunter les escaliers qui descendent sur la droite en direction de la Pointe de l''Aiguille. Suivre le sentier balisé jusqu''à la balise 516.
Tourner à droite pour faire l''aller-retour vers la Pointe de l''Aiguille et ses 3 plages : une première que l''on surplombe en descendant les escaliers (Plage de Gardanne) puis une deuxième orientée Nord au pied des escaliers et une troisième en tournant à droite en bas des escaliers, cette dernière étant orientée Est.

(7) Remonter les escaliers jusqu''à la balise 516 et poursuivre tout droit par un large chemin en direction du sentier du littoral.
À la balise515, descendre sur la droite par les escaliers pour rejoindre la Plage de l''Aiguille (plage de sable).
En arrivant sur la plage, tourner à gauche et emprunter la Promenade André Pradayrol.
Suivre ce chemin aménagé pour revenir au centre de Théoule. Traverser la RD6098 et tourner un peu plus loin sur la gauche sur l''Avenue Charles Dahon.
Passer la mairie et continuer tout droit pour retrouver le parking de départ. (D/A)
Points de passages

    D/A : km 0 - alt. 12 m - Rue Jean-Baptiste Pastor
    1 : km 1.49 - alt. 159 m - Mémorial Notre-Dame-d''Afrique
    2 : km 2.08 - alt. 103 m - Balise 513
    3 : km 2.83 - alt. 99 m - Table d''orientation de l''Esquillon - Pointe de l''Esquillon
    4 : km 4.64 - alt. 117 m - Balise 512
    5 : km 5.61 - alt. 157 m - Balise 519
    6 : km 6.68 - alt. 72 m - Balise 517 - entrée du Parc Départemental
    7 : km 7.1 - alt. 4 m - Pointe de l''Aiguille
    D/A : km 8.82 - alt. 12 m - Rue Jean-Baptiste Pastor

Informations pratiques

Randonnée à éviter par forte chaleur ou par temps de pluie (et après de fortes pluies).
En février/mars, les mimosas sont en fleurs (attention pour les personnes sensibles ou allergiques).
',
        ST_GeomFromText(
            'LINESTRING(6.938254 43.504326, 6.93799 43.504188, 6.937789 43.504013, 6.937599 43.503821, 6.937471 43.503595, 6.937408 43.503407, 6.937236 43.50322, 6.937025 43.503042, 6.93695 43.502805, 6.937054 43.502566, 6.937165 43.502357, 6.937192 43.50212, 6.93717 43.501921, 6.93716 43.50168, 6.93727 43.501478, 6.937199 43.501258, 6.937192 43.501021, 6.937058 43.50082, 6.937042 43.500544, 6.937079 43.500345, 6.937116 43.500129, 6.936985 43.499914, 6.936841 43.499714, 6.936759 43.499495, 6.936622 43.499277, 6.936618 43.499044, 6.936741 43.498837, 6.936741 43.498758, 6.936915 43.498651, 6.936913 43.498458, 6.93707 43.498455, 6.937357 43.498355, 6.937701 43.498236, 6.937862 43.498079, 6.9376 43.497947, 6.937389 43.497782, 6.937433 43.497672, 6.937556 43.497614, 6.937594 43.497466, 6.937562 43.49731, 6.937598 43.497178, 6.937827 43.497023, 6.938068 43.49687, 6.9383 43.496721, 6.9386 43.496654, 6.938852 43.496522, 6.939128 43.496413, 6.939311 43.496423, 6.939411 43.496509, 6.939534 43.496719, 6.939842 43.496758, 6.940151 43.496744, 6.940469 43.496729, 6.940774 43.49669, 6.94105 43.49681, 6.941151 43.496894, 6.941339 43.496899, 6.941666 43.496913, 6.941887 43.496675, 6.942057 43.49648, 6.942202 43.496277, 6.942355 43.496066, 6.942436 43.495843, 6.942588 43.495645, 6.94269 43.495567, 6.942604 43.495454, 6.942481 43.495403, 6.942447 43.495315, 6.942519 43.495088, 6.942452 43.494859, 6.942436 43.494634, 6.94245 43.494401, 6.942497 43.494178, 6.942524 43.494006, 6.942527 43.493755, 6.942527 43.493523, 6.942379 43.493446, 6.942425 43.493308, 6.942261 43.493094, 6.942094 43.492901, 6.942026 43.492673, 6.941964 43.492449, 6.94186 43.492228, 6.941776 43.491999, 6.94176 43.491769, 6.941782 43.491536, 6.941851 43.491313, 6.941798 43.49109, 6.941695 43.490876, 6.941554 43.490669, 6.941671 43.490551, 6.941562 43.490444, 6.941494 43.490223, 6.94158 43.489997, 6.941845 43.489859, 6.942133 43.489772, 6.942421 43.489667, 6.942669 43.489524, 6.942908 43.489369, 6.943106 43.489193, 6.943229 43.488985, 6.943362 43.48878, 6.943414 43.488566, 6.943254 43.488309, 6.943329 43.488115, 6.943402 43.487889, 6.943361 43.487519, 6.943615 43.487483, 6.943924 43.487492, 6.944238 43.48752, 6.944509 43.487398, 6.944739 43.48723, 6.944966 43.487067, 6.945161 43.486891, 6.945403 43.486732, 6.945676 43.486624, 6.945983 43.486587, 6.946299 43.486592, 6.946602 43.486642, 6.946789 43.486635, 6.946687 43.486725, 6.946767 43.486647, 6.946494 43.486639, 6.94617 43.486622, 6.945857 43.486616, 6.945587 43.486724, 6.945292 43.486812, 6.945028 43.486943, 6.944855 43.48713, 6.944653 43.487303, 6.944418 43.487462, 6.944118 43.487522, 6.943809 43.487495, 6.943499 43.487474, 6.943372 43.487523, 6.943366 43.487913, 6.943333 43.488149, 6.943237 43.488313, 6.94341 43.488591, 6.943323 43.488817, 6.943243 43.489042, 6.943091 43.489243, 6.942903 43.48943, 6.942626 43.48955, 6.94236 43.489667, 6.94209 43.48978, 6.941821 43.4899, 6.941583 43.490058, 6.941499 43.490352, 6.941628 43.490511, 6.941881 43.490645, 6.942116 43.490803, 6.942324 43.490976, 6.942488 43.491171, 6.942529 43.49136, 6.942556 43.491535, 6.942637 43.491706, 6.942862 43.491761, 6.943056 43.491935, 6.943194 43.49214, 6.943323 43.492259, 6.943443 43.492285, 6.943758 43.492314, 6.944038 43.492415, 6.944271 43.492564, 6.944463 43.492742, 6.94459 43.492958, 6.944601 43.493195, 6.944577 43.493422, 6.944442 43.493635, 6.944227 43.493807, 6.943975 43.493939, 6.943887 43.494022, 6.944012 43.494172, 6.943965 43.4944, 6.944035 43.494622, 6.944047 43.49475, 6.944216 43.494812, 6.944359 43.494855, 6.944267 43.494956, 6.944342 43.495006, 6.944251 43.495049, 6.944305 43.495123, 6.944246 43.495166, 6.944267 43.495248, 6.944297 43.495451, 6.944262 43.495676, 6.944286 43.495903, 6.94425 43.496135, 6.944282 43.496362, 6.944596 43.496356, 6.944908 43.496302, 6.945225 43.496292, 6.94554 43.496295, 6.945716 43.496337, 6.945811 43.496405, 6.945925 43.496618, 6.946088 43.496821, 6.946202 43.497032, 6.946492 43.497123, 6.946752 43.497245, 6.946972 43.49741, 6.947178 43.497586, 6.947464 43.497684, 6.947711 43.497833, 6.947964 43.497968, 6.948152 43.498153, 6.948537 43.498369, 6.948094 43.498251, 6.947854 43.498104, 6.947627 43.49795, 6.947524 43.497987, 6.947675 43.498173, 6.947869 43.49836, 6.94806 43.498538, 6.948281 43.498697, 6.948455 43.498892, 6.948551 43.49912, 6.948627 43.499348, 6.94871 43.499565, 6.948992 43.499657, 6.949312 43.499659, 6.949626 43.499667, 6.949926 43.499744, 6.950118 43.499929, 6.950256 43.50014, 6.950425 43.500332, 6.950609 43.50052, 6.950715 43.500723, 6.950833 43.500949, 6.950896 43.501173, 6.951004 43.50139, 6.951139 43.501601, 6.951315 43.501789, 6.951375 43.50201, 6.951322 43.502238, 6.951177 43.502416, 6.950983 43.502607, 6.950671 43.502657, 6.950286 43.502661, 6.950626 43.502756, 6.950915 43.502836, 6.951086 43.502863, 6.951086 43.503003, 6.951186 43.503221, 6.951273 43.50344, 6.951273 43.503552, 6.951338 43.503598, 6.951322 43.503758, 6.951518 43.503756, 6.951665 43.50377, 6.951474 43.503983, 6.951789 43.504011, 6.952091 43.503945, 6.952395 43.503886, 6.952496 43.503933, 6.952287 43.504098, 6.952111 43.504291, 6.951906 43.504431, 6.95233 43.504373, 6.952138 43.504518, 6.951866 43.504646, 6.95217 43.504689, 6.95186 43.504751, 6.951551 43.504768, 6.951236 43.504756, 6.950925 43.504753, 6.950608 43.504745, 6.950295 43.504736, 6.949987 43.504692, 6.949717 43.504576, 6.949501 43.504413, 6.949369 43.504299, 6.949228 43.504299, 6.949197 43.50438, 6.949412 43.504532, 6.949562 43.504684, 6.949728 43.504836, 6.949945 43.504915, 6.950233 43.504976, 6.950532 43.505057, 6.950858 43.505041, 6.951169 43.505036, 6.951487 43.505062, 6.951874 43.505116, 6.952239 43.5051, 6.952401 43.505219, 6.952566 43.505229, 6.952697 43.505127, 6.952985 43.505026, 6.953151 43.505038, 6.953282 43.50495, 6.953677 43.504843, 6.953398 43.505015, 6.953106 43.505158, 6.952921 43.505344, 6.952788 43.505553, 6.952622 43.505744, 6.952432 43.505867, 6.952781 43.505937, 6.952492 43.505957, 6.952743 43.506159, 6.953001 43.506174, 6.95323 43.506208, 6.952759 43.50617, 6.952644 43.506074, 6.952486 43.505948, 6.952786 43.505941, 6.952346 43.505825, 6.952032 43.505778, 6.951735 43.505702, 6.951479 43.505567, 6.951189 43.505482, 6.950881 43.505458, 6.950564 43.505444, 6.950271 43.505522, 6.949949 43.505561, 6.949638 43.505614, 6.949311 43.505588, 6.949001 43.505579, 6.948908 43.505696, 6.949058 43.505808, 6.94934 43.5059, 6.949649 43.505928, 6.94995 43.505873, 6.950267 43.505869, 6.950051 43.506036, 6.949752 43.506099, 6.949435 43.506097, 6.949124 43.506101, 6.948814 43.506126, 6.948524 43.506049, 6.948222 43.506121, 6.94792 43.506075, 6.947641 43.505961, 6.947332 43.50592, 6.947018 43.505937, 6.946706 43.505974, 6.946393 43.505968, 6.946101 43.506062, 6.945801 43.506135, 6.945522 43.506234, 6.94523 43.506314, 6.944914 43.506327, 6.944613 43.506381, 6.944308 43.506442, 6.94404 43.50656, 6.943743 43.506641, 6.943451 43.50672, 6.943176 43.506827, 6.942866 43.506889, 6.942569 43.50695, 6.94227 43.507037, 6.941964 43.507081, 6.941774 43.507269, 6.941503 43.50716, 6.941277 43.506991, 6.941068 43.506824, 6.940846 43.506667, 6.940593 43.506527, 6.940391 43.506351, 6.940147 43.506204, 6.939916 43.50605, 6.939472 43.505793, 6.93916 43.505505, 6.938882 43.505108, 6.93856 43.504688, 6.93827 43.504345)',
            4326
        )
    );

INSERT INTO
    hikes (
        slug,
        title,
        description,
        pictures,
        difficulty,
        time,
        distance,
        localisation,
        details,
        gps_coordinate
    )
VALUES (
        'ville-au-val-landemont-depuis-autreville-sur-moselle',
        'Ville-au-Val, Landemont depuis Autreville-sur-Moselle',
        'Randonnée au départ d''Autreville-sur-Moselle offrant de beaux points de vue sur la vallée de la Moselle, la vallée de la Natagne et la campagne environnante.',
        ARRAY['/img/ville1.webp','/img/ville2.webp','/img/ville3.webp'],
        'Moyenne',
        280,
        11.86,
        'Meurthe-et-Moselle',
        'Au départ d''Autreville-sur-Moselle, on peut partir d''un parking en haut du village vers la salle polyvalente (c''est le choix représenté sur le tracé) ou, si quelques dizaines de mètres de dénivelé supplémentaires ne vous font pas peur, du parking en bord de Moselle.

(D/A) Monter la Rue du Plante puis la Rue du Sorbier dans le prolongement en direction de la forêt.

(1) Juste après les dernières maisons, prendre le chemin qui part dans les champs à gauche (balisage Anneau Rouge). Après quelques centaines de mètres, passer devant une cabane de chasse sous les arbres, sur la gauche du chemin.

(2) Peu après cette cabane, prendre le 1er chemin qui monte à droite vers la forêt : cela grimpe raide sur quelques dizaines de mètres. Arriver sur un petit plateau en haut de la colline.

(3) Virer à gauche puis, quelques dizaines de mètres plus loin, suivre le chemin qui part à droite (attention à ne pas le rater car, en fonction de la végétation, on ne le voit pas toujours très bien). Ce chemin descend doucement en forêt sur l''autre versant de la colline, jusqu''à rejoindre un chemin qui part en angle droit sur la gauche. Ce carrefour de chemins se situe à l''orée du bois et, de là, on a une belle vue sur la vallée de la Natagne et les villages environnants.

(4) Virer alors à gauche et descendre ce chemin tout droit dans la prairie jusqu''à Ville-au-Val que l''on aperçoit en fond de vallée.

(5) Passer un petit pont, tourner à gauche (panneau explicatif à cet endroit) puis, près de ce panneau presque en face, prendre à droite le petit chemin qui monte entre les arbres le long du parc du château. Arriver à l''église.
Traverser la rue et continuer à monter par la petite rue en face de l''église. Cette rue se prolonge par le Chemin du Bois, qui monte à travers buissons et champs. Aller tout droit jusqu''à rejoindre la D10d (Route de Bezaumont). Arriver juste en dessous d''un gîte d''étape.

(6) Traverser et prendre le chemin qui monte en direction du gîte puis virer de suite à gauche de façon à ne pas passer à l’intérieur de la propriété privée mais la contourner par la gauche. Il y a trois chemins à cet endroit: un petit chemin qui monte vers la droite et deux chemins plus larges qui partent vers la gauche. Il faut prendre celui qui est le plus à gauche. En cas de doute, se reporter à la carte.

(7) Lorsque l''on arrive en haut de la colline, on aperçoit sur la droite les yourtes qui appartiennent au gîte. À cet endroit, il y juste en face de nous un petit chemin qui rentre dans les buissons. Prendre ce petit chemin et tourner aussitôt à droite.
Suivre ce petit chemin très sinueux mais agréable qui, tout d''abord, longe le gîte puis continue sur plusieurs centaines de mètres jusqu’à rejoindre un espace dégagé à côté de la statue de la Vierge de la Consolation à la cote 385.

(8) Le point de vue depuis le plateau de la Statue de La Vierge est magnifique. Par temps dégagé, on a une belle vue sur les environs, et c''est un endroit idéal pour faire une pause.
Descendre ensuite vers la gauche jusqu''à rejoindre le chemin empierré qui descend sur la droite vers le village de Landremont.

(9) On arrive ensuite à Landremont près de l''église. Là, prendre la rue à gauche et, presque aussitôt, virer dans le chemin qui descend sur la droite entre les maisons. Suivre ce chemin qui passe entre champs et vergers jusqu''à la route départementale D10.

(10) Arrivé sur cette départementale, prendre à droite puis ensuite à gauche au premier chemin qui part vers la ferme de Villers les Prud''hommes. Au croisement, virer à droite pour rejoindre ce monument historique qui vaut le coup d’œil.

(11) Suivre le chemin qui contourne la ferme par la droite et monte vers la forêt. Arrivé à l''entrée de la forêt, monter sur la droite jusqu''en haut de la côte.

(12) Suivre le chemin balisé à droite qui passe sous la ligne électrique et rentre dans la forêt.
Continuer sur ce petit chemin sinueux, d''abord à plat, puis, à la fin, en pente assez raide. Au sortir de ce chemin, on aperçoit en contrebas le village d''Autreville, point de départ de la randonnée. C''est aussi un large et beau point de vue sur la vallée de la Moselle.

(13) Dans le tournant de la route, continuer tout droit, passer la fourche qui suit

(1) Revenir, par le chemin inverse de l''aller, au point de départ, Rue de l’École (D/A).
Points de passages

    D/A : km 0 - alt. 209 m - Parking, Rue de l''École
    1 : km 0.52 - alt. 254 m - Jonction de l''aller et du retour
    2 : km 1.42 - alt. 268 m - Cabane de chasse à gauche du chemin
    3 : km 2.02 - alt. 331 m - Haut de la colline, à gauche puis à droite
    4 : km 2.65 - alt. 317 m - Carrefour de chemins à l''orée du bois
    5 : km 3.96 - alt. 207 m - Pont de Ville-au-Val sur la - Natagne (cours d''eau) - Affluent de la Moselle
    6 : km 5.07 - alt. 337 m - D10d
    7 : km 5.34 - alt. 360 m - Haut de la colline, prendre petit chemin en face
    8 : km 6.23 - alt. 375 m - Vierge de la Consolation
    9 : km 6.52 - alt. 347 m - Carrefour de chemins au dessus de Landremont
    10 : km 7.78 - alt. 212 m - A droite sur la D10
    11 : km 8.89 - alt. 228 m - Ferme de Villers Les Prud''Hommes
    12 : km 10.2 - alt. 356 m - A droite sur le chemin
    13 : km 11.13 - alt. 277 m - Au Sorbier, point de vue sur vallée de la Moselle - Moselle (rivière) - Affluent de du Rhin
    D/A : km 11.86 - alt. 209 m - Parking, Rue de l''École

Informations pratiques

Le dénivelé (total = 439m) est effectué en trois fois (environ 3x150 m). À chaque fois, donc, l''ascension est accessible à de bons marcheurs.
Point de repos idéal près de la statue de la Vierge de la Consolation qui domine le village de Landremont.
',
        ST_GeomFromText(
            'LINESTRING(6.115911 48.823439, 6.115547 48.823524, 6.115278 48.82363, 6.114935 48.823976, 6.114452 48.824428, 6.114259 48.824894, 6.11427 48.825572, 6.114763 48.825841, 6.115504 48.826039, 6.117167 48.826441, 6.116147 48.827013, 6.115547 48.827275, 6.115182 48.827642, 6.115128 48.828016, 6.115311 48.828313, 6.116083 48.828899, 6.116909 48.829528, 6.115021 48.83034, 6.112682 48.830919, 6.111459 48.831032, 6.109506 48.831371, 6.11045 48.833462, 6.110429 48.833871, 6.110944 48.83534, 6.109335 48.835368, 6.109313 48.83582, 6.109935 48.836138, 6.110654 48.836279, 6.111373 48.836308, 6.112521 48.836159, 6.115193 48.835609, 6.115815 48.837197, 6.116244 48.838087, 6.117317 48.838928, 6.118218 48.841039, 6.119259 48.842027, 6.119988 48.843009, 6.120664 48.842847, 6.121115 48.842959, 6.121222 48.843298, 6.121029 48.843708, 6.121008 48.844315, 6.12163 48.845685, 6.121158 48.84601, 6.121276 48.846483, 6.121523 48.846956, 6.12193 48.847754, 6.121823 48.847951, 6.121898 48.848029, 6.122059 48.847994, 6.122284 48.84822, 6.123089 48.848551, 6.123411 48.848756, 6.123979 48.849215, 6.12443 48.849716, 6.124763 48.850316, 6.125224 48.850867, 6.125578 48.851213, 6.126007 48.85151, 6.127252 48.852978, 6.12781 48.854143, 6.127681 48.854432, 6.126705 48.854926, 6.125964 48.855562, 6.125728 48.855759, 6.125557 48.855978, 6.125696 48.85614, 6.126876 48.855809, 6.127842 48.855533, 6.128421 48.85547, 6.12856 48.855294, 6.129675 48.855096, 6.131006 48.854729, 6.132229 48.854588, 6.13328 48.854503, 6.134161 48.854538, 6.134901 48.854503, 6.135555 48.854574, 6.136017 48.854446, 6.136327 48.854178, 6.136241 48.853882, 6.137326 48.853529, 6.138045 48.853366, 6.138602 48.853275, 6.139975 48.853049, 6.139825 48.852131, 6.140159 48.851368, 6.140297 48.85062, 6.140522 48.849766, 6.140597 48.849619, 6.140469 48.849251, 6.141037 48.849215, 6.141155 48.848608, 6.141477 48.848629, 6.142625 48.847606, 6.143569 48.846208, 6.145264 48.846462, 6.146294 48.844315, 6.145136 48.844089, 6.145329 48.84327, 6.144943 48.842367, 6.144599 48.841844, 6.144406 48.83998, 6.14314 48.838243, 6.142368 48.838257, 6.140608 48.837763, 6.140136 48.837141, 6.139278 48.837367, 6.13857 48.836209, 6.137797 48.835616, 6.136703 48.834542, 6.134857 48.83337, 6.134042 48.83248, 6.133463 48.831689, 6.131767 48.831576, 6.130223 48.831393, 6.129386 48.831025, 6.12915 48.830008, 6.129064 48.829005, 6.128742 48.829048, 6.127068 48.828822, 6.126231 48.828751, 6.125502 48.829005, 6.124365 48.829132, 6.123828 48.829203, 6.123335 48.82909, 6.12224 48.829062, 6.121661 48.829316, 6.121318 48.829147, 6.121103 48.829415, 6.120631 48.829373, 6.120438 48.829217, 6.120438 48.828822, 6.119837 48.828836, 6.119687 48.827988, 6.119343 48.827494, 6.118614 48.826858, 6.117906 48.826477, 6.117131 48.826381, 6.115761 48.826067, 6.114431 48.825714, 6.114281 48.82512, 6.114452 48.824612, 6.114667 48.824216, 6.115246 48.823679, 6.115868 48.823439)',
            4326
        )
    );


INSERT INTO users (nickname, localisation, email, password, email_verified)
VALUES 
    ('User1', 'Location1', 'user1@example.com', 'password1', false),
    ('User2', 'Location2', 'user2@example.com', 'password2', false),
    ('toto45', 'Ardeche', 'toto45@gmail.com', 'dc368af71f7d7e48bf096c6642f00e8e:f85f5d20b41637d21789c1f2df63ed143631e66d2c908d5b499bee38e2507659', true),
    ('matthias','Ardeche','matthias.hibon@sfr.fr','70dec9751134d56ca79f9bf19c70ee87:2609bd5ac3eaaa2765ccb79f0fa745d20707c552e66f50621d405b45dcb097cb',true);
INSERT INTO users_has_hikes (users_id, hikes_id)
VALUES 
    (1, 1),
    (2, 2);
    