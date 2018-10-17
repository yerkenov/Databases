CREATE DATABASE lab6;
/* Delete the tables if they already exist */
drop table if exists Movie;
drop table if exists Reviewer;
drop table if exists Rating;

/* Create the schema for our tables */
create table Movie(mID int, title text, year int, director text);
create table Reviewer(rID int, name text);
create table Rating(rID int, mID int, stars int, ratingDate date);

/* Populate the tables with our data */
insert into Movie values(101, 'Gone with the Wind', 1939, 'Victor Fleming');
insert into Movie values(102, 'Star Wars', 1977, 'George Lucas');
insert into Movie values(103, 'The Sound of Music', 1965, 'Robert Wise');
insert into Movie values(104, 'E.T.', 1982, 'Steven Spielberg');
insert into Movie values(105, 'Titanic', 1997, 'James Cameron');
insert into Movie values(106, 'Snow White', 1937, null);
insert into Movie values(107, 'Avatar', 2009, 'James Cameron');
insert into Movie values(108, 'Raiders of the Lost Ark', 1981, 'Steven Spielberg');

insert into Reviewer values(201, 'Sarah Martinez');
insert into Reviewer values(202, 'Daniel Lewis');
insert into Reviewer values(203, 'Brittany Harris');
insert into Reviewer values(204, 'Mike Anderson');
insert into Reviewer values(205, 'Chris Jackson');
insert into Reviewer values(206, 'Elizabeth Thomas');
insert into Reviewer values(207, 'James Cameron');
insert into Reviewer values(208, 'Ashley White');

insert into Rating values(201, 101, 2, '2011-01-22');
insert into Rating values(201, 101, 4, '2011-01-27');
insert into Rating values(202, 106, 4, null);
insert into Rating values(203, 103, 2, '2011-01-20');
insert into Rating values(203, 108, 4, '2011-01-12');
insert into Rating values(203, 108, 2, '2011-01-30');
insert into Rating values(204, 101, 3, '2011-01-09');
insert into Rating values(205, 103, 3, '2011-01-27');
insert into Rating values(205, 104, 2, '2011-01-22');
insert into Rating values(205, 108, 4, null);
insert into Rating values(206, 107, 3, '2011-01-15');
insert into Rating values(206, 106, 5, '2011-01-19');
insert into Rating values(207, 107, 5, '2011-01-20');
insert into Rating values(208, 104, 3, '2011-01-02');


ALTER TABLE Movie ADD CONSTRAINT mID_pk PRIMARY KEY (mID); --1

ALTER TABLE Movie ADD CONSTRAINT title_movie_unique UNIQUE (title, year);

ALTER TABLE Reviewer ADD CONSTRAINT rID_pk PRIMARY KEY (rID);

ALTER TABLE Rating ADD CONSTRAINT reviewer_movie_date_unique UNIQUE (mID, rID, rDate_pk);
--by default it allows nulls

ALTER TABLE Reviewer ALTER COLUMN name SET NOT NULL ;
ALTER TABLE Rating ALTER COLUMN stars SET NOT NULL ;

ALTER TABLE Reviewer ALTER COLUMN name SET NOT NULL ;
ALTER TABLE Rating ALTER COLUMN stars SET NOT NULL ;
ALTER TABLE Movie ADD CONSTRAINT year_check CHECK(year>1900);
ALTER TABLE Rating ADD CONSTRAINT stars_check CHECK(stars BETWEEN 1 AND 5);
ALTER TABLE Rating ADD CONSTRAINT rDate_check CHECK(ratingDate >= TO_DATE('2000-01-01','YYYY-MM-DD'));



  update Movie set mID = mID + 1;

  insert into Movie values (109, 'Titanic', 1997, 'JC');

  insert into Reviewer values (201, 'Ted Codd');

  update Rating set rID = 205, mID = 104;

  insert into Reviewer values (209, null);

  update Rating set stars = null where rID = 208;

  update Movie set year = year - 40;

  update Rating set stars = stars + 1;

  insert into Rating values (201, 101, 1, '1999-01-01');

  insert into Movie values (109, 'Jurassic Park', 1993, 'Steven Spielberg');
    update Movie set year = year-10 where title = 'Titanic';
  insert into Movie values (109, 'Titanic', 2001, null);
  update Rating set mID = 109;
  update Movie set year = 1901 where director <> 'James Cameron';
  update Rating set stars = stars - 1;


  insert into Rating values (209, 109, 3, '2001-01-01');

  update Rating set rID = 209 where rID = 208;

  update Rating set mID = mID + 1;

  update Movie set mID = 109 where mID = 108;


  update Movie set mID = 109 where mID = 102;

  update Reviewer set rID = rID + 10;

  delete from Reviewer where rID > 215;

  delete from Movie where mID < 105;


SELECT count(rID) FROM Rating WHERE rID IS NOT NULL;

SELECT count(rID) FROM Rating WHERE rID IS NULL;

