-- use albums_db
-- describe albums;




-- show databases;
-- use albums_db;   -- Primary key is "id"
				-- The name column represents the name of the album

-- SELECT user, host FROM mysql.user;
				-- Sales represents the number of sales for a specific artist
                

-- SHOW COLUMNS FROM actor[table] IN sakila[database];

-- Find the name of all albums by Pink Floyd.
-- select name from albums where artist = "Pink Floyd";   -- "The Dark Side of the Moon", "The Wall"


-- select * from albums_dd where artist = "Pink Floyd";
 -- select * from albums_db.artist;
 
 -- What is the year Sgt. Pepper's Lonely Hearts Club Band was released?
-- select * from albums;
-- select release_date from albums where name = "Sgt. Pepper's Lonely Hearts Club Band";  -- 1967

-- What is the genre for the album Nevermind?
-- select genre from albums where name = "Nevermind";  -- Grunge, Alternative rock

-- Which albums were released in the 1990s?
-- select name from albums where release_date between 1990 AND 2000;


-- Which albums had less than 20 million certified sales? Rename this column as low_selling_albums.
select name as low_selling from albums where sales < 20;   




