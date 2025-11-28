USE sempiternal;

INSERT INTO genre (name) VALUES 
('New Metal'), 
('Metalcore'), 
('Post-Hardcore');

INSERT INTO mood (name, color) VALUES 
('angry', '#DC2626'),
('anguish', '#9333EA'),
('sadness', '#3B82F6'),
('loneliness', '#9CA3AF'),
('energy', '#FACC15'),
('challenge', '#F97316'),
('catharsis', '#10B981');


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