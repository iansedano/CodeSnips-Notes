```sql
-- to create the database
CREATE schema SocialDB;


--to create tables
CREATE TABLE `SocialDB`.`Users` (
`UserId` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(100) NOT NULL,
  `LastName` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `DateCreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`));

-- comment
/*
comment
*/

-- from MySQL

# also comment

CREATE TABLE `socialdb`.`users` (
  `UserId` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(100) NOT NULL,
  `LastName` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `DateCreated` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`UserId`));


CREATE TABLE `socialdb`.`images` (
`ImageId` int(11) NOT NULL AUTO_INCREMENT,
`ImageURL` varchar(250) NOT NULL,
`Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`ImageId`)) 

CREATE TABLE `socialdb`.`posts` (
`PostId` INT NOT NULL AUTO_INCREMENT,
`UserId` INT NOT NULL,
`PostText` VARCHAR(500) NOT NULL,
`ImageId` INT NULL,
`Date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`PostId`));


-- creating foriegn keys
ALTER TABLE `socialdb`.`posts` 
ADD INDEX `UserId_idx` (`UserId` ASC) VISIBLE; -- MySQL requires index...
;
ALTER TABLE `socialdb`.`posts` 
ADD CONSTRAINT `UserId`
  FOREIGN KEY (`UserId`)
  REFERENCES `socialdb`.`users` (`UserId`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;



CREATE TABLE `users_friends` (
`Id` int(11) NOT NULL AUTO_INCREMENT,
`UserId_1` int(11) NOT NULL,
`UserId_2` int(11) NOT NULL,
`Date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`Id`));


ALTER TABLE `socialdb`.`users_friends` 
ADD INDEX `Userid_1_idx` (`UserId_1` ASC) VISIBLE,
ADD INDEX `Userid_2_idx` (`UserId_2` ASC) VISIBLE;
;
ALTER TABLE `socialdb`.`users_friends` 
ADD CONSTRAINT `Userid_1`
  FOREIGN KEY (`UserId_1`)
  REFERENCES `socialdb`.`users` (`UserId`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `Userid_2`
  FOREIGN KEY (`UserId_2`)
  REFERENCES `socialdb`.`users` (`UserId`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


```