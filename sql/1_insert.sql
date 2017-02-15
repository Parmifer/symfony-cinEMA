INSERT INTO realisateur (id, prenom, nom) VALUES 
(1, 'Jean-Luc', 'Godard'), -- DONE
(2, 'Federico', 'Fellini'), -- DONE
(3, 'Maurice', 'Pialat'),
(4, 'Orson', 'Welles'),
(5, 'Alfred', 'Hitchcock');

INSERT INTO acteur (id, prenom, nom) VALUES 
(1, 'Jean-Claude', 'Brialy'),
(2, 'Caroline', 'Dim'),
(3, 'Jean-Paul', 'Belmondo'),
(4, 'Jean', 'Seberg'),
(5, 'Giulietta', 'Masina'),
(6, 'Anthony', 'Quinn'),
(7, 'Marcello', 'Mastroianni'),
(8, 'Anita', 'Ekberg');

INSERT INTO genre (id, libelle) VALUES
(1, 'Comédie sentimentale'),
(2, 'Film noir'),
(3, 'Drame psychologique');


INSERT INTO film (id, titre, synopsis, date_sortie, ext_realisateur_id, ext_genre_id) VALUES 
(
    1
    'Une histoire d\'eau', 
    'C\'est l\'inondation à Villeneuve saint Georges. L\'étudiante aimerait se rendre à Paris. Le père Franju lui ayant hurlé qu\'il n\'y avait pas d\'autobus, elle fait de l\'auto-stop et monte à bord de la Ford Taunus du séducteur. Ils essaient de rejoindre la nationale. De routes coupées en routes coupées, ils reviennent à Villeneuve saint Georges.<br>L\'étudiante et le séducteur essaient de rejoindre la nationale à pied et la première se laisse embrasser par le second qui lui raconte des histoires drôles.</br>Ils rejoignent finalement la voiture. L\'étudiante se souvient des bons moments de cette ballade. En rejoignant Paris, elle sait qu\'elle passera la nuit chez ce mirliflore dont elle est tombée amoureuse.',
    '1958-02-02 12:00:00',
    1,
    1
),
(
    2
    'À bout de souffle',
    'Marseille, un mardi matin d\'août 1959. Michel Poiccard fait semblant de lire Paris-Flirt au bas de Cannebière. En réalité, il surveille le mouvement des voitures devant le vieux port. Près des bateaux qui emmènent les touristes visiter le château d\'If, une fille fait signe à Michel : une voiture américaine est en train de se garer. Les occupants, un officier américain et sa femme vont prendre les billets pour l\'excursion. Michel ouvre alors le capot de la voiture et, avec deux pinces reliées par un fil," un crocodile", fait démarrer la voiture. La fille demande à Michel de l\'emmener avec lui mais celui-ci, prétextant qu\'il est déjà 10h50, refuse.<br>Michel est dorénavant sur la route nationale pour Paris. Il doit y toucher une certaine somme d\'argent pour un travail dont il ne dira rien. Il demandera alors à Patricia, dont il frodonne le prénoom "Si oui ou non". Après, il partira pour l\'Italie. Il a trouvé, dans la boite à gants de la voiture, un revolver. Il tire sur le soleil. Il ralentit devant deux jeunes filles qui font du stop. Mais en passant devant elles, il les trouve trop moches et accélère de plus belle. Enervé par une 2CV qui ralentit devant des travaux puis n\'ose pas dépasser un camion, Michel double les deux véhicules en mordant largement la ligne jaune. Un coup de sifflet retentit et deux motards le prennent en chasse. Michel, dans sa voiture volée, fonce de plus belle et s\'engouffre dans un petit chemin cabossé, ce qui provoque l\'arrêt de la voiture car "le crocodile" qu\'il a installé a sauté. Les deux motards passent devant le petit chemin sans le voir et Michel s\'apprête à fixer de nouveau le "crocodile" quand le second motard revient vers lui. Michel prend dans la boite à gants le revolver qu\'il avait trouvé tout à l\'heure. Le motard dans son dos le menace de son arme. Tout se passe très vite. Michel a tiré sur le motard sans bien s\'en rendre compte. Il fuit à travers champ.<br>Michel est à Paris au petit matin du mercredi. Une 2CV, qui l\'a probablement pris en stop, passe Notre-Dame et le dépose à Saint Michel. Michel entre dans une cabine téléphonique mais celle-ci ne fonctionne pas. Il sort et achète un journal du matin. On ne signale pas encore le meurtre. Michel entre dans un petit hôtel et demande si mademoiselle Patricia Franchini est là. Le veilleur, en train de laver le perron, dit que non. Michel insiste. Mais Patricia n\'est pas là, preuve en est sa clé sur le tableau. Michel profite que le veilleur ne regarde pas et prend la clé. Il entre dans la chambre de Patricia, n\'y trouve pas d\'argent et ressort.<br>Il entre au Royal saint Germain, demande le prix d\'un œuf au plat jambon. Il n\'a pas les 180 francs. Il commande quand même le plat et dit qu\'il s\'absente chercher le journal. Il court vers un immeuble où, tout en haut, habite Liliane, une amie du "quartier". Elle a abandonné le cinéma car "il fallait coucher avec trop de gens" et est dorénavant scripte pour la télévision. Michel est moins explicite sur lui-même. Il l\'invite au petit déjeuner au Royal en espérant qu\'elle paiera. Comme elle refuse, étant en retard pour son travail, il lui demande de lui prêter 5 000 francs, qu\'il avait vu dans son porte monnaie, promettant de lui rendre à midi. Comme elle ne lui en propose que 500, il lui vole la totalité de la somme. Puis il lui dit à bientôt et s\'en va. Il est huit heures du matin.<br>Vers dix heures, Michel entre dans une agence de voyage des Champs-Elysées. Il s\'est acheté une veste, une cravate, une chemise, un chapeau et des lunettes noires. Michel demande à un employé si M. Tolmatchoff est là. On lui dit qu\'il ne viendra que plus tard. Sur les champs Elysée, Michel avise une vendeuse du New York Herald Tribune et lui demande si elle sait où est Patricia. Sur ses indications, Michel traverse les Champs-Elysées. Il aborde Patricia, qui vend le New York Herald Tribune, en lui demandant tout de go, si elle veut venir à Rome avec lui et qu\'il l\'aime. Patricia est surprise. Elle le croyait à Monte-Carlo. Elle refuse de le suivre à Rome. Ils n\'ont passé que trois ou cinq nuits ensemble et elle a beaucoup de choses à faire à Paris alors que lui y a plein d\'ennemis. Il lui achète le journal mais le lui rend quand il constate qu\'il n\'y a pas d\'horoscope alors qu\'il aime connaitre l\'avenir. Patricia lui donne rendez-vous sur les champs le soi-même.<br>Devant un cinéma qui passe Tout près de Satan, Michel écarte une étudiante qui vend Les Cahiers du cinéma en lui demandant s\'il n\'a rien contre la jeunesse. Michel la rembarre en disant que, justement, il déteste la jeunesse et aime beaucoup les vieux. Devant une petite rue, Michel assiste à un accident mortel. Un homme a été renversé par une auto. Dans France-soir, il trouve un article relatant son meurtre. Le motard est mort laissant quatre enfants et il sera bientôt identifié par ses empreintes digitales qu\'Interpol a obtenues depuis Rome.<br>Michel entre dans l\'agence de voyage, L\'Inter-Americana, où il est déjà venu le matin. Tolmatchoff, son ami, est là et a l\'argent pour lui. Mais le chèque est barré et, à cause du meurtre du motard, Michel n\'ose pas présenter son chèque à la banque. Tolmatchoff lui conseille de demander à une connaissance commune, Berrutti, qui doit être rentré de Tunis, d\'escompter le chèque. Michel n\'a pas trop confiance en Berrutti mais accepte. Il se sert du téléphone de Tolmatchoff pour appeler Berrutti qui n\'est pas rentré de voyage. Michel quitte l\'agence. En sortant, il croise deux hommes. Ceux-ci vont demander aux guichets s\'ils n\'ont pas vu un dénommé Michel Poiccard qui se fait adresser là son courrier ayant travaillé autrefois dans cette agence comme steward d\'Air-France. Tolmatchoff refuse de dénoncer son ami mais la guichetière qui ne l\'aime pas dit aux policiers que Michel est venu il y a cinq minutes. Ceux ci s\'engouffrent dans le métro Georges V. Michel y était effectivement rentré mais pour en ressortir de l\'autre coté de la rue afin d\'aller au cinéma. Le Normandy y passe Plus dure sera la chute. Michel s\'attarde devant une photo de Bogart. Alors qu\'il rentre dans la salle, la fermeture à l\'iris se fait sur le reflet des policiers qui le cherchent dans la rue.<br>En fin d\'après midi, Michel retrouve Patricia qui lui demande de l\'inviter à diner. Comme il n\'a pas d\'argent, il descend aux toilettes d\'un restaurant, y assomme un client et lui vole son argent avant de l\'enfermer aux WC. Il rejoint Patricia qui semble d\'accord pour passer la nuit avec lui. Mais elle se souvient soudain qu\'elle doit téléphoner pour rejoindre un journaliste du New York Herald tribune qui lui a promis une conférence de presse. Devant l\'insistance de Patricia, Michel qui a, dit-il laissé sa voiture, évidemment volée, à l\'opéra propose de la déposer. Ils parcourent les rues de Paris dans une 403 décapotable et Michel dépose Patricia devant la Pergola, en haut des Champs-Elysées. Comme Patricia refuse qu\'il l\'attende, il l\'insulte lui disant qu\'il ne veut plus la revoir : "Fout le camp, dégueulasse !".<br>Patricia rejoint le journalise au premier étage qui finit son café lui offre le livre qu\'il lui avait promis, Les palmiers sauvages de Faulkner. Il espère qu\'elle n\'aura pas le même destin que l\'héroïne : "Elle ne désire pas d\'enfant, mais l\'opération rate et elle meurt". Patricia est triste : "Si je pouvais creuser un trou par terre pour que personne me verra, je le ferrai … I don\'t know if I am unhappy because I am not free, or if I am not free because I am unhappy ". Le journaliste, pour la distraire, lui raconte une histoire drôle qui lui est arrivée à propos d\'une fille avec qui il voulait coucher mais à qui il a oublié de le demander. Patricia lui demande quand il la fera travailler. Il lui dit qu\'elle ira le lendemain à Orly interviewer le romancier Parvulesco. Il lui indiquera à quelle heure le lendemain après midi à son bureau. Il lui demande de rester avec lui "naturellement". Patricia hésite puis accepte tacitement de coucher avec lui, un peu par amitié mais surtout par intérêt.<br>Michel, qui était resté les espionner, les suit quittant la Pergola et marchant sur les Champs-Elysées, Van Doude enlaçant Patricia par les épaules. Ils rejoignent la voiture du journaliste garée devant un cinéma qui passe Hiroshima mon amour. Dans sa grosse décapotable anglaise Van Doude embrasse Patricia pendant que Michel consulte la dernière édition de France-Soir. Michel râle de voir partir Patricia avec Van Doude. Les lumières des Champs-Elysées s\'allument. La décapotable anglaise arrive en haut des Champs.<br>Jeudi matin. Tour Eiffel, vue probablement par Patricia qui descend du bus pour rejoindre gaiement son appartement. Elle se regarde dans une vitrine de magasin et examine la rondeur de son ventre. Sa clé n\'est pas sur le tableau de son hôtel. Patricia entre dans sa chambre et découvre Michel, allongé dans le lit.<br>Michel explique qu\'il n\'y avait plus de place au Claridge et qu\'il a pris sa clé. Comme Patricia est contrariée de sa présence, Michel lui demande de ne pas faire la tète. Elle ne connait pas l\'expression et Michel la lui explique (de travers !) en faisant des grimaces. Elle reconnait l\'avoir vu les suivre la veille au soir. Elle n\'arrive à penser à rien. Il lui reproche de l\'avoir abandonné hier, de ne pas partir avec lui à Rome. Elle nie avoir couché avec le journaliste, elle ne sait pas si elle l\'aime. Elle saura bientôt. "Les femmes ne veulent jamais faire en huit secondes ce qu\'elles veulent bien faire huit jours après" s\'emporte Michel en consultant le magasine de photos Female figures. Patricia voudrait qu\'ils soient Roméo et Juliette comme l\'atteste la reproduction des Amants de Picasso sur son mur. Il finit par lui dire qu\'il ne peut se passer d\'elle et lui affirme qu\'il pourra la faire rire sous huit secondes sans quoi il l\'étrangle. Il gagne son pari à sept trois quarts en affirmant : "Je parie que tu es tellement lâche que je parie que tu vas sourire" mais reçoit une claque quand il lui soulève la jupe. "Tu es lâche, c\'est dommage" dit-il. Et, comme elle nie, il réplique, sans appel : "Dès qu\'une fille dit que tout va très bien et qu\'elle n\'arrive pas à allumer sa cigarette, et bien, c\'est qu\'elle a peur de quelque chose". Michel refuse une Chesterfield de Patricia qui, en lui donnant ses propres cigarettes, découvre dans sa poche un passeport au nom de Laslo Kovacs. Michel lui ment en lui expliquant qu\'il a laissé le sien dans la voiture et que c\'est celui de son demi-frère. Il lui dit penser à la mort sans arrêt. Elle lui demande sans succès de lui dire quelque chose de gentil. Elle regarde un cendrier qu\'il lui avait offert. Elle lui montre sa nouvelle affiche, La petite Irène de Pierre-Auguste Renoir, qu\'elle hésite à poser à côte de Jacqueline avec des fleurs ou entre Nouvelle Année et La brute timide. Michel, qui veut coucher avec elle, s\'impatiente. "Les français disent que les choses sont pareilles quand elles ne le sont pas du tout". "Je voudrais coucher avec toi parce que tu es belle... parce que tu es laide". Patricia l\'accuse de mentir, Michel nie alors que la caméra s\'attarde sur Nouvelle Année, datée de 1955. Patricia se frotte l\'œil, affirme "Je te regarde jusqu\'à ce que vous ne me regardiez plus", "Oui moi aussi" dit-il en passant un doigt sur ses lèvres comme Bogart. Elle le regarde au travers de son affiche enroulée comme une longue vue. Le gros plan se fait sur le visage de Michel. Michel et Patricia s\'embrassent en gros plan devant la porte de la salle de bain où Patricia décide finalement de mettre son affiche.<br>Michel lui caresse les fesses sur sa jupe. Quand Patricia lui demande de décider qui est la plus jolie, elle ou la peinture de Renoir, il lui répond. "Dès que tu as peur ou que tu es étonnée, tu as un drôle de reflet dans les yeux. Je voudrais recoucher avec toi à cause de ce reflet". Les pieds dans le bidet, Patricia lui révèle alors qu\'elle est enceinte, probablement de lui. Elle est allée voir le docteur la veille au matin et doit revenir jeudi après-midi (dans une semaine donc) pour le résultat des analyses. "Tu aurais pu faire attention !" réplique Michel, mécontent. Il téléphone mais Antonio Berrutti n\'est toujours pas là puis, ensuite, à Tolmatchov pendant que Patricia passe un disque de Bach. Il lui raconte la blague du condamné à mort qui glisse sur la marche de l\'échafaud et déclare "décidément..". "De prés, tu as un visage de martien". "C\'est parce que je suis sur la lune". "Quelle idée d\'avoir un enfant !... Pourquoi tu ne te mets pas toute nue... Vous, les Américains, vous admirez Lafayette et Maurice Chevalier, les plus cons de tous les français". Il téléphone de nouveau à un certain Mansard, affirmant être Laslo Kovacs et qu\'il sera avec une américaine...Une voiture américaine précise-t-il pour Patricia. Celle-ci compte ses semaines de retard de règles face à la glace. Michel, irrité de ne pas trouvé Berrutti, soulève à nouveau la jupe de Patricia et reçoit une deuxième claque. Patricia, qui a demandé à Michel s\'il préférait les disques ou la radio, décide de mettre maintenant la radio tout en demandant à Michel pourquoi il n\'aime pas la musique. Il lui demande de l\'accompagner à Rome et d\'abandonner la Sorbonne. Elle lui dit qu\'il na jamais passé d\'examen. Il reconnait qu\'après le premier bac, il a plaqué, après il a fait autre chose, vendu des voitures à New York.<br>Comme il lui demande si elle a couché souvent avec des garçons, elle réplique : pas tellement souvent en comptant 7 sur ses doigts. Comme elle lui pose la même question, il lance plusieurs fois sa main vers elle (quatre fois plus deux doigts, soit 22) "Pas tellement non plus" dit-il faussement modeste. Elle voudrait habiter au Mexique où son père lui avait promis d\'aller. Michel est certain que Mexico est décevant, comme Stockholm où "les suédoises sont en général aussi moches que les parisiennes, comme à Londres. Non, les seules villes où toutes les filles que l\'on croise dans la rue sont assez jolies, pas sublimes d\'accord, mais comme toi, charmantes, des filles à qui l\'on peut mettre, je ne sais pas moi, quinze sur vingt parce qu\'elles ont toutes quelque chose, ce n\'est ni Rome, ni Paris ni Rio de Janeiro, c\'est (presque couvert par une sirène de voiture de pompiers) Lausanne et Genève". Il lui caresse tendrement le bras et les genoux. Patricia reconnait qu\'elle a peur : elle voudrait qu\'il l\'aime puis qu\'il ne l\'aime plus car est veut rester indépendante. "Je voudrais savoir ce qu\'il y a derrière ton visage, je le regarde depuis dix minutes et je ne sais rien, rien. Je ne suis pas triste mais j\'ai peur." Michel fait le geste de Bogart, lui dit "Gentille et douce Patricia, et, devant sa dénégation, alors, cruelle, idiote, sans cœur, lamentable, lâche méprisable". "Oui, oui" dit-elle en souriant. "Tu ne sais même pas mettre ton rouge à lèvres, brusquement je te trouve affreuse". Elle lui déclare qu\'il peut dire ce qu\'il veut : elle mettra ça dans son roman. Il veut lui enlever son chandail.<br>Elle lui demande s\'il connait William Faulkner, prenant sur sa table le roman offert par Van Doude. "Non, qui est-ce ? Tu as couché avec lui ?". "Tu as lu Les palmes sauvages … La dernière phrase, c\'est très beau : "Between grief and nothing, I will take grief, entre le chagrin et le néant, je choisis le chagrin… Et toi ? Tu choisirais quoi ?". "Montre tes doigts de pied. C\'est très important les doigts de pied chez une femme. Ne rigole pas. Le chagrin c\'est idiot, je choisis le néant, c\'est pas mieux. Mais le chagrin c\'est un compromis. Je veux tout ou rien. Depuis maintenant, je le sais." Il embrasse Patricia sur l\'épaule qui s\'est maintenant coiffée de son chapeau". "On se regarde les yeux dans les yeux et ça ne sert à rien" dit-elle tristement. Comme il l\'appelle "Patricia Franchini", elle réplique "Je déteste ce nom je voudrais m\'appeler Ingrid". Il lui demande de se mettre à genoux sur le lit pour la regarder. Il lui demande de rester avec lui. "Oui" dit-elle en se glissant sous les draps pendant que la radio annonce qu\'elle interrompt quelques instants ses programmes afin de procéder à la synchronisation de ses réseaux. Ils s\'amusent sous les draps et plaisantent. Il ôte la couverture car Patricia trouve qu\'il fait trop chaud. La radio annonce la reprise des émissions et propose de faire travailler en musique. Patricia l\'éteint.<br>Patricia récupère la chemise de Michel sur le lit et s\'en habille. Elle regarde Michel et lui demande Est-ce que tu connais un livre de Dylan Thomas qui s\'appelle Portrait de l\'artiste comme jeune chien ? Il demande l\'heure. Il est midi. Michel lui demande si "c\'était bien", "yes, sir" répond-elle. Il lui propose de dormir jusqu\'à ce soir. Mais Patricia doit aller s\'acheter une nouvelle robe. Il téléphone mais Antonio n\'est toujours pas passé. Elle lui rend sa chemise et lui demande si il veut qu\'elle mette un soutien-gorge puis, "Tu aimes mieux mes yeux, ma bouche ou mes épaules ?". Elle doit passer aux bureaux du journal. Il lui propose de l\'accompagner en voiture alors que la radio annonce que le général de Gaule doit se rendre avec Eisenhower à l\'arc de triomphe dans l\'après midi honorer le soldat inconnu. Michel parle de la guerre qu\'il a faite comme sentinelle et allonge Patricia sur le lit : "Je suis fatigué, je vais mourir". Ils enlèvent leurs lunettes, s\'embrassent. Les vues d\'avions de Versailles et de Notre dame sur une musique lyrique disent sans doute qu\'ils font l\'amour une deuxième fois.<br>Michel et Patricia ont pris leur déjeuner à la terrasse d\'un café. Il dit qu\'il va chercher la voiture au garage et revient dans cinq minutes. Comme il a abandonné la 403 (probablement vers Montparnasse où il avait affirmé un peu plus tôt avoir cherché Berrutti la veille au soir) il lui faut donc trouver une auto à voler dans les cinq minutes. Il dédaigne une 2CV, se fait repérer autour d\'une belle décapotable puis repère une Ford, Thunderbird blanche décapotable. Le conducteur en sort et entre dans un immeuble. Michel le suit, monte en ascenseur avec lui, sans dire un mot. Il le voit entrer dans un bureau. Aussitôt Michel redescend en trombe et démarre pour aller chercher Patricia.<br>En voiture, elle déclare avoir peur de vieillir. Elle lui demande de lui acheter une robe chez Dior ; il lui conseille d\'acheter ses robes chez Prisunic et de n\'aller chez Dior que pour téléphoner, c\'est gratuit. Pendant que Patricia s\'engouffre dans les bureaux du New York Herald Tribune, Michel achète France-Soir où sa photo s\'étale à la une. Un autre lecteur du journal le reconnait immédiatement. Alors que Patricia ressort avec une nouvelle robe à rayures des bureaux du journal, le mouchard s\'approche et s\'en va le dénoncer à deux policiers pour une seconde fermeture à l\'iris que se ré-ouvre sur Michel et Patricia à l\'aéroport.<br>Pendant que Patricia assiste à la conférence de presse, Lucien va vendre la Thunderbird prés de l\'aéroport à Claudius Mansard auquel il avait promis "l\'américaine" au téléphone le matin. Il lui propose 800 000 mais veut ne le payer que la semaine suivante tout en lui montrant qu\'il le tient car sa photo fait la une des journaux. Il est quinze heures trente et Michel demande à téléphoner. Antonio sera à L\'Escale vers quatre heures. Mansard refuse de lui faire une avance, même de 2 500 francs et a retiré le delco de la Ford. Michel le frappe et lui vole son portefeuille. Dans le taxi qui le conduit vers L\'Escale avec Patricia, Michel houspille le conducteur qui ne va pas assez vite. Effectivement, arrivé devant le café rue Saint-Denis où des filles tapinent, Michel apprend que Berrutti est parti depuis cinq minutes. Patricia veut rentrer au journal. Elle trouve que les robes des parisiennes sont trop courtes et que ça fait poule alors que cela donne à Michel l\'envie de leur soulever les jupes. Comme Patricia lui dit de ne pas se gêner pour elle, il arrête le taxi pour soulever la jupe d\'une passante. Il sort du taxi sans payer en entrainant Patricia vers les Champs-Elysées par un tunnel secret. Ils se séparent.<br>A peine arrivée au New York Herald Tribune, Patricia est rejointe par l\'inspecteur Vital qui lui demande si elle connait le garçon dont la photo est à la une de France-Soir. Elle nie puis reconnait Michel et l\'inspecteur lui affirme qu\'on l\'a vu ce matin, ici-même en compagnie de Michel pilotant une Thunderbird dont les deux policiers alertés par le mouchard ont relevé la plaque. Elle reconnait l\'avoir connu à Nice il y a trois semaines de cela où elle était en vacances. L\'inspecteur menace de lui retirer son passeport si elle ne l\'appelle pas dès qu\'elle verra Michel. Celui-ci, qui s\'est acheté une casquette, voit les policiers filer Patricia à sa sortie du journal. Celle-ci l\'en avertit également.<br>Michel suit le flic suivant Patricia sur les Champs-Elysées, envahis, suite à la visite d\'Eisenhower. Patricia se précipite au cinéma et entre dans un cinéma où l\'on projette Ce n\'est qu\'un au revoir de Ford et, à ce moment là, Le mystérieux docteur Korvo de Preminger. Elle s\'enfuit par la fenêtre des toilettes. Elle rejoint Michel devant le Mac-Mahon et repasse devant le cinéma ou l\'on voit l\'affiche du Mystérieux docteur Korvo. Le policier sort du cinéma mais choisit la mauvaise direction alors que des coups de feu de cinéma se font entendre. Ce sont ceux du western devant lequel, dans la salle, Michel et Patricia s\'embrassent en attendant la nuit. Off, Godard récite un faux dialogue du film : "Méfies-toi Jessica : au biseau des baisers le temps passe trop vite. Et vite et vite et vite les souvenirs brisés" "Vous faites erreur shérif, réplique la voix féminine : notre histoire est noble et tragique comme le masque d\'un tyran...". C\'est la nuit et Michel et Patricia quittent la salle où ils ont vu Westbound.<br>Un panneau lumineux près du drugstore Publicis annonce : "Le filet se resserre autour de Michel Poiccard". Patricia lit maintenant plus tranquillement France-soir où elle apprend que Michel est marié. Il le reconnait sans façon, ne sachant plus si c\'est sa femme ou lui qui a plaqué l\'autre, il y a maintenant bien longtemps. C\'est très mal d\'avoir été dénoncés se plaint Patricia. Non, ce n\'est pas anormal, c\'est normal, réplique Michel : "Les dénonciateur dénoncent, les cambrioleurs cambriolent, les assassins assassinent... les amoureux s\'aiment". Michel a récupéré la 403. Ils aiment la place de la Concorde qu\'ils traversent la nuit. Ils volent une Cadillac "El dorado" dans un garage. Un autre panneau lumineux indique "Michel Poiccard : arrestation imminente". Devant le Royal-saint-Germain, Michel, à la recherche d\'Antonio, est reconnu par Liliane. A la Pergola, Gaby, le serveur lui indique qu\'Antonio est à Montparnasse avec Karl Zumbar. Celui-ci lui indique qu\'Antonio est en face au Select. Antonio avec une jeune fille cherche à la photographier embrassant des hommes murs pour les faire chanter. Patricia retrouve le journaliste Van Doude avec lequel elle discute un peu. Antonio accepte d\'escompter le chèque d\'un million trois. Il le retrouvera le lendemain dans une planque sure, chez la suédoise de Zumbar, rue Campagne Première. La jeune suédoise finit une séance de photos. Quand elle s\'en va, Patricia met un disque, Le concerto pour clarinette de Mozart que Michel aime bien car son père était clarinettiste. Il regarde les livres : Abracadabra de Maurice Sachs sur lequel s\'affiche une citation de Lénine : "Nous sommes tous des morts en permission". Patricia regrette qu\'ils doivent dormir car, alors, ils vont êtres séparés : "on dit dormir ensemble mais ce n\'est pas vrai".<br>Vendredi, cinq heures de l\'après-midi. Patricia accepte d\'aller chercher France-Soir et du lait mais a l\'intention de téléphoner à l\'inspecteur Vital. Au kiosque de la loterie, on indique que Vendredi est un jour de chance. Au café où elle a demandé un scotch puis, faute de mieux un café, elle dénonce Michel en indiquant l\'adresse où il se trouve : onze, rue Campagne Première.<br>En rentrant, Michel lui annonce qu\'Antonio passe dans un quart d\'heure avec sa Simca sport qu\'il lui laissera pour partir en Italie avec elle. Elle lui dit qu\'elle l\'a dénoncé car elle ne veut plus partir avec lui. "Oui, je le savais : quand on parlait, je parlais de moi, et toi de toi. Alors que tu aurais dû parler de moi, et moi de toi." Patricia lui dit qu\'elle sait enfin ne plus être amoureuse de lui puisqu\'elle l\'a dénoncé : "Puisque je suis méchante avec toi, c\'est la preuve que je ne suis pas amoureuse de toi". "Il n\'a pas d\'amour malheureux" affirme Michel qui est fier de son indépendance et râle contre le raisonnement de Patricia. Michel dit qu\'il a envie d\'aller en prison. Puis il court avertir Berrutti qui arrive. Berrutti veut lui donner une arme en plus de la sacoche pleine d\'argent et de la voiture. Il refuse, réaffirmant. "Oui, j\'en ai marre, je suis fatigué, j\'ai envie de dormir". Vital et des policiers armés arrivent alors. Avant de s\'enfuir, Berrutti lance son révolver à Michel qui le ramasse. Il reçoit alors une balle dans le dos et s\'enfuit, titubant, vers Montparnasse. Patricia court à sa rencontre<br>Michel est à terre, perdant son sang et Patricia, debout, le regarde. Il refait lentement les mêmes grimaces qu\'il lui avait faites durant leur longue conversation. Il murmure "C\'est vraiment dégueulasse" et meurt. Patricia demande au commissaire Vital ce qu\'il a dit et celui-ci déforme les dernier mots de Michel : "Il a dit : vous êtes vraiment une dégueulasse". Patricia passe un doigt sur ses lèvres en hommage au gimmick de Michel inspiré par Bogart mais en le déformant faisant le tour de ses lèvres tout en s\'interrogeant "Qu\'est-ce que c\'est dégueulasse ?". Puis elle tourne la tête.<br>Tourné en décors réel, éclairé sans lumière d\'appoint, joué par deux acteurs qui deviendront dès lors des icônes de la modernité, monté avec un sens génial et permanant de l\'invention, du sens du rythme et de la beauté, A bout de souffle touche juste et fort à chacun de ses plans et reste, à chacune de ses visions, un des films les plus lyriques de toute l\'histoire du cinéma. Y est mis en scène la nécessaire trahison de l\'homme à bout de souffle par la femme, tragédie de l\'existence que seul l\'art peut rétribuer. Seront également décrits ici la genèse et la reception du film.',
    '1960-02-02 12:00:00'
    1,
    2
),
(
    3,
    'La strada'
    'Gelsomina, une femme enfant naive et généreuse, a été vendue par sa mère à un hercule de foire brutal et obtus, Zampano, qui accomplit un numéro de briseur de chaines sur les places publiques.<br>A bord d\'un étrange équipage - une moto à trois roues aménagée en roulotte - le couple sillonne les routes d\'Italie, menant la rude et triste vie des forains. Zampano ne cesse de rudoyer sa compagne et de la tromper sans vergogne. Elle s\'efforce pourtant de lui complaire avec une touchante obstination.<br>Surgit un autre saltimbanque, un violoniste-poète-philosophe-farceur : Il Matto ("Le Fou"). Il agace à plaisir le pauvre Zampano et raconte à Gelsomina de très belles et très édifiantes histoires sous forme de paraboles. Exaspéré, Zampano finit un jour par le tuer.<br>Le temps passe... Gelsomina, prostrée, ne peut se consoler de la mort du "Fou". Zampano l\'abandonne sur la route. Des années plus tard, il apprend qu\'elle est morte. Alors, pour la première fois de sa vie, il pleure.',
    '1954-02-02 12:00:00',
    2,
    3
),
(
    4,
    'La dolce vita',
    'Une statue du Christ est transportée par hélicoptère au-dessus de Rome de l\'Appia Antica au Vatican. Marcello est chroniqueur mondain dans un journal spécialisé dans les indiscrétions et fréquente la faune romaine en quête d\'échos croustillants. Au cours d\'une tournée de routine, il rencontre son amie Maddalena, une riche héritière désoeuvrée. Ils quittent ensemble le cabaret et traînent dans Rome où ils rencontrent une prostituée qu\'ils raccompagnent en banlieue et se font prêter sa chambre pour y faire l\'amour.<br>Le lendemain matin, Marcello trouve Emma, sa compagne régulière, inanimée auprès d\'un tube vide de comprimés. Il la conduit à l\'hôpital. Elle en réchappe.<br>A l\'aérodrome de Rome, arrivée triomphale de Sylvia, grande star hollywodienne d\'origine suédoise. Marcello, à la fois envoûté et calculateur, manœuvre pour se trouver le plus souvent possible seul avec la star. Il la suit dans sa visite du Vatican où elle est déguisée en prêtre, lors de son interview par les journalistes, à la fête dans les ruines, puis se promène la nuit jusqu\'aux fontaines de Trevi.<br>Marcello se rend chez Steiner qui fut son maître lorsqu\'il avait des ambitions littéraires et dont il supporte mal les reproches muets maintenant qu\'il s\'est fourvoyé dans le journalisme à scandale.<br>Le travail de Marcello l\'appelle hors de Rome, sur les lieux d\'un prétendu miracle : deux enfants, manipulés par une famille peu scrupuleuse, attirent les foules en simulant des apparitions de la Vierge. Après la montée de la ferveur, la nuit sous l\'orage, le jour se lève sur l\'escroquerie, la mort d\'un handicapé et la détresse des croyants trompés.<br>Marcello et Emma sont invités à une soirée chez Steiner. Triée sur le volet, la compagnie rivalise d\'intelligence pour le seul plaisir de la joute intellectuelle. À Marcello qui lui demande conseil, Steiner révèle ses propres doutes et sa crainte du chaos tenu en respect par une fragile sérénité.<br>Retiré dans un petit restaurant de la plage du littoral romain, L\'arcobaleno, Marcello essaye de reprendre l\'écriture. Il est distrait par le va-et-vient de la serveuse, une jeune fille qui incarne l\'innocence et la pureté.<br>De retour à Rome, Marcello retrouve son père, de passage en ville. Celui-ci entraîne Marcello sur les traces de sa jeunesse, dans un cabaret qu\'il a jadis fréquenté. Ils en sortent aux petites heures, le père de Marcello au bras de Fanny, une danseuse qu\'ils raccompagnent chez elle. L\'aube se lève sur un malaise cardiaque qui rappelle le vieil homme à la réalité.<br>Entraîné par Nico, une jeune femme qu\'il a connue lorsqu\'elle était mannequin, Marcello se joint à un groupe d\'aristocrates oisifs qui investissent un château de la campagne romaine pour une fête décadente. Marcello croit y avoir retrouvé Maddalena. Après une fin de partie dans un pavillon délabré, l\'aube trouve les invités défaits et fatigués.<br>Sur une route de nuit, Marcello et Emma se disputent dans une voiture arrêtée. Il la chasse. À l\'aube, il revient la chercher.<br>Son travail amène Marcello à être informé le premier du suicide de Steiner. Il se rend chez lui et examine la scène avec la police : Steiner s\'est donné la mort après avoir tué ses deux enfants.<br>Marcello et un groupe de noctambules investissent une villa du bord de mer pour y terminer la soirée chez une jeune femme fête son divorce. Interpellé par des invités sur ses ambitions littéraires passées, Marcello revendique le choix de la déchéance. Chassés de la villa à l\'aube, les noctambules se retrouvent sur la plage, où les pêcheurs hissent un filet où agonise un monstre marin. Après avoir contemplé longuement l\'œil glauque du monstre, Marcello entend une voix l\'appeler. C\'est la jeune fille du restaurant Arcobaleno qui l\'interpelle. Séparé d\'elle par la marée qui monte, Marcellone la reconnait pas et lui tourne le dos pour rejoindre le groupe des noctambules. Le film se termine sur un gros plan du visage de la jeune fille.',
    '1960-02-02 12:00:00',
    2,
    3
),
(
    
),

INSERT INTO acteur_jouer_film (ext_acteur_id, ext_film_id INT) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6);


