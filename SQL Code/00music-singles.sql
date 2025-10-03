CREATE SCHEMA IF NOT EXISTS `music_libary` DEFAULT CHARACTER SET utf8 ;
USE `music_libary` ;

CREATE TABLE IF NOT EXISTS `music_libary`.`artist` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `music_libary`.`genre` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `music_libary`.`single` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `duration` TIME NOT NULL,
  `release_date` DATE NOT NULL,
  `genre_id` INT UNSIGNED NOT NULL,
  `artist_id` INT UNSIGNED NOT NULL,
  `img` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_single_genre_idx` (`genre_id` ASC) VISIBLE,
  INDEX `fk_single_artist1_idx` (`artist_id` ASC) VISIBLE,
  CONSTRAINT `fk_single_genre`
    FOREIGN KEY (`genre_id`)
    REFERENCES `music_libary`.`genre` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_single_artist1`
    FOREIGN KEY (`artist_id`)
    REFERENCES `music_libary`.`artist` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
