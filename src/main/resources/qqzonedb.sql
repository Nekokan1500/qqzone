CREATE DATABASE qqzonedb;

USE qqzonedb;

CREATE TABLE t_user (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginId` varchar(50) DEFAULT NULL,
  `nickName` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE t_user_detail (
  id int(11) NOT NULL,
  firstName varchar(100) DEFAULT NULL,
  lastName varchar(100) DEFAULT NULL,
  phone varchar(50) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  dob date DEFAULT NULL,
  zodiac varchar(50) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FOREIGN KEY (id) REFERENCES t_user (id)
);

CREATE TABLE t_topic (
	id int(11) NOT NULL AUTO_INCREMENT,
	title varchar(255) DEFAULT NULL,
	content varchar(500) DEFAULT NULL,
	topicDate date DEFAULT NULL,
	authorId int(11) DEFAULT NULL,
	PRIMARY KEY(id),
	CONSTRAINT FOREIGN KEY (authorId) REFERENCES t_user(id)
);

CREATE TABLE t_reply (
  id int(11) NOT NULL AUTO_INCREMENT,
  content varchar(500) DEFAULT NULL,
  replyDate date DEFAULT NULL,
  authorId int(11) DEFAULT NULL,
  topicId int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FOREIGN KEY (topicId) REFERENCES t_topic (id),
  CONSTRAINT FOREIGN KEY (authorId) REFERENCES t_user (id)
);

CREATE TABLE t_author_reply (
  id int(11) NOT NULL AUTO_INCREMENT,
  content varchar(500) DEFAULT NULL,
  authorReplyDate date DEFAULT NULL,
  authorId int(11) DEFAULT NULL,
  replyId int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY (replyId,authorId),
  CONSTRAINT FOREIGN KEY (authorId) REFERENCES t_user (id)
  CONSTRAINT FOREIGN KEY (replyId) REFERENCES t_reply (id)
);

CREATE TABLE t_friend (
  id int(11) NOT NULL AUTO_INCREMENT,
  uid int(11) DEFAULT NULL,
  fid int(11) DEFAULT NULL,
  PRIMARY KEY (id),
  CONSTRAINT FOREIGN KEY (uid) REFERENCES t_user (id)
);