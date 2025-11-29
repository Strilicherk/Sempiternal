USE sempiternal;

INSERT INTO user (nickname, email, password) VALUES
	('Strilicherk', 'matheuscherk@hotmail.com','Sempiternal#100');

INSERT INTO genre (name) VALUES 
	('New Metal'), 
	('Metalcore'), 
	('Post-Hardcore');
    
INSERT INTO mood (name, color) VALUES 
	('Raiva', '#DC2626'),
	('Angústia', '#9333EA'),
	('Tristeza', '#3B82F6'),
	('Solidão', '#9CA3AF'),
	('Energia', '#FACC15'),
	('Desafio', '#F97316'),
	('Catarse', '#10B981');

INSERT INTO band (genre_id, name, about, banner_path, cover_path) VALUES 
	(1, 'Slipknot', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Slipknot.png', '../assets/images/cover/Cover-Slipknot.png'),
	(1, 'Korn', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Korn.png', '../assets/images/cover/Cover-Korn.png'),
	(1, 'Deftones', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Deftones.png', '../assets/images/cover/Cover-Deftones.png'),
	(2, 'Bring Me The Horizon', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Bring Me The Horizon.png', '../assets/images/cover/Cover-BMTH.png'),
	(1, 'Limp Bizkit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Limp Bizkit.png', '../assets/images/cover/Cover-Limp_Bizkit.png'),
	(2, 'Bullet For My Valentine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Bullet For My Valentine.png', '../assets/images/cover/Cover-BFMV.png'),
	(3, 'Pierce The Veil', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Pierce The Veil.png', '../assets/images/cover/Cover-Pierce_The_Veil.png'),
	(1, 'System of a Down', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-System of a Down.png', '../assets/images/cover/Cover-SOAD.png'),
	(1, 'Papa Roach', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Papa Roach.png', '../assets/images/cover/Cover-Papa_Roach.png'),
	(1, 'Linkin Park', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Linkin Park.png', '../assets/images/cover/Cover-Linkin_Park.png'),
	(2, 'Motionless in White', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Motionless in White.png', '../assets/images/cover/Cover-Motionless_in_White.png'),
	(2, 'Avenged Sevenfold', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-Avenged Sevenfold.png', '../assets/images/cover/Cover-Avenged_Sevenfold.png'),
	(3, 'My Chemical Romance', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Uma banda intensa e marcante.', '../assets/images/Banner-My Chemical Romance.png', '../assets/images/cover/Cover-My_Chemical_Romance.png');

INSERT INTO album (name, release_date, cover_path, band_id) VALUES 
	('Sempiternal', '2013-04-01', '../assets/img/albums/bmth/Sempiternal.jpg', 4),
	('That''s the Spirit', '2015-01-01', '../assets/img/albums/bmth/Thats_The_Spirit.jpg', 4);
    
INSERT INTO music (name, album_id, mood_id) VALUES 
	('Can You Feel My Heart', 2, 2),
	('The House of Wolves', 2, 6),
	('Sleepwalking', 2, 3),  
	('Shadow Moses', 2, 7),
	('Antivist', 2, 1),
    ('Doomed', 3, 4),
	('Happy Song', 3, 7),
	('Throne', 3, 6),
	('True Friends', 3, 3),
	('Drown', 3, 4);

INSERT INTO music_like VALUES
	(1,1);

SELECT * FROM user;
SELECT * FROM genre;
SELECT * FROM mood;
SELECT * FROM band;
SELECT * FROM album;
SELECT * FROM music;
SELECT * FROM music_like;
SELECT * FROM vw_band_album_music;

-- Query feita para puxar todos os dados necessários da página da banda, ou seja, trazer de uma única vez:
-- nome da banda, bio, banner, gênero, nome do álbum, capa, data de lançamento, músicas que fazem parte, sentimento da música, 
-- cor do sentimento, se é a banda favorita e se é a música favorita.
SELECT 
    vw.*,
    IF(ml.user_id IS NOT NULL, 1, 0) AS is_liked,
    IF(vw.band_id = u.band_id, 1, 0) AS is_favorite_band,
    IF(vw.music_id = u.music_id, 1, 0) AS is_favorite_music
FROM
    vw_band_album_music AS vw
        LEFT JOIN
    music_like ml ON vw.music_id = ml.music_id
        AND ml.user_id = 1
        LEFT JOIN
    user u ON u.id = 1
		WHERE vw.band_id = 4;
    
    