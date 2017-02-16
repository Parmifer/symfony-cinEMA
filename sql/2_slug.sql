use tp_symfony_cinema;

update film set slug='une-histoire-d-eau' where id=1;
update film set slug='a-bout-de-souffle' where id=2;
update film set slug='la-strada' where id=3;
update film set slug='dolce-vita' where id=4;

alter table genre add slug tinytext;

update genre set slug='comedie-sentimentale' where id=1;
update genre set slug='film-noir' where id=2;
update genre set slug='drame-psychologique' where id=3;
update genre set slug='thriller' where id=4;
update genre set slug='science-fiction' where id=5;