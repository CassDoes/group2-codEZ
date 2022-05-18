-- DROP TABLES IF EXISTS
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tips;

-- NOTE > USERS TABLE
CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR (30) UNIQUE NOT NULL,
    user_password VARCHAR (30) NOT NULL,
    user_email VARCHAR (50) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- NOTE > TIPS TABLE
CREATE TABLE tips (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    tip_title VARCHAR (50) NOT NULL,
    tip_detail TEXT NOT NULL,
    tip_language VARCHAR (30) NOT NULL,
    username VARCHAR (30) REFERENCES users(username) ON DELETE SET NULL
);

CREATE TABLE federate_users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    provider varchar(50) NOT NULL,
    subject varchar(30) UNIQUE NOT NULL,
    email VARCHAR (50) UNIQUE NOT NULL
);
