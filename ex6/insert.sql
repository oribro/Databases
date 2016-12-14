insert into player values(1, 'Eliav', 'Mor', 'E', 0, 0);
insert into player values(2, 'Nimrod', 'Mor', 'N', 0, 0);
insert into player values(3, 'Itay', 'Tagar', 'I', 0, 0);
insert into player values(4, 'Amoss', 'Gropp', 'A', 0, 0);
insert into player values(5, 'Ori', 'Korner', 'K', 0, 0);
insert into player values(6, 'Abuhay', 'Abuny', 'Chuck', 0, 0);
insert into player values(7, 'Yaniv', 'Swisa', 'Y', 0, 0);
insert into player values(8, 'Nadav', 'Choen', 'NC', 0, 0);
insert into player values(9, 'Anaelle', 'Benistri', 'Bella', 0 ,0);
insert into location values(100, 'Jerusalem');
insert into location values(101, 'Bnei-Brak');
insert into location values(102, 'New-York');
insert into location values(103, 'Amsterdam');
insert into location values(104, 'Tel-Aviv');
insert into location values(105, 'Haifa');
insert into match values(0,6,8,54,53,104, current_timestamp);
insert into match values(1,5,1,46,45,104, current_timestamp);
insert into match values(2,5,3,100,99,104, current_timestamp);
insert into match values(3,8,4,51,50,104, current_timestamp);
insert into match values(4,1,9,18,17,101, current_timestamp);
insert into match values(5,5,7,10,9,103, current_timestamp);
insert into match values(6,5,1,39,38,105, current_timestamp);
insert into match values(7,2,5,72,71,102, current_timestamp);
insert into match values(8,2,4,9,8,100, current_timestamp);
insert into match values(9,2,5,93,92,105, current_timestamp);
insert into match values(10,1,5,96,95,100, current_timestamp);
insert into match values(11,2,9,27,26,102, current_timestamp);
insert into match values(12,7,6,7,6,100, current_timestamp);
insert into match values(13,4,3,99,98,101, current_timestamp);
insert into match values(14,3,4,39,38,100, current_timestamp);
insert into match values(15,8,2,92,91,102, current_timestamp);
insert into match values(16,6,3,33,32,105, current_timestamp);
insert into match values(17,8,5,89,88,102, current_timestamp);
insert into match values(18,6,8,39,38,101, current_timestamp);
insert into match values(19,3,5,37,36,102, current_timestamp);
insert into match values(20,3,1,47,46,101, current_timestamp);
insert into match values(21,9,6,86,85,105, current_timestamp);
insert into match values(22,5,9,21,20,102, current_timestamp);
insert into match values(23,1,9,76,75,105, current_timestamp);
insert into match values(24,4,3,32,31,105, current_timestamp);
insert into match values(25,7,8,21,20,101, current_timestamp);
insert into match values(26,8,7,37,36,100, current_timestamp);
insert into match values(27,4,1,78,77,100, current_timestamp);
insert into match values(28,1,5,69,68,105, current_timestamp);
insert into match values(29,9,5,13,12,105, current_timestamp);
insert into match values(30,5,6,66,65,105, current_timestamp);
insert into match values(31,5,9,27,26,103, current_timestamp);
insert into match values(32,4,3,9,8,103, current_timestamp);
insert into match values(33,2,8,78,77,102, current_timestamp);
insert into match values(34,4,1,1,0,102, current_timestamp);
insert into match values(35,4,9,53,52,101, current_timestamp);
insert into match values(36,1,8,52,51,100, current_timestamp);
insert into match values(37,8,5,26,25,102, current_timestamp);
insert into match values(38,5,4,21,20,104, current_timestamp);
insert into match values(39,6,8,70,69,103, current_timestamp);
insert into match values(40,9,4,8,7,101, current_timestamp);
insert into match values(41,6,2,96,95,103, current_timestamp);
insert into match values(42,1,3,26,25,101, current_timestamp);
insert into match values(43,6,1,50,49,103, current_timestamp);
insert into match values(44,3,9,89,88,101, current_timestamp);
insert into match values(45,9,4,96,95,101, current_timestamp);
insert into match values(46,9,7,25,24,101, current_timestamp);
insert into match values(47,5,2,4,3,104, current_timestamp);
insert into match values(48,4,9,86,85,103, current_timestamp);
insert into match values(49,4,6,61,60,105, current_timestamp);
/** insert inactive player with rating - 1, and see if q5.sql will fix him to bix active.*/
insert into player values(10, 'God', 'Jesus', 'Alla', -1, 1);
select *
from player
order by pid;
/** print tables after running q1.sql, q2.sql and a3.sql */
select *
from location
order by locid;
select *
from match
order by matchid;
select *
from top
order by pid;
/** Check q4.sql, clear location table and print it. */
delete from location;
select *
from location
order by locid;
