-- Create a videos table.
-- This table should include a unique ID, the title of the video, the length in minutes, and the URL.
-- Populate the table with at least three related videos from YouTube or other publicly available
-- resources.

CREATE TABLE videos(
     ID serial PRIMARY KEY,
     vid_id int,
     vid_title VARCHAR(200) NOT NULL,
     vid_lenght_minutes int,
     vid_url VARCHAR(355) NOT NULL
 );

INSERT INTO videos (vid_id,vid_title,vid_lenght_minutes,vid_url)
VALUES
(5556,'Damian "Jr. Gong" Marley - Life Is A Circle (Official Video)', 532, 'https://www.youtube.com/watch?v=9PKXmsowicc'),
(5557,'Damian "Jr. Gong" Marley - Speak Life (Official Video)', 519, 'https://www.youtube.com/watch?v=ebfeumBDymc'),
(5558, 'WizKid - Blessed (Audio) ft. Damian Marley',426, 'https://www.youtube.com/watch?v=QUSc5al8JpY' ),
(5559, 'Black Sherif - Kwaku the Traveller (Official Video)', 332, 'https://www.youtube.com/watch?v=GIDiI5kyBDQ' );



-- Create and populate Reviewers table.
-- Create a second table that provides at least two user reviews for each of at least two of the videos.
-- These should be imaginary reviews that include columns for the user’s name (“Asher”, “John”, etc.), the
-- rating (which could be NULL, or a number between 0 and 5), and a short text review (“Loved it!”). There
-- should be a column that links back to the ID column in the table of videos.

CREATE TABLE reviewers (
ID serial PRIMARY KEY,
user_name VARCHAR(50) UNIQUE NOT NULL,
rating int,
short_text VARCHAR(355) NOT NULL,
vid_id int
);

INSERT INTO reviewers (user_name, rating, short_text, vid_id)
VALUES
('Mauro Zuleta', 4, 'Beautiful song. To the memory of those who fought for Freedom, Justice and Equality & Human Rights', 5556),
('Fyofor Dostoevsky', 5, 'This aint just a song this is a holy song for the soul', 5557),
('Onowu Chux', 5, 'This song oozes of class. The sax in the background is so soothing. Beautiful mix of smooth sounds', 5558),
('sibulelo daweti', 5, 'He without sin shall cast the first stone so you will look in the mirror and double check your appearance', 5559);




-- Report on Video Reviews.
-- Write a JOIN statement that shows information from both tables.

SELECT *
FROM videos
LEFT JOIN reveiwers
ON videos.vid_id = reviewers.vid_id
