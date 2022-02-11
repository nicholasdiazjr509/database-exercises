CREATE DATABASE IF NOT EXISTS adlister_db;

SHOW DATABASES;

USE adlister_db;

CREATE TABLE IF NOT EXISTS users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR (255) NOT NULL,
    email VARCHAR (255) NOT NULL,
    password VARCHAR (255) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (username, email)
);

# DESCRIBE ads
CREATE TABLE IF NOT EXISTS ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
                              ON DELETE CASCADE
);

-- DESCRIBE categories;
CREATE TABLE IF NOT EXISTS categories(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR (255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads_categories(
    ad_id INT UNSIGNED NOT NULL,
    cat_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (cat_id) REFERENCES categories(id)
);