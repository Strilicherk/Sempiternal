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

CREATE VIEW vw_band_album_music AS
    SELECT 
        b.id AS band_id,
        a.id AS album_id,
        m.id AS music_id,
        b.name AS band,
        a.name AS album,
        m.name AS music,
        md.name AS mood,
        md.color AS color,
        g.name AS genre,
        b.about AS about,
        DATE_FORMAT(a.release_date, '%d/%m/%Y') AS 'album_release_date',
        a.cover_path AS 'album_cover_path',
        b.banner_path AS 'band_banner_path'
    FROM
        band b
            JOIN
        genre g ON g.id = b.genre_id
            JOIN
        album a ON a.band_id = b.id
            JOIN
        music m ON m.album_id = a.id
            JOIN
        mood md ON md.id = m.mood_id;
        
CREATE VIEW vw_band_ranking AS
    SELECT 
        b.id AS band_id,
        b.name AS band_name,
        b.cover_path,
        COUNT(ml.user_id) AS total_likes
    FROM
        band b
            JOIN
        album a ON a.band_id = b.id
            JOIN
        music m ON m.album_id = a.id
            LEFT JOIN
        music_like ml ON ml.music_id = m.id
    GROUP BY b.id , b.name , b.cover_path
    ORDER BY total_likes DESC;
        