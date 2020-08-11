drop table movie;
drop table movieCast;
drop table country;
drop table director;
drop table movieGenre;

create table country(
 	countryId number(10),
 	countryName varchar(20),
 	primary key (countryId)
);

insert into country values(2208,'Spain');
insert into country values(2209,'Brazil');
insert into country values(2201,'Germany');
insert into country values(2202,'France');
insert into country values(2203,'Turkey');
insert into country values(2204,'United Kingdom');
insert into country values(2205,'Australia');
insert into country values(2206,'China');
insert into country values(2207,'India');
insert into country values(2211,'Bangladesh');
insert into country values(2210,'USA');
insert into country values(2212,'Korean');
insert into country values(2213,'Ireland');


create table director(
directorId number(10),
Director_name varchar(40),
primary key (directorId)
);

insert into director values(100,'Guillermo del Toro');
insert into director values(102,'Fernando Meirelles');
insert into director values(103,'FlorianHenckelvon Donnersmarck');
insert into director values(104,'Yann Samuel');
insert into director values(105,'Mahsun Kırmızıgl');
insert into director values(106,'Jonathan Newman');
insert into director values(107,'George Miller');
insert into director values(108,'Wilson Yip');
insert into director values(109,'Madhu C.Narayanan');
insert into director values(110,'Tauquir Ahmed');
insert into director values(111,'Anthony  joe Russo');
insert into director values(112,'Paul Thomas Anderson');
insert into director values(113,'Jee-woon Kim');
insert into director values(114,'Martin Brest');
insert into director values(115,'Hwan-kyung Lee');
insert into director values(116,'Robert Zemeckis');
insert into director values(117,'Rob Reiner');
insert into director values(118,'Mostofa Sarwar Farooki');
insert into director values(119,'Anand Tucker');
insert into director values(120,'Wes Anderson');
insert into director values(121,'Quentin Tarantino');
insert into director values(122,'Anjali Menon');
insert into director values(123,'Karan Johar');







create table movie(
	movieId number(10),
	countryId number(10),
	directorId number(10),
	budget varchar(60),
	year number(10),
	IMDBrating number(4,3),
	runtime varchar(50),
	title varchar(120),
	primary key (movieId),
	foreign key(countryId) references country(countryId),
	foreign key(directorId) references director(directorId)
);

insert into movie values(001,2208,100,'$19 million',2006,8.2,'119minutes','Pans Labyrinth');
insert into movie values(002,2209,102,'$3.3 million',2002,8.6,'130 minutes','City Of God');
insert into movie values(003,2201,103,'$2 million',2006,8.4,'137 minutes','The Lives of Others');
insert into movie values(004,2202,104,'$6.1 million',2003,7.6,'92 minutes','Love Me If You Dare');
insert into movie values(005,2203,105,'Did not mentioned',2015,7.7,'136 minutes','Muicize');
insert into movie values(006,2204,106,'Did not mentioned',2011,6.9,'90 minutes','Foster');
insert into movie values(007,2205,107,'$150–185 million',2015,8.1,'120 minutes','Mad Max: Fury Road');
insert into movie values(008,2206,108,'$11715578',2008,8.0,'108 minutes','Ip Man');
insert into movie values(009,2207,109,'₹6.5 crore',2019,8.6,'135 minutes','Kumbalangi Nights');
insert into movie values(010,2211,110,'Did not mentioned',2016,9.0,'100 minutes','Oggatonama');
insert into movie values(011,2210,111,'$356 million',2019,8.4,'181 minutes','Avengers:Endgame');
insert into movie values(012,2210,112,'$25,000,000',2007,8.2,'2h 38min','There Will Be Blood');
insert into movie values(013,2212,113,'Did not mentioned',2010,7.8,'2h 24min','I Saw the Devil');
insert into movie values(014,2210,114,'$31,000,000',1993,8.0,'2h 36min','Scent of a Woman');
insert into movie values(015,2212,115,'$31,000,000',2013,8.2,'2h 07min','Miracle in Cell No. 7');
insert into movie values(016,2210,116,'$55,000,000',1994,8.8,'144 minutes','Forrest Gump');
insert into movie values(017,2210,117,'$14,000,000',2010,7.7,'90 minutes','Flipped');
insert into movie values(018,2210,117,'$16,000,000',1989,7.6,'95 minutes','When Harry Met Sally...');
insert into movie values(019,2210,117,'$45,000,000',2007,7.4,'97 minutes','The Bucket List');
insert into movie values(020,2210,117,'$8,000,000',1986,8.1,'89 minutes','Stand by Me');
insert into movie values(021,2211,110,'Did not mentioned',2006,7.3,'100 minutes','Rupkothar Golpo');
insert into movie values(022,2211,110,'Did not mentioned',2017,8.2,'143 minutes','Haldaa');
insert into movie values(023,2211,110,'Did not mentioned',2007,7.8,'128 minutes','Daruchini Dwip');
insert into movie values(024,2210,100,'$19 million',2017,7.3,'123minutes','The Shape of Water');
insert into movie values(025,2211,118,'Did not mentioned',2017,6.2,'105 minutes','No Bed of Roses');
insert into movie values(026,2211,118,'Did not mentioned',2012,8.2,'106 minutes','Television');
insert into movie values(027,2211,118,'Did not mentioned',2007,8.1,'106 minutes','Made in Bangladesh');
insert into movie values(028,2211,118,'Did not mentioned',2004,7.5,'148 minutes','Bachelor');
insert into movie values(029,2211,118,'Did not mentioned',2009,7.1,'123 minutes','Third Person Singular Number');
insert into movie values(030,2210,100,'$60–66 million',2004,6.8,'122minutes','Hellboy');
insert into movie values(031,2213,119,'$19 million',2010,6.5,'100minutes','Leap Year');
insert into movie values(032,2210,120,'$16 million',2012,7.8,'94minutes','Moonrise Kingdom');
insert into movie values(033,2201,120,'$16 million',2018,7.9,'101minutes','Isle of Dogs');
insert into movie values(034,2204,120,'$40 million',2009,7.9,'88minutes','Isle of Dogs');
insert into movie values(035,2205,107,'$100 million',2006,6.4,'108 minutes','Happy Feet');
insert into movie values(036,2212,113,'$10 million',2008,7.3,'139 minutes','The Good, the Bad, the Weird');
insert into movie values(037,2212,113,'$10 million',2005,7.6,'120 minutes','A Bittersweet Life');
insert into movie values(038,2210,121,'$30 million',2003,8.1,'111 minutes','Kill Bill: Volume 1');
insert into movie values(039,2210,121,'$70 million',2009,8.3,'153 minutes','Inglourious Basterds');
insert into movie values(040,2210,121,'$2 million',1992,8.3,'99 minutes','Reservoir Dogs');
insert into movie values(041,2210,121,'$100 million',2012,8.4,'165 minutes','Django Unchained');
insert into movie values(042,2207,122,'₹10 crore',2014,8.3,'175 minutes','Bangalore Days');
insert into movie values(043,2207,122,'₹20 crore',2018,7.6,'175 minutes','Koode');
insert into movie values(044,2207,123,'₹40 crore',2001,7.4,'210 minutes','Kabhi Khushi Kabhie Gham...');
insert into movie values(045,2207,123,'₹14 crore',1998,7.6,'185 minutes','Kuch Kuch Hota Hai');
insert into movie values(046,2207,123,'₹40 crore',2010,8.0,'165 minutes','My Name Is Khan');
insert into movie values(047,2207,123,'₹50 crore',2006,6.1,'192 minutes','Kabhi Alvida Naa Kehna');
insert into movie values(048,2210,112,'$13 millions',1999,8.0,'188 minutes','Magnolia');
insert into movie values(049,2210,112,'$15 millions',1997,7.9,'155 minutes','Boogie Nights');
insert into movie values(050,2210,112,'$35 millions',2017,7.5,'130 minutes','Phantom Thread');


 create table movieCast(
 	moviecastId number(15),
 	movieId number(10),
 	Castname varchar(100),
 	primary key(moviecastId),
 	foreign key(movieId) references movie(movieId)
 );


insert into moviecast values (01,001,'Sergi Lopez');
insert into moviecast values (02,002,'Alexandre Rodrigues');
insert into moviecast values (03,002,'Leandro Firmino da Hora');
insert into moviecast values (04,003,'Sebastian Koch');
insert into moviecast values (05,003,'Martina Gedeck');
insert into moviecast values (06,004,'Marion Cotillard');
insert into moviecast values (07,004,'Guillaume Canet');
insert into moviecast values (08,005,'Mahsun Kırmızıgl');
insert into moviecast values (09,006,'Ioan Gruffudd');
insert into moviecast values (10,006,'Toni Collette');
insert into moviecast values (11,007,'Tom Hardy');
insert into moviecast values (12,007,'Charlize Theron');
insert into moviecast values (13,008,'Donnie Yen');
insert into moviecast values (14,009,'Fahad Faasil');
insert into moviecast values (15,010,'Shahiduzzaman Selim');
insert into moviecast values (16,010,'Fazlur Rahman Babu');
insert into moviecast values (17,011,'Chris Evans');
insert into moviecast values (18,011,'Scarlet Johanson');
insert into moviecast values (19,011,'Robert Downey Jr.');
insert into moviecast values (20,012,'Daniel Day-Lewis');
insert into moviecast values (21,013,'Byung-hun Lee');
insert into moviecast values (22,014,'Al Pacino');
insert into moviecast values (23,015,'Seung-ryong Ryu');
insert into moviecast values (24,016,'Tom Hanks');
insert into moviecast values (25,017,'Madeline Carroll');
insert into moviecast values (26,018,'Meg Ryan');
insert into moviecast values (27,019,'Jack Nicholson');
insert into moviecast values (28,019,'Morgan Freeman');
insert into moviecast values (29,020,'Wil Wheaton');
insert into moviecast values (30,021,'Tauquir Ahmed');
insert into moviecast values (31,021,'Chanchal Chowdhury');
insert into moviecast values (32,022,'Zahid Hasan');
insert into moviecast values (33,022,'Mosharaf Karim');
insert into moviecast values (34,023,'Mosharaf Karim');
insert into moviecast values (35,023,'Riaz');
insert into moviecast values (36,024,'Sally Hawkins');
insert into moviecast values (37,025,'Irrfan Khan');
insert into moviecast values (38,025,'Nusrat Imrose Tisha');
insert into moviecast values (39,026,'Nusrat Imrose Tisha');
insert into moviecast values (40,026,'Chanchal Chowdhury');
insert into moviecast values (41,027,'Zahid Hasan');
insert into moviecast values (42,028,'Jaya Ahsan');
insert into moviecast values (43,029,'Nusrat Imrose Tisha');
insert into moviecast values (44,029,'Mosharaf Karim');
insert into moviecast values (45,030,'Ron Perlman');
insert into moviecast values (46,031,'Amy Adams');
insert into moviecast values (47,032,'Edward Norton');
insert into moviecast values (48,033,'Scarlet Johanson');
insert into moviecast values (49,034,'Bill Murray');
insert into moviecast values (50,035,'Hugh Jackman');
insert into moviecast values (51,036,'Lee Byung‑hun');
insert into moviecast values (52,037,'Lee Byung‑hun');
insert into moviecast values (53,038,'Uma Thurman');
insert into moviecast values (54,039,'Brad Pitt');
insert into moviecast values (55,040,'Chris Penn');
insert into moviecast values (56,041,'Jamie Foxx');
insert into moviecast values (57,042,'Fahad Faasil');
insert into moviecast values (58,042,'Nazriya Nazim');
insert into moviecast values (59,043,'Nazriya Nazim');
insert into moviecast values (60,044,'Kajol');
insert into moviecast values (61,044,'Shahrukh Khan');
insert into moviecast values (62,045,'Kajol');
insert into moviecast values (63,045,'Shahrukh Khan');
insert into moviecast values (64,046,'Kajol');
insert into moviecast values (65,046,'Shahrukh Khan');
insert into moviecast values (66,047,'Shahrukh Khan');
insert into moviecast values (67,048,'Tom Cruise');
insert into moviecast values (68,049,'Mark Wahlberg');
insert into moviecast values (69,050,'Daniel Day-Lewis');

create table movieGenre(
movieId number(10),
genreName varchar(50),
primary key (movieId),
foreign key(movieId) references movie(movieId)
);

insert into movieGenre values(001,'fantasy drama');
insert into movieGenre values(002,'Crime film');
insert into movieGenre values(003,'Drama film');
insert into movieGenre values(004,'Romantic comedy');
insert into movieGenre values(005,'Family Drama');
insert into movieGenre values(006,'Family Drama');
insert into movieGenre values(007,'Action Film');
insert into movieGenre values(008,'Action Film');
insert into movieGenre values(009,'Family Drama');
insert into movieGenre values(010,'Family Drama');
insert into movieGenre values(011,'FamilyDramaAction');
insert into movieGenre values(012,'Drama');
insert into movieGenre values(013,'ActionThriller');
insert into movieGenre values(014,'Drama');
insert into movieGenre values(015,'Comedy Drama');
insert into movieGenre values(016,'Romance Drama');
insert into movieGenre values(017,'Romance Drama');
insert into movieGenre values(018,'Romance Drama');
insert into movieGenre values(019,'Comedy Drama');
insert into movieGenre values(020,'Adventure Drama');
insert into movieGenre values(021,'Drama');
insert into movieGenre values(022,'Drama');
insert into movieGenre values(023,'Drama Romance');
insert into movieGenre values(024,'Drama Fantasy');
insert into movieGenre values(025,'Drama');
insert into movieGenre values(026,'Drama');
insert into movieGenre values(027,'Comedy Drama');
insert into movieGenre values(028,'Drama');
insert into movieGenre values(029,'Drama');
insert into movieGenre values(030,'Action Film');
insert into movieGenre values(031,'Romance Drama');
insert into movieGenre values(032,'Romance Drama');
insert into movieGenre values(033,'Animated Film');
insert into movieGenre values(034,'Animated Film');
insert into movieGenre values(035,'Animated Film');
insert into movieGenre values(036,'Action Film');
insert into movieGenre values(037,'Action Film');
insert into movieGenre values(038,'Action Film');
insert into movieGenre values(039,'Action Film');
insert into movieGenre values(040,'Action Film');
insert into movieGenre values(041,'Action Film');
insert into movieGenre values(042,'Drama Romance');
insert into movieGenre values(043,'Drama Romance');
insert into movieGenre values(044,'Drama Romance');
insert into movieGenre values(045,'Drama Romance');
insert into movieGenre values(046,'Drama Romance');
insert into movieGenre values(047,'Drama Romance');
insert into movieGenre values(048,'Drama Romance');
insert into movieGenre values(049,'Drama');
insert into movieGenre values(050,'Drama');




select  DISTINCT(year) from movie;
select distinct(castname) from moviecast;
select distinct(director_name) from director;
select distinct(countryname) from country;
select  DISTINCT(title) from movie;
select  DISTINCT(budget) from movie;
select  DISTINCT(genrename) from moviegenre;


 select title,countryname
   from movie,country
   where movie.countryid=country.countryid;

select movie.title,director.director_name
   from movie,director
   where movie.directorid=director.directorid;

select title,castname
   from movie,moviecast
   where movie.movieid=moviecast.movieid;

select title,genrename
   from movie,moviegenre
   where movie.movieid=moviegenre.movieid;

select movie.movieid,movie.title
    from movie
   inner join moviegenre on movie.movieid=moviegenre.movieid;

select movie.movieid,movie.title
       from movie
    left join moviegenre on movie.movieid=moviegenre.movieid;

select title,year
    from movie
    union
    select countryname,countryid
    from country
    union
    select director_name,directorid
    from director;

select title
    from movie
    union
    select countryname
    from country
    union
    select director_name
    from director
    union
   select castname
   from moviecast;


select castname
    from moviecast
    group by castname
    having count(castname) >1;

select title,runtime,budget
from movie;

Select * from movie
  order by year;

Select * from movie
  order by year desc;


select title
from movie
order by year;

Select * from movie
  order by imdbrating;

select title 
from movie
order by imdbrating;



Select * from movie
  order by directorId;

select title 
from movie
order by directorid;

select title 
from movie
order by countryid;


select *  from movie
   where title like 'Foster';


select *  from movie
   where title like 'Mad Max: Fury Road';

 select * from movie
   where countryid like '2201';


select title
from movie 
where countryid like '2210';


select title
from movie 
where countryid like '2207';


select * from movie
   where countryid in(select countryid from movie);

 select * from movie
    where directorid not in ('105','106');

select * from movie
    where year not between 2002 and 2006;

select * from movie
    where year between 2002 and 2006;



select * from movie;

select castname
   from moviecast
   where movieid='029';

select title
    from movie
    where movieid='029';


select title
    from movie
    where year='2006';


select movieid
from moviecast
where castname='Nusrat Imrose Tisha';



 select director_name
    from director
    where directorid='117';

select title
    from movie
    where directorid='117';

select title
    from movie
    where countryid='2211';


select max(budget) from movie;


select min(budget) from movie;









