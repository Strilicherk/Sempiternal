USE sempiternal;

SELECT * FROM user;
SELECT * FROM genre;
SELECT * FROM mood;
SELECT * FROM band;
SELECT * FROM album;
SELECT * FROM music;
SELECT * FROM music_like;
SELECT * FROM vw_band_album_music;

-- Dados necessários para a página da banda;
SELECT 
    vw.*,
    IF(ml.user_id IS NOT NULL, 1, 0) AS is_liked,
    IF(vw.band_id = u.band_id, 1, 0) AS is_favorite_band,
    IF(vw.music_id = u.music_id, 1, 0) AS is_favorite_music
FROM vw_band_album_music AS vw 
	LEFT JOIN music_like ml ON vw.music_id = ml.music_id AND ml.user_id = 1
	LEFT JOIN user u ON u.id = 1 
    WHERE vw.band_id = 4;

-- Ranking das bandas;
SELECT * FROM vw_band_ranking;

-- Ranking de músicas;
SELECT * FROM vw_music_ranking;

-- Ranking de sentimentos;
SELECT * FROM vw_mood_ranking;

-- Lista de músicas de um determinado usuário;
SELECT * FROM vw_profile_liked_songs 
WHERE user_id = 1 
ORDER BY is_favorite DESC, music_name ASC;

-- Dados para montar o gráfico de sentimento do usuário;
SELECT * FROM vw_user_mood_stats 
WHERE user_id = 1
ORDER BY total_likes DESC;

-- Trazer a banda favorita do usuário;
SELECT b.name as nome FROM user u JOIN band b ON u.band_id = b.id WHERE u.id = 1;
    