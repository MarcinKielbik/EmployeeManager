CREATE SCHEMA IF NOT EXISTS employeeManager;

SET NAMES 'UTF8MB4';
SET TIMEZONE_ '1';

USE employeeManager;

DROP TABLE IF NOT EXISTS Users;

CREATE TABLE Users
(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) DEFAULT NULL,
    address VARCHAR(255) DEFAULT NULL,
    phone VARCHAR(30) DEFAULT NULL,
    title VARCHAR(50) DEFAULT NULL,
    bio VARCHAR(255) DEFAULT NULL,
    enabled BOOLEAN DEFAULT FALSE,
    nonLocked BOOLEAN DEFAULT TRUE,
    usingMFA BOOLEAN DEFAULT FALSE,
    createdDate DATETIME
    imgUrl VARCHAR(255),
    CONSTRAINT UQUserEmail UNIQUE (email)
);


DROP TABLE IF NOT EXISTS Role;

CREATE TABLE Roles
(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    permission VARCHAR(255) NOT NULL,
    CONSTRAINT UQ_Roles_Name UNIQUE (name)
);

CREATE TABLE UserRoles
(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userId  BIGINT UNSIGNED NOT NULL
     VARCHAR(50)  BIGINT UNSIGNED NOT NULL
    email VARCHAR(100) NOT NULL,
    CONSTRAINT UQUserEmail UNIQUE (type)
);

CREATE TABLE UserEvents
(
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT UNSIGNED NOT NULL,
    event_id BIGINT UNSIGNED NOT NULL,
    device VARCHAR(100) DEFAULT NULL,
    ip_address VARCHAR(100) DEFAULT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (event_id) REFERENCES Events (id) ON DELETE RESTRICT ON UPDATE CASCADE
);


