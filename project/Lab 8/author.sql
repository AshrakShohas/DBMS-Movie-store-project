
set echo off
set define off

DROP TABLE inventory;

DROP TABLE books;

DROP TABLE authors;


CREATE TABLE authors (
  id           NUMBER PRIMARY KEY,
  first_name   VARCHAR2(20),
  family_name  VARCHAR2(20)
);

CREATE TABLE books (
  isbn      CHAR(10) PRIMARY KEY,
  category  VARCHAR2(20),
  title     VARCHAR2(100),
  num_pages NUMBER,
  price     NUMBER,
  copyright NUMBER(4),
  author1   NUMBER CONSTRAINT books_author1
            REFERENCES authors(id),
  author2   NUMBER CONSTRAINT books_author2
            REFERENCES authors(id),
  author3   NUMBER CONSTRAINT books_author3
            REFERENCES authors(id)
);

CREATE TABLE inventory (
  isbn         CHAR(10) PRIMARY KEY CONSTRAINT fk_isbn REFERENCES books (isbn),
  status       VARCHAR2(16) CHECK (status IN ('IN STOCK', 'BACKORDERED', 'FUTURE')),
  status_date  DATE,
  quantity     NUMBER
);

PROMPT Oracle DBA 101
PROMPT by Marlene Theriault, Rachel Carmichael, James Viscusi
INSERT INTO authors (id, first_name, family_name)
  VALUES (1, 'Marlene', 'Theriault');

INSERT INTO authors (id, first_name, family_name)
  VALUES (2, 'Rachel', 'Carmichael');

INSERT INTO authors (id, first_name, family_name)
  VALUES (3, 'James', 'Viscusi');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72121203', 'Oracle Basics', 'Oracle DBA 101', 563, 39.99, 1999, 1, 2, 3);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72121203', 'BACKORDERED', TO_DATE('06-JUN-2004', 'DD-MON-YYYY'), 1000);

PROMPT Oracle8i: A Beginner''s Guide
PROMPT by Michael Abbey, Michael Corey
INSERT INTO authors (id, first_name, family_name)
  VALUES (4, 'Michael', 'Abbey');

INSERT INTO authors (id, first_name, family_name)
  VALUES (5, 'Michael', 'Corey');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72122048', 'Oracle Basics', 'Oracle8i: A Beginner''s Guide', 765, 44.99, 1999, 4, 5);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72122048', 'IN STOCK', NULL, 5000);

PROMPT Oracle Performance Tuning 101
PROMPT by Gaja Vaidyanatha, Kirtikumar Deshpande, John Kostelac
INSERT INTO authors (id, first_name, family_name)
  VALUES (6, 'Gaja', 'Vaidyanatha');

INSERT INTO authors (id, first_name, family_name)
  VALUES (7, 'Kirtikumar', 'Deshpande');

INSERT INTO authors (id, first_name, family_name)
  VALUES (8, 'John', 'Kostelac');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72131454', 'Oracle Basics', 'Oracle Performance Tuning 101', 404, 39.99, 2001, 6, 7, 8);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72131454', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i: A Beginner''s Guide
PROMPT by Michael Abbey, Michael Corey, Ian Abramson
INSERT INTO authors (id, first_name, family_name)
  VALUES (9, 'Ian', 'Abramson');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72192798', 'Oracle Basics', 'Oracle9i: A Beginner''s Guide', 535, 39.99, 2002, 4, 5, 9);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72192798', 'IN STOCK', NULL, 1000);

PROMPT Oracle Backup & Recovery 101
PROMPT by Kenny Smith, Stephan Haisley
INSERT INTO authors (id, first_name, family_name)
  VALUES (10, 'Kenny', 'Smith');

INSERT INTO authors (id, first_name, family_name)
  VALUES (11, 'Stephan', 'Haisley');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72194618', 'Oracle Basics', 'Oracle Backup & Recovery 101', 487, 39.99, 2002, 10, 11);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72194618', 'IN STOCK', NULL, 1000);

PROMPT Oracle Enterprise Manager 101
PROMPT by Lars Bo Vanting, Dirk Schepanek
INSERT INTO authors (id, first_name, family_name)
  VALUES (12, 'Lars', 'Bo');

INSERT INTO authors (id, first_name, family_name)
  VALUES (13, 'Dirk', 'Schepanek');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72223073', 'Oracle Basics', 'Oracle Enterprise Manager 101', 592, 39.99, 2002, 12, 13);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72223073', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i DBA 101
PROMPT by Marlene Theriault, Rachel Carmichael, James Viscusi
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72224746', 'Oracle Basics', 'Oracle9i DBA 101', 500, 39.99, 2002, 1, 2, 3);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72224746', 'IN STOCK', NULL, 1000);

PROMPT Oracle Database 10g A Beginner''s Guide
PROMPT by Michael Abbey, Ian Abramson, Michael Corey
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72230789', 'Oracle Basics', 'Oracle Database 10g A Beginner''s Guide', 448, 39.99, 2004, 4, 9, 5);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72230789', 'IN STOCK', NULL, 10000);

PROMPT Oracle PL/SQL 101
PROMPT by Christopher Allen
INSERT INTO authors (id, first_name, family_name)
  VALUES (14, 'Christopher', 'Allen');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('007212606X', 'Oracle Basics', 'Oracle PL/SQL 101', 420, 39.99, 2001, 14);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('007212606X', 'IN STOCK', NULL, 1000);

PROMPT Oracle E-Business Suite Financials Handbook
PROMPT by David James, Graham Seibert, Simon Russell
INSERT INTO authors (id, first_name, family_name)
  VALUES (15, 'David', 'James');

INSERT INTO authors (id, first_name, family_name)
  VALUES (16, 'Graham', 'Seibert');

INSERT INTO authors (id, first_name, family_name)
  VALUES (17, 'Simon', 'Russell');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72132302', 'Oracle Ebusiness', 'Oracle E-Business Suite Financials Handbook', 820, 59.99, 2002, 15, 16, 17);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72132302', 'IN STOCK', NULL, 1000);

PROMPT Oracle E-Business Suite Manufacturing & Supply Chain Management
PROMPT by Bastin Gerald, Nigel King, Dan Natchek
INSERT INTO authors (id, first_name, family_name)
  VALUES (18, 'Bastin', 'Gerald');

INSERT INTO authors (id, first_name, family_name)
  VALUES (19, 'Nigel', 'King');

INSERT INTO authors (id, first_name, family_name)
  VALUES (20, 'Dan', 'Natchek');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72133791', 'Oracle Ebusiness', 'Oracle E-Business Suite Manufacturing & Supply Chain Management', 823, 69.99, 2002, 18, 19, 20);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72133791', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i Application Server Portal Handbook
PROMPT by Steve Vandivier, Kelly Cox
INSERT INTO authors (id, first_name, family_name)
  VALUES (21, 'Steve', 'Vandivier');

INSERT INTO authors (id, first_name, family_name)
  VALUES (22, 'Kelly', 'Cox');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72222492', 'Oracle Ebusiness', 'Oracle9i Application Server Portal Handbook', 544, 59.99, 2002, 21, 22);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72222492', 'IN STOCK', NULL, 1000);

PROMPT Oracle 24x7 Tips and Techniques
PROMPT by Venkat Devraj
INSERT INTO authors (id, first_name, family_name)
  VALUES (23, 'Venkat', 'Devraj');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72119993', 'Oracle Server', 'Oracle 24x7 Tips and Techniques', 1005, 49.99, 2000, 23);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72119993', 'IN STOCK', NULL, 1000);

PROMPT Oracle Developer Advanced Forms and Reports
PROMPT by Peter Koletzke, Paul Dorsey
INSERT INTO authors (id, first_name, family_name)
  VALUES (24, 'Peter', 'Koletzke');

INSERT INTO authors (id, first_name, family_name)
  VALUES (25, 'Paul', 'Dorsey');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72120487', 'Oracle Server', 'Oracle Developer Advanced Forms and Reports', 835, 59.99, 2000, 24, 25);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72120487', 'IN STOCK', NULL, 1000);

PROMPT Oracle8i Advanced PL/SQL Programming
PROMPT by Scott Urman
INSERT INTO authors (id, first_name, family_name)
  VALUES (26, 'Scott', 'Urman');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72121467', 'Oracle Server', 'Oracle8i Advanced PL/SQL Programming', 772, 49.99, 2000, 26);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72121467', 'IN STOCK', NULL, 1000);

PROMPT Oracle8i DBA Handbook
PROMPT by Kevin Loney, Marlene Theriault
INSERT INTO authors (id, first_name, family_name)
  VALUES (27, 'Kevin', 'Loney');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72121882', 'Oracle Server', 'Oracle8i DBA Handbook', 979, 59.99, 1999, 27, 1);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72121882', 'IN STOCK', NULL, 1000);

PROMPT Oracle DBA Tips & Techniques
PROMPT by Sumit Sarin
INSERT INTO authors (id, first_name, family_name)
  VALUES (28, 'Sumit', 'Sarin');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72122455', 'Oracle Server', 'Oracle DBA Tips & Techniques', 740, 49.99, 2000, 28);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72122455', 'IN STOCK', NULL, 1000);

PROMPT Oracle8i: The Complete Reference (Book/CD-ROM Package)
PROMPT by Kevin Loney, George Koch
INSERT INTO authors (id, first_name, family_name)
  VALUES (29, 'George', 'Koch');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72123648', 'Oracle Server', 'Oracle8i: The Complete Reference (Book/CD-ROM Package)', 1308, 69.99, 2000, 27, 29);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72123648', 'IN STOCK', NULL, 1000);

PROMPT Oracle Discoverer Handbook
PROMPT by Michael Armstrong-Smith, Darlene Armstrong-Smith
INSERT INTO authors (id, first_name, family_name)
  VALUES (30, 'Michael', 'Armstrong-Smith');

INSERT INTO authors (id, first_name, family_name)
  VALUES (31, 'Darlene', 'Armstrong-Smith');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72126353', 'Oracle Server', 'Oracle Discoverer Handbook', 569, 44.99, 2000, 30, 31);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72126353', 'IN STOCK', NULL, 1000);

PROMPT Oracle JDeveloper 3 Handbook
PROMPT by Paul Dorsey, Peter Koletzke
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72127163', 'Oracle Server', 'Oracle JDeveloper 3 Handbook', 600, 49.99, 2001, 25, 24);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72127163', 'IN STOCK', NULL, 1000);

PROMPT Oracle8i Backup & Recovery
PROMPT by Rama Velpuri, Anand Adkoli
INSERT INTO authors (id, first_name, family_name)
  VALUES (32, 'Rama', 'Velpuri');

INSERT INTO authors (id, first_name, family_name)
  VALUES (33, 'Anand', 'Adkoli');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72127171', 'Oracle Server', 'Oracle8i Backup & Recovery', 695, 59.99, 2001, 32, 33);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72127171', 'IN STOCK', NULL, 1000);

PROMPT Oracle Security Handbook
PROMPT by Marlene Theriault, Aaron Newman
INSERT INTO authors (id, first_name, family_name)
  VALUES (34, 'Aaron', 'Newman');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72133252', 'Oracle Server', 'Oracle Security Handbook', 624, 59.99, 2001, 1, 34);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72133252', 'IN STOCK', NULL, 1000);

PROMPT Oracle High-Performance SQL Tuning
PROMPT by Donald Burleson
INSERT INTO authors (id, first_name, family_name)
  VALUES (35, 'Donald', 'Burleson');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72190582', 'Oracle Server', 'Oracle High-Performance SQL Tuning', 656, 49.99, 2001, 35);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72190582', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i for Windows(R) Handbook
PROMPT by Anand Adkoli, Rama Velpuri
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72190922', 'Oracle Server', 'Oracle9i for Windows(R) Handbook', 528, 49.99, 2002, 33, 32);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72190922', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i PL/SQL Programming
PROMPT by Scott Urman
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72191473', 'Oracle Server', 'Oracle9i PL/SQL Programming', 664, 49.99, 2002, 26);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72191473', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i DBA Handbook
PROMPT by Kevin Loney, Marlene Theriault
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72193743', 'Oracle Server', 'Oracle9i DBA Handbook', 1008, 59.99, 2002, 27, 1);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72193743', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i Web Development
PROMPT by Brad Brown
INSERT INTO authors (id, first_name, family_name)
  VALUES (36, 'Brad', 'Brown');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72193883', 'Oracle Server', 'Oracle9i Web Development', 1120, 59.99, 2001, 36);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72193883', 'IN STOCK', NULL, 1000);

PROMPT Oracle 9i JDBC Programming
PROMPT by Jason Price
INSERT INTO authors (id, first_name, family_name)
  VALUES (37, 'Jason', 'Price');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72222549', 'Oracle Server', 'Oracle 9i JDBC Programming', 608, 49.99, 2002, 37);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72222549', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i UNIX Administration Handbook
PROMPT by Donald Burleson
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72223049', 'Oracle Server', 'Oracle9i UNIX Administration Handbook', 560, 49.99, 2002, 35);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72223049', 'IN STOCK', NULL, 1000);

PROMPT Oracle 9i New Features
PROMPT by Robert Freeman
INSERT INTO authors (id, first_name, family_name)
  VALUES (38, 'Robert', 'Freeman');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72223855', 'Oracle Server', 'Oracle 9i New Features', 244, 29.99, 2002, 38);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72223855', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i: The Complete Reference
PROMPT by Kevin Loney, George Koch
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72225211', 'Oracle Server', 'Oracle9i: The Complete Reference', 1256, 74.99, 2002, 27, 29);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72225211', 'IN STOCK', NULL, 1000);

PROMPT Oracle9i RMAN Backup & Recovery
PROMPT by Robert Freeman, Matthew Hart
INSERT INTO authors (id, first_name, family_name)
  VALUES (39, 'Matthew', 'Hart');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72226625', 'Oracle Server', 'Oracle9i RMAN Backup & Recovery', 608, 49.99, 2003, 38, 39);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72226625', 'IN STOCK', NULL, 1000);

PROMPT Oracle Database 10g New Features
PROMPT by Robert Freeman
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72229470', 'Oracle Server', 'Oracle Database 10g New Features', 272, 34.99, 2004, 38);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72229470', 'IN STOCK', NULL, 5000);

PROMPT Oracle Database 10g XML & SQL Design, Build, & Manage XML Applications in Java, C, C++, & PL/SQL
PROMPT by Mark Scardina, Ben Chang, Jinyu Wang
INSERT INTO authors (id, first_name, family_name)
  VALUES (40, 'Mark', 'Scardina');

INSERT INTO authors (id, first_name, family_name)
  VALUES (41, 'Ben', 'Chang');

INSERT INTO authors (id, first_name, family_name)
  VALUES (42, 'Jinyu', 'Wang');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('72229527', 'Oracle Server', 'Oracle Database 10g XML & SQL Design, Build, & Manage XML Applications in Java, C, C++, & PL/SQL', 656, 49.99, 2004, 40, 41, 42);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72229527', 'IN STOCK', NULL, 5000);

PROMPT Oracle Database 10g SQL
PROMPT by Jason Price
INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72229810', 'Oracle Server', 'Oracle Database 10g SQL', 624, 49.99, 2004, 37);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72229810', 'IN STOCK', NULL, 5000);

PROMPT Oracle Database 10g Linux Administration
PROMPT by Wim Coekaerts
INSERT INTO authors (id, first_name, family_name)
  VALUES (43, 'Wim', 'Coekaerts');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72230533', 'Oracle Server', 'Oracle Database 10g Linux Administration', 560, 49.99, 2004, 43);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72230533', 'IN STOCK', NULL, 5000);

PROMPT Oracle Database 10g PL/SQL Programming
PROMPT by Scott Urman, Ron Hardman
INSERT INTO authors (id, first_name, family_name)
  VALUES (44, 'Ron', 'Hardman');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72230665', 'Oracle Server', 'Oracle Database 10g PL/SQL Programming', 1008, 54.99, 2004, 26, 44);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72230665', 'IN STOCK', NULL, 5000);

PROMPT Unbreakable Oracle by Design Oracle Database 10g Security
PROMPT by David Knox
INSERT INTO authors (id, first_name, family_name)
  VALUES (45, 'David', 'Knox');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1)
  VALUES ('72231300', 'Oracle Server', 'Unbreakable Oracle by Design Oracle Database 10g Security', 560, 59.99, 2004, 45);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72231300', 'IN STOCK', NULL, 5000);

PROMPT Oracle Database 10g High Availability with RAC, Flashback, and Data Guard
PROMPT by Matthew Hart, Scott Jesse
INSERT INTO authors (id, first_name, family_name)
  VALUES (46, 'Scott', 'Jesse');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2)
  VALUES ('72254289', 'Oracle Server', 'Oracle Database 10g High Availability with RAC, Flashback, and Data Guard', 496, 59.99, 2004, 39, 46);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('72254289', 'IN STOCK', NULL, 5000);

PROMPT Oracle PL/SQL Tips and Techniques
PROMPT by Rich Niemic, Brad Brown, Joe Trezzo
INSERT INTO authors (id, first_name, family_name)
  VALUES (47, 'Rich', 'Niemic');

INSERT INTO authors (id, first_name, family_name)
  VALUES (48, 'Joe', 'Trezzo');

INSERT INTO books (isbn, category, title, num_pages, price, copyright, author1, author2, author3)
  VALUES ('78824389', 'Oracle Server', 'Oracle PL/SQL Tips and Techniques', 942, 49.99, 1999, 47, 36, 48);

INSERT INTO inventory (isbn, status, status_date, quantity)
  VALUES ('78824389', 'BACKORDERED', TO_DATE('06-JUN-2004', 'DD-MON-YYYY'), 1000);

COMMIT;
