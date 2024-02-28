-- MySQL Script generated by MySQL Workbench
-- Tue Feb 27 20:13:32 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema auto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema auto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `auto` DEFAULT CHARACTER SET utf8 ;
USE `auto` ;

-- -----------------------------------------------------
-- Table `auto`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auto`.`VEHICULO` (
  `matricula` VARCHAR(20) NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `codemp` VARCHAR(45) NULL,
  `fecha_inicio` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `auto`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `auto`.`EMPLEADO` (
  `codemp` VARCHAR(45) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `VEHICULO_matricula` VARCHAR(20) NOT NULL,
  INDEX `fk_EMPLEADO_VEHICULO_idx` (`VEHICULO_matricula` ASC) VISIBLE,
  CONSTRAINT `fk_EMPLEADO_VEHICULO`
    FOREIGN KEY (`VEHICULO_matricula`)
    REFERENCES `auto`.`VEHICULO` (`matricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
