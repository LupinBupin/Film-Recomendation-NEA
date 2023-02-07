-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2021 at 10:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nea`
--
CREATE DATABASE IF NOT EXISTS `nea` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nea`;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `FilmID` int(11) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Genre` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Sub_Genre` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `PG_Rating` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `IMDB` decimal(2,1) DEFAULT NULL,
  `Length` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `Minutes` decimal(17,14) DEFAULT NULL,
  `Lead_Actor` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Supporing_Actor` varchar(21) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`FilmID`, `Title`, `Genre`, `Sub_Genre`, `PG_Rating`, `Year`, `IMDB`, `Length`, `Minutes`, `Lead_Actor`, `Supporing_Actor`) VALUES
(1, 'Scarface', 'Crime', 'Drama', 18, 1983, '8.3', '02:50:00', '170.00000000000003', NULL, NULL),
(2, 'American Pie', 'Comedy', 'Adult', 15, 1999, '7.0', '01:35:00', '95.00000000000000', NULL, NULL),
(3, 'American Pie 2', 'Comedy', 'Adult', 15, 2001, '6.4', '01:45:00', '105.00000000000000', NULL, NULL),
(4, 'American Wedding', 'Comedy', 'Adult', 15, 2003, '6.3', '01:36:00', '96.00000000000000', NULL, NULL),
(5, 'Bowling for Columbine', 'Documentry', 'Drama', 15, 2002, '7.9', '02:00:00', '120.00000000000000', NULL, NULL),
(6, 'One Flew Over the Cuckoo\'s Nest', 'Drama', NULL, 18, 1975, '8.7', '02:13:00', '133.00000000000000', NULL, NULL),
(7, 'Man on Fire', 'Action', 'Drama', 18, 2004, '7.7', '02:26:00', '146.00000000000003', NULL, NULL),
(8, 'Snatch', 'Comedy', 'Crime', 18, 2000, '8.3', '01:44:00', '104.00000000000001', NULL, NULL),
(9, 'Kill Bill Volume 1', 'Action', 'Crime', 18, 2003, '8.1', '01:51:00', '111.00000000000000', NULL, NULL),
(10, 'Kill Bill Volume 2', 'Action', 'Crime', 18, 2004, '8.0', '02:17:00', '137.00000000000000', NULL, NULL),
(11, 'Inglorious Bastards', 'War', 'Adventure', 18, 2009, '8.3', '02:33:00', '153.00000000000000', NULL, NULL),
(12, 'The Living Daylights', 'Spy', 'Action', 8, 1987, '6.7', '02:10:00', '130.00000000000000', NULL, NULL),
(13, 'Cast Away', 'Adventure', 'Drama', 12, 2000, '7.8', '02:23:00', '143.00000000000000', 'Tom Hanks', NULL),
(14, 'American Gangster', 'Crime', 'Drama', 18, 2007, '7.8', '02:37:00', '157.00000000000000', NULL, NULL),
(15, 'The Departed', 'Crime', 'Drama', 18, 2006, '8.5', '02:21:00', '141.00000000000000', 'Ewan McGregor', NULL),
(16, 'Trainspotting', 'Drama', NULL, 18, 1996, '8.1', '01:33:00', '93.00000000000001', NULL, NULL),
(17, 'Heat', 'Crime', 'Drama', 15, 1995, '8.2', '02:50:00', '170.00000000000003', NULL, NULL),
(18, 'Chariots of Fire', 'Drama', 'Sport', 0, 1981, '7.2', '02:05:00', '125.00000000000001', NULL, NULL),
(19, 'Pride and Prejudice', 'Drama', 'Romance', 0, 2005, '7.8', '02:09:00', '129.00000000000000', 'Keira Knightley', 'Matthew Macfadyen'),
(20, 'Wedding Date', 'Comedy', 'Romance', 12, 2005, '6.2', '01:30:00', '90.00000000000000', 'Dermot Mulroney', 'Debra Messing'),
(21, 'Dances with Wolves', 'Adventure', 'Western', 12, 1990, '8.0', '03:01:00', '181.00000000000000', 'Kevin Costner', 'Mary McDonnell'),
(22, 'Natural Born Killers', 'Action', 'Crime', 18, 1994, '7.3', '01:58:00', '118.00000000000000', 'Woody Harrelson', 'Juliette Lewis'),
(23, 'Meet the Parents', 'Comedy', 'Romance', 12, 2000, '7.0', '01:48:00', '108.00000000000000', 'Ben Stiller', 'Robert De Niro'),
(24, 'Se7en', 'Crime', 'Drama', 18, 1995, '8.6', '02:07:00', '127.00000000000001', 'Morgan Freeman', 'Brad Pitt'),
(25, 'The Blair Witch Project', 'Horror', 'Mystery', 15, 1999, '6.5', '01:21:00', '81.00000000000000', 'Heather Donahue', 'Michael C Williams'),
(26, 'The Man With The Golden Gun', 'Spy', 'Action', 0, 1974, '6.8', '02:05:00', '125.00000000000001', 'Roger Moore', 'Christopher Lee'),
(27, 'The World is not Enough', 'Spy', 'Action', 12, 1999, '6.4', '02:08:00', '128.00000000000000', 'Pierce Brosnan', 'Sophie Marceau'),
(28, 'Goldfinger', 'Spy', 'Action', 8, 1964, '7.7', '01:50:00', '110.00000000000001', 'Sean Connery', 'Gert Frobe'),
(29, 'Diamonds are Forever', 'Spy', 'Action', 12, 1971, '6.6', '02:00:00', '120.00000000000000', 'Sean Connery', 'Jill St. John'),
(30, 'Gladiator', 'Action', 'Adventure', 15, 2000, '8.5', '02:35:00', '155.00000000000000', 'Russell Crow', 'Joaquin Pheonix'),
(31, 'Midnight in Paris', 'Comedy', 'Romance', 12, 2011, '7.7', '01:36:00', '96.00000000000000', 'Owen Wilson', 'Rachel McAdams'),
(32, 'Snow White and the Seven Dwarfs', 'Animation', 'Fantasy', 0, 1936, '7.6', '01:23:00', '83.00000000000000', 'Adriana Caselotti', 'Harry Stockwell'),
(33, 'Notting Hill', 'Comedy', 'Romance', 15, 1999, '7.1', '02:04:00', '124.00000000000001', 'Hugh Grant', 'Julia Roberts'),
(34, 'The Bourne Identity', 'Spy', 'Action', 12, 2002, '7.9', '01:59:00', '119.00000000000000', 'Matt Damon', 'Franka Potente'),
(35, 'Good Will Hunting', 'Drama', 'Romance', 15, 1997, '8.3', '02:06:00', '126.00000000000001', 'Robin Williams', 'Matt Damon'),
(36, 'Planes, Trains and Automobiles', 'Comedy', 'Drama', 15, 1988, '7.6', '01:33:00', '93.00000000000001', 'Steve Martin', 'John Candy'),
(37, 'The Last Samurai', 'War', 'Drama', 15, 2003, '7.7', '02:34:00', '154.00000000000000', 'Tom Cruise', 'Ken Watanabe'),
(38, 'Lock Stock and Two Smoking Barrels ', 'Comedy', 'Action', 18, 1998, '8.2', '01:47:00', '107.00000000000000', 'Jason Flemyng', 'Dexter Fletcher'),
(39, 'The Long Good Friday', 'Crime', 'Drama', 18, 1980, '7.6', '01:54:00', '114.00000000000000', 'Bob Hoskins', 'Helen Mirren'),
(40, 'Wedding Crashers', 'Comedy', 'Romance', 15, 2005, '6.9', '01:59:00', '119.00000000000000', 'Owen Wilson', 'Vince Vaughn'),
(41, 'The Hangover', 'Comedy', 'Adult', 15, 2009, '7.7', '01:40:00', '99.99999999999999', 'Zach Galifianakis', 'Bradley Cooper'),
(42, 'Braveheart', 'Drama', 'History', 15, 1995, '8.3', '02:58:00', '178.00000000000000', 'Mel Gibson', 'Sophie Marceau'),
(43, 'Chicken Run', 'Animation', 'Adventure', 0, 2000, '7.0', '01:24:00', '83.99999999999999', 'Mel Gibson', 'Julia Sawalha'),
(44, 'Slum Dog Millionare', 'Drama', 'Romance', 15, 2008, '8.0', '02:00:00', '120.00000000000000', 'Dev Patel', 'Freida Pinto'),
(45, 'Brave', 'Animation', 'Adventure', 8, 2012, '7.1', '01:33:00', '93.00000000000001', 'Kelly Macdonald', 'Billy Connolly'),
(46, 'Treasure Planet', 'Animation', 'Adventure', 0, 2002, '7.2', '01:35:00', '95.00000000000000', 'Joseph Gordon-Levitt', 'Emma Thompson'),
(47, 'The Aristocats', 'Animation', 'Adventure', 0, 1970, '7.1', '01:18:00', '78.00000000000000', 'Phil Harris', 'Eva Gabor'),
(48, 'The Pirates!', 'Animation', 'Adventure', 8, 2012, '6.7', '01:28:00', '88.00000000000000', 'Hugh Grant', 'Salma Hayek'),
(49, 'The Karate Kid', 'Drama', 'Action', 15, 1984, '7.2', '02:06:00', '126.00000000000001', 'Ralph Macchio', 'Pat Morita'),
(50, 'National Lampoons Christmas Vacation', 'Comedy', NULL, 0, 1989, '7.6', '01:37:00', '97.00000000000000', 'Chevy Chase', 'Beverly D\'Angelo'),
(51, 'Shrek', 'Animation', 'Adventure', 0, 2001, '7.8', '01:30:00', '90.00000000000000', 'Mike Myers', 'Eddie Murphy'),
(52, 'Shrek 2', 'Animation', 'Adventure', 0, 2004, '7.2', '01:33:00', '93.00000000000001', 'Mike Myers', 'Eddie Murphy'),
(53, 'A Bugs Life', 'Animation', 'Adventure', 0, 1998, '7.2', '01:35:00', '95.00000000000000', 'Kevin Spacey', 'Dave Foley'),
(54, 'Love Actually', 'Comedy', 'Romance', 15, 2003, '7.6', '02:15:00', '135.00000000000000', 'Hugh Grant', 'Martine McCutcheon'),
(55, 'Chicken Little', 'Animation', 'Adventure', 0, 2005, '5.7', '01:21:00', '81.00000000000000', 'Zach Braff', 'Joan Cusack'),
(56, 'The Polar Express', 'Animation', 'Drama', 0, 2004, '6.6', '01:40:00', '99.99999999999999', 'Tom Hanks', 'Chris Coppola'),
(57, 'Kung Fu Panda', 'Animation', 'Adventure', 8, 2008, '7.5', '01:32:00', '92.00000000000000', 'Jack Black', 'Ian McShane'),
(58, 'Indiana Jones and the Raiders of the Lost Ark', 'Action', 'Adventure', 0, 1981, '8.4', '01:55:00', '114.99999999999999', 'Harisson Ford', 'Karen Allen'),
(59, 'Indiana Jones and the Temple of Doom', 'Action', 'Adventure', 13, 1984, '7.6', '01:58:00', '118.00000000000000', 'Harisson Ford', 'Kate Capshaw'),
(60, 'Indiana Jones and the Last Crusade', 'Action', 'Adventure', 8, 1989, '8.2', '02:07:00', '127.00000000000001', 'Harisson Ford', 'Sean Connery'),
(61, 'Indiana Jones and the Kingdom of the Crystal Skull', 'Action', 'Adventure', 12, 2008, '6.1', '02:02:00', '121.99999999999999', 'Harisson Ford', 'Cate Blanchett'),
(62, 'The Incredibles', 'Animation', 'Action', 0, 2004, '8.0', '01:55:00', '114.99999999999999', 'Craig T. Nelson', 'Samuel L. Jackson'),
(63, 'The Lion King', 'Animation', 'Drama', 0, 1994, '8.5', '01:28:00', '88.00000000000000', 'Matthew Broderick', 'Jeremy Irons'),
(64, 'RV', 'Adventure', 'Comedy', 8, 2006, '5.5', '01:39:00', '98.99999999999999', 'Robin Williams', 'Cheryl Hines'),
(65, 'It’s a Wonderful Life', 'Drama', 'Family', 0, 1946, '8.6', '01:39:00', '98.99999999999999', 'James Stewart', 'Donna Reed'),
(66, 'The Fox and the Hound', 'Animation', 'Adventure', 0, 1981, '7.3', '01:23:00', '83.00000000000000', 'Mickey Rooney', 'Kurt Russell'),
(67, 'Shrek the Third', 'Animation', 'Adventure', 0, 2007, '6.1', '01:33:00', '93.00000000000001', 'Mike Myers', 'Eddie Murphy'),
(68, '101 Dalmations', 'Animation', 'Adventure', 0, 1961, '7.2', '01:19:00', '79.00000000000000', 'Rod Taylor', 'Betty Lou Gerson'),
(69, 'Brides Maids', 'Comedy', 'Romance', 15, 2011, '6.8', '02:05:00', '125.00000000000001', 'Kristen Wiig', 'Maya Rudolph'),
(70, 'The Holiday', 'Comedy', 'Romance', 12, 2006, '6.9', '02:16:00', '136.00000000000000', 'Kate Winslet', 'Cameron Diaz'),
(71, 'The Emperors New Groove', 'Animation', 'Adventure', 0, 2000, '7.3', '01:18:00', '78.00000000000000', 'David Spade', 'John Goodman'),
(72, 'Superman', 'Superhero', 'Action', 0, 1978, '7.3', '02:23:00', '143.00000000000000', 'Christopher Reeve', 'Margot Kidder'),
(73, 'Harry Potter and the Philosophers Stone', 'Fantasy', 'Adventure', 8, 2001, '7.6', '02:32:00', '152.00000000000000', 'Daniel Radcliffe', 'Rupert Grint'),
(74, 'Harry Potter and the Chamber of Secrets', 'Fantasy', 'Adventure', 8, 2002, '7.4', '02:41:00', '161.00000000000000', 'Daniel Radcliffe', 'Rupert Grint'),
(75, 'Harry Potter and the Prisoner of Azkabam', 'Fantasy', 'Adventure', 8, 2004, '7.9', '02:22:00', '142.00000000000000', 'Daniel Radcliffe', 'Emma Watson'),
(76, 'Harry Potter and Goblet of Fire', 'Fantasy', 'Adventure', 12, 2005, '7.7', '02:37:00', '157.00000000000000', 'Daniel Radcliffe', 'Emma Watson'),
(77, 'Harry Potter and the Order of Pheonix', 'Fantasy', 'Adventure', 12, 2007, '7.5', '02:18:00', '138.00000000000000', 'Daniel Radcliffe', 'Emma Watson'),
(78, 'Harry Potter and the Half Blood Prince', 'Fantasy', 'Adventure', 12, 2009, '7.6', '02:33:00', '153.00000000000000', 'Daniel Radcliffe', 'Emma Watson'),
(79, 'Harry Potter and the Deathly Hallows Part 1', 'Fantasy', 'Adventure', 12, 2010, '7.7', '02:26:00', '146.00000000000003', 'Daniel Radcliffe', 'Rupert Grint'),
(80, 'Harry Potter and the Deathly Hallows Part 2', 'Fantasy', 'Adventure', 12, 2011, '8.1', '02:10:00', '130.00000000000000', 'Daniel Radcliffe', 'Rupert Grint'),
(81, 'Monsters Inc', 'Animation', 'Adventure', 0, 2001, '8.0', '01:32:00', '92.00000000000000', 'Billy Crystal', 'John Goodman'),
(82, 'One Fine Day', 'Comedy', 'Romance', 8, 1996, '6.5', '01:48:00', '108.00000000000000', 'Michelle Pfeiffer', 'George Clooney'),
(83, 'Alice in Wonderland', 'Animation', 'Adventure', 0, 1951, '7.4', '01:15:00', '75.00000000000000', 'Kathryn Beaumont', 'Ed Wynn'),
(84, 'Alice in Wonderland (2010)', 'Fantasy', 'Adventure', 8, 2010, '6.4', '01:48:00', '108.00000000000000', 'Mia Wasikowska', 'Johnny Depp'),
(85, 'Toy Story', 'Animation', 'Adventure', 8, 1995, '8.3', '01:21:00', '81.00000000000000', 'Tom Hanks', 'Tim Allen'),
(86, 'Toy Story 2', 'Animation', 'Adventure', 0, 1999, '7.9', '01:32:00', '92.00000000000000', 'Tom Hanks', 'Tim Allen'),
(87, 'Toy Story 3', 'Animation', 'Adventure', 0, 2010, '8.3', '01:43:00', '103.00000000000001', 'Tom Hanks', 'Tim Allen'),
(88, 'Toy Story 4', 'Animation', 'Adventure', 0, 2019, '7.8', '01:40:00', '99.99999999999999', 'Tom Hanks', 'Tim Allen'),
(89, 'An Officer and a Gentleman', 'Drama', 'Romance', 15, 1982, '7.0', '02:04:00', '124.00000000000001', 'Richard Gere', 'Debra Winger'),
(90, '50 First Dates', 'Comedy', 'Drama', 12, 2004, '6.8', '01:39:00', '98.99999999999999', 'Adam Sandler', 'Drew Barrymore'),
(91, 'Pulp Fiction', 'Crime', 'Drama', 18, 1994, '8.9', '02:34:00', '154.00000000000000', 'John Travolta', 'Uma Thurman'),
(92, 'Star Wars: The Phantom Menace', 'Sci-Fi', 'Action', 0, 1999, '6.5', '02:16:00', '136.00000000000000', 'Ewan McGregor', 'Liam Neeson'),
(93, 'Star Wars: Attack of the Clones', 'Sci-Fi', 'Action', 8, 2002, '6.5', '02:22:00', '142.00000000000000', 'Ewan McGregor', 'Hayden Christiensen'),
(94, 'Star Wars: Revenge of the Sith', 'Sci-Fi', 'Action', 12, 2005, '7.5', '02:20:00', '140.00000000000000', 'Ewan McGregor', 'Hayden Christiensen'),
(95, 'Star Wars: A New Hope', 'Sci-Fi', 'Action', 0, 1977, '8.6', '02:01:00', '120.99999999999999', 'Mark Hamill', 'Harrison Ford'),
(96, 'Star Wars: The Empire Strikes Back', 'Sci-Fi', 'Action', 0, 1980, '8.7', '02:04:00', '124.00000000000001', 'Mark Hamill', 'Harrison Ford'),
(97, 'Star Wars: Return of the Jedi', 'Sci-Fi', 'Action', 0, 1983, '8.3', '02:11:00', '131.00000000000000', 'Mark Hamill', 'Harrison Ford'),
(98, 'Star Wars: The Force Awakens', 'Sci-Fi', 'Action', 12, 2015, '7.9', '02:18:00', '138.00000000000000', 'Daisy Ridley', 'John Boyega'),
(99, 'Star Wars: The Last Jedi', 'Sci-Fi', 'Action', 12, 2017, '7.0', '02:32:00', '152.00000000000000', 'Daisy Ridley', 'John Boyega'),
(100, 'Star Wars: The Rise of Skywalker', 'Sci-Fi', 'Action', 12, 2019, '6.6', '02:21:00', '141.00000000000000', 'Daisy Ridley', 'John Boyega'),
(101, 'Speed Racer', 'Action', 'Adventure', 8, 2008, '6.0', '02:15:00', '135.00000000000000', 'Emile Hirsch', 'Matthew Fox'),
(102, 'Cars', 'Animation', 'Comedy', 0, 2006, '7.1', '01:57:00', '117.00000000000000', 'Owen Wilson', 'Bonnie Hunt'),
(103, 'Cars 2', 'Animation', 'Spy', 0, 2011, '6.1', '01:46:00', '106.00000000000000', 'Owen Wilson', 'Larry the Cable Guy'),
(104, 'Cars 3', 'Animation', 'Comedy', 0, 2017, '6.7', '01:42:00', '102.00000000000000', 'Owen Wilson', 'Cristela Alonzo'),
(105, 'The Young Victoria', 'Drama', 'History', 8, 2009, '7.3', '01:45:00', '105.00000000000000', 'Emile Blunt', 'Rupert Friend'),
(106, 'Ocean\'s Thirteen', 'Action', 'Crime', 8, 2007, '6.9', '02:02:00', '121.99999999999999', 'George Clooney', 'Brad Pitt'),
(107, 'King Arthur: Legend of the Sword', 'Fantasy', 'Action', 12, 2017, '6.7', '02:06:00', '126.00000000000001', 'Charlie Hunnam', 'Astrid Bergès-Frisbey'),
(108, 'The Hobbit: An Unexpected Journey', 'Fantasy', 'Adventure', 12, 2012, '7.8', '02:49:00', '168.99999999999997', 'Martin Freeman', 'Ian McKellen'),
(109, 'The Hobbit: The Desolation of Smaug', 'Fantasy', 'Adventure', 12, 2013, '7.8', '02:41:00', '161.00000000000000', 'Martin Freeman', 'Ian McKellen'),
(110, 'The Hobbit', 'Fantasy', 'Adventure', 12, 2014, '7.4', '02:24:00', '144.00000000000000', 'Martin Freeman', 'Ian McKellen'),
(111, 'The Adventures of Tintin', 'Animation', 'Action', 8, 2011, '7.3', '01:47:00', '107.00000000000000', 'Jamie Bell', 'Andy Serkis'),
(112, 'Zero Dark Thirty', 'War', 'Drama', 15, 2012, '7.4', '02:37:00', '157.00000000000000', 'Jessica Chastain', 'Joel Edgerton'),
(113, 'Dunkirk', 'War', 'Action', 12, 2017, '7.9', '01:46:00', '106.00000000000000', 'Fionn Whitehead', 'Barry Keoghan'),
(114, 'Skyfall', 'Spy', 'Action', 12, 2012, '7.7', '02:23:00', '143.00000000000000', 'Daniel Craig', 'Javier Bardem'),
(115, 'The Great Gatsby', 'Drama', 'Romance', 12, 2013, '7.2', '02:23:00', '143.00000000000000', 'Leonardo DiCaprio', 'Tobey Maguire'),
(116, 'The Life of Pi', 'Drama', 'Adventure', 8, 2012, '7.9', '02:07:00', '127.00000000000001', 'Suraj Sharma', 'Irrfan Khan'),
(117, 'Manchester by the Sea', 'Drama', NULL, 15, 2016, '7.8', '02:17:00', '137.00000000000000', 'Casey Affleck', 'Michelle Williams'),
(118, 'Platoon', 'War', 'Drama', 15, 1986, '8.1', '02:00:00', '120.00000000000000', 'Charlie Sheen', 'Tom Berenger'),
(119, 'Schindlers List', 'War', 'Drama', 15, 1993, '8.9', '03:15:00', '195.00000000000000', 'Liam Neeson', 'Ralph Fiennes'),
(120, 'Maleficent', 'Fantasy', NULL, 8, 2014, '7.0', '01:37:00', '97.00000000000000', 'Angelina Jolie', 'Ella Fanning'),
(121, 'Monty Python and the Holy Grail', 'Comedy', NULL, 15, 1975, '8.2', '01:31:00', '91.00000000000000', 'Graham Chapman', 'John Cleese'),
(122, 'Monty Python and the Life of Brian', 'Comedy', NULL, 14, 1979, '8.1', '01:34:00', '94.00000000000000', 'Graham Chapman', 'John Cleese'),
(123, 'Monty Python and the Meaning of Life', 'Comedy', NULL, 18, 1983, '7.5', '01:47:00', '107.00000000000000', 'John Cleese', 'Terry Gilliam'),
(124, 'Rain Man', 'Drama', NULL, 15, 1988, '8.0', '02:13:00', '133.00000000000000', 'Tom Cruise', 'Dustin Hoffman'),
(125, 'Saving Private Ryan', 'War', 'Drama', 15, 1998, '8.6', '02:49:00', '168.99999999999997', 'Tom Hanks', 'Matt Damon'),
(126, 'Batman', 'Superhero', 'Action', 12, 1989, '7.5', '02:06:00', '126.00000000000001', 'Michael Keaton', 'Jack Nicholson'),
(127, 'Batman Returns', 'Superhero', 'Action', 12, 1992, '7.0', '02:06:00', '126.00000000000001', 'Michael Keaton', 'Danny DeVito'),
(128, 'Batman Forever', 'Superhero', 'Action', 12, 1995, '5.4', '02:01:00', '120.99999999999999', 'Val Kilmer', 'Tommy Lee Jones'),
(129, 'Batman and Robin', 'Superhero', 'Action', 8, 1997, '3.7', '02:05:00', '125.00000000000001', 'George Clooney', 'Arnold Schwarzenegger'),
(130, 'Batman Begins', 'Superhero', 'Action', 12, 2005, '8.2', '02:20:00', '140.00000000000000', 'Christian Bale', 'Michael Caine'),
(131, 'The Dark Night', 'Superhero', 'Action', 12, 2008, '9.0', '02:32:00', '152.00000000000000', 'Christian Bale', 'Heath Ledger'),
(132, 'The Dark Night Rises', 'Superhero', 'Action', 12, 2012, '8.4', '02:44:00', '164.00000000000000', 'Christian Bale', 'Tom Hardy'),
(133, 'Back to the Future', 'Sci-Fi', 'Adventure', 8, 1985, '8.5', '01:56:00', '116.00000000000001', 'Michael J Fox', 'Christopher Lloyd'),
(134, 'Back to the Future II', 'Sci-Fi', 'Adventure', 8, 1989, '7.8', '01:48:00', '108.00000000000000', 'Michael J Fox', 'Christopher Lloyd'),
(135, 'Back to the Future III', 'Sci-Fi', 'Adventure', 8, 1990, '7.4', '01:58:00', '118.00000000000000', 'Michael J Fox', 'Christopher Lloyd'),
(136, 'Hunger Games', 'Sci-Fi', 'Action', 12, 2012, '7.2', '02:22:00', '142.00000000000000', 'Jennifer Lawrence', 'Josh Hutcherson'),
(137, 'Hunger Games Catching Fire', 'Sci-Fi', 'Action', 12, 2013, '7.5', '02:26:00', '146.00000000000003', 'Jennifer Lawrence', 'Josh Hutcherson'),
(138, 'Hunger Games Mockingjay Part 1', 'Sci-Fi', 'Action', 12, 2014, '6.6', '02:03:00', '122.99999999999999', 'Jennifer Lawrence', 'Josh Hutcherson'),
(139, 'Hunger Games Mockingjay Part 2', 'Sci-Fi', 'Action', 12, 2015, '6.5', '02:17:00', '137.00000000000000', 'Jennifer Lawrence', 'Josh Hutcherson'),
(140, 'The Wizard of Oz', 'Family', 'Adventure', 0, 1939, '8.0', '01:42:00', '102.00000000000000', 'Judy Garland', 'Frank Morgan'),
(141, 'Frozen', 'Animation', 'Adventure', 8, 2013, '7.4', '01:42:00', '102.00000000000000', 'Kristen Bell', 'Idina Menzel'),
(142, 'Despicable Me', 'Animation', 'Comedy', 0, 2010, '7.6', '01:35:00', '95.00000000000000', 'Steve Carell', 'Jason Segel'),
(143, 'Despicable Me 2', 'Animation', 'Comedy', 0, 2013, '7.3', '01:38:00', '97.99999999999999', 'Steve Carell', 'Kristen Wiig'),
(144, 'Doctor Strange', 'Superhero', 'Fantasy', 12, 2016, '7.5', '01:55:00', '114.99999999999999', 'Benedict Cumberbatch', 'Chiwetel Ejiofor'),
(145, 'The Jungle Book', 'Animation', 'Adventure', 0, 1967, '7.6', '01:18:00', '78.00000000000000', 'Phil Harris', 'Sebastian Cabot'),
(146, 'The Lego Movie', 'Animation', 'Adventure', 8, 2014, '7.7', '01:40:00', '99.99999999999999', 'Chris Pratt', 'Will Ferrell'),
(147, 'The Other Woman', 'Comedy', 'Romance', 13, 2014, '6.0', '01:49:00', '108.99999999999999', 'Cameron Diaz', 'Leslie Mann'),
(148, 'Any Given Sunday', 'Drama', 'Sport', 17, 1999, '6.9', '02:42:00', '162.00000000000000', 'Al Pacino', 'Dennis Quaid'),
(149, 'Goodfellas', 'Crime', 'Drama', 17, 1990, '8.7', '02:26:00', '146.00000000000003', 'Robert De Niro', 'Ray Liotta'),
(150, 'The Blind Side', 'Drama', 'Sport', 13, 2009, '7.6', '02:09:00', '129.00000000000000', 'Quinton Aaron', 'Sandra Bullock'),
(151, 'Casablanca', 'Drama', 'Romance', 8, 1942, '8.5', '01:42:00', '102.00000000000000', 'Humphrey Bogart', 'Ingrid Bergman'),
(152, 'Marley and Me', 'Comedy', 'Drama', 8, 2008, '7.1', '01:55:00', '114.99999999999999', 'Owen Wilson', 'Jennifer Aniston'),
(153, 'Bolt', 'Animation', 'Adventure', 8, 2008, '6.8', '01:36:00', '96.00000000000000', 'John Travolta', 'Miley Cyrus'),
(154, 'Django', 'Action', 'Western', NULL, 1966, '7.2', '01:31:00', '91.00000000000000', 'Franco Nero', 'José Canelejas'),
(155, 'Grease', 'Musical', 'Romance', 8, 1978, '7.2', '01:50:00', '110.00000000000001', 'John Travolta', 'Olivia Newton-John'),
(156, 'Avatar', 'Action', 'Adventure', 13, 2009, '7.8', '02:42:00', '162.00000000000000', 'Sam Worthington', 'Zoe Saldana'),
(157, 'Side Effects', 'Crime', 'Drama', 17, 2013, '7.1', '01:46:00', '106.00000000000000', 'Rooney Mara', 'Channing Tatum'),
(158, 'Forrest Gump', 'Drama', 'Romance', 13, 1994, '8.8', '02:22:00', '142.00000000000000', 'Tom Hanks', 'Robin Wright'),
(159, 'Transformers', 'Action', 'Adventure', 13, 2007, '7.0', '02:24:00', '144.00000000000000', 'Shia LaBeouf', 'Megan FoX'),
(160, 'Pinochio ', 'Animation', 'Adventure', 0, 1940, '7.4', '01:28:00', '88.00000000000000', 'Dickie Jones', 'Christian Rub'),
(161, 'Megamind', 'Animation', 'Adventure', 8, 2010, '7.2', '01:38:00', '97.99999999999999', 'Will Ferrell', 'Jonah Hill'),
(162, 'Sleeping Beauty', 'Animation', 'Fantasy', 0, 1959, '7.2', '01:15:00', '75.00000000000000', 'Mary Costa', 'Bill Shirley'),
(163, 'Charlie and The Chocolate Factory', 'Adventure', 'Comedy', 8, 2005, '6.6', '01:55:00', '114.99999999999999', 'Johnny Depp', 'Freddie Highmore'),
(164, 'Lilo and Stitch', 'Animation', 'Adventure', 8, 2002, '7.2', '01:25:00', '85.00000000000001', 'Daveigh Chase', 'Chris Sanders'),
(165, 'Cinderella', 'Animation', 'Family', 0, 1950, '7.3', '01:14:00', '74.00000000000000', 'Ilene Woods', 'James MacDonald'),
(166, 'Fantasia 2000', 'Animation', NULL, 0, 1999, '7.2', '01:15:00', '75.00000000000000', NULL, NULL),
(167, 'Finding Nemo', 'Animation', 'Adventure', 0, 2003, '8.1', '01:40:00', '99.99999999999999', 'Albert Brooks', 'Ellen DeGeneres'),
(168, 'Princess and the Frog', 'Animation', 'Adventure', 0, 2009, '7.1', '01:37:00', '97.00000000000000', 'Anika Noni Rose', 'Keith David'),
(169, 'Tangled', 'Animation', 'Adventure', 8, 2010, '7.7', '01:40:00', '99.99999999999999', 'Mandy Moore', 'Zachary Levi'),
(170, 'The Many Adventures of Winnie the Pooh', 'Animation', 'Adventure', 0, 1977, '7.6', '01:14:00', '74.00000000000000', 'Sabastian Cabot', 'Junius Matthews'),
(171, 'The Little Mermaid', 'Animation', 'Adventure', 0, 1989, '7.6', '01:23:00', '83.00000000000000', 'Jodi Benson', 'Samuel E. Wright'),
(172, 'Beauty and the Beast', 'Animation', 'Family', 0, 1991, '8.0', '01:24:00', '83.99999999999999', 'Paige O\'Hara', 'Robby Benson'),
(173, 'Ratatouille', 'Animation', 'Adventure', 0, 2007, '8.0', '01:51:00', '111.00000000000000', 'Brad Garrett', 'Lou Romano'),
(174, 'Aladdin', 'Animation', 'Adventure', 0, 1992, '8.0', '01:30:00', '90.00000000000000', 'Scott Weinger', 'Robin Williams'),
(175, 'Kong Skull Island', 'Action', 'Adventure', 12, 2017, '6.6', '01:58:00', '118.00000000000000', 'Tom Hiddleston', 'Samuel L. Jackson'),
(176, 'Logan', 'Superhero', 'Action', 15, 2017, '8.1', '02:17:00', '137.00000000000000', 'Hugh Jackman', 'Patrick Stewart'),
(177, 'The Shawshank Redemption', 'Drama', NULL, 15, 1994, '9.3', '02:22:00', '142.00000000000000', 'Tim Robbins', 'Morgan Freeman'),
(178, 'Pirates of the Caribbean Curse of the Black Pearl', 'Action', 'Adventure', 8, 2003, '8.0', '02:23:00', '143.00000000000000', 'Johnny Depp', 'Geoffrey Rush'),
(179, 'Pirates of the Caribbean Dead Mans Chest', 'Action', 'Adventure', 8, 2006, '7.3', '02:31:00', '151.00000000000000', 'Johnny Depp', 'Orlando Bloom'),
(180, 'Pirates of the Caribbean At World\'s End', 'Action', 'Adventure', 8, 2007, '7.1', '02:49:00', '168.99999999999997', 'Johnny Depp', 'Orlando Bloom'),
(181, 'Pirates of the Caribbean On Stranger Tides', 'Action', 'Adventure', 8, 2011, '6.6', '02:16:00', '136.00000000000000', 'Johnny Depp', 'Geoffrey Rush'),
(182, 'Pirates of the Caribbean Salazar\'s Revenge', 'Action', 'Adventure', 8, 2017, '6.6', '02:09:00', '129.00000000000000', 'Johnny Depp', 'Geoffrey Rush'),
(183, 'Kingsman The Secret Service', 'Spy', 'Comedy', 15, 2014, '7.7', '02:09:00', '129.00000000000000', 'Colin Firth', 'Taron Egerton'),
(184, 'Kingsman The Golden Circle', 'Spy', 'Comedy', 15, 2017, '6.7', '02:21:00', '141.00000000000000', 'Colin Firth', 'Taron Egerton'),
(185, 'Ironman', 'Superhero', 'Sci-Fi', 12, 2008, '7.9', '02:06:00', '126.00000000000001', 'Robert Downey Jr', 'Gwyneth Paltrow'),
(186, 'Ironman 2', 'Superhero', 'Sci-Fi', 12, 2010, '7.0', '02:04:00', '124.00000000000001', 'Robert Downey Jr', 'Gwyneth Paltrow'),
(187, 'The Incredible Hulk', 'Superhero', 'Sci-Fi', 12, 2008, '6.7', '01:52:00', '112.00000000000000', 'Edward Norton', 'Liv Tyler'),
(188, 'Thor', 'Superhero', 'Fantasy', 12, 2011, '7.0', '01:55:00', '114.99999999999999', 'Chris Hemsworth', 'Anthony Hopkins'),
(189, 'Captain America: The First Avenger', 'Superhero', 'Sci-Fi', 12, 2011, '6.9', '02:04:00', '124.00000000000001', 'Chris Evans', 'Hugo Weaving'),
(190, 'Avengers Assemble', 'Superhero', 'Sci-Fi', 12, 2012, '8.0', '02:23:00', '143.00000000000000', 'Robert Downey Jr', 'Chris Evans'),
(191, 'Wonder Woman', 'Superhero', 'Fantasy', 12, 2017, '7.4', '02:21:00', '141.00000000000000', 'Gal Gadot', 'Chris Pine');

-- --------------------------------------------------------

--
-- Table structure for table `userlink`
--

CREATE TABLE `userlink` (
  `LinkID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `FilmID` int(11) DEFAULT NULL,
  `DateAdded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlink`
--

INSERT INTO `userlink` (`LinkID`, `UserID`, `FilmID`, `DateAdded`) VALUES
(1, 1, 45, NULL),
(2, 1, 46, NULL),
(3, 1, 48, NULL),
(4, 1, 52, NULL),
(5, 1, 55, NULL),
(6, 1, 57, NULL),
(7, 1, 67, NULL),
(8, 1, 87, NULL),
(9, 1, 88, NULL),
(10, 1, 141, NULL),
(11, 1, 146, NULL),
(12, 1, 153, NULL),
(13, 1, 161, NULL),
(14, 1, 164, NULL),
(15, 1, 167, NULL),
(16, 1, 168, NULL),
(17, 1, 169, NULL),
(18, 1, 173, NULL),
(19, 2, 43, NULL),
(20, 2, 45, NULL),
(21, 2, 46, NULL),
(22, 2, 48, NULL),
(23, 2, 51, NULL),
(24, 2, 52, NULL),
(25, 2, 53, NULL),
(26, 2, 55, NULL),
(27, 2, 57, NULL),
(28, 2, 67, NULL),
(29, 2, 71, NULL),
(30, 2, 81, NULL),
(31, 2, 85, NULL),
(32, 2, 86, NULL),
(33, 2, 87, NULL),
(34, 2, 88, NULL),
(35, 2, 141, NULL),
(36, 2, 146, NULL),
(37, 2, 153, NULL),
(38, 2, 161, NULL),
(39, 2, 164, NULL),
(40, 2, 167, NULL),
(41, 2, 168, NULL),
(42, 2, 169, NULL),
(43, 2, 171, NULL),
(44, 2, 173, NULL),
(45, 2, 174, NULL),
(46, 3, 133, NULL),
(47, 3, 134, NULL),
(48, 3, 135, NULL),
(49, 4, 8, NULL),
(50, 4, 38, NULL),
(51, 4, 121, NULL),
(52, 4, 122, NULL),
(53, 4, 41, NULL),
(54, 4, 31, NULL),
(55, 4, 36, NULL),
(56, 4, 50, NULL),
(57, 4, 123, NULL),
(58, 4, 152, NULL),
(59, 4, 2, NULL),
(60, 4, 23, NULL),
(61, 4, 40, NULL),
(62, 4, 90, NULL),
(63, 4, 82, NULL),
(64, 4, 3, NULL),
(65, 4, 4, NULL),
(66, 4, 20, NULL),
(67, 4, 147, NULL),
(68, 5, 8, NULL),
(69, 5, 38, NULL),
(70, 5, 121, NULL),
(71, 5, 122, NULL),
(72, 5, 41, NULL),
(73, 5, 31, NULL),
(74, 5, 36, NULL),
(75, 5, 50, NULL),
(76, 5, 123, NULL),
(77, 5, 152, NULL),
(78, 5, 2, NULL),
(79, 5, 23, NULL),
(80, 5, 40, NULL),
(81, 5, 90, NULL),
(82, 5, 82, NULL),
(83, 5, 3, NULL),
(84, 5, 4, NULL),
(85, 5, 20, NULL),
(86, 5, 147, NULL),
(87, 6, 30, NULL),
(88, 6, 60, NULL),
(89, 6, 9, NULL),
(90, 6, 10, NULL),
(91, 6, 178, NULL),
(92, 6, 156, NULL),
(93, 6, 7, NULL),
(94, 6, 179, NULL),
(95, 6, 22, NULL),
(96, 6, 180, NULL),
(97, 6, 159, NULL),
(98, 6, 106, NULL),
(99, 6, 175, NULL),
(100, 6, 181, NULL),
(101, 6, 182, NULL),
(102, 6, 61, NULL),
(103, 6, 101, NULL),
(104, 7, 5, NULL),
(105, 8, 155, NULL),
(106, 9, 63, NULL),
(107, 9, 85, NULL),
(108, 9, 87, NULL),
(109, 9, 167, NULL),
(110, 9, 81, NULL),
(111, 9, 174, NULL),
(112, 9, 62, NULL),
(113, 9, 172, NULL),
(114, 9, 173, NULL),
(115, 9, 86, NULL),
(116, 9, 51, NULL),
(117, 9, 88, NULL),
(118, 9, 169, NULL),
(119, 9, 146, NULL),
(120, 9, 142, NULL),
(121, 9, 145, NULL),
(122, 9, 32, NULL),
(123, 9, 170, NULL),
(124, 9, 171, NULL),
(125, 9, 57, NULL),
(126, 9, 141, NULL),
(127, 9, 83, NULL),
(128, 9, 160, NULL),
(129, 9, 165, NULL),
(130, 9, 111, NULL),
(131, 9, 143, NULL),
(132, 9, 71, NULL),
(133, 9, 66, NULL),
(134, 9, 162, NULL),
(135, 9, 53, NULL),
(136, 9, 166, NULL),
(137, 9, 52, NULL),
(138, 9, 161, NULL),
(139, 9, 164, NULL),
(140, 9, 46, NULL),
(141, 9, 68, NULL),
(142, 9, 45, NULL),
(143, 9, 47, NULL),
(144, 9, 168, NULL),
(145, 9, 102, NULL),
(146, 9, 43, NULL),
(147, 9, 153, NULL),
(148, 9, 48, NULL),
(149, 9, 104, NULL),
(150, 9, 56, NULL),
(151, 9, 67, NULL),
(152, 9, 103, NULL),
(153, 9, 55, NULL),
(154, 10, 21, NULL),
(155, 10, 13, NULL),
(156, 10, 163, NULL),
(157, 10, 64, NULL),
(159, 12, 30, NULL),
(160, 12, 58, NULL),
(161, 12, 60, NULL),
(162, 12, 9, NULL),
(163, 12, 178, NULL),
(164, 12, 10, NULL),
(165, 12, 156, NULL),
(166, 12, 7, NULL),
(167, 12, 59, NULL),
(168, 12, 179, NULL),
(169, 12, 22, NULL),
(170, 12, 180, NULL),
(171, 12, 159, NULL),
(172, 12, 106, NULL),
(173, 12, 181, NULL),
(174, 12, 175, NULL),
(175, 12, 182, NULL),
(176, 12, 61, NULL),
(177, 12, 101, NULL),
(178, 13, 58, NULL),
(179, 13, 9, NULL),
(180, 13, 59, NULL),
(181, 13, 22, NULL),
(182, 13, 175, NULL),
(183, 14, 176, NULL),
(184, 14, 185, NULL),
(185, 14, 126, NULL),
(186, 14, 144, NULL),
(187, 14, 127, NULL),
(188, 14, 186, NULL),
(189, 14, 188, NULL),
(190, 14, 189, NULL),
(191, 14, 187, NULL),
(192, 14, 128, NULL),
(193, 14, 129, NULL),
(194, 14, 155, NULL),
(196, 16, 22, NULL),
(197, 16, 175, NULL),
(198, 16, 95, NULL),
(199, 19, 133, NULL),
(200, 19, 98, NULL),
(201, 19, 134, NULL),
(202, 19, 94, NULL),
(203, 19, 137, NULL),
(204, 19, 135, NULL),
(205, 19, 136, NULL),
(206, 19, 99, NULL),
(207, 19, 138, NULL),
(208, 19, 100, NULL),
(209, 19, 92, NULL),
(210, 19, 93, NULL),
(211, 19, 139, NULL),
(212, 20, 131, NULL),
(213, 20, 132, NULL),
(214, 20, 130, NULL),
(215, 20, 176, NULL),
(216, 20, 190, NULL),
(217, 20, 185, NULL),
(218, 20, 126, NULL),
(219, 20, 144, NULL),
(220, 20, 191, NULL),
(221, 20, 186, NULL),
(222, 20, 188, NULL),
(223, 20, 127, NULL),
(224, 20, 189, NULL),
(225, 20, 187, NULL),
(226, 20, 128, NULL),
(227, 20, 129, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FirstName`, `Surname`) VALUES
(1, 'Linus', 'Sebastian'),
(2, 'John', 'Jones'),
(3, 'Joss', 'Davis'),
(4, 'Ian', 'Smith'),
(5, 'Ian', 'Smith'),
(6, 'Jimm', 'Mmm'),
(7, 'hyifs', 'ggvb'),
(8, 'fda', 'sdaf'),
(9, 'Msfs', 'fdfe'),
(10, 'fdbhs', 'fdskf'),
(11, '', ''),
(12, 'jifrfeuiog', 'rfsrfj'),
(13, 'jifrfeuiog', 'rfsrfj'),
(14, 'Hursh', 'Popat'),
(15, '', ''),
(16, 'John', 'Smith'),
(17, '', ''),
(18, 'X Æ A-12', 'Musk'),
(19, '', ''),
(20, 'Harry', 'Barton');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`FilmID`);

--
-- Indexes for table `userlink`
--
ALTER TABLE `userlink`
  ADD PRIMARY KEY (`LinkID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `FilmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `userlink`
--
ALTER TABLE `userlink`
  MODIFY `LinkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
