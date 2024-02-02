SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS absense;
DROP TABLE IF EXISTS boardBridgeFile;
DROP TABLE IF EXISTS board;
DROP TABLE IF EXISTS administer;
DROP TABLE IF EXISTS attendment;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS profBridgeFile;
DROP TABLE IF EXISTS studentBridgeFile;
DROP TABLE IF EXISTS File;
DROP TABLE IF EXISTS lecture;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS student;




/* Create Tables */

CREATE TABLE absense
(
	abseno int unsigned NOT NULL AUTO_INCREMENT,
	abseinfo tinyint unsigned NOT NULL,
	abserdate date NOT NULL,
	absestatus tinyint unsigned,
	absepdate date,
	absereason text,
	abseyn tinyint unsigned,
	sno int unsigned NOT NULL,
	PRIMARY KEY (abseno)
);


CREATE TABLE administer
(
	ano int unsigned NOT NULL AUTO_INCREMENT,
	aid varchar(20) NOT NULL,
	apw varchar(20) NOT NULL,
	ardate date DEFAULT (current_date) NOT NULL,
	amanage tinyint unsigned DEFAULT 1 NOT NULL,
	adelyn tinyint unsigned DEFAULT 0 NOT NULL,
	PRIMARY KEY (ano)
);


CREATE TABLE attendment
(
	attendno int unsigned NOT NULL AUTO_INCREMENT,
	attendrdate date,
	attendyn tinyint unsigned,
	cno int unsigned NOT NULL,
	PRIMARY KEY (attendno)
);


CREATE TABLE board
(
	bno int unsigned NOT NULL AUTO_INCREMENT,
	btitle varchar(50) NOT NULL,
	bcontent text NOT NULL,
	brdate date DEFAULT (current_date) NOT NULL,
	bhit int unsigned DEFAULT 0 NOT NULL,
	bdelyn tinyint unsigned DEFAULT 0 NOT NULL,
	ano int unsigned NOT NULL,
	PRIMARY KEY (bno)
);


CREATE TABLE boardBridgeFile
(
	bbfno int unsigned NOT NULL AUTO_INCREMENT,
	fno int unsigned NOT NULL,
	bno int unsigned NOT NULL,
	PRIMARY KEY (bbfno)
);


CREATE TABLE course
(
	cno int unsigned NOT NULL AUTO_INCREMENT,
	cyn tinyint unsigned DEFAULT 0 NOT NULL,
	cgrade varchar(4),
	lno int unsigned NOT NULL,
	sno int unsigned NOT NULL,
	PRIMARY KEY (cno)
);


CREATE TABLE File
(
	fno int unsigned NOT NULL AUTO_INCREMENT,
	frealnm varchar(255) NOT NULL,
	foriginnm varchar(255) NOT NULL,
	frdate date DEFAULT (current_date) NOT NULL,
	PRIMARY KEY (fno)
);


CREATE TABLE lecture
(
	lno int unsigned NOT NULL AUTO_INCREMENT,
	lname varchar(40) NOT NULL,
	lyear date NOT NULL,
	lsemester tinyint unsigned NOT NULL,
	lcredit tinyint unsigned NOT NULL,
	ltime tinyint unsigned NOT NULL,
	lroom varchar(10) NOT NULL,
	lmaxpeople varchar(5) NOT NULL,
	lintro text NOT NULL,
	lfocus text NOT NULL,
	lstatus tinyint unsigned DEFAULT 0 NOT NULL,
	pno int unsigned NOT NULL,
	PRIMARY KEY (lno)
);


CREATE TABLE profBridgeFile
(
	pbfno int unsigned NOT NULL AUTO_INCREMENT,
	pno int unsigned NOT NULL,
	fno int unsigned NOT NULL,
	PRIMARY KEY (pbfno)
);


CREATE TABLE professor
(
	pno int unsigned NOT NULL AUTO_INCREMENT,
	pid varchar(20) NOT NULL,
	ppw varchar(20) NOT NULL,
	pname varchar(20) NOT NULL,
	pregNo1 char(6) NOT NULL,
	pregNo2 char(7) NOT NULL,
	pbirth date NOT NULL,
	pgender varchar(2) NOT NULL,
	pemail varchar(45) NOT NULL,
	pphone varchar(20) NOT NULL,
	pcall varchar(20),
	paddr varchar(45) NOT NULL,
	pzipCode varchar(10),
	prdate date DEFAULT (current_date) NOT NULL,
	pposition varchar(20) NOT NULL,
	puniv varchar(40) NOT NULL,
	pfaculty varchar(40) NOT NULL,
	pmajor varchar(40) NOT NULL,
	pdegree varchar(40) NOT NULL,
	plab varchar(40) NOT NULL,
	pappointDate date NOT NULL,
	pdelyn tinyint unsigned DEFAULT 0 NOT NULL,
	PRIMARY KEY (pno)
);


CREATE TABLE student
(
	sno int unsigned NOT NULL AUTO_INCREMENT,
	sid varchar(20) NOT NULL,
	spw varchar(20) NOT NULL,
	sname varchar(20) NOT NULL,
	sregNo1 char(6) NOT NULL,
	sregNo2 char(7) NOT NULL,
	sbirth date NOT NULL,
	sgender varchar(2) NOT NULL,
	semail varchar(45) NOT NULL,
	sphone varchar(20) NOT NULL,
	scall varchar(20),
	saddr varchar(45) NOT NULL,
	szipCode varchar(10),
	srdate date DEFAULT (current_date) NOT NULL,
	sstatus tinyint unsigned NOT NULL,
	suniv varchar(40) NOT NULL,
	sfaculty varchar(40) NOT NULL,
	smajor varchar(40) NOT NULL,
	sgrade tinyint unsigned NOT NULL,
	srank int unsigned NOT NULL,
	scomeDate date NOT NULL,
	soutDate date,
	scompletionDate date,
	sgradDate date,
	smaxgrade tinyint unsigned NOT NULL,
	sdelyn tinyint unsigned DEFAULT 0 NOT NULL,
	PRIMARY KEY (sno)
);


CREATE TABLE studentBridgeFile
(
	sbfno int unsigned NOT NULL AUTO_INCREMENT,
	fno int unsigned NOT NULL,
	sno int unsigned NOT NULL,
	PRIMARY KEY (sbfno)
);



/* Create Foreign Keys */

ALTER TABLE board
	ADD FOREIGN KEY (ano)
	REFERENCES administer (ano)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE boardBridgeFile
	ADD FOREIGN KEY (bno)
	REFERENCES board (bno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE attendment
	ADD FOREIGN KEY (cno)
	REFERENCES course (cno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE boardBridgeFile
	ADD FOREIGN KEY (fno)
	REFERENCES File (fno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE profBridgeFile
	ADD FOREIGN KEY (fno)
	REFERENCES File (fno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE studentBridgeFile
	ADD FOREIGN KEY (fno)
	REFERENCES File (fno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE course
	ADD FOREIGN KEY (lno)
	REFERENCES lecture (lno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE lecture
	ADD FOREIGN KEY (pno)
	REFERENCES professor (pno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE profBridgeFile
	ADD FOREIGN KEY (pno)
	REFERENCES professor (pno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE absense
	ADD FOREIGN KEY (sno)
	REFERENCES student (sno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE course
	ADD FOREIGN KEY (sno)
	REFERENCES student (sno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE studentBridgeFile
	ADD FOREIGN KEY (sno)
	REFERENCES student (sno)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



