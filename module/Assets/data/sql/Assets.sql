-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Pon 11. říj 2021, 22:14
-- Verze serveru: 5.6.38
-- Verze PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `assets`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `availability`
--

CREATE TABLE `availability` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `confidentiality`
--

CREATE TABLE `confidentiality` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `impact`
--

CREATE TABLE `impact` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `level` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `integrity`
--

CREATE TABLE `integrity` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `risk_limits`
--

CREATE TABLE `risk_limits` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `min_value` int(11) NOT NULL,
  `max_value` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `risk_limits`
--

INSERT INTO `risk_limits` (`id`, `level`, `min_value`, `max_value`, `description`) VALUES
(1, 1, 3, 99, 'Riziko je považováno za přijatelné.'),
(1, 2, 100, 249, 'Riziko může být sníženo méně náročnými opatřeními nebo v případě vyšší náročnosti opatření je riziko přijatelné.'),
(3, 3, 250, 399, 'Riziko je dlouhodobě nepřípustné a musí být zahájeny systematické kroky k jeho odstranění.'),
(4, 4, 300, 810, 'Riziko je nepřípustné a musí být neprodleně zahájeny kroky k jeho odstranění.');

-- --------------------------------------------------------

--
-- Struktura tabulky `threat`
--

CREATE TABLE `threat` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `vulnerability`
--

CREATE TABLE `vulnerability` (
  `id` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
