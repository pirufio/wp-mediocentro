-- MySQL Script generated by MySQL Workbench
-- 06/05/14 02:09:30
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema dbpureweb
-- -----------------------------------------------------
/*CREATE SCHEMA IF NOT EXISTS `dbpureweb` DEFAULT CHARACTER SET utf8 ;
USE `dbpureweb` ;
*/
-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_commentmeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_commentmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` VARCHAR(255) NULL DEFAULT NULL,
  `meta_value` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  INDEX `comment_id` (`comment_id` ASC),
  INDEX `meta_key` (`meta_key` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_comments` (
  `comment_ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` TINYTEXT NOT NULL,
  `comment_author_email` VARCHAR(100) NOT NULL DEFAULT '',
  `comment_author_url` VARCHAR(200) NOT NULL DEFAULT '',
  `comment_author_IP` VARCHAR(100) NOT NULL DEFAULT '',
  `comment_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` TEXT NOT NULL,
  `comment_karma` INT(11) NOT NULL DEFAULT '0',
  `comment_approved` VARCHAR(20) NOT NULL DEFAULT '1',
  `comment_agent` VARCHAR(255) NOT NULL DEFAULT '',
  `comment_type` VARCHAR(20) NOT NULL DEFAULT '',
  `comment_parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  INDEX `comment_post_ID` (`comment_post_ID` ASC),
  INDEX `comment_approved_date_gmt` (`comment_approved` ASC, `comment_date_gmt` ASC),
  INDEX `comment_date_gmt` (`comment_date_gmt` ASC),
  INDEX `comment_parent` (`comment_parent` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_gallery_galleries`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_gallery_galleries` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL DEFAULT '',
  `created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_gallery_galleriesslides`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_gallery_galleriesslides` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` INT(11) NOT NULL DEFAULT '0',
  `slide_id` INT(11) NOT NULL DEFAULT '0',
  `order` INT(11) NOT NULL DEFAULT '0',
  `created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_gallery_slides`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_gallery_slides` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(150) NOT NULL DEFAULT '',
  `description` TEXT NOT NULL,
  `image` VARCHAR(50) NOT NULL DEFAULT '',
  `type` ENUM('file','url') NOT NULL DEFAULT 'file',
  `image_url` VARCHAR(200) NOT NULL DEFAULT '',
  `uselink` ENUM('Y','N') NOT NULL DEFAULT 'N',
  `linktarget` ENUM('self','blank') NOT NULL DEFAULT 'self',
  `link` VARCHAR(200) NOT NULL DEFAULT '',
  `order` INT(11) NOT NULL DEFAULT '0',
  `created` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`))
ENGINE = MyISAM
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_links`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_links` (
  `link_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` VARCHAR(255) NOT NULL DEFAULT '',
  `link_name` VARCHAR(255) NOT NULL DEFAULT '',
  `link_image` VARCHAR(255) NOT NULL DEFAULT '',
  `link_target` VARCHAR(25) NOT NULL DEFAULT '',
  `link_description` VARCHAR(255) NOT NULL DEFAULT '',
  `link_visible` VARCHAR(20) NOT NULL DEFAULT 'Y',
  `link_owner` BIGINT(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` INT(11) NOT NULL DEFAULT '0',
  `link_updated` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` VARCHAR(255) NOT NULL DEFAULT '',
  `link_notes` MEDIUMTEXT NOT NULL,
  `link_rss` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  INDEX `link_visible` (`link_visible` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_options`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_options` (
  `option_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` VARCHAR(64) NOT NULL DEFAULT '',
  `option_value` LONGTEXT NOT NULL,
  `autoload` VARCHAR(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE INDEX `option_name` (`option_name` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 9232
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_postmeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_postmeta` (
  `meta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` VARCHAR(255) NULL DEFAULT NULL,
  `meta_value` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  INDEX `post_id` (`post_id` ASC),
  INDEX `meta_key` (`meta_key` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 3422
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_posts` (
  `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` LONGTEXT NOT NULL,
  `post_title` TEXT NOT NULL,
  `post_excerpt` TEXT NOT NULL,
  `post_status` VARCHAR(20) NOT NULL DEFAULT 'publish',
  `comment_status` VARCHAR(20) NOT NULL DEFAULT 'open',
  `ping_status` VARCHAR(20) NOT NULL DEFAULT 'open',
  `post_password` VARCHAR(20) NOT NULL DEFAULT '',
  `post_name` VARCHAR(200) NOT NULL DEFAULT '',
  `to_ping` TEXT NOT NULL,
  `pinged` TEXT NOT NULL,
  `post_modified` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` LONGTEXT NOT NULL,
  `post_parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` VARCHAR(255) NOT NULL DEFAULT '',
  `menu_order` INT(11) NOT NULL DEFAULT '0',
  `post_type` VARCHAR(20) NOT NULL DEFAULT 'post',
  `post_mime_type` VARCHAR(100) NOT NULL DEFAULT '',
  `comment_count` BIGINT(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  INDEX `post_name` (`post_name` ASC),
  INDEX `type_status_date` (`post_type` ASC, `post_status` ASC, `post_date` ASC, `ID` ASC),
  INDEX `post_parent` (`post_parent` ASC),
  INDEX `post_author` (`post_author` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 2272
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_responsive_slider_plus_responsive_lightbox`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_responsive_slider_plus_responsive_lightbox` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(1000) NOT NULL,
  `image_name` VARCHAR(500) NOT NULL,
  `createdon` DATETIME NOT NULL,
  `custom_link` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 72
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_term_relationships`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_term_relationships` (
  `object_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`, `term_taxonomy_id`),
  INDEX `term_taxonomy_id` (`term_taxonomy_id` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_term_taxonomy`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_term_taxonomy` (
  `term_taxonomy_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` VARCHAR(32) NOT NULL DEFAULT '',
  `description` LONGTEXT NOT NULL,
  `parent` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` BIGINT(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE INDEX `term_id_taxonomy` (`term_id` ASC, `taxonomy` ASC),
  INDEX `taxonomy` (`taxonomy` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_terms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_terms` (
  `term_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL DEFAULT '',
  `slug` VARCHAR(200) NOT NULL DEFAULT '',
  `term_group` BIGINT(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE INDEX `slug` (`slug` ASC),
  INDEX `name` (`name` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 22
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_usermeta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_usermeta` (
  `umeta_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` VARCHAR(255) NULL DEFAULT NULL,
  `meta_value` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  INDEX `user_id` (`user_id` ASC),
  INDEX `meta_key` (`meta_key` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 252
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dbpureweb`.`wp_users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbpureweb`.`wp_users` (
  `ID` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` VARCHAR(60) NOT NULL DEFAULT '',
  `user_pass` VARCHAR(64) NOT NULL DEFAULT '',
  `user_nicename` VARCHAR(50) NOT NULL DEFAULT '',
  `user_email` VARCHAR(100) NOT NULL DEFAULT '',
  `user_url` VARCHAR(100) NOT NULL DEFAULT '',
  `user_registered` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` VARCHAR(60) NOT NULL DEFAULT '',
  `user_status` INT(11) NOT NULL DEFAULT '0',
  `display_name` VARCHAR(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  INDEX `user_login_key` (`user_login` ASC),
  INDEX `user_nicename` (`user_nicename` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
