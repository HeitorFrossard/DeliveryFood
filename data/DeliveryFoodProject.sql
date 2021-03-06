-- MySQL Script generated by MySQL Workbench
-- Wed Jul 18 22:17:36 2018
-- Model: Sakila Full    Version: 2.0
-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Database deliveryfood
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `deliveryfood` ;

CREATE DATABASE `deliveryfood` ;

USE `deliveryfood`;

-- -----------------------------------------------------
-- Table `Cuisine`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Cuisine` ;

CREATE TABLE IF NOT EXISTS `Cuisine` (
  `idCuisine` INT NOT NULL AUTO_INCREMENT,
  `Description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCuisine`),
  UNIQUE INDEX `idCuisine_UNIQUE` (`idCuisine` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `User` ;

CREATE TABLE IF NOT EXISTS `User` (
  `idUser` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `PhoneNumber` VARCHAR(15) NULL,
  `Email` VARCHAR(80) NULL,
  `UserType` CHAR(1) NULL,
  `Pwd` VARCHAR(255) NULL,
  `IdCuisine` INT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `idUser_UNIQUE` (`idUser` ASC),
  INDEX `IdCuisine_idx` (`IdCuisine` ASC),
  CONSTRAINT `IdCuisine`
    FOREIGN KEY (`IdCuisine`)
    REFERENCES `Cuisine` (`idCuisine`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Address` ;

CREATE TABLE IF NOT EXISTS `Address` (
  `idAddress` INT NOT NULL AUTO_INCREMENT,
  `Line1` VARCHAR(45) NULL,
  `Line2` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `StateProvince` VARCHAR(45) NULL,
  `PostalCode` VARCHAR(45) NULL,
  `IdUser` INT NULL,
  PRIMARY KEY (`idAddress`),
  UNIQUE INDEX `idAddress_UNIQUE` (`idAddress` ASC),
  INDEX `IdUser_idx` (`IdUser` ASC),
  CONSTRAINT `IdUser`
    FOREIGN KEY (`IdUser`)
    REFERENCES `User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Menu`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Menu` ;

CREATE TABLE IF NOT EXISTS `Menu` (
  `idMenu` INT NOT NULL AUTO_INCREMENT,
  `Item` VARCHAR(80) NULL,
  `Description` VARCHAR(255) NULL,
  `Unit` VARCHAR(45) NULL,
  `Price` DECIMAL(5,2) NULL,
  `Active` CHAR(1) NULL,
  `IdCompany` INT NULL,
  PRIMARY KEY (`idMenu`),
  UNIQUE INDEX `idMenu_UNIQUE` (`idMenu` ASC),
  INDEX `IdCompany_idx` (`IdCompany` ASC),
  CONSTRAINT `IdCompany`
    FOREIGN KEY (`IdCompany`)
    REFERENCES `User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PlaceOrder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `PlaceOrder` ;

CREATE TABLE IF NOT EXISTS `PlaceOrder` (
  `idOrder` INT NOT NULL AUTO_INCREMENT,
  `IdCompanyOrder` INT NULL,
  `IdUserOrder` INT NULL,
  `IdMenuOrder` INT NOT NULL,
  `idAddressOrder` INT NULL,
  `OrderDate` DATETIME NULL,
  `Quantity` INT NULL,
  `TotalPrice` DECIMAL(5,2) NULL,
  PRIMARY KEY (`idOrder`,`IdMenuOrder`),
  INDEX `idOrder_idx` (`idOrder` ASC),
  INDEX `IdCompanyOrder_idx` (`IdCompanyOrder` ASC),
  INDEX `idUserOrder_idx` (`IdUserOrder` ASC),
  INDEX `IdMenuOrder_idx` (`IdMenuOrder` ASC),
  CONSTRAINT `IdCompanyOrder`
    FOREIGN KEY (`IdCompanyOrder`)
    REFERENCES `User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdUserOrder`
    FOREIGN KEY (`IdUserOrder`)
    REFERENCES `User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdMenuOrder`
    FOREIGN KEY (`IdMenuOrder`)
    REFERENCES `Menu` (`idMenu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idAddressOrder`
    FOREIGN KEY (`idAddressOrder`)
    REFERENCES `Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
