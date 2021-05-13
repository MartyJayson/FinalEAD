CREATE TABLE employee
(
  id      BIGINT AUTO_INCREMENT PRIMARY KEY,
  fname    VARCHAR(255)     NULL,
  surname VARCHAR(255) NULL ,
  passwrd VARCHAR (255) NULL ,
  birthday VARCHAR (255) NULL ,
  gender VARCHAR (255) NULL ,
  enabled BIT DEFAULT b'1' NULL
);