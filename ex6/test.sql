
\i create.sql
\i trig.sql


insert into player(firstname, lastname, nickname) values('AAA', 'AA', 'A');
insert into player(firstname, lastname, nickname) values('BBB', 'BB', 'B');
insert into player(firstname, lastname, nickname) values('CCC', 'CC', 'C');
insert into player(firstname, lastname, nickname) values('DDD', 'DD', 'D');
insert into player(firstname, lastname, nickname) values('EEE', 'EE', 'E');
insert into player(firstname, lastname, nickname) values('FFF', 'FF', 'F');
insert into player(firstname, lastname, nickname) values('GGG', 'GG', 'G');
insert into player(firstname, lastname, nickname) values('HHH', 'HH', 'H');
insert into player(firstname, lastname, nickname) values('III', 'II', 'I');
insert into player(firstname, lastname, nickname) values('JJJ', 'JJ', 'J');


select * from player;


insert into location(name) values('ISR');
insert into location(name) values('MX');
insert into location(name) values('BEL');
insert into location(name) values('UK');
insert into location(name) values('USA');
insert into location(name) values('RUS');
insert into location(name) values('GER');


select * from location;
delete from location where name='BEL';
select * from location;


----------------     TRIGGERS CHECK   ----------------------



insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(1, 5, 20, 15, 7, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(1, 2, 30, 14, 2, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(10, 5, 30, 18, 1, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(10, 3, 10, 2, 6, current_timestamp);

select * from top;

insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(8, 5, 22, 12, 5, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(9, 5, 60, 40, 4, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(4, 6, 13, 12, 2, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(7, 5, 11, 9, 7, current_timestamp);
insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(8, 9, 40, 30, 6, current_timestamp);

select * from top;

select * from player;

insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(8, 5, 40, 30, 6, current_timestamp);


select reactivate();
select * from player;



select reactivate();
select reactivate();


insert into match(winnerId, loserId, winnerscore, loserscore, locationid, time) values(8, 5, 40, 30, 6, current_timestamp);


select * from player;

select * from top;

select * from location;
delete from location;
select * from location;


\i drop.sql









