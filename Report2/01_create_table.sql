CREATE TABLE students (
 s_id char(10),
 s_name char(30) NOT NULL,
 d_id  int NOT NULL,
 e_year int NOT NULL,
 PRIMARY KEY (s_id),
 FOREIGN KEY (d_id) REFERENCES departments(d_id),
 CHECK (e_year > 1881)
 );

CREATE TABLE departments(
 d_id int,
 d_name char(30) NOT NULL,
 PRIMARY KEY (d_id)
 );

CREATE TABLE teachers(
 t_id int,
 t_name char(30) NOT NULL,
 d_id  int NOT NULL,
 position char(30),
 parttime_flg boolean DEFAULT 'f',
 PRIMARY KEY (t_id),
 FOREIGN KEY (d_id) REFERENCES departments(d_id)
 );

CREATE TABLE lectures(
 l_id int,
 l_name char(30) NOT NULL,
 period char(30) NOT NULL,
 l_year int NOT NULL,
 d_id  int NOT NULL,
 credit int NOT NULL,
 PRIMARY KEY (l_id),
 FOREIGN KEY (d_id) REFERENCES departments(d_id),
 CHECK (l_year >= 1881),
 CHECK (credit > 0)
 );

CREATE TABLE assignments(
 t_id int,
 l_id int,
 PRIMARY KEY (t_id, l_id),
 FOREIGN KEY (t_id) REFERENCES teachers(t_id),
 FOREIGN KEY (l_id) REFERENCES lectures(l_id)
 );

CREATE TABLE registrations(
 s_id int,
 l_id int,
 gp int,
 PRIMARY KEY (s_id, l_id),
 FOREIGN KEY (s_id) REFERENCES students(s_id),
 FOREIGN KEY (l_id) REFERENCES lectures(l_id),
 CHECK(gp >= 0 and gp <= 5)
 );




