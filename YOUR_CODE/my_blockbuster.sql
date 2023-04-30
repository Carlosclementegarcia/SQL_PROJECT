-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema my_blockbuster
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_blockbuster
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_blockbuster` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `my_blockbuster` ;

-- -----------------------------------------------------
-- Table `my_blockbuster`.`df_customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_blockbuster`.`df_customer` (
  `customer_id` INT NOT NULL,
  `last_name` VARCHAR(45) NULL DEFAULT NULL,
  `first_name` VARCHAR(45) NULL DEFAULT NULL,
  `address` VARCHAR(45) NULL DEFAULT NULL,
  `phone_number` INT NULL DEFAULT NULL,
  `e_mail` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_blockbuster`.`df_film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_blockbuster`.`df_film` (
  `film_id` INT NOT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `release_year` INT NULL DEFAULT NULL,
  `language_id` INT NULL DEFAULT NULL,
  `original_language_id` TEXT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_rate` DOUBLE NULL DEFAULT NULL,
  `length` INT NULL DEFAULT NULL,
  `replacement_cost` DOUBLE NULL DEFAULT NULL,
  `rating` TEXT NULL DEFAULT NULL,
  `special_features` TEXT NULL DEFAULT NULL,
  `last_update` TEXT NULL DEFAULT NULL,
  `first_name` TEXT NULL DEFAULT NULL,
  `last_name` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_blockbuster`.`df_inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_blockbuster`.`df_inventory` (
  `inventory_id` INT NOT NULL,
  `store_id` INT NULL DEFAULT NULL,
  `df_film_film_id` INT NOT NULL,
  PRIMARY KEY (`inventory_id`),
  INDEX `fk_df_inventory_df_film1_idx` (`df_film_film_id` ASC) VISIBLE,
  CONSTRAINT `fk_df_inventory_df_film1`
    FOREIGN KEY (`df_film_film_id`)
    REFERENCES `my_blockbuster`.`df_film` (`film_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `my_blockbuster`.`df_rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_blockbuster`.`df_rental` (
  `rental_id` INT NOT NULL,
  `rental_date` TEXT NULL DEFAULT NULL,
  `inventory_id` INT NULL DEFAULT NULL,
  `return_date` TEXT NULL DEFAULT NULL,
  `df_customer_customer_id` INT NOT NULL,
  `df_inventory_inventory_id` INT NOT NULL,
  PRIMARY KEY (`rental_id`),
  INDEX `fk_df_rental_df_customer_idx` (`df_customer_customer_id` ASC) VISIBLE,
  INDEX `fk_df_rental_df_inventory1_idx` (`df_inventory_inventory_id` ASC) VISIBLE,
  CONSTRAINT `fk_df_rental_df_customer`
    FOREIGN KEY (`df_customer_customer_id`)
    REFERENCES `my_blockbuster`.`df_customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_df_rental_df_inventory1`
    FOREIGN KEY (`df_inventory_inventory_id`)
    REFERENCES `my_blockbuster`.`df_inventory` (`inventory_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


