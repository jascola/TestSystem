create DATABASE examsystem character set utf8;

use examsystem;

CREATE TABLE `user` (
  UserId int AUTO_INCREMENT primary key,
  UserName varchar(20) not null,
  Password VARCHAR(20) not null ,
  Identity INT not null

)DEFAULT CHARSET=utf8;

CREATE TABLE `subject`(
  SubjectId int  AUTO_INCREMENT PRIMARY KEY ,
  SubjectName VARCHAR(20) NOT NULL
)DEFAULT CHARSET=utf8;

CREATE TABLE  `choice`(
  ChoiceId int AUTO_INCREMENT PRIMARY KEY ,
  SubjectId int NOT NULL ,
  Content VARCHAR(255) NOT NULL ,
  IsMulti int not null,
  FOREIGN KEY (SubjectId) REFERENCES subject(SubjectId)
)DEFAULT CHARSET=utf8;

CREATE TABLE `optionz` (
  OptionzId int AUTO_INCREMENT PRIMARY KEY,
  Content VARCHAR(255) not null,
  ChoiceId int not null,
  IsRight int not null,
  FOREIGN KEY (ChoiceId) REFERENCES choice(ChoiceId)
)DEFAULT CHARSET=utf8;

CREATE TABLE `completion`(
  CompletionId int AUTO_INCREMENT PRIMARY KEY ,
  SubjectId INT NOT NULL ,
  Content VARCHAR(255) NOT NULL ,
  Answer VARCHAR(20) NOT NULL ,
  FOREIGN KEY (SubjectId) REFERENCES subject(SubjectId)
)DEFAULT CHARSET=utf8;

CREATE TABLE `recogniz`(
  RecognizId INT AUTO_INCREMENT PRIMARY KEY ,
  SubjectId INT NOT NULL ,
  Content VARCHAR(255) NOT NULL ,
  Answer VARCHAR(4) NOT NULL ,
  FOREIGN KEY (SubjectId) REFERENCES subject(SubjectId)
)DEFAULT CHARSET=utf8;

CREATE TABLE `score`(
  ScoreId INT PRIMARY KEY AUTO_INCREMENT,
  UserId INT NOT NULL ,
  SubjectId INT NOT NULL ,
  Score DOUBLE NOT NULL ,
  FOREIGN KEY (SubjectId) REFERENCES subject(SubjectId),
  FOREIGN KEY (UserId) REFERENCES user(UserId)
)DEFAULT CHARSET=utf8;

