mysql -u root -p


CREATE DATABASE  IF NOT EXISTS `bitcoin` DEFAULT VARCHARSET=utf8;USE `bitcoin`;--
CREATE TABLE bitcoin (
      ID int  NOT NULL AUTO_INCREMENT,
     `From_Currency Code` VARCHAR(255),
     `From_Currency Name` VARCHAR(255),
     `To_Currency Code` VARCHAR(255),
     `To_Currency Name` VARCHAR(255),
     `Exchange Rate` FLOAT,
     `Last Refreshed` DATETIME,
     `Time Zone` VARCHAR(255),
     `Bid Price` FLOAT,
     `Ask Price` FLOAT,
     PRIMARY KEY (ID)
);



docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql
