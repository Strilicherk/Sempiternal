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
	(1, 'Slipknot', 
	'Surgindo de Des Moines, Iowa, em 1995, o Slipknot redefiniu a agressividade no metal moderno. Com nove membros mascarados, percussão industrial e o vocal visceral de Corey Taylor, a banda transformou o caos em catarse. Álbuns como Slipknot (1999) e "Iowa" (2001) são marcos de fúria e niilismo, canalizando a raiva coletiva da juventude contra o mundo. Mais do que uma banda, o Slipknot criou uma cultura de pertencimento para os marginalizados (os "Maggots"), provando que a feiura e a dor podem ser transformadas em uma forma poderosa de arte e união.', 
	'../assets/images/banners/Banner-Slipknot.png', 
	'../assets/images/covers/Cover-Slipknot.png'),
	(1, 'Korn', 
	'Formados em Bakersfield, Califórnia, em 1993, o Korn é amplamente creditado como o pai do Nu Metal. Liderados pela voz angustiada de Jonathan Davis e o baixo percussivo de Fieldy, eles criaram um som que misturava a afinação pesada do metal com ritmos de hip-hop e uma vulnerabilidade lírica chocante. Álbuns como 1994 e "Follow the Leader" trouxeram temas de trauma infantil, bullying e alienação para o mainstream, validando a dor de uma geração inteira. O Korn não apenas criou um gênero, eles criaram uma estética e uma válvula de escape para o "freak" em todos nós.', 
	'../assets/images/banners/Banner-Korn.png', 
	'../assets/images/covers/Cover-Korn.png'),
	(1, 'Deftones', 
	'De Sacramento, Califórnia, o Deftones é a banda que transcendeu o rótulo de Nu Metal para se tornar algo etéreo. Liderados por Chino Moreno, eles fundiram o peso do metal alternativo com a atmosfera sonhadora do Shoegaze e New Wave. Álbuns como "White Pony" exploram a sensualidade, a solidão e a melancolia de forma única. Onde outros gritavam de raiva, o Deftones sussurrava sobre o vazio. Eles são a prova artística da cena, influenciando tanto o metal quanto o pop moderno, e servindo como a trilha sonora perfeita para a introspecção e a alienação.', 
	'../assets/images/banners/Banner-Deftones.png', 
	'../assets/images/covers/Cover-Deftones.png'),
	(2, 'Bring Me The Horizon', 
	'De Sheffield, Inglaterra, o BMTH é a personificação da "Evolução". Começando como uma banda de Deathcore pesado, eles lideraram a cena do MySpace antes de transicionar corajosamente para o Metalcore em "Sempiternal" e depois para o Rock Alternativo. Oli Sykes tornou-se a voz de uma geração que lida abertamente com depressão e vício. A banda nunca teve medo de alienar puristas para explorar novos sons, tornando-se o maior nome do rock moderno ao misturar guitarras pesadas com eletrônica, mantendo sempre a honestidade emocional crua que define a sua trajetória.', 
	'../assets/images/banners/Banner-BMTH.png', 
	'../assets/images/covers/Cover-BMTH.png'),
	(2, 'Bullet For My Valentine', 
	'Do País de Gales, o BFMV injetou virtuosismo e influência do Heavy Metal clássico no Metalcore dos anos 2000. Com "The Poison", eles dominaram a cena ao equilibrar riffs de guitarra técnicos e rápidos com refrões extremamente melódicos e letras sobre corações partidos e traição. Eles representam o lado mais "triste" e romântico do metal, oferecendo uma catarse melódica para a dor dos relacionamentos adolescentes. A banda provou que é possível ser tecnicamente agressivo e emocionalmente acessível ao mesmo tempo.', 
	'../assets/images/banners/Banner-BFMV.png', 
	'../assets/images/covers/Cover-BFMV.png'),
	(3, 'Pierce The Veil', 
	'Ícones do Post-Hardcore de San Diego, o Pierce The Veil define a estética e o som da era "Emo" tardia. Conhecidos pelos vocais agudos e distintos de Vic Fuentes e guitarras rápidas e complexas ("Mexicancore"), eles misturam agressividade com uma doçura melódica. Suas letras são poéticas, dramáticas e focadas em relacionamentos e autodescoberta. Hits como "King for a Day" tornaram-se hinos de uma geração que encontrou na vulnerabilidade e na estética "scene" uma forma de identidade e alívio para a tristeza.', 
	'../assets/images/banners/Banner-Pierce_The_Veil.png', 
	'../assets/images/covers/Cover-Pierce_The_Veil.png'),
	(1, 'System of a Down', 
	'Formada na Califórnia por descendentes de armênios, o SOAD trouxe uma excentricidade única ao metal alternativo. Misturando riffs pesados, melodias do Oriente Médio, letras políticas e uma esquizofrenia vocal entre Serj Tankian e Daron Malakian, eles desafiaram todas as convenções. Álbuns como "Toxicity" capturaram a energia maníaca e a paranoia do mundo pós-11 de setembro. Eles representam o lado "Desafio" e "Energia" do movimento, provando que o metal pode ser político, bizarro e dançante.', 
	'../assets/images/banners/Banner-SOAD.png', 
	'../assets/images/covers/Cover-SOAD.png'),
	(1, 'Linkin Park', 
	'O Linkin Park foi a ponte definitiva entre o underground e o sucesso global. Fundada na Califórnia, a banda aperfeiçoou a fórmula do Nu Metal em "Hybrid Theory" (2000). A dinâmica vocal entre a suavidade e o rap de Mike Shinoda e os gritos devastadores de Chester Bennington criou a trilha sonora perfeita para a ansiedade e insegurança adolescente. Suas letras sobre conflito interno e isolamento ressoam eternamente, tornando-os ícones imortais da vulnerabilidade masculina e da discussão sobre saúde mental na música pesada.', 
	'../assets/images/banners/Banner-Linkin_Park.png', 
	'../assets/images/covers/Cover-Linkin_Park.png'),
	(2, 'Motionless in White', 
	'Vindo da Pensilvânia, o MIW trouxe o teatro e o horror de volta ao Metalcore. Liderados por Chris Motionless, a banda funde o peso dos breakdowns do metalcore com a estética e sintetizadores do Industrial e Gótico. Suas letras abordam temas de autoaceitação, rejeição às normas sociais e ficção de horror. Eles são os herdeiros espirituais da estética de choque, criando um espaço seguro para os "inadaptados" modernos e misturando a raiva contra o sistema com uma celebração visual do macabro.', 
	'../assets/images/banners/Banner-Motionless_in_White.png', 
	'../assets/images/covers/Cover-Motionless_in_White.png'),
	(2, 'Three Days Grace', 
	'Do Canadá, o Three Days Grace dominou as rádios de rock com hinos de angústia e superação. Embora tecnicamente Post-Grunge/Hard Rock, eles são espiritualmente irmãos do movimento Nu Metal/Emo pela temática de suas letras. A voz rouca de Adam Gontier em álbuns como "One-X" articulou sentimentos de isolamento, vício e raiva de uma forma universalmente acessível. Eles são a "trilha sonora da angústia" em sua forma mais pura e direta.', 
	'../assets/images/banners/Banner-Three_Days_Grace.png', 
	'../assets/images/covers/Cover-Three_Days_Grace.png');
    
INSERT INTO album (name, release_date, cover_path, band_id) VALUES 
	('Hybrid Theory', '2000-10-24', '../assets/images/albums/linkin_park/Hybrid_Theory.jpg', 8),
	('Meteora', '2003-03-25', '../assets/images/albums/linkin_park/Meteora.jpg', 8),
	('Minutes to Midnight', '2007-05-14', '../assets/images/albums/linkin_park/Minutes_to_Midnight.jpg', 8),
	('Slipknot', '1999-06-29', '../assets/images/albums/slipknot/Slipknot.jpg', 1),
	('Iowa', '2001-08-28', '../assets/images/albums/slipknot/Iowa.jpg', 1),
	('Vol. 3: (The Subliminal Verses)', '2004-05-25', '../assets/images/albums/slipknot/Vol_3.jpg', 1),
	('All Hope Is Gone', '2008-08-20', '../assets/images/albums/slipknot/All_Hope_Is_Gone.jpg', 1),
	('System of a Down', '1998-06-30', '../assets/images/albums/soad/System_of_a_Down.jpg', 7),
	('Toxicity', '2001-09-04', '../assets/images/albums/soad/Toxicity.jpg', 7),
	('Mezmerize', '2005-05-17', '../assets/images/albums/soad/Mezmerize.jpg', 7),
	('Hypnotize', '2005-11-22', '../assets/images/albums/soad/Hypnotize.jpg', 7),
	('Sempiternal', '2013-04-01', '../assets/images/albums/bmth/Sempiternal.jpg', 4),
	('That''s the Spirit', '2015-09-11', '../assets/images/albums/bmth/Thats_The_Spirit.jpg', 4),
	('Post Human: Survival Horror', '2020-10-30', '../assets/images/albums/bmth/Post_Human_Survival_Horror.jpg', 4),
	('Korn', '1994-10-11', '../assets/images/albums/korn/Korn.jpg', 2),
	('Follow the Leader', '1998-08-18', '../assets/images/albums/korn/Follow_the_Leader.jpg', 2),
	('Issues', '1999-11-16', '../assets/images/albums/korn/Issues.jpg', 2),
	('See You on the Other Side', '2005-12-06', '../assets/images/albums/korn/See_You_on_the_Other_Side.jpg', 2),
	('Around the Fur', '1997-10-28', '../assets/images/albums/deftones/Around_the_Fur.jpg', 3),
	('White Pony', '2000-06-20', '../assets/images/albums/deftones/White_Pony.jpg', 3),
	('Diamond Eyes', '2010-05-04', '../assets/images/albums/deftones/Diamond_Eyes.jpg', 3),
	('Selfish Machines', '2010-06-21', '../assets/images/albums/ptv/Selfish_Machines.jpg', 6),
	('Collide with the Sky', '2012-07-17', '../assets/images/albums/ptv/Collide_with_the_Sky.jpg', 6),
	('Misadventures', '2016-05-13', '../assets/images/albums/ptv/Misadventures.jpg', 6),
	('The Poison', '2005-10-03', '../assets/images/albums/bfmv/The_Poison.jpg', 5),
	('Scream Aim Fire', '2008-01-28', '../assets/images/albums/bfmv/Scream_Aim_Fire.jpg', 5),
	('Fever', '2010-04-26', '../assets/images/albums/bfmv/Fever.jpg', 5),
	('Three Days Grace', '2003-07-22', '../assets/images/albums/tdg/Three_Days_Grace.jpg', 10),
	('One-X', '2006-06-13', '../assets/images/albums/tdg/One_X.jpg', 10),
	('Reincarnate', '2014-09-16', '../assets/images/albums/miw/Reincarnate.jpg', 9),
	('Disguise', '2019-06-07', '../assets/images/albums/miw/Disguise.jpg', 9),
	('Scoring The End Of The World', '2022-06-10', '../assets/images/albums/miw/Scoring_The_End_Of_The_World.jpg', 9);
    
INSERT INTO music (name, album_id, mood_id) VALUES 
	('In the End', 1, 3),
	('Crawling', 1, 2),
	('One Step Closer', 1, 1),
	('Papercut', 1, 2),
	('Numb', 2, 4),
	('Faint', 2, 2),
	('What I''ve Done', 3, 7),
	('Wait and Bleed', 4, 2),
	('People = Shit', 5, 1),
	('Duality', 6, 7),
	('Before I Forget', 6, 6),
	('Psychosocial', 7, 5),
	('Snuff', 7, 3),
	('Sugar', 8, 5),
	('Chop Suey!', 9, 7),
	('Toxicity', 9, 4),
	('Aerials', 9, 4),
	('B.Y.O.B.', 10, 1),
	('Lonely Day', 11, 3),
	('Can You Feel My Heart', 12, 2),
	('Shadow Moses', 12, 7),
	('Sleepwalking', 12, 3),
	('Throne', 13, 6),
	('Drown', 13, 4),
	('Kingslayer', 14, 5),
	('Blind', 15, 5),
	('Freak on a Leash', 16, 1),
	('Got the Life', 16, 5),
	('Falling Away from Me', 17, 2),
	('Coming Undone', 18, 6),
	('My Own Summer (Shove It)', 19, 1),
	('Be Quiet and Drive (Far Away)', 19, 7),
	('Change (In the House of Flies)', 20, 2),
	('Digital Bath', 20, 4),
	('Sextape', 21, 3),
	('Caraphernelia', 22, 3),
	('King for a Day', 23, 1),
	('Bulls in the Bronx', 23, 2),
	('Circles', 24, 7),
	('Tears Don''t Fall', 25, 3),
	('All These Things I Hate', 25, 6),
	('Waking the Demon', 26, 1),
	('Your Betrayal', 27, 1),
	('I Hate Everything About You', 28, 1),
	('Animal I Have Become', 29, 2),
	('Never Too Late', 29, 7),
	('Pain', 29, 4),
	('Reincarnate', 30, 6),
	('Another Life', 31, 3),
	('Masterpiece', 32, 7);

INSERT INTO music_like (user_id, music_id) VALUES
	(1, 1),
	(1, 3),
	(1, 5),
	(1, 7),
	(1, 10),
	(1, 12),
	(1, 13),
	(1, 15),
	(1, 16),
	(1, 20),
	(1, 21),
	(1, 23),
	(1, 25),
	(1, 27),
	(1, 33),
	(1, 37),
	(1, 40),
	(1, 44),
	(1, 49),
	(1, 50);

SELECT * FROM user;
SELECT * FROM genre;
SELECT * FROM mood;
SELECT * FROM band;
SELECT banner_path, cover_path FROM band;
SELECT * FROM album;
SELECT cover_path FROM album;
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
        
SELECT * FROM vw_band_ranking;
    
    