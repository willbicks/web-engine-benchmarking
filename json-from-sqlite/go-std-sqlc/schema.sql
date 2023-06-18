DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    age REAL NOT NULL,
    enabled BOOLEAN NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
);
INSERT INTO users (id, name, email, age, enabled, created_at, updated_at) VALUES
    (1, 'Marcello Fairman', 'mfairman0@reddit.example.com', 77.07, true, '1673345082000', '1674156269000'),
    (2, 'Devin Goodbur', 'dgoodbur1@over-blog.example.com', 95.41, true, '1674718803000', '1674375769000'),
    (3, 'Emory MacGinley', 'emacginley2@japanpost.example.jp', 62.32, false, '1674319482000', '1673032229000'),
    (4, 'Faustina Foss', 'ffoss3@forbes.example.com', 36.03, true, '1674331867000', '1673449108000'),
    (5, 'Carlo Ashcroft', 'cashcroft4@twitter.example.com', 70.9, false, '1673638817000', '1673153583000'),
    (6, 'Caterina Gresswell', 'cgresswell5@hud.example.gov', 51.37, false, '1675122058000', '1674314044000'),
    (7, 'Saundra Harroway', 'sharroway6@intel.example.com', 49.25, false, '1673258247000', '1674653725000'),
    (8, 'Jacinthe Apperley', 'japperley7@altervista.example.org', 63.81, false, '1673535792000', '1674648140000'),
    (9, 'Norene Butterwick', 'nbutterwick8@utexas.example.edu', 53.75, false, '1674096821000', '1673601229000'),
    (10, 'Sam Desantis', 'sdesantis9@un.example.org', 74.87, true, '1674020586000', '1672787323000'),
    (11, 'Caralie Perigeaux', 'cperigeauxa@ameblo.example.jp', 87.63, true, '1672703756000', '1672742528000'),
    (12, 'Gunilla Gerrans', 'ggerransb@aol.example.com', 74.34, false, '1673478023000', '1673759098000'),
    (13, 'Daisey Armistead', 'darmisteadc@blogspot.example.com', 25.32, false, '1674804492000', '1674981020000'),
    (14, 'Godfree Seebright', 'gseebrightd@aboutads.example.info', 44.33, true, '1674170401000', '1674230105000'),
    (15, 'Rosaleen Hartop', 'rhartope@sitemeter.example.com', 52.48, false, '1674463921000', '1672881226000'),
    (16, 'Mychal Eingerfield', 'meingerfieldf@indiegogo.example.com', 58.84, false, '1673725141000', '1674252929000'),
    (17, 'Chrissy Gatenby', 'cgatenbyg@guardian.example.co.uk', 29.96, true, '1673017192000', '1673018237000'),
    (18, 'Dennis Alabone', 'dalaboneh@eepurl.example.com', 38.93, false, '1674230709000', '1674582334000'),
    (19, 'Daveen Gut', 'dguti@zdnet.example.com', 72.41, true, '1672606973000', '1672850993000'),
    (20, 'Cyb Librey', 'clibreyj@businessweek.example.com', 92.82, true, '1672912960000', '1674046231000');