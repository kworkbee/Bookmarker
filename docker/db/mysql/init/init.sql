GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';

DROP DATABASE IF EXISTS `bookmarker`;

CREATE DATABASE bookmarker CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE `bookmarker`.`directory_type` (
    `idx` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(128) NOT NULL,
    `created_date` DATETIME(6) NOT NULL DEFAULT NOW(),
    `last_modified_date` DATETIME(6) NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`idx`)
);

CREATE TABLE `bookmarker`.`bookmark` (
    `idx` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(128) NOT NULL,
    `link` TEXT NOT NULL,
    `directory_type_idx` INTEGER NOT NULL,
    `created_date` DATETIME(6) NOT NULL DEFAULT NOW(),
    `last_modified_date` DATETIME(6) NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`idx`)
)