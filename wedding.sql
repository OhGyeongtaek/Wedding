-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14-12-09 23:53
-- 서버 버전: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `art`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `th_idx` int(11) NOT NULL,
  `chk` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 테이블의 덤프 데이터 `app`
--

INSERT INTO `app` (`idx`, `th_idx`, `chk`, `start`, `end`, `price`) VALUES
(7, 15, 1, '2014-10-22', '2014-10-31', 28918917),
(8, 15, 1, '2014-10-17', '2014-10-29', 38558556),
(9, 14, 0, '2014-10-22', '2014-10-25', 93693636);

-- --------------------------------------------------------

--
-- 테이블 구조 `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `replace` varchar(100) NOT NULL,
  `a_idx` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 테이블의 덤프 데이터 `content`
--

INSERT INTO `content` (`idx`, `title`, `price`, `file`, `replace`, `a_idx`, `text`) VALUES
(1, '3213213', 321312, 'dsafsd', '34214241', 8, ''),
(2, '3213213', 321312, 'dsafsd', '34214241', 8, ''),
(3, '3213213', 321312, 'dsafsd', '34214241', 8, ''),
(4, '3213213', 321312, 'dsafsd', '34214241', 8, ''),
(8, '3213213', 2147483647, '/static/upload/content/1412490751.jpg', '3213213', 7, ''),
(9, '3213213', 321321123, '/static/upload/content/1412490762.jpg', '321321', 7, ''),
(10, '3213213', 321321, '/static/upload/content/1412490802.jpg', '작성', 7, ''),
(11, '22222', 321321, '/static/upload/content/1412491075.jpg', '312312', 8, ''),
(12, '321312312', 2147483647, '/static/upload/content/1412491089.jpg', '2222222222222222222222222', 8, ''),
(13, '321312321', 321321, '/static/upload/content/1412491568.jpg', '321321', 8, ''),
(14, '3213213', 321321, '/static/upload/content/1412495881.jpg', '321321', 0, ''),
(15, '321321', 321321, '/static/upload/content/1412502639.jpg', '312321', 0, ''),
(16, '231312', 321312, '/static/upload/content/1412502652.jpg', '321312321', 0, ''),
(17, '321321', 321213213, '/static/upload/content/1412502707.jpg', '321321321', 9, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `theater`
--

CREATE TABLE IF NOT EXISTS `theater` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `text` text NOT NULL,
  `seat` text NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 테이블의 덤프 데이터 `theater`
--

INSERT INTO `theater` (`idx`, `title`, `width`, `height`, `text`, `seat`, `count`, `price`, `file`) VALUES
(14, '12', 20, 5, '12312', 'A-2,A-3,A-4,A-5,A-6,A-7,A-8,A-9,A-10,A-11,A-12,B-1,B-2,B-3,B-4,B-5,B-6,B-7,B-8,B-9,B-10,B-11,B-12,B-13,B-14,B-17,B-18,B-19,B-20,C-1,C-2,C-3,C-4,C-5,C-6,C-7,C-8,C-9,C-10,C-11,C-12,C-13,C-14,C-17,C-18,C-19,C-20,D-1,D-2,D-3,D-4,D-5,D-6,D-7,D-8,D-9,D-10,D-11,D-12,D-13,D-14,D-17,D-18,D-19,D-20,E-1,E-2,E-3,E-4,E-5,E-6,E-7,E-8,E-9,E-10,E-11,E-12,E-13,E-14,E-17,E-18,E-19,E-20', 83, 31231212, '/static/upload/theater/1412418213.jpg'),
(15, '3213213', 20, 5, '1231', 'B-4,B-5,B-6,B-7,B-8,B-9,B-10,B-11,B-12,B-13,B-14,C-4,C-5,C-6,C-7,C-8,C-9,C-10,C-11,C-12,C-13,C-14,D-4,D-5,D-6,D-7,D-8,D-9,D-10,D-11,D-12,D-13,D-14,E-4,E-5,E-6,E-7,E-8,E-9,E-10,E-11,E-12,E-13,E-14', 44, 3213213, '/static/upload/theater/1412421382.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `c_idx` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 테이블의 덤프 데이터 `time`
--

INSERT INTO `time` (`idx`, `c_idx`, `start`, `end`, `day`) VALUES
(4, 10, '20:10', '20:15', '2014-10-28'),
(5, 10, '20:10', '20:15', '2014-10-10'),
(6, 10, '20:10', '20:15', '2014-10-10'),
(7, 10, '20:10', '20:15', '2014-10-28'),
(8, 10, '20:10', '20:15', '2014-10-28');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`) VALUES
('admin', '1234'),
('enterprice', '1234');
--
-- Database: `artcenter`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `money` int(11) NOT NULL,
  `chk` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 테이블의 덤프 데이터 `application`
--

INSERT INTO `application` (`idx`, `midx`, `start`, `end`, `money`, `chk`) VALUES
(31, 30, '2014-09-20', '2014-09-23', 444444, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `performance`
--

CREATE TABLE IF NOT EXISTS `performance` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL,
  `text` varchar(50) NOT NULL,
  `replace` text NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 테이블의 덤프 데이터 `performance`
--

INSERT INTO `performance` (`idx`, `midx`, `title`, `file`, `text`, `replace`, `money`) VALUES
(12, 31, '321312', 'performance1411118681.jpg', '2312123', '23213213312', 321321);

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `seat` text NOT NULL,
  `count` int(11) NOT NULL,
  `pidx` int(11) NOT NULL,
  `tidx` int(11) NOT NULL,
  `aidx` int(11) NOT NULL,
  `thidx` int(11) NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `user`, `seat`, `count`, `pidx`, `tidx`, `aidx`, `thidx`, `money`) VALUES
(55, 'enterprice', 'C-13,C-14,C-15,C-16,C-17,C-18,D-13,D-14,D-15,D-16,D-17,D-18,E-13,E-14,E-15,E-16,E-17,E-18', 18, 12, 48, 31, 30, 5783778),
(56, 'admin', 'P-14,P-15,P-16,P-17,P-18,P-19,P-20,Q-14,Q-15,Q-16,Q-17,Q-18,Q-19,Q-20,R-14,R-15,R-16,R-17,R-18,R-19,R-20,S-14,S-15,S-16,S-17,S-18,S-19,S-20,T-14,T-15,T-16,T-17,T-18,T-19,T-20,U-14,U-15,U-16,U-17,U-18,U-19,U-20,V-14,V-15,V-16,V-17,V-18,V-19,V-20,W-14,W-15,W-16,W-17,W-18,W-19,W-20', 56, 12, 48, 31, 30, 17993976);

-- --------------------------------------------------------

--
-- 테이블 구조 `theater`
--

CREATE TABLE IF NOT EXISTS `theater` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `file` varchar(50) NOT NULL,
  `count` int(11) NOT NULL,
  `text` text NOT NULL,
  `money` int(11) NOT NULL,
  `seat` text NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 테이블의 덤프 데이터 `theater`
--

INSERT INTO `theater` (`idx`, `title`, `file`, `count`, `text`, `money`, `seat`, `width`, `height`) VALUES
(30, '기능관', 'theater1411118474.jpg', 132, '기능관임', 321321, 'M-9,M-10,M-11,M-12,M-13,M-14,M-15,M-16,M-17,M-18,M-19,M-20,N-9,N-10,N-11,N-12,N-13,N-14,N-15,N-16,N-17,N-18,N-19,N-20,O-9,O-10,O-11,O-12,O-13,O-14,O-15,O-16,O-17,O-18,O-19,O-20,P-9,P-10,P-11,P-12,P-13,P-14,P-15,P-16,P-17,P-18,P-19,P-20,Q-9,Q-10,Q-11,Q-12,Q-13,Q-14,Q-15,Q-16,Q-17,Q-18,Q-19,Q-20,R-9,R-10,R-11,R-12,R-13,R-14,R-15,R-16,R-17,R-18,R-19,R-20,S-9,S-10,S-11,S-12,S-13,S-14,S-15,S-16,S-17,S-18,S-19,S-20,T-9,T-10,T-11,T-12,T-13,T-14,T-15,T-16,T-17,T-18,T-19,T-20,U-9,U-10,U-11,U-12,U-13,U-14,U-15,U-16,U-17,U-18,U-19,U-20,V-9,V-10,V-11,V-12,V-13,V-14,V-15,V-16,V-17,V-18,V-19,V-20,W-9,W-10,W-11,W-12,W-13,W-14,W-15,W-16,W-17,W-18,W-19,W-20', 35, 26);

-- --------------------------------------------------------

--
-- 테이블 구조 `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `day` date NOT NULL,
  `start` varchar(5) NOT NULL,
  `end` varchar(5) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- 테이블의 덤프 데이터 `time`
--

INSERT INTO `time` (`idx`, `midx`, `day`, `start`, `end`) VALUES
(48, 12, '2014-09-22', '09:00', '09:00');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`) VALUES
('admin', '1234', '관리자'),
('enterprice', '1234', '기업회원'),
('user', '1234', '일반회원');
--
-- Database: `arttest`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `app`
--

CREATE TABLE IF NOT EXISTS `app` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(100) NOT NULL,
  `start` varchar(111) NOT NULL,
  `end` varchar(111) NOT NULL,
  `money` varchar(111) NOT NULL,
  `type` varchar(100) NOT NULL,
  `midx` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 테이블의 덤프 데이터 `app`
--

INSERT INTO `app` (`idx`, `place`, `start`, `end`, `money`, `type`, `midx`) VALUES
(5, '321321213', '2014-09-06', '2014-09-09', '2,147,483,647원', 'ok', 18),
(6, '321321213', '2014-09-17', '2014-09-23', '12,884,901,882원', 'ok', 18),
(7, '321321213', '2014-09-30', '2014-09-30', '2,147,483,647원', 'ok', 18),
(8, '321321213', '2014-09-24', '2014-09-29', '10,737,418,235원', 'ready', 18);

-- --------------------------------------------------------

--
-- 테이블 구조 `concert`
--

CREATE TABLE IF NOT EXISTS `concert` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `money` int(11) NOT NULL,
  `text` text NOT NULL,
  `seat` text NOT NULL,
  `people` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 테이블의 덤프 데이터 `concert`
--

INSERT INTO `concert` (`idx`, `title`, `width`, `height`, `file`, `money`, `text`, `seat`, `people`) VALUES
(18, '321321213', 20, 5, 'concert1410182624.jpg', 2147483647, '321213', 'A-2,A-3,A-4,A-5,A-6,A-7,A-8,A-9,A-10,A-11,A-12,A-13,A-14,A-15,A-16,A-17,A-18,A-19,A-20,A-21,B-21,C-4,C-5,C-6,C-7,C-8,C-9,C-10,C-11,C-12,C-13,C-14,C-15,C-16,C-17,C-18,C-19,C-20,C-21,D-4,D-5,D-6,D-7,D-8,D-9,D-10,D-11,D-12,D-13,D-14,D-15,D-16,D-17,D-18,D-19,D-20,D-21,E-21,', 58),
(19, '312321', 20, 14, 'concert1410183102.jpg', 321321, '321321321', 'F-7,F-8,F-9,F-10,F-11,F-12,F-13,F-14,F-15,F-16,F-17,F-18,F-19,F-20,G-7,G-8,G-9,G-10,G-11,G-12,G-13,G-14,G-15,G-16,G-17,G-18,G-19,G-20,H-7,H-8,H-9,H-10,H-11,H-12,H-13,H-14,H-15,H-16,H-17,H-18,H-19,H-20,I-7,I-8,I-9,I-10,I-11,I-12,I-13,I-14,I-15,I-16,I-17,I-18,I-19,I-20,J-7,J-8,J-9,J-10,J-11,J-12,J-13,J-14,J-15,J-16,J-17,J-18,J-19,J-20,K-7,K-8,K-9,K-10,K-11,K-12,K-13,K-14,K-15,K-16,K-17,K-18,K-19,K-20,L-7,L-8,L-9,L-10,L-11,L-12,L-13,L-14,L-15,L-16,L-17,L-18,L-19,L-20,M-7,M-8,M-9,M-10,M-11,M-12,M-13,M-14,M-15,M-16,M-17,M-18,M-19,M-20,N-7,N-8,N-9,N-10,N-11,N-12,N-13,N-14,N-15,N-16,N-17,N-18,N-19,N-20,', 126),
(20, '321321', 28, 21, 'concert1410193806.jpg', 321321, '123231213', 'B-1,B-2,B-3,B-4,B-5,B-6,B-7,C-1,C-2,C-3,C-4,C-5,C-6,C-7,D-1,D-2,D-3,D-4,D-5,D-6,D-7,D-11,D-12,D-13,D-14,D-15,D-16,D-17,D-18,D-19,D-20,D-21,D-22,E-1,E-2,E-3,E-4,E-5,E-6,E-7,E-11,E-12,E-13,E-14,E-15,E-16,E-17,E-18,E-19,E-20,E-21,E-22,F-1,F-2,F-3,F-4,F-5,F-6,F-7,F-11,F-12,F-13,F-14,F-15,F-16,F-17,F-18,F-19,F-20,F-21,F-22,G-1,G-2,G-3,G-4,G-5,G-6,G-7,G-11,G-12,G-13,G-14,G-15,G-16,G-17,G-18,G-19,G-20,G-21,G-22,H-1,H-2,H-3,H-4,H-5,H-6,H-7,H-11,H-12,H-13,H-14,H-15,H-16,H-17,H-18,H-19,H-20,H-21,H-22,I-1,I-2,I-3,I-4,I-5,I-6,I-7,I-11,I-12,I-13,I-14,I-15,I-16,I-17,I-18,I-19,I-20,I-21,I-22,J-11,J-12,J-13,J-14,J-15,J-16,J-17,J-18,J-19,J-20,J-21,J-22,K-11,K-12,K-13,K-14,K-15,K-16,K-17,K-18,K-19,K-20,K-21,K-22,L-11,L-12,L-13,L-14,L-15,L-16,L-17,L-18,L-19,L-20,L-21,L-22,M-11,M-12,M-13,M-14,M-15,M-16,M-17,M-18,M-19,M-20,M-21,M-22,N-11,N-12,N-13,N-14,N-15,N-16,N-17,N-18,N-19,N-20,N-21,N-22,O-11,O-12,O-13,O-14,O-15,O-16,O-17,O-18,O-19,O-20,O-21,O-22,P-11,P-12,P-13,P-14,P-15,P-16,P-17,P-18,P-19,P-20,P-21,P-22,Q-11,Q-12,Q-13,Q-14,Q-15,Q-16,Q-17,Q-18,Q-19,Q-20,Q-21,Q-22,R-11,R-12,R-13,R-14,R-15,R-16,R-17,R-18,R-19,R-20,R-21,R-22,S-11,S-12,S-13,S-14,S-15,S-16,S-17,S-18,S-19,S-20,S-21,S-22,T-11,T-12,T-13,T-14,T-15,T-16,T-17,T-18,T-19,T-20,T-21,T-22,U-11,U-12,U-13,U-14,U-15,U-16,U-17,U-18,U-19,U-20,U-21,U-22,', 272),
(21, '123126', 35, 19, 'concert1410183273.jpg', 321321132, '3213213213213', 'C-9,C-10,C-11,C-12,C-13,C-14,C-15,C-16,C-17,C-18,C-19,C-20,C-21,C-22,C-23,C-24,C-25,C-26,C-27,D-9,D-10,D-11,D-12,D-13,D-14,D-15,D-16,D-17,D-18,D-19,D-20,D-21,D-22,D-23,D-24,D-25,D-26,D-27,E-9,E-10,E-11,E-12,E-13,E-14,E-15,E-16,E-17,E-18,E-19,E-20,E-21,E-22,E-23,E-24,E-25,E-26,E-27,F-9,F-10,F-11,F-12,F-13,F-14,F-15,F-16,F-17,F-18,F-19,F-20,F-21,F-22,F-23,F-24,F-25,F-26,F-27,G-9,G-10,G-11,G-12,G-13,G-14,G-15,G-16,G-17,G-18,G-19,G-20,G-21,G-22,G-23,G-24,G-25,G-26,G-27,H-9,H-10,H-11,H-12,H-13,H-14,H-15,H-16,H-17,H-18,H-19,H-20,H-21,H-22,H-23,H-24,H-25,H-26,H-27,', 114),
(22, '32131', 20, 5, 'concert1410568625.jpg', 321, '321312', 'A-4,A-5,A-6,A-7,A-8,A-9,A-10,A-11,A-12,A-13,B-4,B-5,B-6,B-7,B-8,B-9,B-10,B-11,B-12,B-13,C-4,C-5,C-6,C-7,C-8,C-9,C-10,C-11,C-12,C-13,D-4,D-5,D-6,D-7,D-8,D-9,D-10,D-11,D-12,D-13,E-4,E-5,E-6,E-7,E-8,E-9,E-10,E-11,E-12,E-13,', 50);

-- --------------------------------------------------------

--
-- 테이블 구조 `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `replace` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `money` varchar(100) NOT NULL,
  `midx` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 테이블의 덤프 데이터 `content`
--

INSERT INTO `content` (`idx`, `title`, `text`, `replace`, `file`, `money`, `midx`) VALUES
(2, '321321', '32121321', '321', 'content1410399990.jpg', '32121', 5),
(3, '321321', '31213', '3212', 'content1410499526.jpg', '321213', 5),
(4, '321321', '31213', '3212', 'content1410499579.jpg', '321213', 5),
(5, '321321', '3213', '312312', 'content1410568791.jpg', '111', 5),
(6, '321321', '3213', '312312', 'content1410568791.jpg', '111', 5),
(7, '321321', '3213', '312312', 'content1410568791.jpg', '111', 5),
(8, '321321', '3213', '312312', 'content1410568791.jpg', '111', 5),
(9, '321321', '3213', '312312', 'content1410568791.jpg', '111', 5),
(10, 'dasdas', '231321', '321321', 'content1410692386.jpg', '111', 5);

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `tidx` int(11) NOT NULL,
  `ctidx` int(11) NOT NULL,
  `ccidx` int(11) NOT NULL,
  `aidx` int(11) NOT NULL,
  `seat` text COLLATE utf8_estonian_ci NOT NULL,
  `money` varchar(122) COLLATE utf8_estonian_ci NOT NULL,
  `people` int(11) NOT NULL,
  `id` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `viewSeat` text COLLATE utf8_estonian_ci NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `start` varchar(100) NOT NULL,
  `end` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `reserve` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 테이블의 덤프 데이터 `time`
--

INSERT INTO `time` (`idx`, `midx`, `start`, `end`, `day`, `reserve`) VALUES
(17, 2, '09:00', '09:00', '2014-09-24', ''),
(18, 3, '09:00', '09:00', '2014-09-24', ''),
(19, 3, '15:00', '17:00', '2014-09-24', ''),
(20, 5, '09:00', '13:00', '2014-09-06', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`) VALUES
('admin', '1234', '관리자'),
('enterprise', '1234', '기능회원'),
('user', '1234', '기본회원');
--
-- Database: `asiana`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `od` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `od`, `title`, `name`, `day`, `hit`, `level`, `content`) VALUES
(5, 8, '글써요', 'admin', '2014-05-25', 0, 0, 'ㄹㅇㄴ'),
(6, 11, '글써요 2', 'admin', '2014-05-25', 0, 0, '222'),
(7, 7, '글써요 답글', 'admin', '2014-05-25', 0, 0, 'ㄹㅇㄴㅁ'),
(8, 9, '글써요2 답글', 'admin', '2014-05-25', 0, 0, 'ㅇ'),
(9, 1, '답글써요 답글 답글', 'admin', '2014-05-25', 0, 1, 'ㅇㅇㅇ'),
(10, 6, 'safds', 'admin', '2014-05-26', 0, 0, 'fdsa'),
(11, 5, 'fdsa', 'admin', '2014-05-26', 0, 0, 'dsfafsd'),
(12, 10, 'fdsa', 'admin', '2014-05-28', 0, 1, 'sfdadfsa'),
(13, 4, 'fdsafds', 'admin123', '2014-05-28', 0, 0, 'fdsfsd'),
(14, 3, 'admin', 'admin', '2014-06-08', 0, 0, '1234'),
(15, 2, 'admin', 'admin', '2014-06-08', 0, 0, '1234'),
(16, 12, 'admin', 'admin', '2014-06-08', 0, 0, '13');

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`idx`, `midx`, `comment`, `name`, `day`) VALUES
(1, 2, 'fsad', 'admin1', '2014-05-25'),
(2, 2, 'fdsa', 'admin1', '2014-05-25'),
(3, 2, '안녕하세요', 'admin1', '2014-05-25'),
(4, 8, '하기싫어', 'admin', '2014-05-26'),
(5, 8, '하기싫어ㅇㅇ', 'admin', '2014-05-26'),
(6, 8, '개 씨발새끼야', 'admin', '2014-05-26'),
(7, 8, '이제 공부좀 해볼까?', 'admin', '2014-05-26'),
(8, 8, 'ㅇㅋㅇㅋ', 'admin', '2014-05-26'),
(9, 6, '좆만한년', 'admin', '2014-05-27'),
(10, 6, '씨발년', 'admin', '2014-05-27'),
(11, 5, '재홍이 씨발년', 'admin', '2014-05-27'),
(12, 6, 'fdsafdsa', 'admin', '2014-05-28'),
(13, 6, 'fdsfdsa', 'admin123', '2014-05-28'),
(14, 6, 'fdsfdsa', 'admin123', '2014-05-28'),
(15, 6, 'fdsfdsafdsfds', 'admin123', '2014-05-28');

-- --------------------------------------------------------

--
-- 테이블 구조 `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `fileName` varchar(100) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 테이블의 덤프 데이터 `gallary`
--

INSERT INTO `gallary` (`idx`, `title`, `name`, `day`, `fileName`, `text`) VALUES
(1, '정은지.png', 'admin', '2014-05-26', '정은지.png', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`idx`, `id`, `pw`, `phone`, `email`, `address`, `name`) VALUES
(2, 'admin1', '0af2e8b1e4a91c959f3f8ed885a39f1c', '', '1231231@naver.com', 'address', '관리자'),
(3, 'admin', '0af2e8b1e4a91c959f3f8ed885a39f1c', '', '1231231@naver.com', '1231', '관리자'),
(4, 'admin123', '0af2e8b1e4a91c959f3f8ed885a39f1c', '', 'dfds@naver.com', 'fdsajkfj', '관리자');

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `titleName` varchar(50) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `porder` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`idx`, `sid`, `mid`, `titleName`, `subName`, `text`, `porder`) VALUES
(1, 1, 1, '회사소개', 'hello', '', 'introduce'),
(2, 2, 1, '인사말', 'hello', '아시아나 항공은 고객과 함께 아름다운 미래로 비상하는 기업이 되겠습니다.\r\n아시아나 항공의 경영이념은 ''최고의 안전과 서비스를 통한 고객만족입니다.'' \r\n\r\n안전과 서비스는 아시아나항공의 핵심 역량이자 그 무엇과도 타협할 수 없는 소중한 가치로, 이에 대한 고객 여러분의 신뢰 향상을 사명으로 삼고 지속적인 노력을 기울이고 있습니다. \r\n\r\n저희 아시아나항공은 금년도 회사 경영 방침을 ''제 2창업''으로 정하고, 전 임직원이 새로은 각오로 새해를 시작했습니다. \r\n\r\n아시아나항공', 'introduce'),
(3, 3, 1, '이용안내', 'use', '\r\n\r\n아시아나항공으로 여행하시는 고객께서는 사전 좌석 예약 서비스를 통해,\r\n선호하시는 좌석을 미리 예약하실 수 있습니다. \r\n\r\n사전 좌석 예약을 통해 좌석을 선택하셨더라도 항공편 출발 48시간 이전부터는 체크인을 하여 최종으로 예약된 좌석을 결정하시기 바랍니다.\r\nimg \r\n이용대상\r\n\r\n항공권 결제가 완료된 항공권 소지 고객\r\n(이용 제한 대상 고객 : 공동운항편, 10명 이상의 단체 고객, 만 2세 미만의 유아를 동반하신 고객) \r\n\r\n\r\n이용가능시간\r\n\r\n국내선 : 항공편 출발시간 30일 전부터 72시간 전까지\r\n 국제선 : 항공편 출발시간 328일 전부터 72시간 전까지\r\n\r\n\r\n안내사항 \r\n\r\n공항사정, 항공기 교체 등의 부득이한 사유로 사전 예고없이 예약하신 좌석이 변경 될 수 있습니다. 출발 당일 탑승수속을 완료하지 않으시면 사전에 예약하신 좌석이 취소될 수 있습니다. (국내선 출발 20분 전까지, 국제선 출발 70분 전까지) \r\n', 'introduce'),
(4, 1, 2, '서비스 안내', 'class', '', 'service'),
(5, 2, 2, '클래스별 서비스 ', 'class', '\r\n\r\n아시아나항공으로 여행하시는 고객께서는 사전 좌석 예약 서비스를 통해,\r\n선호하시는 좌석을 미리 예약하실 수 있습니다. \r\n\r\n사전 좌석 예약을 통해 좌석을 선택하셨더라도 항공편 출발 48시간 이전부터는 체크인을 하여 최종으로 예약된 좌석을 결정하시기 바랍니다.\r\nimg \r\n이용대상\r\n\r\n항공권 결제가 완료된 항공권 소지 고객\r\n(이용 제한 대상 고객 : 공동운항편, 10명 이상의 단체 고객, 만 2세 미만의 유아를 동반하신 고객) \r\n\r\n\r\n이용가능시간\r\n\r\n국내선 : 항공편 출발시간 30일 전부터 72시간 전까지\r\n 국제선 : 항공편 출발시간 328일 전부터 72시간 전까지\r\n\r\n\r\n안내사항 \r\n\r\n공항사정, 항공기 교체 등의 부득이한 사유로 사전 예고없이 예약하신 좌석이 변경 될 수 있습니다. 출발 당일 탑승수속을 완료하지 않으시면 사전에 예약하신 좌석이 취소될 수 있습니다. (국내선 출발 20분 전까지, 국제선 출발 70분 전까지) \r\n', 'service'),
(6, 3, 2, '항공기안내', 'flight', '\r\n\r\nB747-400 / B747-400COMBI\r\nimg \r\n보유 수:2대 / 2대\r\n\r\n좌석:359석, 264석\r\n\r\n클래스:퍼스트,비지니스,트래블\r\n \r\n\r\nB777-200ER\r\nimg \r\n보유 수:12대\r\n\r\n좌석:300석, 299석, 295석, 294석, 262석, 246석 \r\n\r\n클래스::퍼스트 스위트, 퍼스트, 비즈니스 스마티움,\r\n비즈니스, 트래블 \r\n \r\n\r\nA330-300\r\nimg \r\n보유 수:15대\r\n\r\n좌석:290석, 275석 \r\n\r\n클래스:비즈니스, 트래블\r\n \r\n\r\nB767-300\r\nimg \r\n보유 수:7대\r\n\r\n좌석:250석, 270석 \r\n\r\n클래스:비즈니스, 트래블\r\n ', 'service'),
(7, 4, 2, '기내에서', 'cabin', '고객 여러분의 편의를 위해 노선에 관계없이 모든 상품을 구입하실 수 있는 \r\n 예약주문제도를 실시하고 있으니 많은 이용 부탁드립니다.\r\n\r\n\r\n•접수시간 : 평일 08:00 - 12:00, 13:00 - 17:00\r\n•전화 : 080-669-3434, 82-2-2669-3434 (해외전용)\r\n•E-mail address : dutyfree@flyasiana.com\r\n•홈페이지 바로가기 : http://dutyfree.flyasiana.com\r\n아시아나 항공 기내 면세품 구입 시 마일리지로 결제도 가능합니다(적립은 불가).\r\n주문은 [ 아시아나클럽 > 마일리지 사용 ] 에서 가능합니다.\r\n\r\n\r\n예약주문 기한\r\n\r\n전화 예약, 기내 예약, E-mail 예약 시\r\n 현지 도착 후 48시간 이후 출발편 예약 주문 가능 : 일본,중국,러시아, 동남아,중앙아시아 노선\r\n 현지 도착 72시간 이후 출발편 예약주문 가능 : 미주, 유럽, 시드니 노선\r\n\r\n홈페이지로 예약 시 국내 출발편 : 한국 시간 기준 48시간 이후 출발 편부터 주문 가능\r\n 국내 도착편 : 한국 시간 기준 53시간 이후 도착편부터 주문 가능 (미주, 유럽, 시드니 노선은 72시간 이후)\r\n\r\n', 'service'),
(8, 1, 3, '항공서비스', 'reserve', '', 'reserve'),
(9, 2, 3, '예약', 'reserve', '', 'reserve'),
(10, 3, 3, '조회', 'chk', '', 'reserve'),
(11, 1, 4, '커뮤니티', 'board', '', 'community'),
(12, 2, 4, '자유게시판', 'board', '', 'community'),
(13, 3, 4, '갤러리', 'gallary', '', 'community'),
(14, 1, 5, '통합검색', 'search', '', 'search'),
(15, 2, 5, '통합검색 ', 'search', '', 'search'),
(16, 1, 6, '유저', 'login', '', 'user'),
(17, 2, 6, '로그인', 'login', '', 'user'),
(18, 3, 6, '회원가입', 'join', '', 'user'),
(19, 0, 0, '', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `plane`
--

CREATE TABLE IF NOT EXISTS `plane` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `plane` varchar(100) NOT NULL,
  `leave` varchar(100) NOT NULL,
  `arrive` varchar(100) NOT NULL,
  `inOut` varchar(110) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 테이블의 덤프 데이터 `plane`
--

INSERT INTO `plane` (`idx`, `plane`, `leave`, `arrive`, `inOut`) VALUES
(9, 'B747-400', '인천', '부산', 'in'),
(10, 'B747-400', '서울', '부산', 'in'),
(11, 'B747-400COMBI', '인천', '광주', 'in'),
(12, 'B747-400COMBI', '인천', '방글라데시', 'out'),
(13, 'B747-400COMBI', '인천', '일본', 'out'),
(14, 'B777-200ER', '김포', '대전', 'in'),
(15, 'B777-200ER', '대구', '대전', 'in');

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(100) NOT NULL,
  `leaveTime` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `people` int(11) NOT NULL,
  `leave` varchar(100) NOT NULL,
  `arrive` varchar(100) NOT NULL,
  `arriveTime` varchar(100) NOT NULL,
  `leaveDay` varchar(100) NOT NULL,
  `arriveDay` varchar(100) NOT NULL,
  `types` varchar(100) NOT NULL,
  `plane` varchar(110) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `day`, `leaveTime`, `name`, `people`, `leave`, `arrive`, `arriveTime`, `leaveDay`, `arriveDay`, `types`, `plane`) VALUES
(3, '2014-05-28', '01시:00분', 'admin', 16, '인천', '유럽', '01시:00분', '05/30/2014', '05/31/2014', '왕복', 'B747-400 / B747-400COMBI'),
(4, '2014-05-28', '01시:00분', 'admin123', 15, '울산', '홍콩', '01시:00분', '05/30/2014', '05/31/2014', '왕복', 'A330-300'),
(6, '2014-05-29', '01시:00분', 'admin', 1, '0', '', '01시:00분', '05/30/2014', '05/31/2014', '왕복', 'B777-200ER');
--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `besket`
--

CREATE TABLE IF NOT EXISTS `besket` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `remain` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `thisOption` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf32 AUTO_INCREMENT=18 ;

--
-- 테이블의 덤프 데이터 `besket`
--

INSERT INTO `besket` (`idx`, `price`, `remain`, `product`, `id`, `thisOption`) VALUES
(16, 10500, 1, 'Colombia San Agustin', 'rudxor97', '1kg'),
(17, 10500, 6, 'Colombia San Agustin', 'rudxor97', '1kg');

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `hit` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `name`, `title`, `content`, `hit`, `day`) VALUES
(1, 'admin', 'ㄹㅇㄴㄹ', 'ㅇㄴㄴㅁㅇㄹㄹㅇㅁㄴ', 0, '2014-04-11'),
(2, 'admin', 'fdsa', 'fdsa', 0, '2014-04-11'),
(3, 'admin', 'd1111', '1111', 1, '2014-04-11'),
(4, 'admin', 'fdas', 'fdsafdsdafs', 0, '2014-04-11'),
(5, 'admin', 'fdsfdsdfas', 'dfsaadsfadsfadsf', 2, '2014-04-11'),
(6, 'admin', 'fddafs', 'dsfadfsaadsfafds', 1, '2014-04-11'),
(7, 'admin', 'fdssdfa', 'asddsfsdfsadsf', 1, '2014-04-11'),
(8, 'admin', 'fdsdasfdsf', 'dsafdsafdsa', 0, '2014-04-11'),
(9, 'admin', 'fdsasfdsf', 'sdafdfsadfsa', 16, '2014-04-11'),
(10, 'admin', 'fdsasdf', 'dsafdasfdsafadsf', 39, '2014-04-11'),
(11, 'admin', 'dfdasfdsaf', 'dsfdsafdfsadsfa', 17, '2014-04-11'),
(12, 'admin', 'fdsdsaf', 'dsfadsfdfsdsfdsaf', 12, '2014-04-11'),
(13, 'admin', '글작성합니다', '작성완료', 1, '2014-05-16');

-- --------------------------------------------------------

--
-- 테이블 구조 `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `thisOption` varchar(50) NOT NULL,
  `remain` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- 테이블의 덤프 데이터 `buy`
--

INSERT INTO `buy` (`idx`, `id`, `name`, `phone`, `product`, `price`, `thisOption`, `remain`, `total`) VALUES
(37, 'rudxor97', '오경택', 10, 'Nicaraqua El Suyatal', 510000, '30kg', '5', 2550000),
(38, '123456', 'fddsa', 10, 'Colombia San Agustin', 180000, '20kg', '5', 900000),
(39, 'admin', 'admin', 10, 'Colombia San Agustin', 180000, '20kg', '2', 360000),
(40, 'admin', 'admin', 10, 'Colombia San Agustin', 10, '1kg', '3', 391500),
(41, 'admin', 'admin', 10, 'Costarica Terra Bella', 10, '1kg', '1', 378500),
(42, 'admin', 'admin', 10, 'Fazenda Do Moinho', 10, '1kg', '1', 385000);

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `day` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`idx`, `midx`, `day`, `comment`, `name`) VALUES
(19, 10, '2014-05-06', '', 'admin'),
(20, 9, '2014-05-06', '', ''),
(21, 13, '2014-05-16', '', 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `comeday` int(11) NOT NULL,
  `postNum` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`idx`, `id`, `pw`, `comeday`, `postNum`, `address`, `phone`, `mail`, `name`) VALUES
(1, 'admin', '0af2e8b1e4a91c959f3f8ed885a39f1c', 15, '123123-123123132', '123123123', '010-1231-1231', '132123', 'admin'),
(3, 'admin3', '021c6cd3a69730ac97d0b65576a9004f', 0, '11-11', '1111', '010-111-111', '', 'sdadsa'),
(4, '3123233', '239b995cdf50e9db3a3db8edb4574f89', 0, '12312-321', '312123', '010-3121-3123', '', '312'),
(5, '1231231', '45a2d5d0c8dd0f66110fb5fa6e1e8c03', 0, '1231123-1231231', '1231231', '010-1231-3123', '123132123', 'fsdafds'),
(6, 'rudxor97', '0af2e8b1e4a91c959f3f8ed885a39f1c', 8, '123123-123123', '11231231', '010-1321-1231', '321231321', '오경택'),
(7, 'rudxor2', '0af2e8b1e4a91c959f3f8ed885a39f1c', 2, '123123-1231231', '123123132', '010-1231-1231', '2', '오경택'),
(8, '1234567', '44209a6a592dea91bcf7d4dd53e47a5a', 0, '-', 'fdsa1231', '010-1231-1231', '123123@naver.com', '1234567'),
(9, '123456', '44209a6a592dea91bcf7d4dd53e47a5a', 1, '123123-1231231', '123123', '010-1231-1231', '123123@naver.com', 'fddsa');

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `porder` varchar(50) NOT NULL,
  `titleName` varchar(50) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`idx`, `mid`, `sid`, `porder`, `titleName`, `subName`, `text`) VALUES
(1, 1, 0, 'introduce', '카페소개', 'hello', ''),
(2, 1, 1, 'introduce', '인사말', 'hello', '전문성, 차별화, 경쟁력을 갖춘 Global Coffee Group으로의 성장 Specialization, differentiation, competitive growth of the global coffee group\r\n \r\n\r\n- 생산국가와의 소통을 통한 경쟁력 확보 - 머신의 다각화를 통한 차별화 정책 실현 - 고객 우선주의의 고객만족 실현 \r\n\r\n\r\n저희 ZeroCafe는 2014년 커피생두 무역을 시작으로 전세계 20개 이상의 그룹거점을 갖고 있는 세계적인 커피 공급사인 스위스 "ECOM GROUP"의 대한민국 독점 에이전시입니다. 또한 세계적인 브라질 스페셜티 공급사이며 현재 120여개의 스페셜티 농장을 보유하고 있는 "CARMO COFFEES"와 브라질 스페셜티 전문 공급사인 "BourBon Sepcialty Coffees"의 대한민국 독점 에이전시 계약을 체결하여 국내시장의 스페셜티 보급에 앞장서고 있습니다.\r\n \r\n\r\n당사는 전세계 현지 거점을 통한 빠르고 정확한 시장정보를 공유하고 있으며, 매년 산지에 지사방문을 통하여 시장조사, 생산현황, 다양한 산지 샘플 등의 공급량 체크를 통해 원활한 국내 커피시장의 공급에 앞장서고 있습니다. 또한 전문가들로 구성된 Q.C(Quality Control) 팀에 의해 체계적인 품질 및 CUP 테스트로 생두상태 및 결점, 맛, 향미 등의 엄격한 기준의 평가를 실시하여 최상위 품질의 커피를 공급하고 있습니다.\r\n \r\n\r\n당사의 모든 임직원 일동은 고객분들에게 보다 프로페셔널한 서비스와 고품질의 상품을 제공하기 위해 끊임없이 노력하며, 언제나 최선을 다하는 마음으로 상품 하나하나를 정성스럽게 공급할 것을 약속 드립니다. 감사합니다.\r\n '),
(3, 1, 2, 'introduce', '이용안내', 'use', ' \r\n오후 12시 이전 입금 확인 주문 건에 한하여 당일 출고 가능합니다. (토, 일, 공휴일 제외) \r\n\r\n\r\n[구매문의 및 상담 이용시간] 평일 09:00~13:00, 14:00~19:00 (토, 일, 공휴일 휴무) 문의전화: 02-123-4567 \r\n\r\n\r\nZeroCafe에 지속적인 관심을 가져주시는 고객님들께 깊은 감사의 말씀을 드리면서 보다 좋은 품질의 제품들을 선보일 것을 약속드립니다. 감사합니다.\r\n '),
(4, 2, 0, 'academy', '아카데미', 'handdrip', ''),
(5, 2, 1, 'academy', '핸드드립', 'handdrip', '핸드드립이란?\r\n\r\n\r\n핸드 드립(HAND DRIP) 드리퍼와 여과지만 있으면 사무실이나 집, 혹은 그 어디에서든 간편하게 커피를 내릴 수 있어 더욱 인기를 더해가는 커피 추출법입니다. 핸드 드립으로 내린 커피는 여러 가지 다른 추출법에 비해 맛이 맑고 깔끔한 것이 특징입니다. 현재 많이 사용하는 드리퍼는 일본의 칼리타와 고노사 제품이며, 추출 원리를 고려했을 때 초보자이거나 1~2잔을 많이 내리는 경우에는 칼리타가, 진한 커피를 좋아하거나 여러 잔을 동시에 내릴 때가 많은 경우에는 고노가 편리합니다. 핸드 드립은 원두의 로스팅 정도에 따라 물 온도를 맞추고, 뜸을 잘 들이는 게 가장 중요합니다. \r\n핸드드립 사용해보기\r\n\r\n \r\n* 준비물 : 드리퍼, 여과지, 주전자, 커피 * STEPS 1. 여과지 접기 여과지 옆쪽의 접지 부분을 접은 다음 아래쪽 접지 부분을 옆면 접지를 접은 반향과 반대로 접습니다. 드리퍼에 잘 밀착되도록 끼웁니다. 2. 잔데우기 잔에 뜨거운 물을 부어 미리 데웁니다. 서버를 사용할 경우 서버와 잔 모두를 충분히 데우는 게 좋습니다. 3. 원두 갈아서 담기 원두를 갈아서 드리퍼에 담고 평평하게 합니다. 보통 1잔에 1스푼(10g)을 사용하며, 진한 커피를 좋아하는 경우에는 1.5~2스푼을 사용합니다. 4. 뜸 들이기 팔팔 끓기 직전의 물을 붓습니다. 커피에 최대한 가까이 대고, 가운데에서부터 나선형(모기향 모양)으로 돌려가면서 붓습니다. 처음에는 원두를 적실만큼 소량의 물을 붓고 20초 정도 두면 뜸이 들면서 훨씬 좋은 맛을 뽑아낼 수 있습니다. 뜸을 들일 때 커피 위로 굵은 거품이 올라와 둥근 산이 되는데, 이는 커피 안에 든 가스 성분이 빠지는 것으로 신선한 커피라야 거품이 생깁니다. [TIP] 보통 85~86℃의 물을 사용합니다. 약배전 커피라면 89~91℃가 알맞으며, 강배전이라면 85℃ 아래로 합니다. 5. 나선형으로 물 붓기 뜸을 들이고 난 뒤 다시 중심에서 나선형으로 물을 부어가는 것을 반복합니다. 드리퍼에 든 커피가 움푹 꺼지지 않게 물을 가는 줄기로 계속 부어줍니다. 이때 여과지에 물이 직접 닿으면 드리퍼 벽을 타고 물이 바로 내려가 커피에서 물맛이 나므로 주의가 필요합니다. 원하는 양을 내린 뒤 드리퍼에 물이 찰랑찰랑한 상태에서 커피 추출을 멈춥니다. 물이 다 빠질 때까지 그냥 두면 쓰고 텁텁한 잡맛이 함께 들어갑니다. 6. 거품 걷어내기 커피에 생긴 거품은 잡맛을 낼 수 있으므로 걷어냅니다. 서버에 여러 잔 분량을 내렸다면 여러 번 흔들어 고루 섞은 다음 잔에 담습니다.\r\n 유의하세요!! \r\n[참고] 한 번 내린 커피와 여과지는 쓴맛과 종이 맛이 두드러지기 때문에 재활용이 불가능합니다.\r\n'),
(6, 2, 2, 'academy', '프렌치프레스', 'french', '프렌치프레스란?\r\n\r\n\r\n프렌치 프레스(FRENCH PRESS) 프레스 포트(Press Pot), 플런저 포트(Plunger Pot), 카페티에르(Cafetiere)라고도 부릅니다.\r\n프렌치 프레스로 만든 커피는 진하고 향이 풍부하며 입안에서 느껴지는 무게감이 좋습니다. \r\n정말 손쉽게, 또 맛있게 커피를 내릴 수 있지만 질 좋고 신선한 원두를 사용해야 합니다. \r\n커피를 4분간 물에 우려내는 동안 커피가 지닌 좋은 맛이든, 나쁜 맛이든 솔직하게 드러내기 때문입니다.\r\n신선한 커피라면 맛있는 오일 성분이 나와 커피 질감을 한층 두텁게 하지만, 저급 커피나 묵은 커피를 사용하면 잡미를 끌어내어 아주 불쾌한 맛이 납니다.\r\n이처럼 가감 없이 맛을 드러내기 때문에 간단한 컵핑(커피 감별)을 할 때에도 프렌치 프레스를 사용합니다.\r\n\r\n프렌치프레스 사용해보기\r\n\r\n \r\n* 준비물 : 프렌치 프레스, 커피, 긴 스푼, 시계 * STEPS 1. 원두 갈기 & 담기 입자를 굵게 갑니다(핸드드립, 커피메이커용보다 훨씬 굵게).\r\n 입자가 고울 경우 필터에 걸러지지 않고 통과하여 커피에 침전물이 많아지거나 필터 구멍이 막힐 수 있습니다.\r\n물 120ml(일반적인 커피 한 잔)에 커피 10g(1스푼)이 기본이며, 입맛에 따라 커피 양을 가감하면 됩니다.\r\n프렌치 프레스가 깨끗하게 건조되어 있는 것을 확인하고 분쇄한 커피를 넣으세요.\r\n2. 물 붓기 물이 막 끓기 시작하면 45초 정도 식혀서 붓습니다.\r\n이 때 센 물줄기로 붓는데 커피 가루가 ''모두'' 젖을 수 있게 돌려가며 붓는 게 포인트입니다.\r\n프레스에 물을 꽉 채우지 마세요.\r\n 커피에 들어있던 이산화탄소가 물을 만나 빠져나오면서 거품층을 만드는 데 어느 정도 부풀 수 있는 공간이 필요합니다.\r\n3. 시간 재기 & 휘젓기 타이머가 있다면 4분을 설정해두세요.\r\n 커피가 가진 맛 성분들을 끌어내는 데 4분여의 시간이 필요하며, 그 이상 길어지면 텁텁해집니다.\r\n 1분이 지나면 긴 스푼으로 거품을 깨트리면서 물과 커피가 고루 섞이도록 휘저어주세요.\r\n4. 프레스 누르기 여과망이 달린 뚜껑(플런저)과 프레스의 주둥이 부분을 잘 맞춘 다음, 플런저를 지그시 누릅니다.\r\n한꺼번에 확 누르지 말고, 플런저를 조금씩 눌렀다 풀었다 반복해가면서 커피가루를 맨 밑바닥으로 모아갑니다.\r\n5. 커피 담기 걸러낸 커피의 80%만 컵에 따라냅니다(나머지 20%는 텁텁하고 쓰기 때문).\r\n또한 프레스에 커피를 그대로 두어도 쓴맛이 많아지기 때문에 따르고 남은 음료는 보온이 잘 되는 찻주전자나 텀블러 등에 담아둡니다.'),
(7, 2, 3, 'academy', '모카 포트', 'mocha', '모카포트란?\r\n모카 포트(MOCHA POT)\r\n\r\n이탈리아 사람들의 생활필수품인 모카 포트는 1933년 이탈리아의 알폰소 비알레티(Alfonso Bialetti)가 끓는 물의 압력을 이용하여 물을 채로 된 통에 통과시켜 커피를 추출하는 알루미늄 주전자 ''모카 엑스프레스''를 개발하면서 시작되었습니다.\r\n지금도 대부분 알루미늄이나 스테인리스스틸로 만들어지며, 제조과정에서 녹스는 것을 막기 위해 기름을 발라두는 제품도 있어 새 제품을 사용할 때에는 커피를 넣고 두세 번 시험 추출을 한 다음 사용하는 게 좋습니다. 모카 포트로 뽑은 커피를 두고 ''가정용 에스프레소''라고 하는데, 압력이 낮아 에스프레소 특유의 크레마는 없지만 진한 맛과 무게감이 있는 커피를 맛볼 수 있습니다.\r\n\r\n\r\n직접 해보기\r\n* 준비물 : 모카 포트, 커피, 숟가락 * STEPS 1. 물을 끓여서 붓기 \r\n\r\n다른 주전자에 물을 미리 끓입니다. 모카포트에 찬물을 부어 끓이면 커피를 추출(Brew)하는 게 아니라 익히기(Cook) 때문에 쓴맛이 도드라지고 거칠 뿐만 아니라 불쾌한 금속 냄새가 납니다. \r\n끓인 물을 모카포트 아래부분인 물통에 붓습니다. 물통 윗부분을 보면 스팀압력 밸브 역할을 하는 작은 구멍이 있는데, 그 아래까지 물을 채우면 됩니다. \r\n\r\n2. 커피 담아서 꾹꾹 다지기 \r\n\r\n커피는 에스프레소용으로, 또는 그보다 살짝 굵게 갑니다(보다 진한 맛을 원할 경우 더 곱게 갈아도 좋습니다). 깔대기 모양의 필터 바스켓 안에 커피를 가득 담고 숟가락 뒷면으로 꾹꾹 눌러 다집니다. \r\n순간적으로 수증기압을 받아 올라오는 물이 커피가루를 고루 적셔 천천히 통과할 수 있도록 잘 다져주는 게 중요합니다. 바스켓 가장자리와 물통 외부에 묻은 커피가루를 모두 닦아줍니다. \r\n\r\n3. 가스레인지에서 모카 포트 끓이기 \r\n\r\n물통에 바스켓과 포트를 장착하고 잘 여밉니다. 가스레인지의 가장 작은 버너 위에 포트를 놓고 끓입니다. \r\n불꽃이 모카 포트의 바닥면을 넘지 않게, 손잡이가 뜨거워지지 않게 주의해야 합니다. 이 단계에서는 뚜껑을 열어둬도 됩니다. \r\n[TIP] 가스레인지 대신 핫플레이트를 사용해도 됩니다. \r\n\r\n4. 커피가 올라오는 과정 지켜보기 본격적으로 추출이 시작되고 커피 줄기가 안정적이 되면 뚜껑을 닫고 불에서 내립니다. \r\n커피가 더 이상 올라오지 않으면 컵에 따릅니다.\r\n [TIP] 모카포트를 불에서 내린 다음 차가운 타월로 아래 물통을 감싸주는 방법도 있습니다.\r\n추출이 빨리 끝나 양은 좀 적지만 바디감과 단맛은 보다 살아나고 뒤에 올라올 수 있는 금속 맛을 줄여준다고도 합니다. \r\n\r\n'),
(10, 3, 0, 'shopping', '쇼핑', 'shopping', ''),
(11, 3, 1, 'shopping', '쇼핑', 'shopping', ''),
(12, 4, 0, 'member', '회원활동', 'besket', ''),
(13, 4, 1, 'member', '장바구니', 'besket', ''),
(14, 4, 2, 'member', '주문정보', 'order', ''),
(15, 5, 0, 'board', '자유게시판', 'board', ''),
(16, 5, 1, 'board', '자유게시판', 'board', ''),
(17, 6, 0, 'search', '통합검색', 'search', ''),
(18, 6, 1, 'search', '통합검색', 'search', ''),
(19, 7, 0, 'mypage', '마이페이지', 'login', ''),
(20, 7, 1, 'mypage', '로그인', 'login', ''),
(21, 7, 2, 'mypage', '회원가입', 'join', ''),
(22, 8, 1, 'admin', '관리자', 'member', ''),
(23, 8, 0, 'admin', '회원정보', 'member', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `option`
--

CREATE TABLE IF NOT EXISTS `option` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) NOT NULL,
  `thisOption` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 테이블의 덤프 데이터 `option`
--

INSERT INTO `option` (`idx`, `product`, `thisOption`, `price`) VALUES
(1, 'Brazil Carmo Coffees', '1kg', '8500'),
(2, 'Brazil Carmo Coffees', '10kg', '75000'),
(3, 'Brazil Carmo Coffees', '20kg', '14000'),
(4, 'Colombia San Agustin', '1kg', '10500'),
(5, 'Colombia San Agustin', '10kg', '95000'),
(6, 'Colombia San Agustin', '20kg', '180000'),
(7, 'Fazenda Do Moinho', '1kg', '25000'),
(8, 'Fazenda Do Moinho', '10kg', '220000'),
(9, 'Fazenda Do Moinho', '20kg', '440000'),
(10, 'Guatemala El Naranjo Kikiya', '1kg', '13800'),
(11, 'Guatemala El Naranjo Kikiya', '10kg', '96000'),
(12, 'Guatemala El Naranjo Kikiya', '20kg', '184500'),
(13, 'Honduras Vista Hermosa', '1kg', '13000'),
(14, 'Honduras Vista Hermosa', '10kg', '120000'),
(15, 'Honduras Vista Hermosa', '20kg', '230000'),
(16, 'Costarica Terra Bella', '1kg', '18500'),
(17, 'Costarica Terra Bella', '10kg', '175000'),
(18, 'Costarica Terra Bella', '20kg', '340000'),
(19, 'Nicaraqua El Suyatal', '1kg', '18500'),
(20, 'Nicaraqua El Suyatal', '15kg', '262500'),
(21, 'Nicaraqua El Suyatal', '30kg', '510000'),
(22, 'Dominica Finca Jimenez', '1kg', '124000'),
(23, 'Dominica Finca Jimenez', '10kg', '69000'),
(24, 'Dominica Finca Jimenez', '20kg', '212000'),
(25, 'Mexico Coatepec Veracruz', '1kg', '6900'),
(26, 'Mexico Coatepec Veracruz', '10kg', '69000'),
(27, 'Mexico Coatepec Veracruz', '20kg', '138000'),
(28, 'Ethiopia Yirgacheffe Kochere', '1kg', '14000'),
(29, 'Ethiopia Yirgacheffe Kochere', '10kg', '130000'),
(30, 'Ethiopia Yirgacheffe Kochere', '20kg', '250000'),
(31, 'Yemen Mocha Harazi', '1kg', '28000'),
(32, 'Yemen Mocha Harazi', '10kg', '270000'),
(33, 'Yemen Mocha Harazi', '20kg', '530000'),
(34, 'Rwanda Kirezi', '1kg', '15500'),
(35, 'Rwanda Kirezi', '10kg', '125000'),
(36, 'Rwanda Kirezi', '20kg', '250000'),
(37, 'Indonesia Mandheling', '1kg', '115000'),
(38, 'Indonesia Mandheling', '10kg', '105000'),
(39, 'Indonesia Mandheling', '20kg', '200000');

-- --------------------------------------------------------

--
-- 테이블 구조 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 테이블의 덤프 데이터 `product`
--

INSERT INTO `product` (`idx`, `title`) VALUES
(1, 'Brazil Carmo Coffees'),
(2, 'Colombia San Agustin'),
(3, 'Costarica Terra Bella'),
(4, 'Dominica Finca Jimenez'),
(5, 'Ethiopia Yirgacheffe Kochere'),
(6, 'Fazenda Do Moinho'),
(7, 'Guatemala El Naranjo Kikiya'),
(8, 'Honduras Vista Hermosa'),
(9, 'Indonesia Mandheling'),
(10, 'Mexico Coatepec Veracruz'),
(11, 'Nicaraqua El Suyatal'),
(12, 'Rwanda Kirezi'),
(13, 'Yemen Mocha Harazi');
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- 테이블의 덤프 데이터 `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `dinosaur`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `od` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `level`, `od`, `title`, `text`, `name`, `hit`, `day`) VALUES
(1, 0, 5, '1231', '123', '1231', 221, '2014-06-08'),
(2, 0, 3, 'fdsa', 'fds', 'admin', 0, '2014-06-09'),
(3, 1, 2, '답글', 'ㄹㅇㅁㄴ', 'admin', 0, '2014-06-09'),
(4, 1, 1, '답글11', 'ㄹㄴㅁㄹㄴㅇㄹㄴ', 'admin', 0, '2014-06-09'),
(5, 1, 4, 'fdasfdsa', 'fdasfds', 'admin', 0, '2014-06-09'),
(6, 0, 6, '글써봄', '123', 'admin', 0, '2014-06-10'),
(7, 0, 7, 'fds', 'fdsfdfdas', 'admin', 1, '2014-06-10'),
(8, 0, 8, 'fdsfdsa', 'fsdafsa', 'admin', 1, '2014-06-10'),
(9, 0, 9, 'ㄹㅇㄴㅁㄹㄴㅁ', 'ㄹㄹㄴㅇㄴㅁㄹ', 'admin', 6, '2014-06-10'),
(10, 0, 10, 'fsdfds', 'fsdasdffsda', 'admin', 27, '2014-06-10'),
(11, 0, 11, 'fsdafasd', 'fsadfsadfsad', 'admin', 11, '2014-06-10'),
(12, 0, 12, '이런 씨발', 'ㄹㅇㅁㄴ', 'admin', 2, '2014-06-20');

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`idx`, `text`, `name`, `day`, `mid`) VALUES
(1, 'fdasfs', 'ddd', '2014-05-26', 1),
(2, 'fa', 'admin', '2014-06-13', 10),
(3, '황재홍 코알라', 'admin', '2014-06-20', 11);

-- --------------------------------------------------------

--
-- 테이블 구조 `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `od` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 테이블의 덤프 데이터 `gallary`
--

INSERT INTO `gallary` (`idx`, `title`, `file`, `day`, `od`) VALUES
(1, '정은지', '111.png', '2014-06-09', 1),
(2, '정은지2', '222.png', '2014-05-26', 2),
(3, '정은지3', '333.png', '2014-05-26', 3),
(4, '정은지4', '444.png', '2014-06-09', 4),
(5, '정은지5', '555.png', '2014-07-02', 5),
(6, '정은지6', '666.png', '2014-08-15', 6),
(7, 'ㄹㅇㄴㅁ', '1402314396.png', '2014-06-09', 7),
(8, 'hello', '1402387936.png', '2014-06-10', 8),
(9, 'hello', '1402387962.png', '2014-06-10', 9),
(10, 'fsafd', '1402395519.png', '2014-06-10', 10);

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `mainName` varchar(100) NOT NULL,
  `subName` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `porder` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`idx`, `mid`, `sid`, `mainName`, `subName`, `text`, `porder`) VALUES
(1, 1, 1, '박물관소개', 'hello', 'Introduce', 'introduce'),
(2, 1, 2, '인사말', 'hello', '"지금으로부터 2억 3000만 년 전 중생대 초, 지구상에 처음 모습을 드러낸 공룡"  그로부터 약 1억 6500만 년 동안 지구의 지배자로 군림했던 공룡은 백악기가 끝남과 동시에 멸종하였습니다. \r\n\r\n지금은 더 이상, 지구의 어느곳에서도 공룡을 볼 수 없지만 지층 속에서 오래도록 잠자고 있던 공룡은 화석이 되어 다시금 우리 앞에서 그 위용을 떨칠 수 있게 되었습니다. 우리나라에서 가장 쉽게 공룡의 흔적을 만날 수 있는 곳이 바로 경상남도 고성입니다. 온화한 기후와 천혜의 자연경관이 어우러진 살기 좋은 우리 군은 국내 최초로 공룡 발자국이 발견된 곳으로, 군 전역에 걸쳐 거의 모든 곳에서 약 5,000여 점의 공룡발자국 화석이 발견되고 있습니다. \r\n\r\n국내 최초의 공룡전문박물관을 찾은 어린이들과 일반인들에게 공룡화석을 보다 흥미롭게 즐길 수 있도록 오비랩터(Oviraptor)와 프로토케라톱스(Protoceratops) 진품 화석을 비롯하여 클라멜리사우루스 (Klamelisaurus)와 모놀로포사우루스 (Monolophosaurus)와 같은 아시아 공룡, 그리고 세계의 다양한 공룡들을 감상할 수 있도록 하였습니다. \r\n\r\n네티즌 여러분, 고성공룡박물관을 방문하시어 공룡과 함께 태고의 신비를 경험하시기 바랍니다. 감사합니다. \r\n', 'introduce'),
(3, 1, 3, '이용안내', 'use', '이용시간\r\n하절기 (3월 ~ 10월) 09:00 ~ 18: 00\r\n\r\n동절기 (11월 ~ 2월) 9:00 ~ 17:00\r\n\r\n관람권 발행 시간: 관람시간 종룡 1시간 전까지\r\n\r\nuse \r\n관람 서비스 1.박물관의 모든 공간은 금연구역입니다.\r\n2.전시실 실내는 음식물 반입과 안내견 이외의 애완동물의 출입은 금지되어 있습니다.\r\n3.전시실 입장 전에, 휴대전화는 전원을 꺼지시거나 진동으로 전환하여 주십시오.\r\n4.전시물에 손을 대거나 손상을 입힐 수 있는 행위는 절대 삼가해 주십시오.\r\n5.플래시/삼각대 등을 손상을 입힐 수 있는 행위는 절대 삼가해 주십시오.\r\n6.야외 관람로에서는 자전거, 킥보드 , 인라인스케이트,브레이드 등을 이용할 수 없습니다\r\n', 'introduce'),
(4, 2, 1, '사이버박물관', 'mainhello', 'Cyber', 'cyber'),
(5, 2, 2, '공룡소개', 'mainhello', '\r\n티라노 사우루스\r\n\r\n‘폭군 도마뱀’이라는 뜻으로, 지구상에 살았던 육식 공룡 중 가장 무섭고 사나운 공룡으로 알려져 있다. 정확한 이름은 ‘티라노사우루스 렉스’인데 보통 줄여 ‘티렉스’라고 부른다. 티라노는 폭군, 사우루스는 도마뱀, 렉스는 왕이라는 뜻으로 ‘폭군 왕 도마뱀’이라는 뜻이 된다. \r\n\r\n\r\ntar\r\n타르보사우루스\r\n\r\n아시아에서 발견된 육식 공룡 중 가장 크다. 티라노사우루스보다 조금 전 시대에 살았던 공룡으로, 티라노사우루스에 비해 그리 알려지지 않았다. 티라노사우루스와 같은 종류로 분류되기도 하고 다른 종류로 분류되기도 하는데, 학자들의 의견이 서로 다르다 \r\n\r\n\r\nrirano\r\n티라노 사우루스\r\n\r\n분류 : 동물계 > 공룡 > 용반목 > 수각류\r\n출현시기 : 백악기 후기\r\n의미 : 난쟁이 폭군\r\n크기 : 4.0 ~ 5.0m\r\n', 'cyber'),
(6, 2, 3, '공룡의 분류', 'kind', '원시각룡류\r\n원시각룡류는 트리케라톱스와 같은 커다란 세개의 뿔을 가진 공룡이 되기 전 형태로 이들은 원시조각류같이 크기도 매우 작았고, 부리는 앵무새 같았으며 두다리로 뛰어다녔습니다. 점점 진화하면서 프로토케라톱스같은 네다리를 가지게 되었고, 백악기 후기의 초반에는 각룡류와 거의 유사하게 생긴 주니케라톱스가 나타나기도 했습니다.\r\n\r\n\r\n각룡류\r\n각룡류는 중생대의 코뿔소라고 말할 수 있습니다. 세개의 뿔이 얼굴에 있고 목 뒤에는 프릴이 있어 육식공룡이 쉽게 물지 못하게 했을 것입니다. 각룡류 뿔은 이제 다양화되었는데 코 근처에 있는 뿔이 아래로 휘어있으면 센트로 사우루스과 코 근처의 뿔이 위로 휘어있으면 트리케라톱스과로 나뉘어집니다. 하지만 파키리노 사우루스처럼 코가 단단하게 변하여 평평한 모습을 띄는 종도 있었습니다.\r\n\r\n\r\n원시 수각류\r\n코엘로피시스와 주파야 사우루스같은 중형크기의 공룡으로 시작하여 원시 수각류의 크기는 썩 크지는 않았지만 뛰어난 협력 플레이가 가능했습니다. 이들의 몸은 나중에 진화할 알로 사우루스나 토르보 사우루스만큼 크지는 않았지만, 매우 날쌨고 이빨은 매우 강력했습니다.\r\n\r\n\r\n케라토 사우루스과\r\n원시 수각류에서 진화한 공룡들로 매우 다양한 형태로 유명합니다. 딜로포 사우루스같은 경우는 머리 위에 V자 모양으로 된 騈?있었고 손가락은 원시적으로 5개를 가지고 있었습니다. 케라토 사우루스는 코위에 뿔이 나있는 것으로 유명했습니다.\r\n\r\n\r\n알로 사우루스과\r\n쥬라기를 지배했던 공룡으로 유명한 알로 사우루스과는 현재 매우 연구가 잘 되 있는 종입니다. 눈위에 두개의 뿔이 나있었던 것으로 유명하고 뱀처럼 입을 넓게 벌릴 수 있었습니다. 손가락이 3개였고 전에 후손들과는 다르게 머리가 매우 커졌습니다. 하지만 티라노 사우루스과에 비해서는 가늘었습니다. 이들의 사냥패턴으로는 한번 물고 상대가 피를 너무 흘려 쇼크상태에 빠져 쓰러지기만을 기다리는 전법을 ㎱?것입니다. 이들은 나중에 남반구에서 다시 한번 진화하여 커다란 기가노토 사우루스나 카르카로돈토사우루스로 진화하게 됩니다.\r\n\r\n\r\n스피노 사우루스과\r\n매우 커다란 어식공룡들로 이빨이 악어와 비슷하게 생겨 주로 물고기를 잡아먹었을 것입니다. 손이 물고기를 잡기 위해 발달했고 주둥이는 현재의 악어(특히 가비알)과 비슷하게 생겼을 것으로 추측합니다.\r\n\r\n\r\n메갈로 사우루스과\r\n메갈로 사우루스과는 매우 커다랗고, 무거웠습니다. 이들도 역시 세 개의 손가락을 가지고 있었습니다.\r\n\r\n\r\n소형 육식공룡들\r\n소형육식공룡들은 크기는 작았지만 매우 재빨랐고 나름대로 지능도 가지고 있었습니다. 트로오돈을 보면 공룡들 중 가장 뇌가 큰 공룡으로 유명했죠. 이들은 생존을 위해 매우 빨리 달릴 수 있었고, 나중에 백악기로 넘어가면 데이노니쿠스같은 공룡들은 협력으로 커다란 공룡을 쓰러트리곤 했습니다. 이 데이노니쿠스와 부류들은 가운데 발톱이 갈고리처럼 날카로운 것이 유명한데 이 것은 먹잇감에 달라붙어 고정하기 위한 용도로 쓰일 것이라 생각하고 있습니다. ', 'cyber'),
(7, 3, 1, '예약하기', 'reserve', 'Reserve', 'reserve'),
(8, 3, 2, '예약하기', 'reserve', '', 'reserve'),
(9, 4, 1, '커뮤니티', 'board', 'Community', 'community'),
(10, 4, 2, '자유게시판', 'board', '', 'community'),
(11, 4, 3, '갤러리', 'gallary', '', 'community'),
(12, 5, 1, '통합검색', 'search', 'Search', 'search'),
(13, 5, 2, '통합검색', 'search', '', 'search'),
(14, 6, 1, '유저', 'user', 'User', 'user'),
(15, 6, 2, '로그인', 'login', '', 'user'),
(16, 6, 3, '회원가입', 'join', '', 'user'),
(17, 6, 4, '마이페이지', 'mypage', '', 'user'),
(18, 7, 1, '관리자', 'admin', 'Admin', 'admin'),
(19, 7, 2, '예약확인', 'admin', '', 'admin');

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `people` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `name`, `phone`, `day`, `people`) VALUES
(1, '오경택', '-10', '2014-06-20', 10),
(2, 'dsa', '-10', '2014-06-18', 6),
(3, 'fdsa', '-10', '2014-06-24', 1),
(4, 'fdsa', '-10', '2014-06-11', 4),
(5, 'fdsafas', '-10', '2014-06-18', 1),
(6, 'ㄹㅇㄴ', '-10', '2014-06-19', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `day` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `name`, `id`, `pw`, `address`, `mail`, `phone`, `day`) VALUES
(1, '관리자', 'admin', '0af2e8b1e4a91c959f3f8ed885a39f1c', '인평자동차정보고등학교', '1234@naver.com', '010-1234-1234', '2014-06-08'),
(2, '오경택 ', 'rudxor97', '5512a1e32d14084c8888175627fd93a6', 'asdf489', 'asdf489@naver.com', '010-1234-1234', '2014-06-12');
--
-- Database: `hanbock`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `satis` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `title`, `text`, `name`, `day`, `product`, `price`, `satis`) VALUES
(1, '좋아요', '좋아요', 'admin', '2014-02-12', 5, 5, 5),
(4, '7897', '97898', 'admin', '2014-08-17', 3, 1, 5),
(5, '09-90', '-90-9', 'admin', '2014-08-17', 3, 2, 2),
(6, '80980', '908098', 'admin', '2014-08-17', 4, 5, 2);

-- --------------------------------------------------------

--
-- 테이블 구조 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(11) NOT NULL,
  `sex` varchar(12) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 테이블의 덤프 데이터 `product`
--

INSERT INTO `product` (`idx`, `file`, `price`, `title`, `type`, `sex`) VALUES
(87, '1.png', 82000, '흰색/분홍 꽃무늬 소매 줄 저고리', '상의', '여성'),
(88, '2.png', 82000, '흰색/빨강 꽃무늬 소매 줄 저고리', '상의', '여성'),
(89, '3.png', 69000, '흰색/상아 알록달록 분홍고름 저고리', '상의', '여성'),
(90, '4.png', 205000, '검정/금색 중전마마 입으시는 저고리', '상의', '여성'),
(91, '5.png', 162000, '민트/진갈색 고급 재단 저고리', '상의', '여성'),
(92, '6.png', 56000, '검정/분홍 자주큰꽃무늬 편한 저고리', '상의', '남성'),
(93, '7.png', 38000, '진분홍/분홍 남성에게도 잘어울리는 분홍배합 저고리', '상의', '남성'),
(94, '8.png', 86000, '빨강/검정 흰소매 정열의 붉은 저고리', '상의', '남성'),
(95, '9.png', 150000, '남색/분홍 중앙 원포인트 소매꽃패턴 저고리', '상의', '남성'),
(96, '10.png', 40000, '남색/분홍 넥분홍 가슴포인트 세로줄 저고리', '상의', '남성'),
(97, '11.png', 85000, '진살구 A라인 제대로 살려주는 치마', '하의', '여성'),
(98, '12.png', 132000, '겉은 연파랑/안은 패턴포인트 고급재단 치마', '하의', '여성'),
(99, '13.png', 265000, '금색 중전마마 입으시는 고급실크 치마', '하의', '여성'),
(100, '14.png', 28000, '살구분홍 여리여리 여성스러운 치마', '하의', '여성'),
(101, '15.png', 64000, '진분홍 안은 신비패턴/겉은 시스루 치마', '하의', '여성'),
(102, '16.png', 50000, '진파랑 기본디자인 천연염색 바지', '하의', '남성'),
(103, '17.png', 52000, '진초록 기본디자인 천연염색 바지', '하의', '남성'),
(104, '18.png', 54000, '자주색 기본디자인 천연염색 바지', '하의', '남성'),
(105, '19.png', 56000, '빨간색 기본디자인 천연염색 바지', '하의', '남성'),
(106, '20.png', 58000, '진겨자색 기본디자인 천연염색 바지', '하의', '남성');

-- --------------------------------------------------------

--
-- 테이블 구조 `recommend`
--

CREATE TABLE IF NOT EXISTS `recommend` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `up` int(11) NOT NULL,
  `buttom` int(11) NOT NULL,
  `text` text NOT NULL,
  `stitle` varchar(100) NOT NULL,
  `mtitle` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 테이블의 덤프 데이터 `recommend`
--

INSERT INTO `recommend` (`idx`, `up`, `buttom`, `text`, `stitle`, `mtitle`, `price`) VALUES
(1, 90, 100, '907', '32132', '0897789', '410000원'),
(2, 90, 100, '907', '32132', '0897789', '410000원'),
(3, 90, 100, '1123213', '32132', '2132', '410000원'),
(4, 90, 100, '1123213', '32132', '2132', '410000원'),
(5, 90, 100, '1123213', '32132', '2132', '410000원'),
(6, 90, 100, '1123213', '32132', '2132', '410000원'),
(7, 90, 100, '1123213', '32132', '2132', '410000원'),
(8, 90, 100, '1123213', '32132', '2132', '410000원'),
(9, 90, 100, '1123213', '32132', '2132', '410000원'),
(10, 90, 100, '1123213', '32132', '2132', '410000원'),
(11, 90, 100, '1123213', '32132', '2132', '410000원'),
(12, 90, 100, '1123213', '32132', '2132', '410000원'),
(13, 90, 100, '1123213', '32132', '2132', '410000원'),
(14, 90, 100, '1123213', '32132', '2132', '410000원'),
(15, 90, 100, '1123213', '32132', '2132', '410000원'),
(16, 90, 100, '1123213', '32132', '2132', '410000원'),
(17, 90, 100, '1123213', '32132', '2132', '410000원'),
(18, 90, 100, '1123213', '32132', '2132', '410000원'),
(19, 90, 100, '1123213', '32132', '2132', '410000원'),
(20, 90, 100, '1123213', '32132', '2132', '410000원'),
(21, 90, 100, '1123213', '32132', '2132', '410000원'),
(22, 90, 100, '1123213', '32132', '2132', '410000원'),
(23, 90, 100, '1123213', '32132', '2132', '410000원'),
(24, 90, 100, '1123213', '32132', '2132', '410000원'),
(25, 90, 100, '1123213', '32132', '2132', '410000원'),
(26, 90, 100, '1123213', '32132', '2132', '410000원'),
(27, 90, 100, '1123213', '32132', '2132', '410000원'),
(28, 90, 100, '1123213', '32132', '2132', '410000원'),
(29, 90, 100, '1123213', '32132', '2132', '410000원'),
(30, 90, 100, '1123213', '32132', '2132', '410000원'),
(31, 90, 100, '1123213', '32132', '2132', '410000원'),
(32, 90, 100, '1123213', '32132', '2132', '410000원'),
(33, 90, 100, '1123213', '32132', '2132', '410000원'),
(34, 90, 100, '1123213', '32132', '2132', '410000원'),
(35, 90, 100, '1123213', '32132', '2132', '410000원'),
(36, 90, 100, '1123213', '32132', '2132', '410000원');

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `up` int(11) NOT NULL,
  `down` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `up`, `down`, `type`, `title`, `name`, `day`) VALUES
(3, 1, 21, 'buy', '76867', 'admin', '0000-00-00 00:00:00'),
(4, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(5, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(6, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(7, 96, 105, 'rent', '32131', 'admin', '0000-00-00 00:00:00'),
(8, 96, 105, 'rent', '32131', 'admin', '0000-00-00 00:00:00'),
(9, 89, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(10, 89, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(11, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(12, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(13, 91, 101, 'buy', '321321', 'admin', '0000-00-00 00:00:00'),
(14, 91, 100, 'buy', '321321', 'admin', '2014-09-22 17:41:59');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `product` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `good` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`idx`, `name`, `title`, `text`, `product`, `price`, `good`, `date`) VALUES
(1, 'admin', '3123', '12321', 3, 3, 3, '0000-00-00'),
(2, 'admin', '3123', '12321', 3, 3, 3, '0000-00-00'),
(3, 'admin', '564756', '754674765', 3, 3, 3, '2014-09-24'),
(4, 'admin', '3213', '12321123', 5, 5, 5, '2014-09-24'),
(5, 'admin', '54765', '75674576547', 5, 3, 5, '2014-09-24'),
(6, 'admin', '43214', '32141234231', 3, 5, 1, '2014-09-24');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `lv` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `id`, `pw`, `lv`) VALUES
(1, 'admin', 'skills1234', 0),
(2, 'guest', 'guest1234', 0);
--
-- Database: `hotel`
--
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=251 ;

--
-- 테이블의 덤프 데이터 `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'wine', 'menu', 'idx', '', '', '_', ''),
(2, 'wine', 'menu', 'mid', '', '', '_', ''),
(3, 'wine', 'menu', 'sid', '', '', '_', ''),
(4, 'wine', 'menu', 'subName', '', '', '_', ''),
(5, 'wine', 'menu', 'titleName', '', '', '_', ''),
(6, 'wine', 'menu', 'porder', '', '', '_', ''),
(7, 'wine', 'menu', 'text', '', '', '_', ''),
(138, 'hanbock', 'recommend', 'buttom', '', '', '_', ''),
(114, 'artcenter', 'time', 'ë‘¥', '', '', '_', ''),
(113, 'artcenter', 'application', 'midx', '', '', '_', ''),
(129, 'hanbock', 'reserve', 'day', '', '', '_', ''),
(127, 'hanbock', 'product', 'title', '', '', '_', ''),
(128, 'hanbock', 'product', 'type', '', '', '_', ''),
(54, 'hanbock', 'board', 'title', '', '', '_', ''),
(55, 'hanbock', 'board', 'text', '', '', '_', ''),
(56, 'hanbock', 'board', 'name', '', '', '_', ''),
(57, 'hanbock', 'board', 'day', '', '', '_', ''),
(58, 'hanbock', 'board', 'goods', '', '', '_', ''),
(59, 'hanbock', 'board', 'price', '', '', '_', ''),
(60, 'hanbock', 'board', 'satis', '', '', '_', ''),
(61, 'hanbock', 'board', 'product', '', '', '_', ''),
(137, 'hanbock', 'recommend', 'up', '', '', '_', ''),
(134, 'hanbock', 'recommend', 'title', '', '', '_', ''),
(139, 'hanbock', 'recommend', 'stitle', '', '', '_', ''),
(131, 'hanbock', 'recommend', 'top', '', '', '_', ''),
(132, 'hanbock', 'recommend', 'down', '', '', '_', ''),
(133, 'hanbock', 'recommend', 'text', '', '', '_', ''),
(130, 'hanbock', 'recommend', 'idx', '', '', '_', ''),
(125, 'artcenter', 'reserve', 'thidx', '', '', '_', ''),
(124, 'artcenter', 'reserve', 'aidx', '', '', '_', ''),
(123, 'artcenter', 'reserve', 'tidx', '', '', '_', ''),
(53, 'hanbock', 'board', 'idx', '', '', '_', ''),
(122, 'artcenter', 'reserve', 'pidx', '', '', '_', ''),
(121, 'artcenter', 'reserve', 'count', '', '', '_', ''),
(120, 'artcenter', 'performance', 'file', '', '', '_', ''),
(116, 'artcenter', 'performance', 'midx', '', '', '_', ''),
(119, 'artcenter', 'performance', 'replace', '', '', '_', ''),
(115, 'artcenter', 'time', 'end', '', '', '_', ''),
(118, 'artcenter', 'time', 'midx', '', '', '_', ''),
(126, 'artcenter', 'reserve', 'money', '', '', '_', ''),
(140, 'hanbock', 'recommend', 'mtitle', '', '', '_', ''),
(141, 'hanbock', 'recommend', 'price', '', '', '_', ''),
(142, 'hanbock', 'review', 'idx', '', '', '_', ''),
(143, 'hanbock', 'review', 'name', '', '', '_', ''),
(144, 'hanbock', 'review', 'title', '', '', '_', ''),
(145, 'hanbock', 'review', 'text', '', '', '_', ''),
(146, 'hanbock', 'review', 'product', '', '', '_', ''),
(147, 'hanbock', 'review', 'price', '', '', '_', ''),
(148, 'hanbock', 'review', 'good', '', '', '_', ''),
(149, 'hanbock', 'review', 'date', '', '', '_', ''),
(154, 'traning', 'user', 'pw', '', '', '_', ''),
(153, 'traning', 'user', 'id', '', '', '_', ''),
(155, 'traning', 'user', 'name', '', '', '_', ''),
(158, 'traning', 'admin', 'idx', '', '', '_', ''),
(159, 'traning', 'admin', 'title', '', '', '_', ''),
(160, 'traning', 'admin', 'year', '', '', '_', ''),
(161, 'traning', 'admin', 'joinS', '', '', '_', ''),
(162, 'traning', 'admin', 'joinE', '', '', '_', ''),
(163, 'traning', 'admin', 'taskS', '', '', '_', ''),
(164, 'traning', 'admin', 'taskE', '', '', '_', ''),
(165, 'traning', 'admin', 'traningS', '', '', '_', ''),
(166, 'traning', 'admin', 'traningE', '', '', '_', ''),
(167, 'traning', 'admin', 'attend', '', '', '_', ''),
(168, 'traning', 'admin', 'task', '', '', '_', ''),
(169, 'traning', 'admin', 'finish', '', '', '_', ''),
(170, 'art', 'user', 'id', '', '', '_', ''),
(171, 'art', 'user', 'pw', '', '', '_', ''),
(172, 'art', 'theater', 'idx', '', '', '_', ''),
(173, 'art', 'theater', 'title', '', '', '_', ''),
(174, 'art', 'theater', 'width', '', '', '_', ''),
(175, 'art', 'theater', 'height', '', '', '_', ''),
(181, 'art', 'theater', 'file', '', '', '_', ''),
(177, 'art', 'theater', 'text', '', '', '_', ''),
(178, 'art', 'theater', 'seat', '', '', '_', ''),
(179, 'art', 'theater', 'count', '', '', '_', ''),
(180, 'art', 'theater', 'price', '', '', '_', ''),
(182, 'art', 'app', 'idx', '', '', '_', ''),
(183, 'art', 'app', 'th_idx', '', '', '_', ''),
(184, 'art', 'app', 'chk', '', '', '_', ''),
(185, 'art', 'app', 'start', '', '', '_', ''),
(186, 'art', 'app', 'end', '', '', '_', ''),
(187, 'art', 'app', 'price', '', '', '_', ''),
(188, 'art', 'time', 'idx', '', '', '_', ''),
(189, 'art', 'time', 'c_idx', '', '', '_', ''),
(190, 'art', 'time', 'start', '', '', '_', ''),
(191, 'art', 'time', 'end', '', '', '_', ''),
(192, 'art', 'time', 'day', '', '', '_', ''),
(193, 'art', 'content', 'idx', '', '', '_', ''),
(194, 'art', 'content', 'title', '', '', '_', ''),
(195, 'art', 'content', 'price', '', '', '_', ''),
(196, 'art', 'content', 'file', '', '', '_', ''),
(197, 'art', 'content', 'replace', '', '', '_', ''),
(198, 'art', 'content', 'a_idx', '', '', '_', ''),
(199, 'art', 'content', 'text', '', '', '_', ''),
(240, 'wedding', 'photo', 'idx', '', '', '_', ''),
(241, 'wedding', 'photo', 'img', '', '', '_', ''),
(242, 'wedding', 'photo', 'date', '', '', '_', ''),
(243, 'wedding', 'photo', 'title', '', '', '_', ''),
(244, 'wedding', 'reserve', 'idx', '', '', '_', ''),
(245, 'wedding', 'reserve', 'room_title', '', '', '_', ''),
(246, 'wedding', 'reserve', 'subscriber_name', '', '', '_', ''),
(247, 'wedding', 'reserve', 'subscriber_id', '', '', '_', ''),
(248, 'wedding', 'reserve', 'reserve_date', '', '', '_', ''),
(249, 'wedding', 'reserve', 'total_price', '', '', '_', ''),
(250, 'wedding', 'reserve', 'amount', '', '', '_', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- 테이블의 덤프 데이터 `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"wedding","table":"reserve"},{"db":"wedding","table":"photo"},{"db":"wedding","table":"review"},{"db":"wedding","table":"user"},{"db":"sheraton","table":"order"},{"db":"sheraton","table":"restaurant"},{"db":"sheraton","table":"reserve"},{"db":"sheraton","table":"review"},{"db":"sheraton","table":"board"},{"db":"hotel","table":"order"}]');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- 테이블의 덤프 데이터 `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'art', 'concert', '{"sorted_col":"`concert`.`width` ASC"}', '2014-09-12 09:06:41'),
('root', 'artcenter', 'schedule', '{"sorted_col":"`schedule`.`start` ASC"}', '2014-09-15 10:28:08'),
('root', 'artcenter', 'reserve', '{"sorted_col":"`seat` DESC"}', '2014-09-19 08:10:13'),
('root', 'art', 'content', '{"CREATE_TIME":"2014-10-05 10:05:16","col_visib":["1","1","1","1","1","1"]}', '2014-10-06 01:43:37'),
('root', 'hotel', 'reserve', '{"CREATE_TIME":"2014-11-14 16:47:18","col_visib":["1","1","1","1","1"]}', '2014-11-24 09:40:28');

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 테이블 구조 `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 테이블의 덤프 데이터 `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2014-08-17 00:09:12', '{"collation_connection":"utf8mb4_general_ci","lang":"ko"}');
--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `car`
--

CREATE TABLE IF NOT EXISTS `car` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `carname` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `fuel` varchar(100) NOT NULL,
  `carnum` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- 테이블의 덤프 데이터 `car`
--

INSERT INTO `car` (`idx`, `carname`, `color`, `fuel`, `carnum`) VALUES
(1, '에쿠스/Equss', '검정', '휘발유', '82허2252'),
(2, '에쿠스/Equss', '검정', '경유', '96허3780'),
(3, '에쿠스/Equss', '검정', '하이브리드', '68허8185'),
(4, '에쿠스/Equss', '흰색', '휘발유', '72허6271'),
(5, '에쿠스/Equss', '흰색', '경유', '72허8020'),
(6, '에쿠스/Equss', '흰색', '하이브리드', '72허1268'),
(7, '에쿠스/Equss', '회색', '휘발유', '85허5271'),
(8, '에쿠스/Equss', '회색', '경유', '36허2555'),
(9, '에쿠스/Equss', '회색', '하이브리드', '35허3917'),
(10, '에쿠스/Equss', '빨간색', '휘발유', '30허5299'),
(11, '에쿠스/Equss', '빨간색', '경유', '67허9945'),
(12, '에쿠스/Equss', '빨간색', '하이브리드', '72허2238'),
(13, '제네시스/Genesis', '검정', '휘발유', '85허3774'),
(14, '제네시스/Genesis', '검정', '경유', '76허4542'),
(15, '제네시스/Genesis', '검정', '하이브리드', '86허7072'),
(16, '제네시스/Genesis', '흰색', '휘발유', '76허3299'),
(17, '제네시스/Genesis', '흰색', '경유', '41허1575'),
(18, '제네시스/Genesis', '흰색', '하이브리드', '55허5657'),
(19, '제네시스/Genesis', '회색', '휘발유', '25허3751'),
(20, '제네시스/Genesis', '회색', '경유', '78허9257'),
(21, '제네시스/Genesis', '회색', '하이브리드', '32허7543'),
(22, '제네시스/Genesis', '빨간색', '휘발유', '49허5150'),
(23, '제네시스/Genesis', '빨간색', '경유', '19허3356'),
(24, '제네시스/Genesis', '빨간색', '하이브리드', '25허7658'),
(25, '그랜져/Grandeur', '검정', '휘발유', '79허5942'),
(26, '그랜져/Grandeur', '검정', '경유', '18허5982'),
(27, '그랜져/Grandeur', '검정', '하이브리드', '97허6702'),
(28, '그랜져/Grandeur', '흰색', '휘발유', '26허8016'),
(29, '그랜져/Grandeur', '흰색', '경유', '31허7676'),
(30, '그랜져/Grandeur', '흰색', '하이브리드', '76허1211'),
(31, '그랜져/Grandeur', '회색', '휘발유', '38허4826'),
(32, '그랜져/Grandeur', '회색', '경유', '13허7679'),
(33, '그랜져/Grandeur', '회색', '하이브리드', '99허6962'),
(34, '그랜져/Grandeur', '빨간색', '휘발유', '99허2587'),
(35, '그랜져/Grandeur', '빨간색', '경유', '77허4582'),
(36, '그랜져/Grandeur', '빨간색', '하이브리드', '53허8621'),
(37, '소나타/Sonata', '검정', '휘발유', '44허1104'),
(38, '소나타/Sonata', '검정', '경유', '11허2294'),
(39, '소나타/Sonata', '검정', '하이브리드', '66허5300'),
(40, '소나타/Sonata', '흰색', '휘발유', '26허7422'),
(41, '소나타/Sonata', '흰색', '경유', '46허8355'),
(42, '소나타/Sonata', '흰색', '하이브리드', '20허2861'),
(43, '소나타/Sonata', '회색', '휘발유', '21허4481'),
(44, '소나타/Sonata', '회색', '경유', '97허6343'),
(45, '소나타/Sonata', '회색', '하이브리드', '20허1819'),
(46, '소나타/Sonata', '빨간색', '휘발유', '32허8166'),
(47, '소나타/Sonata', '빨간색', '경유', '14허5386'),
(48, '소나타/Sonata', '빨간색', '하이브리드', '68허4801'),
(49, '싼타페/Santafe', '검정', '휘발유', '75허9312'),
(50, '싼타페/Santafe', '검정', '경유', '28허8286'),
(51, '싼타페/Santafe', '검정', '하이브리드', '34허7402'),
(52, '싼타페/Santafe', '흰색', '휘발유', '35허3916'),
(53, '싼타페/Santafe', '흰색', '경유', '11허4061'),
(54, '싼타페/Santafe', '흰색', '하이브리드', '29허5695'),
(55, '싼타페/Santafe', '회색', '휘발유', '75허8323'),
(56, '싼타페/Santafe', '회색', '경유', '40허3502'),
(57, '싼타페/Santafe', '회색', '하이브리드', '23허5834'),
(58, '싼타페/Santafe', '빨간색', '휘발유', '64허4850'),
(59, '싼타페/Santafe', '빨간색', '경유', '40허1419'),
(60, '싼타페/Santafe', '빨간색', '하이브리드', '42허1024'),
(61, '그랜드 스타렉스/Grand Starex', '검정', '휘발유', '99허5624'),
(62, '그랜드 스타렉스/Grand Starex', '검정', '경유', '73허1414'),
(63, '그랜드 스타렉스/Grand Starex', '검정', '하이브리드', '97허4989'),
(64, '그랜드 스타렉스/Grand Starex', '흰색', '휘발유', '33허1821'),
(65, '그랜드 스타렉스/Grand Starex', '흰색', '경유', '18허8533'),
(66, '그랜드 스타렉스/Grand Starex', '흰색', '하이브리드', '83허6699'),
(67, '그랜드 스타렉스/Grand Starex', '회색', '휘발유', '73허2185'),
(68, '그랜드 스타렉스/Grand Starex', '회색', '경유', '41허1236'),
(69, '그랜드 스타렉스/Grand Starex', '회색', '하이브리드', '92허3852'),
(70, '그랜드 스타렉스/Grand Starex', '빨간색', '휘발유', '68허4771'),
(71, '그랜드 스타렉스/Grand Starex', '빨간색', '경유', '26허7908'),
(72, '그랜드 스타렉스/Grand Starex', '빨간색', '하이브리드', '69허7439');

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `sTitle` varchar(100) NOT NULL,
  `mTitle` varchar(100) NOT NULL,
  `mod` int(11) NOT NULL,
  `sod` int(11) DEFAULT NULL,
  `porder` varchar(100) NOT NULL,
  `maxLv` int(11) NOT NULL,
  `minLv` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`idx`, `sTitle`, `mTitle`, `mod`, `sod`, `porder`, `maxLv`, `minLv`) VALUES
(1, 'intro', '회사소개', 1, NULL, 'intro', 3, 0),
(2, 'guide', '대여가이드', 2, NULL, 'guide', 3, 0),
(3, 'reserve', '온라인예약', 3, NULL, 'reserve', 3, 1),
(4, 'search', '차량검색', 4, NULL, 'search', 3, 0),
(5, 'intro', '회사소개', 1, 1, 'intro', 3, 0),
(6, 'way', '찾아오시는 길', 1, 2, 'intro', 3, 0),
(7, 'guide', '대여안내', 2, 1, 'guide', 3, 0),
(8, 'car', '차량안내', 2, 2, 'guide', 3, 0),
(9, 'reserve', '예약하기', 3, 1, 'reserve', 3, 1),
(10, 'list', '예약목록', 3, 2, 'reserve', 3, 1),
(12, 'search', '차량검색', 4, 1, 'search', 3, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(100) NOT NULL,
  `num` varchar(122) NOT NULL,
  `fuel` varchar(100) NOT NULL,
  `start` varchar(110) NOT NULL,
  `end` varchar(110) NOT NULL,
  `name` varchar(100) NOT NULL,
  `carnum` varchar(100) NOT NULL,
  `src` varchar(111) NOT NULL,
  `chk` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `color`, `num`, `fuel`, `start`, `end`, `name`, `carnum`, `src`, `chk`) VALUES
(15, 'black', '2번차', 'hiv', '2014-08-26', '2014-08-28', 'admin', '12허 2933', '/img/reserve2.jpg', 1),
(16, 'black', '2번차', 'hiv', '2014-08-28', '2014-08-29', 'admin', '30허4315', '/img/reserve2.jpg', 1),
(17, 'black', '2번차', 'hiv', '2014-09-25', '2014-09-26', 'enterprice', '30허4315', '/img/reserve2.jpg', 1),
(18, 'gray', '2번차', 'hiv', '2014-09-24', '2014-09-30', 'admin', '30허4315', '/img/reserve2.jpg', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`idx`, `id`, `pw`, `email`, `phone`) VALUES
(1, 'admin', '1234', '', '');
--
-- Database: `sheraton`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `od` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(111) NOT NULL,
  `hit` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `dap` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `od`, `title`, `text`, `date`, `hit`, `name`, `dap`) VALUES
(5, 1, 'title', 'text11111', '2014-11-11', 2, 'admin', 0),
(6, 2, 'title2', 'text', '2014-11-20', 12, 'admin', 0),
(7, 3, 'title3', 'text', '0000-00-00', 0, 'name', 0),
(8, 4, '321321', 'text', '2014-12-12', 111, '312321312', 0),
(9, 5, '312321', 'text32', '2014-12-24', 123, 'qweqwe', 0),
(10, 6, 'twqreq', 'text', '2014-02-08', 12, 'admin', 0),
(11, 7, '321321', 'text', '2014-02-12', 12, '321321', 0),
(12, 8, '31231', 'text', '2014-02-12', 9, 'admin', 0),
(13, 9, '321', 'text', '2014-12-12', 12, 'admin', 0),
(14, 11, '32131', 'text', '2014-02-12', 16, '12485748', 0),
(15, 10, '답글임', '답글\r\n', '2014-11-14', 1, 'admin', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `midx` int(11) NOT NULL,
  `name` varchar(1111) NOT NULL,
  `reDate` date NOT NULL,
  `r_idx` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 테이블의 덤프 데이터 `order`
--

INSERT INTO `order` (`idx`, `midx`, `name`, `reDate`, `r_idx`) VALUES
(7, 6, 'admin', '2014-11-27', 12),
(8, 1, 'admin', '2014-11-28', 14),
(9, 1, 'admin', '2014-11-28', 14),
(10, 1, 'admin', '2014-11-28', 14),
(11, 1, 'admin', '2014-11-28', 14),
(12, 1, 'admin', '2014-11-28', 14),
(13, 1, 'admin', '2014-11-28', 14),
(14, 5, 'admin', '2014-11-28', 14),
(15, 5, 'admin', '2014-11-28', 14),
(16, 5, 'admin', '2014-11-28', 14),
(17, 2, 'admin', '2014-11-28', 14),
(18, 4, 'admin', '2014-11-28', 14),
(19, 1, 'admin', '2014-11-28', 14),
(20, 3, 'admin', '2014-11-28', 14),
(21, 3, 'admin', '2014-11-28', 14),
(22, 3, 'admin', '2014-11-28', 14),
(23, 3, 'admin', '2014-11-28', 14),
(24, 6, 'admin', '2014-11-28', 14),
(25, 6, 'admin', '2014-11-28', 14),
(26, 5, 'admin', '2014-11-28', 14),
(27, 1, 'admin', '2014-11-28', 14),
(28, 1, 'admin', '2014-11-28', 14),
(29, 1, 'admin', '2014-11-28', 14),
(30, 3, 'admin', '2014-11-28', 14),
(31, 3, 'admin', '2014-11-28', 14),
(32, 3, 'admin', '2014-11-28', 14),
(33, 2, 'admin', '2014-11-28', 14),
(34, 2, 'admin', '2014-11-28', 14),
(35, 2, 'admin', '2014-11-28', 14),
(36, 2, 'admin', '2014-11-28', 14),
(37, 2, 'admin', '2014-11-28', 14);

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `room` varchar(100) NOT NULL,
  `start` varchar(111) NOT NULL,
  `end` varchar(111) NOT NULL,
  `id` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `room`, `start`, `end`, `id`, `total`) VALUES
(14, '디럭스룸', '2014-11-28', '2014-11-30', 'admin', '150000');

-- --------------------------------------------------------

--
-- 테이블 구조 `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 테이블의 덤프 데이터 `restaurant`
--

INSERT INTO `restaurant` (`idx`, `title`, `price`, `img`) VALUES
(1, '함박시트에크샐러드', 38000, '/static/img/rest_8.png'),
(2, '목살스테이크', 50000, '/static/img/rest_9.png'),
(3, '케이준 치킨셀러드', 40000, '/static/img/rest_3.png'),
(4, '더블치킨 목살셀러드', 45000, '/static/img/rest_4.png'),
(5, '고르곤졸라', 25000, '/static/img/rest_2.png'),
(6, '포테이토씬피자', 35000, '/static/img/rest_7.png'),
(7, '사골해물파스타', 30000, '/static/img/rest_10.png');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `midx` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`idx`, `name`, `text`, `midx`, `date`) VALUES
(1, 'admin', 'fdsafdsa', 14, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(111) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(123) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`, `mail`) VALUES
('321321321', '143723c55ae46fcc3ed4f0cf31f3a955', '312321', '1231@naver.com'),
('admin', '81dc9bdb52d04dc20036dbd8313ed055', '관리자', '1234@naver.com'),
('rudxor', '2493a1a878c6babdf5e6b82584085d51', '오경택', '');
--
-- Database: `test`
--
--
-- Database: `traning`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `joinS` date NOT NULL,
  `joinE` date NOT NULL,
  `taskS` date NOT NULL,
  `taskE` date NOT NULL,
  `traningS` date NOT NULL,
  `traningE` date NOT NULL,
  `attend` int(11) NOT NULL,
  `task` int(11) NOT NULL,
  `finish` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`) VALUES
('admin', 'admin1234', '관리자');
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- 테이블의 덤프 데이터 `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');
--
-- Database: `wedding`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE IF NOT EXISTS `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `od` int(11) NOT NULL,
  `hit` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`idx`, `title`, `text`, `name`, `od`, `hit`, `date`) VALUES
(16, '웨딩고객 특별이벤트', '이벤트 1) 구매금액별 선물카드 증정!!!!!\r\n기        간 : 2014-12-11 ~ 2014-12-25\r\n대상지점 : 서울점, 인천공항점, 김포공항점, 제주점\r\n\r\n$500이상 구매시 5만원 증정\r\n$1,000이상 구매시 10만원 증정\r\n$2,000이상 구매시 20만원 증정\r\n\r\n\r\n이벤트 2) 신라면세점 멤버십 gold카드 발급\r\n기        간  : 2014-12-15 ~ 2014-12-20\r\n대상지점  : 서울점, 인천공항점, 김포공항점, 제주점ㅁ\r\n모든 웨딩 고객에 신라면세점 멤버쉽 gold카드를 발급해 드립니다!!!\r\n\r\n신라면세점 멤버쉽 gold카드는 가입즉시 신라면세점 전집에서 최대 15% ~ 5%까지 할인을 해드립니다.\r\nfds\r\n\r\nfd\r\ns\r\n', 'admin', 1, 44, '2014-12-08 01:02:21'),
(18, '123', '123', 'admin', 2, 6, '2014-12-08 14:02:17'),
(20, '321321', '321321321', 'admin', 3, 80, '2014-12-08 14:04:47'),
(21, '312321321', '321213213321', 'admin', 4, 0, '2014-12-08 16:44:20'),
(22, '321321321', '213213213213', 'admin', 5, 5, '2014-12-08 16:44:26'),
(23, '3213213213', '21321321', 'admin', 6, 20, '2014-12-08 16:44:31'),
(24, '321321321321', '321321', 'admin', 7, 0, '2014-12-08 16:44:37'),
(25, '213213', '21321321', 'admin', 8, 8, '2014-12-08 16:44:43'),
(26, 'rewrwerwe', 'rewrewqrewrrew', 'admin', 9, 0, '2014-12-08 16:44:49'),
(27, 'rewqre', 'qrewrqewrewq', 'admin', 10, 2, '2014-12-08 16:44:55'),
(28, 'qrewqrqwe', 'rew', 'admin', 11, 45, '2014-12-08 16:45:06');

-- --------------------------------------------------------

--
-- 테이블 구조 `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 테이블의 덤프 데이터 `photo`
--

INSERT INTO `photo` (`idx`, `img`, `date`, `title`) VALUES
(25, '1418038223.jpg', '2014-12-08 20:30:23', ''),
(26, '1418038227.jpg', '2014-12-08 20:30:27', ''),
(27, '1418038232.jpg', '2014-12-08 20:30:32', ''),
(28, '1418038236.jpg', '2014-12-08 20:30:36', ''),
(29, '1418038241.jpg', '2014-12-08 20:30:41', ''),
(30, '1418038251.jpg', '2014-12-08 20:30:51', ''),
(31, '1418039525.jpg', '2014-12-08 20:52:05', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `room_title` varchar(100) NOT NULL,
  `subscriber_name` varchar(100) NOT NULL,
  `subscriber_id` varchar(100) NOT NULL,
  `reserve_date` varchar(100) NOT NULL,
  `total_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 테이블의 덤프 데이터 `reserve`
--

INSERT INTO `reserve` (`idx`, `room_title`, `subscriber_name`, `subscriber_id`, `reserve_date`, `total_price`, `amount`) VALUES
(10, '라이트 웨딩홀', '오경택', 'rudxor97', '2014-12-24', 162000, 10);

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `m_idx` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `text` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 테이블의 덤프 데이터 `review`
--

INSERT INTO `review` (`idx`, `m_idx`, `name`, `text`, `date`) VALUES
(1, 0, 'admin', '321321', '2014-12-08 14:59:23'),
(2, 0, 'admin', '321312312', '2014-12-08 14:59:45'),
(3, 0, 'admin', '312312321', '2014-12-08 15:02:03'),
(4, 0, '', 'fdsafdsa', '2014-12-08 15:21:52'),
(5, 0, '', '321321123', '2014-12-08 15:24:43'),
(6, 0, 'admin', '321321', '2014-12-08 15:25:14'),
(7, 0, 'admin', '321321', '2014-12-08 15:25:48'),
(8, 0, 'admin', '321312', '2014-12-08 15:27:40'),
(9, 16, 'admin', '3421321321', '2014-12-08 15:28:18'),
(10, 16, 'admin', '321312', '2014-12-08 16:15:18'),
(11, 20, 'admin', '321321321\n', '2014-12-08 16:25:08'),
(12, 20, 'admin', '씨발\n', '2014-12-08 16:34:19'),
(13, 20, 'admin', '321312', '2014-12-08 16:42:30'),
(14, 20, 'admin', '321321', '2014-12-08 16:42:54'),
(15, 20, 'admin', '321321', '2014-12-08 16:43:52'),
(16, 22, 'admin', '321321', '2014-12-08 16:48:19'),
(17, 22, 'admin', '1', '2014-12-08 16:48:31'),
(18, 22, 'admin', '133', '2014-12-08 16:48:33'),
(19, 22, 'admin', '133333', '2014-12-08 16:48:36'),
(20, 22, 'admin', '133333321', '2014-12-08 16:48:39'),
(21, 22, 'admin', '133333321321321', '2014-12-08 16:48:45'),
(22, 22, 'admin', '133333321321321', '2014-12-08 16:48:46'),
(23, 22, 'admin', '133333321321321', '2014-12-08 16:48:47'),
(24, 22, 'admin', '133333321321321', '2014-12-08 16:48:47'),
(25, 22, 'admin', '133333321321321', '2014-12-08 16:48:47'),
(26, 22, 'admin', '133333321321321', '2014-12-08 16:48:47'),
(27, 22, 'admin', '133333321321321', '2014-12-08 16:48:48'),
(28, 22, 'admin', '133333321321321', '2014-12-08 16:48:48'),
(29, 25, 'admin', '321', '2014-12-08 16:51:21'),
(30, 27, 'admin', '111', '2014-12-08 16:52:55'),
(31, 28, 'admin', '1', '2014-12-08 16:58:08'),
(32, 23, 'admin', '11', '2014-12-08 17:06:01'),
(33, 18, 'admin', '1', '2014-12-08 17:07:43'),
(34, 28, '', 'fdsafdsaffsdads', '2014-12-08 19:22:17'),
(35, 28, 'admin', 'ㄹㅇㄴㅁㄹㅇㄴㅁ', '2014-12-08 19:33:33'),
(36, 28, 'admin', '212121', '2014-12-08 19:33:38'),
(37, 28, 'admin', 'ㄹㄴㅇㄹㄴㅇ', '2014-12-08 19:34:05');

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`, `mail`) VALUES
('admin', '1234', '관리자', 'rudxor97@naver.com'),
('rudxor97', 'asdf489', '오경택', 'rudxor97@naver.com');
--
-- Database: `wine`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `subName` varchar(100) NOT NULL,
  `titleName` varchar(110) NOT NULL,
  `porder` varchar(100) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 테이블의 덤프 데이터 `menu`
--

INSERT INTO `menu` (`idx`, `mid`, `sid`, `subName`, `titleName`, `porder`, `text`) VALUES
(4, 1, 1, 'hello', '회사소개', 'introduce', 'Intro'),
(5, 1, 2, 'hello', '인사말', 'introduce', ''),
(6, 1, 3, 'introduce', '회사소개', 'introduce', ''),
(7, 2, 1, 'define', '아카데미', 'academy', 'Academy'),
(8, 2, 2, 'define', '와인이란', 'academy', ''),
(9, 2, 3, 'hidtory', '와인의 역사', 'academy', ''),
(10, 2, 4, 'basic', '기초용어', 'academy', ''),
(11, 3, 1, 'experience', '체험하기', 'experience', 'Experi'),
(12, 3, 2, 'experience', '체험하기', 'experience', ''),
(13, 4, 1, 'board', '커뮤니티', 'community', 'Hello'),
(14, 4, 2, 'board', '자유게시판', 'community', 'Hello'),
(15, 5, 1, 'search', '통합검색', 'search', 'search'),
(16, 5, 2, 'search', '통합검색', 'search', ''),
(17, 6, 1, 'join', '유저', 'user', 'User'),
(18, 6, 2, 'join', '회원가입', 'user', ''),
(19, 6, 3, 'mypage', '마이페이지', 'user', ''),
(20, 7, 1, 'admin', '예약현황', 'admin', 'Admin'),
(21, 7, 2, 'admin', '예약현황', 'admin', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
