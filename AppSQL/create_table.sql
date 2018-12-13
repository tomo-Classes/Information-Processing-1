CREATE TABLE students(
       sid char(4),
       sname char(30),
       highschool char(30),
       PRIMARY KEY(sid)
       );

-- Generate names by http://listofrandomnames.com/index.cfm?generated
INSERT INTO students VALUES
       ('501', 'Keitha Teague', 'Urawa High School'),
       ('601', 'Marybeth Boros', 'Warabi High School'),
       ('602', 'Shasta Pepper', 'Saitama Sakae High School'),
       ('701', 'Peg Massingill', 'Shukutoku Yono High School'),
       ('702', 'Eugenio Dengler', 'Johoku High School');

CREATE TABLE credits(
       sid char(4),
       degree int,
       unit int,
       PRIMARY KEY(sid,degree)
       );

INSERT INTO credits VALUES
       ('501', 1, 48),
       ('501', 2, 40),
       ('501', 3, 38),
       ('601', 1, 39),
       ('701', 1, 37),
       ('702', 1, 45);

CREATE TABLE classes(
       sid char(4),
       cname char(30),
       unit int,
       PRIMARY KEY(sid,cname)
       );

INSERT INTO classes VALUES
       ('501', 'Graduation Research', 8),
       ('601', 'Web Design', 2),
       ('601', 'Image Processing', 4),
       ('601', 'Computer Graphics', 2),
       ('603', 'Database', 6),
       ('603', 'Web Design', 2),
       ('701', 'Information Retrieval', 2),
       ('701', 'Programming Lang Java', 4),
       ('702', 'Programming Lang Java', 4),
       ('702', 'Web Design', 2);
