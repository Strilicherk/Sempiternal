CREATE DATABASE sempiternal;
USE sempiternal;

CREATE TABLE genre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE mood (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    color CHAR(7) NOT NULL UNIQUE
);

CREATE TABLE band (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    about VARCHAR(1000) NOT NULL,
    banner_path VARCHAR(255) NOT NULL UNIQUE,
    cover_path VARCHAR(255) NOT NULL UNIQUE,
    genre_id INT NOT NULL,
    CONSTRAINT fk_band_genre FOREIGN KEY (genre_id)
        REFERENCES genre (id)
);


CREATE TABLE album (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    release_date DATE,
    cover_path VARCHAR(255) NOT NULL UNIQUE,
    band_id INT NOT NULL,
    CONSTRAINT fk_album_band FOREIGN KEY (band_id)
        REFERENCES band (id)
        ON DELETE CASCADE
);


CREATE TABLE music (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    CONSTRAINT fk_music_album FOREIGN KEY (album_id)
        REFERENCES album (id)
        ON DELETE CASCADE,
    mood_id INT NOT NULL,
    CONSTRAINT fk_music_mood FOREIGN KEY (mood_id)
        REFERENCES mood (id)
);


CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(45) NOT NULL UNIQUE,
    email VARCHAR(45) NOT NULL UNIQUE,
    password VARCHAR(45) NOT NULL,
    band_id INT,
    CONSTRAINT fk_user_fav_band FOREIGN KEY (band_id)
        REFERENCES band (id)
        ON DELETE SET NULL,
    music_id INT,
    CONSTRAINT fk_user_fav_music FOREIGN KEY (music_id)
        REFERENCES music (id)
        ON DELETE SET NULL
);

CREATE TABLE music_like (
    PRIMARY KEY (user_id , music_id),
    user_id INT,
    CONSTRAINT fk_like_user FOREIGN KEY (user_id)
        REFERENCES user (id)
        ON DELETE CASCADE,
    music_id INT,
    CONSTRAINT fk_like_music FOREIGN KEY (music_id)
        REFERENCES music (id)
        ON DELETE CASCADE
);

