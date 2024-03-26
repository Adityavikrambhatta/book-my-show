create database bookMyShow;

use bookMyShow;

/*
	The list of entity and their attributes.
	1. Theatre :
		The attributes of this entity are : 
			a. theatre_id (primary key)
            b. theatre_name
            c. location
            d. cancel_able
    2. Movie : 
		The attributes of this entity are : 
			a. movie_id
			b. movie_name
                        c. duration
			d. genre 
			e. language 
			f. format
    3. Shows :
		The attributes of this entity are : 
			a. show_id 
			b. theatre_id 
			c. movie_id 
			d. date
			e. show_time 
	4. Dates : 
		The attributes of this entity are : 
			a. date_id
			b. show_date
    
    
*/

show databases;

-- Theatre table
CREATE TABLE Theatre (
    theatre_id INT AUTO_INCREMENT PRIMARY KEY,
    theatre_name VARCHAR(255),
    location VARCHAR(255),
	cancel_able BOOLEAN NULL
);

-- Movie table
CREATE TABLE Movie (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(255),
    duration INT,
    genre VARCHAR(255),
    language VARCHAR(255),
    format  VARCHAR(255)
);

-- Shows table
CREATE TABLE Shows (
    show_id INT AUTO_INCREMENT PRIMARY KEY,
    theatre_id INT,
    movie_id INT,
    date DATE,
    show_time TIME,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);

-- Date table
CREATE TABLE Dates (
    date_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE
);

INSERT INTO Theatre (theatre_name, location)
VALUES ( 'Inox', 'UB City, Halasuru, Bangalore'),
       ('PVR Cinemas', 'Pheonix Market City, Whitefield, Bangalore');

-- Inserting sample data into Movie table
INSERT INTO Movie ( movie_name, duration, genre, language, format)
VALUES ( 'Shaitaan', 150, 'Thriller', 'Hindi', 'Dolby 7.1'),
       ( 'Tu Jhooti Main Makkar', 180, 'Comedy', 'Hindi', 'Dolby 3.1');

-- Inserting sample data into Date table
INSERT INTO Dates (date)
VALUES ( '2024-03-25'),
       ( '2024-03-26');

-- Inserting sample data into Show table
INSERT INTO Shows ( theatre_id, movie_id, date, show_time)
VALUES ( 1, 1, '2024-03-25', '18:00:00'),
       (1, 2, '2024-03-25', '20:00:00'),
       ( 2, 1, '2024-03-26', '19:00:00');
       
-- P2
SELECT m.movie_name, s.show_time
FROM Shows s
JOIN Movie m ON s.movie_id = m.movie_id
WHERE s.theatre_id = 1
AND s.date = '2024-03-25';



