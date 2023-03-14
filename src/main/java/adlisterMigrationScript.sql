-- SHOW DATABASES ;
-- CREATE DATABASE adlister_db;
-- USE adlister_db;
-- SELECT user, host FROM mysql.user;
-- SELECT current_user;
-- CREATE USER 'adlister_user'@'localhost' IDENTIFIED BY 'password';
-- GRANT CREATE, ALTER, INSERT, DROP ON adlister_db.* TO 'adlister_user'@'localhost';
-- SHOW GRANTS for 'adlister_user'@'localhost';

-- Create the 'users' table
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- Create the 'ads' table with a foreign key to the 'users' table
CREATE TABLE ads (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
