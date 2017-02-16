use tp_symfony_cinema;

alter table film add affiche_url text;

update film set affiche_url='https://st.kp.yandex.net/images/film_big/18508.jpg' where id=1;
update film set affiche_url='https://media.senscritique.com/media/000015335335/source_big/A_bout_de_souffle.jpg' where id=2;
update film set affiche_url='http://www.cinemotions.com/affiche.La-Strada.10244.jpg' where id=3;
update film set affiche_url='http://fr.web.img4.acsta.net/medias/nmedia/18/64/12/64/18753936.jpg' where id=4;