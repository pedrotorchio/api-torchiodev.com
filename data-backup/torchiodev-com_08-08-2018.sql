-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 08/08/2018 às 15:57
-- Versão do servidor: 5.6.38
-- Versão do PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `torchiodev-com`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `avatar_image` int(11) DEFAULT NULL COMMENT 'Author personal image',
  `bio` text COMMENT 'Biography',
  `tags` text COMMENT '''''',
  `description` varchar(100) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `about`
--

INSERT INTO `about` (`id`, `avatar_image`, `bio`, `tags`, `description`) VALUES
(1, 2, '<p>Hello there, I\'m <strong>Pedro Torchio</strong>.<br /> I\'ve been working as a <strong>web developer</strong> for the past five years and would love to experience living and working in another country. In fact that\'s a wish I\'ve had since a was really young and it\'s always driven the choices I made in life.</p>\n<p>I gradually discovered the web technologies and I\'m particularly excited about the growing merges between <strong>web platforms and mobile applications</strong>. Ultimately, my goal is to create easily accessible web tools that will enhance the <strong>users\' experience</strong>.</p>\n<p>Also, I\'m passionate about planning and refactoring. <strong>Clean and concise code</strong>, with great interface declaration, is coffee to me. I could work on it for days straight.</p>\n<p>A short summary of my <strong>experience</strong> path from start to [there is no end] is:<br />Databases, PHP, Wordpress, Basic Frontend, Javascript Framework, Progressive Web Apps..</p>', 'pedro torchio,web,development,platform,mobile application,progressive web app,database,php,wordpress,frontend,backend,javascript framework', 'A personal website for a web developer');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) NOT NULL DEFAULT '',
  `row_id` int(11) UNSIGNED DEFAULT '0',
  `user` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `data` text,
  `delta` text,
  `parent_id` int(11) UNSIGNED DEFAULT NULL,
  `parent_table` varchar(100) DEFAULT NULL,
  `parent_changed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Did the top-level record in the change set alter (scalar values/many-to-one relationships)? Or only the data within its related foreign collection records? (*toMany)',
  `datetime` datetime DEFAULT NULL,
  `logged_ip` varchar(45) DEFAULT NULL,
  `user_agent` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(1, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-07-31 22:49:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(2, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 7, 1, '{\"id\":\"7\",\"table_name\":\"general\",\"column_name\":\"main_image\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"main_image\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"Main decorative image\",\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\"}', '{\"comment\":\"Main decorative image\",\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\",\"junction_key_right\":\"main_image\",\"related_table\":\"directus_files\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"7\"}', NULL, NULL, 1, '2018-07-31 23:04:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(3, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 11, 1, '{\"id\":\"11\",\"table_name\":\"about\",\"column_name\":\"bio\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"Biography\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"comment\":\"Biography\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"sort\":2,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"11\"}', NULL, NULL, 1, '2018-07-31 23:07:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(4, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 10, 1, '{\"id\":\"10\",\"table_name\":\"about\",\"column_name\":\"avatar_image\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"avatar_image\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"1\",\"comment\":\"Personal image\",\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\"}', '{\"comment\":\"Personal image\",\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\",\"junction_key_right\":\"avatar_image\",\"related_table\":\"directus_files\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"sort\":1,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"10\"}', NULL, NULL, 1, '2018-07-31 23:07:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(5, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"work\",\"column_name\":\"status\",\"data_type\":\"TINYINT\",\"ui\":\"status\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"8\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"25\"}', NULL, NULL, 1, '2018-07-31 23:25:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(6, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 21, 1, '{\"id\":\"21\",\"table_name\":\"work\",\"column_name\":\"sort\",\"data_type\":\"INT\",\"ui\":\"sort\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":null}', '{\"hidden_input\":true,\"id\":\"21\"}', NULL, NULL, 1, '2018-07-31 23:25:50', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(7, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 39, 1, '{\"id\":\"39\",\"table_name\":\"experience_entry\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":false,\"id\":\"39\"}', NULL, NULL, 1, '2018-07-31 23:42:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(8, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 39, 1, '{\"id\":\"39\",\"table_name\":\"experience_entry\",\"column_name\":\"id\",\"data_type\":\"INT\",\"ui\":\"primary_key\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"0\",\"comment\":null,\"options\":null}', '{\"hidden_input\":true,\"id\":\"39\"}', NULL, NULL, 1, '2018-07-31 23:44:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(9, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 51, 1, '{\"id\":\"51\",\"table_name\":\"experience_entry\",\"column_name\":\"experience_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"experience\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\"}\",\"junction_key_right\":\"experience_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"related_table\":\"experience\",\"sort\":6,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"51\"}', NULL, NULL, 1, '2018-07-31 23:45:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(10, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 52, 1, '{\"id\":\"52\",\"table_name\":\"experience\",\"column_name\":\"entries\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\"}\",\"related_table\":\"experience_entry\",\"junction_key_right\":\"experience_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"52\"}', NULL, NULL, 1, '2018-07-31 23:46:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(11, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 51, 1, '{\"id\":\"51\",\"table_name\":\"experience_entry\",\"column_name\":\"experience_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"experience\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"title\\\",\\\"visible_column_template\\\":\\\"{{title}}\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"title\\\",\\\"visible_column_template\\\":\\\"{{title}}\\\"}\",\"junction_key_right\":\"experience_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"related_table\":\"experience\",\"sort\":6,\"required\":false,\"hidden_input\":false,\"relationship_type\":\"MANYTOONE\",\"junction_table\":null,\"junction_key_left\":null,\"id\":\"51\"}', NULL, NULL, 1, '2018-07-31 23:49:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(12, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 52, 1, '{\"id\":\"52\",\"table_name\":\"experience\",\"column_name\":\"entries\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"{{date_range}}\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"{{date_range}}\\\"}\",\"related_table\":\"experience_entry\",\"junction_key_right\":\"experience_id\",\"relationship_type\":\"ONETOMANY\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"sort\":3,\"required\":false,\"hidden_input\":false,\"junction_table\":null,\"junction_key_left\":null,\"id\":\"52\"}', NULL, NULL, 1, '2018-07-31 23:50:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(13, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 45, 1, '{\"id\":\"45\",\"table_name\":\"experience_entry\",\"column_name\":\"date_range\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"Textual date range\",\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"Textual date range\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"45\"}', NULL, NULL, 1, '2018-07-31 23:53:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(14, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 52, 1, '{\"id\":\"52\",\"table_name\":\"experience\",\"column_name\":\"entries\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"{{date_range}}\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"{{date_range}}\\\"}\",\"required\":false,\"ui\":\"one_to_many\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_right\":\"experience_id\",\"junction_key_left\":null,\"data_type\":\"ALIAS\",\"id\":\"52\"}', NULL, NULL, 1, '2018-07-31 23:53:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(15, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 52, 1, '{\"id\":\"52\",\"table_name\":\"experience\",\"column_name\":\"entries\",\"data_type\":\"ALIAS\",\"ui\":\"one_to_many\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"date_range\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"one_to_many\\\",\\\"visible_columns\\\":\\\"date_range\\\"}\",\"required\":false,\"ui\":\"one_to_many\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":\"ONETOMANY\",\"related_table\":\"experience_entry\",\"junction_table\":null,\"junction_key_right\":\"experience_id\",\"junction_key_left\":null,\"data_type\":\"ALIAS\",\"id\":\"52\"}', NULL, NULL, 1, '2018-07-31 23:59:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(16, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 17, 1, '{\"id\":\"17\",\"table_name\":\"work\",\"column_name\":\"date\",\"data_type\":\"DATE\",\"ui\":\"date\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"date\\\",\\\"auto_populate\\\":0,\\\"format\\\":\\\"DD\\/MM\\/YYYY\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"date\\\",\\\"auto_populate\\\":0,\\\"format\\\":\\\"DD\\/MM\\/YYYY\\\"}\",\"required\":false,\"ui\":\"date\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"DATE\",\"id\":\"17\"}', NULL, NULL, 1, '2018-08-01 03:02:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(17, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,anchor,quote\\\",\\\"buttons_h2\\\":\\\"h2\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,anchor,quote\\\",\\\"buttons_h2\\\":\\\"h2\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 03:03:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(18, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 03:03:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(19, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 19, 1, '{\"id\":\"19\",\"table_name\":\"work\",\"column_name\":\"thumbnail\",\"data_type\":\"INT\",\"ui\":\"single_file\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"thumbnail\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"Small screenshot\",\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\"}', '{\"sort\":7,\"options\":\"{\\\"id\\\":\\\"single_file\\\"}\",\"required\":false,\"ui\":\"single_file\",\"hidden_input\":false,\"comment\":\"Small screenshot\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"directus_files\",\"junction_table\":null,\"junction_key_right\":\"thumbnail\",\"junction_key_left\":null,\"data_type\":\"INT\",\"id\":\"19\"}', NULL, NULL, 1, '2018-08-01 03:04:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(20, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 20, 1, '{\"id\":\"20\",\"table_name\":\"work\",\"column_name\":\"suitable_color\",\"data_type\":\"VARCHAR\",\"ui\":\"color\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"8\",\"comment\":\"Color adequate to use with the Thumbnail\",\"options\":\"{\\\"id\\\":\\\"color\\\"}\"}', '{\"sort\":8,\"options\":\"{\\\"id\\\":\\\"color\\\"}\",\"required\":false,\"ui\":\"color\",\"hidden_input\":false,\"comment\":\"Color adequate to use with the Thumbnail\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"20\"}', NULL, NULL, 1, '2018-08-01 03:04:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(21, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 54, 1, '{\"id\":\"54\",\"table_name\":\"work\",\"column_name\":\"tags\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"9\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"sort\":9,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"54\"}', NULL, NULL, 1, '2018-08-01 03:05:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(22, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 55, 1, '{\"id\":\"55\",\"table_name\":\"work\",\"column_name\":\"synonyms\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"10\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\"}', '{\"data_type\":\"TEXT\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\",\"ui\":\"tags\",\"sort\":10,\"comment\":\"\",\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"55\"}', NULL, NULL, 1, '2018-08-01 03:05:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(23, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 55, 1, '{\"id\":\"55\",\"table_name\":\"work\",\"column_name\":\"synonyms\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"10\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\"}', '{\"data_type\":\"TEXT\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\",\"ui\":\"tags\",\"sort\":10,\"comment\":\"\",\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"55\"}', NULL, NULL, 1, '2018-08-01 03:05:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(24, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 57, 1, '{\"id\":\"57\",\"table_name\":\"skill\",\"column_name\":\"synonyms\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"7\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"sort\":7,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"57\"}', NULL, NULL, 1, '2018-08-01 03:05:37', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(25, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 34, 1, '{\"id\":\"34\",\"table_name\":\"skill\",\"column_name\":\"level\",\"data_type\":\"INT\",\"ui\":\"numeric\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"Between 0 - 10 \",\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\",\\\"localized\\\":0,\\\"footer\\\":1}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"numeric\\\",\\\"size\\\":\\\"small\\\",\\\"localized\\\":0,\\\"footer\\\":1}\",\"required\":false,\"ui\":\"numeric\",\"hidden_input\":false,\"comment\":\"Between 0 - 10 \",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"INT\",\"id\":\"34\"}', NULL, NULL, 1, '2018-08-01 03:06:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(26, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 28, 1, '{\"id\":\"28\",\"table_name\":\"service\",\"column_name\":\"bubble_text\",\"data_type\":\"TEXT\",\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"textarea\\\",\\\"rows\\\":\\\"8\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"textarea\\\",\\\"rows\\\":\\\"8\\\"}\",\"required\":false,\"ui\":\"textarea\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"28\"}', NULL, NULL, 1, '2018-08-01 03:06:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(27, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 51, 1, '{\"id\":\"51\",\"table_name\":\"experience_entry\",\"column_name\":\"experience_id\",\"data_type\":\"INT\",\"ui\":\"many_to_one\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"experience\",\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":\"experience_id\",\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"title\\\",\\\"visible_column_template\\\":\\\"{{title}}\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"many_to_one\\\",\\\"visible_column\\\":\\\"title\\\",\\\"visible_column_template\\\":\\\"{{title}}\\\"}\",\"required\":false,\"ui\":\"many_to_one\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":\"MANYTOONE\",\"related_table\":\"experience\",\"junction_table\":null,\"junction_key_right\":\"experience_id\",\"junction_key_left\":null,\"data_type\":\"INT\",\"id\":\"51\"}', NULL, NULL, 1, '2018-08-01 03:07:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(28, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 60, 1, '{\"id\":\"60\",\"table_name\":\"experience\",\"column_name\":\"tags\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\"}', '{\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"tags\\\"}\",\"data_type\":\"TEXT\",\"ui\":\"tags\",\"sort\":4,\"required\":false,\"hidden_input\":false,\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"id\":\"60\"}', NULL, NULL, 1, '2018-08-01 03:07:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(29, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 11, 1, '{\"id\":\"11\",\"table_name\":\"about\",\"column_name\":\"bio\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"Biography\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"headings_h2\\\":\\\"h2\\\",\\\"headings\\\":\\\"\\\",\\\"headings_h3\\\":\\\"h3\\\",\\\"headings_h4\\\":\\\"h4\\\",\\\"blocks_blockquote\\\":\\\"blockquote\\\",\\\"blocks\\\":\\\"p\\\",\\\"alignment_alignleft\\\":\\\"alignleft\\\",\\\"alignment\\\":\\\"alignleft,aligncenter,alignright,alignjustify\\\",\\\"alignment_aligncenter\\\":\\\"aligncenter\\\",\\\"alignment_alignright\\\":\\\"alignright\\\",\\\"alignment_alignjustify\\\":\\\"alignjustify\\\",\\\"toolbar_options_alignment\\\":\\\"alignment\\\",\\\"toolbar_options\\\":\\\"inline,alignment,table,undo,redo,bullist,numlist,link,unlink,paste\\\",\\\"toolbar_options_superscript\\\":\\\"superscript\\\",\\\"toolbar_options_subscript\\\":\\\"subscript\\\",\\\"toolbar_options_image\\\":\\\"image\\\",\\\"toolbar_options_media\\\":\\\"media\\\",\\\"toolbar_options_unlink\\\":\\\"unlink\\\",\\\"max_height\\\":\\\"30\\\",\\\"basic_image_list\\\":0,\\\"blocks_div\\\":\\\"div\\\"}\"}', '{\"sort\":2,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"headings_h2\\\":\\\"h2\\\",\\\"headings\\\":\\\"\\\",\\\"headings_h3\\\":\\\"h3\\\",\\\"headings_h4\\\":\\\"h4\\\",\\\"blocks_blockquote\\\":\\\"blockquote\\\",\\\"blocks\\\":\\\"p\\\",\\\"alignment_alignleft\\\":\\\"alignleft\\\",\\\"alignment\\\":\\\"alignleft,aligncenter,alignright,alignjustify\\\",\\\"alignment_aligncenter\\\":\\\"aligncenter\\\",\\\"alignment_alignright\\\":\\\"alignright\\\",\\\"alignment_alignjustify\\\":\\\"alignjustify\\\",\\\"toolbar_options_alignment\\\":\\\"alignment\\\",\\\"toolbar_options\\\":\\\"inline,alignment,table,undo,redo,bullist,numlist,link,unlink,paste\\\",\\\"toolbar_options_superscript\\\":\\\"superscript\\\",\\\"toolbar_options_subscript\\\":\\\"subscript\\\",\\\"toolbar_options_image\\\":\\\"image\\\",\\\"toolbar_options_media\\\":\\\"media\\\",\\\"toolbar_options_unlink\\\":\\\"unlink\\\",\\\"max_height\\\":\\\"30\\\",\\\"basic_image_list\\\":0,\\\"blocks_div\\\":\\\"div\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"Biography\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"11\"}', NULL, NULL, 1, '2018-08-01 03:10:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(30, 'ENTRY', 'ADD', '1', 'about', 1, 1, '{\"id\":\"1\",\"avatar_image\":null,\"bio\":\"<p>Hello there, I\'m <strong>Pedro Torchio<\\/strong>.<br \\/> I\'ve been working as a <strong>web developer<\\/strong> for the past five years and would love to experience living and working in another country. In fact that\'s a wish I\'ve had since a was really young and it\'s always driven the choices I made in life.<\\/p>\\n<p>I gradually discovered the web technologies and I\'m particularly excited about the growing merges between <strong>web platforms and mobile applications<\\/strong>. Ultimately, my goal is to create easily accessible web tools that will enhance the <strong>users\' experience<\\/strong>.<\\/p>\\n<p>Also, I\'m passionate about planning and refactoring. <strong>Clean and concise code<\\/strong>, with great interface declaration, is coffee to me. I could work on it for days straight.\\u0003<\\/p>\\n<p>A short summary of my <strong>experience<\\/strong> path from start to [there is no end] is\\u0003:<br \\/>Databases, PHP, Wordpress, Basic Frontend, Javascript Framework, Progressive Web Apps..<\\/p>\",\"tags\":\"pedro torchio,web,development,platform,mobile application,progressive web app,database,php,wordpress,frontend,backend,javascript framework\",\"description\":\"A personal website for a web developer\"}', '[]', NULL, NULL, 1, '2018-08-01 12:38:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(31, 'ENTRY', 'ADD', '1', 'directus_files', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"name\":\"00000000002.jpg\",\"title\":\"avatar edit\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"640\",\"height\":\"640\",\"size\":\"71148\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 12:47:07\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 12:47:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(32, 'ENTRY', 'UPDATE', '1', 'about', 1, 1, '{\"id\":\"1\",\"avatar_image\":\"2\",\"bio\":\"<p>Hello there, I\'m <strong>Pedro Torchio<\\/strong>.<br \\/> I\'ve been working as a <strong>web developer<\\/strong> for the past five years and would love to experience living and working in another country. In fact that\'s a wish I\'ve had since a was really young and it\'s always driven the choices I made in life.<\\/p>\\n<p>I gradually discovered the web technologies and I\'m particularly excited about the growing merges between <strong>web platforms and mobile applications<\\/strong>. Ultimately, my goal is to create easily accessible web tools that will enhance the <strong>users\' experience<\\/strong>.<\\/p>\\n<p>Also, I\'m passionate about planning and refactoring. <strong>Clean and concise code<\\/strong>, with great interface declaration, is coffee to me. I could work on it for days straight.\\u0003<\\/p>\\n<p>A short summary of my <strong>experience<\\/strong> path from start to [there is no end] is\\u0003:<br \\/>Databases, PHP, Wordpress, Basic Frontend, Javascript Framework, Progressive Web Apps..<\\/p>\",\"tags\":\"pedro torchio,web,development,platform,mobile application,progressive web app,database,php,wordpress,frontend,backend,javascript framework\",\"description\":\"A personal website for a web developer\"}', '{\"avatar_image\":2,\"id\":\"1\"}', NULL, NULL, 1, '2018-08-01 12:47:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(33, 'ENTRY', 'ADD', '1', 'directus_files', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.jpg\",\"title\":\"work thumbnail 0003 nabuco\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"288940\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:22:04\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 13:22:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(34, 'ENTRY', 'ADD', '1', 'work', 1, 1, '{\"id\":\"1\",\"title\":\"Nabuco Magazine and Blog\",\"url\":\"www.revistanabuco.com.br\",\"date\":\"0000-00-00\",\"info\":\"<p>* Government funded blog and magazine<\\/p><p>* Self managed Wordpress content<\\/p><p>* Fully customized Theme and Functionalities<\\/p><p>* Progressively enhanced content (no scripting needed)<\\/p>\",\"thumbnail\":\"3\",\"suitable_color\":\"00ff00\",\"sort\":null,\"status\":null,\"tags\":\"magazine,blog,cms,wordpress,progressive,enhancement,php\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-01 13:22:04', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(35, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 13:22:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(36, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 17, 1, '{\"id\":\"17\",\"table_name\":\"work\",\"column_name\":\"date\",\"data_type\":\"DATE\",\"ui\":\"date\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"date\\\",\\\"auto_populate\\\":0,\\\"format\\\":\\\"MM\\/YYYY\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"date\\\",\\\"auto_populate\\\":0,\\\"format\\\":\\\"MM\\/YYYY\\\"}\",\"required\":false,\"ui\":\"date\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"DATE\",\"id\":\"17\"}', NULL, NULL, 1, '2018-08-01 13:24:26', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(37, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 17, 1, '{\"id\":\"17\",\"table_name\":\"work\",\"column_name\":\"date\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"17\"}', NULL, NULL, 1, '2018-08-01 13:24:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(38, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\",\\\"buttons_h3\\\":\\\"h3\\\",\\\"buttons\\\":\\\"bold,italic,underline,strikethrough,anchor,orderedlist,unorderedlist\\\",\\\"buttons_h2\\\":\\\"h2\\\",\\\"buttons_anchor\\\":\\\"anchor\\\",\\\"buttons_quote\\\":\\\"quote\\\",\\\"buttons_orderedlist\\\":\\\"orderedlist\\\",\\\"buttons_unorderedlist\\\":\\\"unorderedlist\\\",\\\"buttons_strikethrough\\\":\\\"strikethrough\\\",\\\"simple_editor\\\":1,\\\"buttons_subscript\\\":\\\"subscript\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 13:24:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(39, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 17, 1, '{\"id\":\"17\",\"table_name\":\"work\",\"column_name\":\"date\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"17\"}', NULL, NULL, 1, '2018-08-01 13:25:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(40, 'ENTRY', 'UPDATE', '1', 'work', 1, 1, '{\"id\":\"1\",\"title\":\"Nabuco Magazine and Blog\",\"url\":\"www.revistanabuco.com.br\",\"date\":\"11\\/2017\",\"info\":\"<p>* Government funded blog and magazine<\\/p><p>* Self managed Wordpress content<\\/p><p>* Fully customized Theme and Functionalities<\\/p><p>* Progressively enhanced content (no scripting needed)<\\/p>\",\"thumbnail\":\"3\",\"suitable_color\":\"00ff00\",\"sort\":null,\"status\":\"1\",\"tags\":\"magazine,blog,cms,wordpress,progressive,enhancement,php\",\"synonyms\":null}', '{\"date\":\"11\\/2017\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-01 13:34:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(41, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 13:35:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(42, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 18, 1, '{\"id\":\"18\",\"table_name\":\"work\",\"column_name\":\"info\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"6\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"headings_h2\\\":\\\"h2\\\",\\\"headings\\\":\\\"h3\\\",\\\"headings_h3\\\":\\\"h3\\\",\\\"headings_h4\\\":\\\"h4\\\",\\\"blocks_blockquote\\\":\\\"blockquote\\\",\\\"blocks\\\":\\\"p\\\"}\"}', '{\"sort\":6,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"headings_h2\\\":\\\"h2\\\",\\\"headings\\\":\\\"h3\\\",\\\"headings_h3\\\":\\\"h3\\\",\\\"headings_h4\\\":\\\"h4\\\",\\\"blocks_blockquote\\\":\\\"blockquote\\\",\\\"blocks\\\":\\\"p\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"18\"}', NULL, NULL, 1, '2018-08-01 13:35:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(43, 'ENTRY', 'UPDATE', '1', 'work', 1, 1, '{\"id\":\"1\",\"title\":\"Nabuco Magazine and Blog\",\"url\":\"www.revistanabuco.com.br\",\"date\":\"11\\/2017\",\"info\":\"<ul>\\n<li>Government funded blog and magazine<\\/li>\\n<li>Self managed <strong>Wordpress<\\/strong> content<\\/li>\\n<li><strong>Fully customized<\\/strong> Theme and Functionalities<\\/li>\\n<li>Progressively enhanced content (<strong>no scripting needed<\\/strong>)<\\/li>\\n<\\/ul>\",\"thumbnail\":\"3\",\"suitable_color\":\"00ff00\",\"sort\":null,\"status\":\"1\",\"tags\":\"magazine,blog,cms,wordpress,progressive,enhancement,php\",\"synonyms\":null}', '{\"info\":\"<ul>\\n<li>Government funded blog and magazine<\\/li>\\n<li>Self managed <strong>Wordpress<\\/strong> content<\\/li>\\n<li><strong>Fully customized<\\/strong> Theme and Functionalities<\\/li>\\n<li>Progressively enhanced content (<strong>no scripting needed<\\/strong>)<\\/li>\\n<\\/ul>\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-01 13:36:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(44, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 25, 1, '{\"id\":\"25\",\"table_name\":\"work\",\"column_name\":\"status\",\"data_type\":\"TINYINT\",\"ui\":\"status\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"1\",\"required\":\"0\",\"sort\":\"2\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"status\\\"}\"}', '{\"sort\":2,\"options\":\"{\\\"id\\\":\\\"status\\\"}\",\"required\":false,\"ui\":\"status\",\"hidden_input\":true,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TINYINT\",\"id\":\"25\"}', NULL, NULL, 1, '2018-08-01 13:48:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(45, 'ENTRY', 'ADD', '1', 'directus_files', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"name\":\"00000000004.jpg\",\"title\":\"hero\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1600\",\"height\":\"600\",\"size\":\"180811\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:51:28\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 13:51:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(46, 'ENTRY', 'ADD', '1', 'general', 1, 1, '{\"id\":\"1\",\"main_title\":\"Pedro Torchio\",\"main_image\":\"4\",\"email_address\":\"pedro@torchiodev.com\"}', '[]', NULL, NULL, 1, '2018-08-01 13:51:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(47, 'FILES', 'UPDATE', '1', 'directus_files', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"name\":\"00000000002.jpg\",\"title\":\"Profile Picture\",\"location\":\"\",\"caption\":\"It\'s me, Pedro\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"profile\",\"width\":\"640\",\"height\":\"640\",\"size\":\"71148\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 12:47:07\",\"storage_adapter\":\"local\"}', '{\"title\":\"Profile Picture\",\"caption\":\"It\'s me, Pedro\",\"tags\":\"profile\",\"id\":\"2\"}', NULL, NULL, 1, '2018-08-01 14:45:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(48, 'FILES', 'UPDATE', '1', 'directus_files', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"name\":\"00000000004.jpg\",\"title\":\"Hero Image\",\"location\":\"Recife\",\"caption\":\"Hero image showing home town, Recife\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"recife,hero\",\"width\":\"1600\",\"height\":\"600\",\"size\":\"180811\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:51:28\",\"storage_adapter\":\"local\"}', '{\"title\":\"Hero Image\",\"location\":\"Recife\",\"caption\":\"Hero image showing home town, Recife\",\"tags\":\"recife,hero\",\"id\":\"4\"}', NULL, NULL, 1, '2018-08-01 14:46:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(49, 'FILES', 'UPDATE', '1', 'directus_files', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.jpg\",\"title\":\"Nabuco work thumbnail\",\"location\":\"Recife\",\"caption\":\"Screenshot of website, online magazine Nabuco\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"magazine,blog,joaquim,nabuco\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"288940\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:22:04\",\"storage_adapter\":\"local\"}', '{\"title\":\"Nabuco work thumbnail\",\"location\":\"Recife\",\"caption\":\"Screenshot of website, online magazine Nabuco\",\"tags\":\"magazine,blog,joaquim,nabuco\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-01 14:47:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(50, 'ENTRY', 'ADD', '1', 'directus_files', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.jpg\",\"title\":\"work thumbnail 0001 reato\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"263957\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:15:17\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 23:15:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(51, 'ENTRY', 'ADD', '2', 'work', 2, 1, '{\"id\":\"2\",\"title\":\"Reato Occupational Therapy\",\"url\":\"www.toreato.com.br\",\"date\":\"2015\",\"info\":\"<ul>\\n<li>Coorporate website<\\/li>\\n<li>Wordpress managed content<\\/li>\\n<li>Custom enhancements<\\/li>\\n<\\/ul>\",\"thumbnail\":\"5\",\"suitable_color\":\"206698\",\"sort\":null,\"status\":\"2\",\"tags\":\"coorporate,wordpress,health\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-01 23:15:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(52, 'ENTRY', 'UPDATE', '1', 'work', 1, 1, '{\"id\":\"1\",\"title\":\"Nabuco Magazine and Blog\",\"url\":\"www.revistanabuco.com.br\",\"date\":\"11\\/2017\",\"info\":\"<ul>\\n<li>Government funded blog and magazine<\\/li>\\n<li>Self managed <strong>Wordpress<\\/strong> content<\\/li>\\n<li><strong>Fully customized<\\/strong> Theme and Functionalities<\\/li>\\n<li>Progressively enhanced content (<strong>no scripting needed<\\/strong>)<\\/li>\\n<\\/ul>\",\"thumbnail\":\"3\",\"suitable_color\":\"00ff00\",\"sort\":null,\"status\":\"1\",\"tags\":\"magazine,blog,wordpress,progressive,enhancement,php,custom,theme\",\"synonyms\":null}', '{\"tags\":\"magazine,blog,wordpress,progressive,enhancement,php,custom,theme\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-01 23:15:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(53, 'ENTRY', 'ADD', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"work thumbnail 0002 losworlds\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 23:26:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(54, 'ENTRY', 'ADD', '3', 'work', 3, 1, '{\"id\":\"3\",\"title\":\"Lost Worlds Travel\",\"url\":\"http:\\/\\/www.lostworldstravel.com\\/\",\"date\":\"2016\",\"info\":\"<ul>\\n<li>Regular wordpress website<\\/li>\\n<li>Exclusively client managed content<\\/li>\\n<li>Custom newsletter functionality<\\/li>\\n<\\/ul>\",\"thumbnail\":\"6\",\"suitable_color\":\"f4524d\",\"sort\":null,\"status\":\"2\",\"tags\":\"travel,tourism,wordpress,coorporate\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-01 23:26:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(55, 'ENTRY', 'ADD', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"work thumbnail 0000 bitja\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-01 23:36:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(56, 'ENTRY', 'ADD', '4', 'work', 4, 1, '{\"id\":\"4\",\"title\":\"BitJ\\u00e1\",\"url\":\"www.bitja.com.br\",\"date\":\"2018\",\"info\":\"<ul>\\n<li>Online cryptocurrency market<\\/li>\\n<li>Single Page Application<\\/li>\\n<li>Restful API calls<\\/li>\\n<li>User management<\\/li>\\n<li>Dozens of different data models<\\/li>\\n<\\/ul>\",\"thumbnail\":\"7\",\"suitable_color\":\"499ea7\",\"sort\":null,\"status\":\"2\",\"tags\":\"spa,crypto,currency,vue,restful,api,system,application\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-01 23:36:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(57, 'FILES', 'UPDATE', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 Crypto Market\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '{\"title\":\"Bitj\\u00e1 Crypto Market\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market screenshot\",\"tags\":\"bitja,cryptocurrency,market,screenshot\",\"id\":\"7\"}', NULL, NULL, 1, '2018-08-01 23:38:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(58, 'FILES', 'UPDATE', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Screenshot\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '{\"title\":\"Lost Worlds Travel Screenshot\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website screenshot\",\"tags\":\"image,tourism,screenshot\",\"id\":\"6\"}', NULL, NULL, 1, '2018-08-01 23:39:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(59, 'FILES', 'UPDATE', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 cryptocurrency market screenshot\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '{\"title\":\"Bitj\\u00e1 cryptocurrency market screenshot\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"id\":\"7\"}', NULL, NULL, 1, '2018-08-01 23:40:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(60, 'FILES', 'UPDATE', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Screenshot\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '{\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"id\":\"6\"}', NULL, NULL, 1, '2018-08-01 23:41:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(61, 'FILES', 'UPDATE', '1', 'directus_files', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.jpg\",\"title\":\"Reato occupational therapy screenshot\",\"location\":\"Brazil\",\"caption\":\"Reato occupational therapy landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"reato,coorporate,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"263957\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:15:17\",\"storage_adapter\":\"local\"}', '{\"location\":\"Brazil\",\"title\":\"Reato occupational therapy screenshot\",\"caption\":\"Reato occupational therapy landing page screenshot\",\"tags\":\"reato,coorporate,wordpress\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-01 23:42:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(62, 'FILES', 'UPDATE', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 cryptocurrency market screenshot\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot,vue\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '{\"tags\":\"bitja,cryptocurrency,market,screenshot,vue\",\"id\":\"7\"}', NULL, NULL, 1, '2018-08-01 23:42:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(63, 'FILES', 'UPDATE', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Screenshot\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '{\"tags\":\"image,tourism,screenshot,wordpress\",\"id\":\"6\"}', NULL, NULL, 1, '2018-08-01 23:42:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(64, 'FILES', 'UPDATE', '1', 'directus_files', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.jpg\",\"title\":\"Reato occupational therapy screenshot\",\"location\":\"Brazil\",\"caption\":\"Reato occupational therapy landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"reato,coorporate,wordpress,health,occupational,therapy\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"263957\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:15:17\",\"storage_adapter\":\"local\"}', '{\"tags\":\"reato,coorporate,wordpress,health,occupational,therapy\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-01 23:43:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(65, 'FILES', 'UPDATE', '1', 'directus_files', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.jpg\",\"title\":\"Nabuco work thumbnail\",\"location\":\"Recife\",\"caption\":\"Screenshot of website, online magazine Nabuco\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"magazine,blog,joaquim,nabuco,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"288940\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:22:04\",\"storage_adapter\":\"local\"}', '{\"tags\":\"magazine,blog,joaquim,nabuco,wordpress\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-01 23:45:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(66, 'FILES', 'UPDATE', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Thumbnail\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '{\"title\":\"Lost Worlds Travel Thumbnail\",\"id\":\"6\"}', NULL, NULL, 1, '2018-08-01 23:48:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(67, 'FILES', 'UPDATE', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 cryptocurrency market thumbnail\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot,vue\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '{\"title\":\"Bitj\\u00e1 cryptocurrency market thumbnail\",\"id\":\"7\"}', NULL, NULL, 1, '2018-08-01 23:48:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(68, 'ENTRY', 'UPDATE', '4', 'work', 4, 1, '{\"id\":\"4\",\"title\":\"BitJ\\u00e1\",\"url\":\"www.bitja.com.br\",\"date\":\"2018\",\"info\":\"<ul>\\n<li>Online cryptocurrency market<\\/li>\\n<li>Single Page Application (<strong>SPA<\\/strong>)<\\/li>\\n<li><strong>Restful API<\\/strong> calls<\\/li>\\n<li>User management<\\/li>\\n<li>Dozens of <strong>different data models<\\/strong><\\/li>\\n<\\/ul>\",\"thumbnail\":\"7\",\"suitable_color\":\"499ea7\",\"sort\":null,\"status\":\"2\",\"tags\":\"spa,crypto,currency,vue,restful,api,system,application\",\"synonyms\":null}', '{\"info\":\"<ul>\\n<li>Online cryptocurrency market<\\/li>\\n<li>Single Page Application (<strong>SPA<\\/strong>)<\\/li>\\n<li><strong>Restful API<\\/strong> calls<\\/li>\\n<li>User management<\\/li>\\n<li>Dozens of <strong>different data models<\\/strong><\\/li>\\n<\\/ul>\",\"id\":\"4\"}', NULL, NULL, 1, '2018-08-01 23:50:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(69, 'ENTRY', 'ADD', '5', 'work', 5, 1, '{\"id\":\"5\",\"title\":null,\"url\":null,\"date\":null,\"info\":\"\",\"thumbnail\":null,\"suitable_color\":null,\"sort\":null,\"status\":\"2\",\"tags\":null,\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-01 23:51:14', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(70, 'ENTRY', 'DELETE', '5', 'work', 5, 1, '{\"id\":\"5\",\"title\":null,\"url\":null,\"date\":null,\"info\":\"\",\"thumbnail\":null,\"suitable_color\":null,\"sort\":null,\"status\":\"0\",\"tags\":null,\"synonyms\":null}', '{\"status\":0,\"id\":\"5\"}', NULL, NULL, 1, '2018-08-01 23:51:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(71, 'ENTRY', 'UPDATE', '1', 'directus_files', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"name\":\"00000000003.jpg\",\"title\":\"Nabuco work thumbnail\",\"location\":\"Recife\",\"caption\":\"Screenshot of website, online magazine Nabuco\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"magazine,blog,joaquim,nabuco,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"288940\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 13:22:04\",\"storage_adapter\":\"local\"}', '{\"id\":3,\"status\":1,\"name\":\"00000000003.jpg\",\"title\":\"Nabuco work thumbnail\",\"location\":\"Recife\",\"caption\":\"Screenshot of website, online magazine Nabuco\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"magazine,blog,joaquim,nabuco,wordpress\",\"width\":1468,\"height\":1468,\"size\":288940,\"embed_id\":null,\"user\":1,\"date_uploaded\":\"2018-08-01T09:22:04-04:00\",\"storage_adapter\":\"local\"}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(72, 'ENTRY', 'UPDATE', '1', 'work', 1, 1, '{\"id\":\"1\",\"title\":\"Nabuco Magazine and Blog\",\"url\":\"www.revistanabuco.com.br\",\"date\":\"11\\/2017\",\"info\":\"<ul>\\n<li>Government funded blog and magazine<\\/li>\\n<li>Self managed <strong>Wordpress<\\/strong> content<\\/li>\\n<li><strong>Fully customized<\\/strong> Theme and Functionalities<\\/li>\\n<li>Progressively enhanced content (<strong>no scripting needed<\\/strong>)<\\/li>\\n<\\/ul>\",\"thumbnail\":\"3\",\"suitable_color\":\"00ff00\",\"sort\":null,\"status\":\"1\",\"tags\":\"magazine,blog,wordpress,progressive,enhancement,php,custom,theme\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":1,\"thumbnail\":3}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(73, 'ENTRY', 'UPDATE', '1', 'directus_files', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"name\":\"00000000005.jpg\",\"title\":\"Reato occupational therapy screenshot\",\"location\":\"Brazil\",\"caption\":\"Reato occupational therapy landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"reato,coorporate,wordpress,health,occupational,therapy\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"263957\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:15:17\",\"storage_adapter\":\"local\"}', '{\"id\":5,\"status\":1,\"name\":\"00000000005.jpg\",\"title\":\"Reato occupational therapy screenshot\",\"location\":\"Brazil\",\"caption\":\"Reato occupational therapy landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"reato,coorporate,wordpress,health,occupational,therapy\",\"width\":1468,\"height\":1468,\"size\":263957,\"embed_id\":null,\"user\":1,\"date_uploaded\":\"2018-08-01T19:15:17-04:00\",\"storage_adapter\":\"local\"}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(74, 'ENTRY', 'UPDATE', '2', 'work', 2, 1, '{\"id\":\"2\",\"title\":\"Reato Occupational Therapy\",\"url\":\"www.toreato.com.br\",\"date\":\"2015\",\"info\":\"<ul>\\n<li>Coorporate website<\\/li>\\n<li>Wordpress managed content<\\/li>\\n<li>Custom enhancements<\\/li>\\n<\\/ul>\",\"thumbnail\":\"5\",\"suitable_color\":\"206698\",\"sort\":null,\"status\":\"1\",\"tags\":\"coorporate,wordpress,health\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":2,\"thumbnail\":5}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(75, 'ENTRY', 'UPDATE', '1', 'directus_files', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Thumbnail\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot,wordpress\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"210205\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:26:46\",\"storage_adapter\":\"local\"}', '{\"id\":6,\"status\":1,\"name\":\"00000000006.jpg\",\"title\":\"Lost Worlds Travel Thumbnail\",\"location\":\"USA\",\"caption\":\"Lost worlds travel tourism website top image screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"image,tourism,screenshot,wordpress\",\"width\":1468,\"height\":1468,\"size\":210205,\"embed_id\":null,\"user\":1,\"date_uploaded\":\"2018-08-01T19:26:46-04:00\",\"storage_adapter\":\"local\"}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(76, 'ENTRY', 'UPDATE', '3', 'work', 3, 1, '{\"id\":\"3\",\"title\":\"Lost Worlds Travel\",\"url\":\"http:\\/\\/www.lostworldstravel.com\\/\",\"date\":\"2016\",\"info\":\"<ul>\\n<li>Regular wordpress website<\\/li>\\n<li>Exclusively client managed content<\\/li>\\n<li>Custom newsletter functionality<\\/li>\\n<\\/ul>\",\"thumbnail\":\"6\",\"suitable_color\":\"f4524d\",\"sort\":null,\"status\":\"1\",\"tags\":\"travel,tourism,wordpress,coorporate\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":3,\"thumbnail\":6}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(77, 'ENTRY', 'UPDATE', '1', 'directus_files', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 cryptocurrency market thumbnail\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot,vue\",\"width\":\"1468\",\"height\":\"1468\",\"size\":\"262778\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-01 23:36:44\",\"storage_adapter\":\"local\"}', '{\"id\":7,\"status\":1,\"name\":\"00000000007.jpg\",\"title\":\"Bitj\\u00e1 cryptocurrency market thumbnail\",\"location\":\"Brazil\",\"caption\":\"Bitj\\u00e1, cryptocurrency web market landing page screenshot\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"bitja,cryptocurrency,market,screenshot,vue\",\"width\":1468,\"height\":1468,\"size\":262778,\"embed_id\":null,\"user\":1,\"date_uploaded\":\"2018-08-01T19:36:44-04:00\",\"storage_adapter\":\"local\"}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(78, 'ENTRY', 'UPDATE', '4', 'work', 4, 1, '{\"id\":\"4\",\"title\":\"BitJ\\u00e1\",\"url\":\"www.bitja.com.br\",\"date\":\"2018\",\"info\":\"<ul>\\n<li>Online cryptocurrency market<\\/li>\\n<li>Single Page Application (<strong>SPA<\\/strong>)<\\/li>\\n<li><strong>Restful API<\\/strong> calls<\\/li>\\n<li>User management<\\/li>\\n<li>Dozens of <strong>different data models<\\/strong><\\/li>\\n<\\/ul>\",\"thumbnail\":\"7\",\"suitable_color\":\"499ea7\",\"sort\":null,\"status\":\"1\",\"tags\":\"spa,crypto,currency,vue,restful,api,system,application\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":4,\"thumbnail\":7}', NULL, NULL, 1, '2018-08-01 23:52:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(79, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 27, 1, '{\"id\":\"27\",\"table_name\":\"service\",\"column_name\":\"bubble_header\",\"data_type\":\"VARCHAR\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"27\"}', NULL, NULL, 1, '2018-08-02 12:44:44', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(80, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 27, 1, '{\"id\":\"27\",\"table_name\":\"service\",\"column_name\":\"bubble_header\",\"data_type\":\"VARCHAR\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"27\"}', NULL, NULL, 1, '2018-08-02 12:45:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(81, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 27, 1, '{\"id\":\"27\",\"table_name\":\"service\",\"column_name\":\"bubble_header\",\"data_type\":\"VARCHAR\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"toolbar_options_alignment\\\":\\\"alignment\\\",\\\"toolbar_options\\\":\\\"inline,alignment,table,undo,redo,subscript,superscript,bullist,numlist,link,unlink,image,media,paste\\\",\\\"alignment_alignleft\\\":\\\"alignleft\\\",\\\"alignment\\\":\\\"alignleft,aligncenter,alignright,alignjustify\\\",\\\"alignment_aligncenter\\\":\\\"aligncenter\\\",\\\"alignment_alignright\\\":\\\"alignright\\\",\\\"alignment_alignjustify\\\":\\\"alignjustify\\\",\\\"max_height\\\":\\\"200\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\",\\\"toolbar_options_alignment\\\":\\\"alignment\\\",\\\"toolbar_options\\\":\\\"inline,alignment,table,undo,redo,subscript,superscript,bullist,numlist,link,unlink,image,media,paste\\\",\\\"alignment_alignleft\\\":\\\"alignleft\\\",\\\"alignment\\\":\\\"alignleft,aligncenter,alignright,alignjustify\\\",\\\"alignment_aligncenter\\\":\\\"aligncenter\\\",\\\"alignment_alignright\\\":\\\"alignright\\\",\\\"alignment_alignjustify\\\":\\\"alignjustify\\\",\\\"max_height\\\":\\\"200\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"27\"}', NULL, NULL, 1, '2018-08-02 12:46:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(82, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 28, 1, '{\"id\":\"28\",\"table_name\":\"service\",\"column_name\":\"bubble_text\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"5\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"sort\":5,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"28\"}', NULL, NULL, 1, '2018-08-02 12:46:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(83, 'ENTRY', 'ADD', '1', 'service', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Self Managed Website\",\"bubble_header\":\"<p>You change the content yourself. <strong>No skills required.<\\/strong><\\/p>\",\"bubble_text\":\"<p>It\'s much cheaper to be able to update all the information in the website without needing to reach for any service provider.<br \\/><strong>Ideal for small companies.<\\/strong><\\/p>\",\"tags\":\"wordpress,cms,self,managed,website\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 12:51:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(84, 'ENTRY', 'ADD', '2', 'service', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Blog\",\"bubble_header\":\"<p>Reach the world and let it reach back.<\\/p>\",\"bubble_text\":\"<p>Informational&nbsp;website&nbsp;consisting of discrete, often informal&nbsp;diary-style text.<\\/p>\",\"tags\":\"blog,cms,wordpress,diary,personal\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 12:57:28', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(85, 'ENTRY', 'ADD', '3', 'service', 3, 1, '{\"id\":\"3\",\"status\":\"2\",\"sort\":null,\"title\":\"E-commerce\",\"bubble_header\":\"<p>Let\'s make it <strong>easy to find&nbsp;<\\/strong>your products or services.<\\/p>\",\"bubble_text\":\"<p>Whenever you buy and sell something using the Internet, you&rsquo;re involved in e-commerce<\\/p>\",\"tags\":\"commerce,sell,products,services\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 13:16:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(86, 'ENTRY', 'UPDATE', '3', 'service', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"E-commerce\",\"bubble_header\":\"<p>Let\'s make it <strong>easy to find&nbsp;<\\/strong>your products or services.<\\/p>\",\"bubble_text\":\"<p>Whenever you buy and sell something using the Internet, you&rsquo;re involved in e-commerce<\\/p>\",\"tags\":\"commerce,sell,products,services\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":3}', NULL, NULL, 1, '2018-08-02 13:16:21', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(87, 'ENTRY', 'ADD', '4', 'service', 4, 1, '{\"id\":\"4\",\"status\":\"2\",\"sort\":null,\"title\":\"Web App\",\"bubble_header\":\"<p>It\'s a website, but also a <strong>mobile app.<\\/strong><\\/p>\",\"bubble_text\":\"<p><span style=\\\"text-decoration: underline;\\\">Progressive<\\/span> Web Apps are:<\\/p>\\n<ul>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#reliable\\\"><strong>Reliable<\\/strong><\\/a>&nbsp;- Load instantly and never show the not found error page, even in bad network.<\\/li>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#fast\\\"><strong>Fast<\\/strong><\\/a>&nbsp;- Respond quickly to user interactions with silky smooth animations.<\\/li>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#engaging\\\"><strong>Engaging<\\/strong><\\/a>&nbsp;- Feel like a natural app on the device, with an immersive user experience.<\\/li>\\n<\\/ul>\",\"tags\":\"pwa,progressive,web,app,application,mobile,system\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 13:20:41', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(88, 'ENTRY', 'UPDATE', '4', 'service', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Web App\",\"bubble_header\":\"<p>It\'s a website, but also a <strong>mobile app.<\\/strong><\\/p>\",\"bubble_text\":\"<p><span style=\\\"text-decoration: underline;\\\">Progressive<\\/span> Web Apps are:<\\/p>\\n<ul>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#reliable\\\"><strong>Reliable<\\/strong><\\/a>&nbsp;- Load instantly and never show the not found error page, even in bad network.<\\/li>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#fast\\\"><strong>Fast<\\/strong><\\/a>&nbsp;- Respond quickly to user interactions with silky smooth animations.<\\/li>\\n<li><a href=\\\"https:\\/\\/developers.google.com\\/web\\/progressive-web-apps\\/#engaging\\\"><strong>Engaging<\\/strong><\\/a>&nbsp;- Feel like a natural app on the device, with an immersive user experience.<\\/li>\\n<\\/ul>\",\"tags\":\"pwa,progressive,web,app,application,mobile,system\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":4}', NULL, NULL, 1, '2018-08-02 13:20:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(89, 'ENTRY', 'ADD', '5', 'service', 5, 1, '{\"id\":\"5\",\"status\":\"2\",\"sort\":null,\"title\":\"Web APIs\",\"bubble_header\":\"<p>Provide your data to different services and use cases.<\\/p>\",\"bubble_text\":\"<p>By providing data, you allow people, or maybe yourself, to give it many different usages that you couldn\'t expect. Still keeping your data secure.<\\/p>\",\"tags\":null,\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 13:36:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(90, 'ENTRY', 'UPDATE', '4', 'service', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Web Application\",\"bubble_header\":\"<p>It\'s a website, but also a <strong>mobile app.<\\/strong><\\/p>\",\"bubble_text\":\"<p><a title=\\\"pwa info, on theverge.com\\\" href=\\\"https:\\/\\/www.theverge.com\\/circuitbreaker\\/2018\\/4\\/11\\/17207964\\/web-apps-quality-pwa-webassembly-houdini\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Progressive web apps<\\/a> are reliable, fast and feel like a natural app on the device. Maybe an application to <strong>manage your products<\\/strong>, maybe a mobile app to <strong>engage people.<\\/strong><\\/p>\",\"tags\":\"pwa,progressive,web,app,application,mobile,system\",\"synonyms\":null}', '{\"bubble_text\":\"<p><a title=\\\"pwa info, on theverge.com\\\" href=\\\"https:\\/\\/www.theverge.com\\/circuitbreaker\\/2018\\/4\\/11\\/17207964\\/web-apps-quality-pwa-webassembly-houdini\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Progressive web apps<\\/a> are reliable, fast and feel like a natural app on the device. Maybe an application to <strong>manage your products<\\/strong>, maybe a mobile app to <strong>engage people.<\\/strong><\\/p>\",\"title\":\"Web Application\",\"id\":\"4\"}', NULL, NULL, 1, '2018-08-02 13:43:18', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(91, 'ENTRY', 'UPDATE', '5', 'service', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"Web APIs\",\"bubble_header\":\"<p>Provide your data to different services and use cases.<\\/p>\",\"bubble_text\":\"<p>By providing data, you allow people, or maybe yourself, to give it many different usages that you couldn\'t expect. Still keeping your data secure.<\\/p>\",\"tags\":null,\"synonyms\":null}', '{\"status\":\"1\",\"id\":5}', NULL, NULL, 1, '2018-08-02 13:43:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(92, 'ENTRY', 'UPDATE', '3', 'service', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"E-commerce\",\"bubble_header\":\"<p>Make it <strong>easy to find&nbsp;<\\/strong>your products or services.<\\/p>\",\"bubble_text\":\"<p>Whenever you buy and sell something using the Internet, you&rsquo;re involved in e-commerce<\\/p>\",\"tags\":\"commerce,sell,products,services\",\"synonyms\":null}', '{\"bubble_header\":\"<p>Make it <strong>easy to find&nbsp;<\\/strong>your products or services.<\\/p>\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-02 13:44:00', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(93, 'ENTRY', 'UPDATE', '5', 'service', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"Web APIs\",\"bubble_header\":\"<p>Provide data to different use cases.<\\/p>\",\"bubble_text\":\"<p>By providing data, you allow people, or maybe yourself, to give it many different usages that you couldn\'t expect. Still keeping your data secure.<\\/p>\",\"tags\":null,\"synonyms\":null}', '{\"bubble_header\":\"<p>Provide data to different use cases.<\\/p>\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-02 13:44:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(94, 'ENTRY', 'UPDATE', '5', 'service', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"Web APIs\",\"bubble_header\":\"<p>Provide data for different use cases.<\\/p>\",\"bubble_text\":\"<p>By providing data, you allow people, or maybe yourself, to give it many different usages that you couldn\'t expect. Still keeping your data secure.<\\/p>\",\"tags\":null,\"synonyms\":null}', '{\"bubble_header\":\"<p>Provide data for different use cases.<\\/p>\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-02 13:44:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(95, 'ENTRY', 'ADD', '1', 'skill', 1, 1, '{\"id\":\"1\",\"status\":\"2\",\"sort\":null,\"title\":\"Vue\",\"text\":\"Light data driven web client framework. In my opinion the best one out there.\",\"level\":\"10\",\"tags\":\"javascript,data,driven,web,client,framework,pwa,application,app,frontend\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-02 18:53:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(96, 'ENTRY', 'UPDATE', '1', 'skill', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Vue\",\"text\":\"Light data driven web client framework. In my opinion the best one out there.\",\"level\":\"10\",\"tags\":\"javascript,data,driven,web,client,framework,pwa,application,app,frontend\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":1}', NULL, NULL, 1, '2018-08-02 18:53:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(97, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-06 11:53:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(98, 'ENTRY', 'ADD', '1', 'directus_files', 8, 1, '{\"id\":\"8\",\"status\":\"1\",\"name\":\"00000000008.jpg\",\"title\":\"avatar edit\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/jpeg\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"640\",\"height\":\"640\",\"size\":\"71148\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-06 12:07:15\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-06 12:07:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(99, 'ENTRY', 'UPDATE', '1', 'directus_users', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"first_name\":\"Admin\",\"last_name\":\"User\",\"email\":\"pedro@torchiodev.com\",\"password\":\"$2y$12$PnnQJwsVk.6dKCK6orhqceezUe54fdHTBIUrR7w69ZWnIIpfrAX9C\",\"salt\":\"38HB9upuqPCFGUrc\",\"token\":\"9gLLRfyNxBtQV392IVU4aUiPDNYsG20G\",\"access_token\":\"6518a7705cf08f1299ff65f69d993a141d9d95b0\",\"reset_token\":\"\",\"reset_expiration\":null,\"position\":\"\",\"email_messages\":\"1\",\"last_login\":\"2018-08-06 11:53:58\",\"last_access\":\"2018-08-06 12:06:50\",\"last_page\":\"{\\\"path\\\":\\\"users\\/1\\\",\\\"route\\\":\\\"user\\\"}\",\"ip\":\"::1\",\"group\":\"1\",\"avatar\":\"\\/\\/www.gravatar.com\\/avatar\\/92e5954b8e626cb83f7442005e059c8a?s=200&d=identicon&r=g\",\"avatar_file_id\":\"8\",\"location\":null,\"phone\":null,\"address\":null,\"city\":null,\"state\":null,\"country\":null,\"zip\":null,\"language\":\"en\",\"timezone\":\"America\\/New_York\",\"invite_token\":null,\"invite_date\":null,\"invite_sender\":null,\"invite_accepted\":null}', '{\"avatar_file_id\":8,\"id\":\"1\"}', NULL, NULL, 1, '2018-08-06 12:07:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(100, 'ENTRY', 'UPDATE', '3', 'work', 3, 1, '{\"id\":\"3\",\"title\":\"Lost Worlds Travel\",\"url\":\"www.lostworldstravel.com\\/\",\"date\":\"2016\",\"info\":\"<ul>\\n<li>Regular wordpress website<\\/li>\\n<li>Exclusively client managed content<\\/li>\\n<li>Custom newsletter functionality<\\/li>\\n<\\/ul>\",\"thumbnail\":\"6\",\"suitable_color\":\"f4524d\",\"sort\":null,\"status\":\"1\",\"tags\":\"travel,tourism,wordpress,coorporate\",\"synonyms\":null}', '{\"url\":\"www.lostworldstravel.com\\/\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-06 12:58:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(101, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-06 12:59:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(102, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-06 13:44:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36'),
(103, 'ENTRY', 'UPDATE', '1', 'skill', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Vue\",\"text\":\"Lightweight data driven web client framework. Been using it constantly since 2016.\",\"level\":\"10\",\"tags\":\"javascript,data,driven,web,client,framework,pwa,application,app,frontend\",\"synonyms\":null}', '{\"text\":\"Lightweight data driven web client framework. Been using it constantly since 2016.\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-07 22:18:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(104, 'ENTRY', 'UPDATE', '1', 'skill', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Vue\",\"text\":\"Lightweight data driven web client framework. Been using it constantly since 2016.\",\"level\":\"10\",\"tags\":\"javascript,data,driven,web,client,framework,pwa,application,app,frontend,reactive\",\"synonyms\":null}', '{\"tags\":\"javascript,data,driven,web,client,framework,pwa,application,app,frontend,reactive\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-07 22:22:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(105, 'ENTRY', 'ADD', '2', 'skill', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"title\":\"Angular\",\"text\":\"Webclient framework. Took a course on it in 2015.\",\"level\":\"6\",\"tags\":\"javascript,client,framework,pwa,web,data,driven,reactive,application,app,frontend\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:22:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(106, 'ENTRY', 'UPDATE', '2', 'skill', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Angular\",\"text\":\"Webclient framework. Took a course on it in 2015.\",\"level\":\"6\",\"tags\":\"javascript,client,framework,pwa,web,data,driven,reactive,application,app,frontend\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":2}', NULL, NULL, 1, '2018-08-07 22:22:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(107, 'ENTRY', 'ADD', '3', 'skill', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Webpack\",\"text\":\"Incredible Javascript module bundler. A little complex, but got the hang of it. Using since 2016.\",\"level\":\"8\",\"tags\":\"javascript,module,bundler,tool,web\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:28:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(108, 'ENTRY', 'ADD', '4', 'skill', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Gulp\",\"text\":\"Great tool for automating development tasks\",\"level\":\"7\",\"tags\":\"javascript,tool,web,tasks,development,optimization\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:29:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(109, 'ENTRY', 'ADD', '5', 'skill', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"PHP\",\"text\":\"The most popular server side scripting language. Base of Wordpress CMS. Used a lot since my first in\",\"level\":\"10\",\"tags\":\"language,server,api\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:38:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(110, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 33, 1, '{\"id\":\"33\",\"table_name\":\"skill\",\"column_name\":\"text\",\"data_type\":\"VARCHAR\",\"ui\":\"text_input\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"text_input\\\"}\",\"required\":false,\"ui\":\"text_input\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"33\"}', NULL, NULL, 1, '2018-08-07 22:39:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(111, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 33, 1, '{\"id\":\"33\",\"table_name\":\"skill\",\"column_name\":\"text\",\"data_type\":\"VARCHAR\",\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"textarea\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"textarea\\\"}\",\"required\":false,\"ui\":\"textarea\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"33\"}', NULL, NULL, 1, '2018-08-07 22:40:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(112, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 33, 1, '{\"id\":\"33\",\"table_name\":\"skill\",\"column_name\":\"text\",\"data_type\":\"VARCHAR\",\"ui\":\"textarea\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"4\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"textarea\\\",\\\"rows\\\":\\\"4\\\"}\"}', '{\"sort\":4,\"options\":\"{\\\"id\\\":\\\"textarea\\\",\\\"rows\\\":\\\"4\\\"}\",\"required\":false,\"ui\":\"textarea\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"VARCHAR\",\"id\":\"33\"}', NULL, NULL, 1, '2018-08-07 22:40:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(113, 'ENTRY', 'UPDATE', '5', 'skill', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"PHP\",\"text\":\"The most popular server side scripting language. Base of Wordpress CMS. Used a lot since my first internship as a Web developer in 2014.\",\"level\":\"10\",\"tags\":\"language,server,api\",\"synonyms\":null}', '{\"text\":\"The most popular server side scripting language. Base of Wordpress CMS. Used a lot since my first internship as a Web developer in 2014.\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-07 22:41:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(114, 'ENTRY', 'ADD', '6', 'skill', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"sort\":null,\"title\":\"Java\",\"text\":\"General purpose, cross platform programming language. Base of Android apps and many web based systems.\",\"level\":\"8\",\"tags\":\"language,web,cross-platform,application,app,system\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:45:43', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(115, 'ENTRY', 'ADD', '7', 'skill', 7, 1, '{\"id\":\"7\",\"status\":\"2\",\"sort\":null,\"title\":\"Typescript\",\"text\":\"A Javascript superset language. It\'s typed and very reliable. Ideal for complex applications. Base of Angular and I like to use with Vue.\",\"level\":\"7\",\"tags\":\"language,superset,javascript,vue,angular\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 22:47:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(116, 'ENTRY', 'UPDATE', '6', 'skill', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"sort\":null,\"title\":\"Java\",\"text\":\"General purpose, cross platform programming language. Base of Android apps and many web based systems. First language I learned, in 2013.\",\"level\":\"8\",\"tags\":\"language,web,cross-platform,application,app,system\",\"synonyms\":null}', '{\"text\":\"General purpose, cross platform programming language. Base of Android apps and many web based systems. First language I learned, in 2013.\",\"id\":\"6\"}', NULL, NULL, 1, '2018-08-07 22:48:13', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36');
INSERT INTO `directus_activity` (`id`, `type`, `action`, `identifier`, `table_name`, `row_id`, `user`, `data`, `delta`, `parent_id`, `parent_table`, `parent_changed`, `datetime`, `logged_ip`, `user_agent`) VALUES
(117, 'ENTRY', 'UPDATE', '7', 'skill', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"sort\":null,\"title\":\"Typescript\",\"text\":\"A Javascript superset language. It\'s typed and very reliable. Ideal for complex applications. Base of Angular and I like to use with Vue.\",\"level\":\"7\",\"tags\":\"language,superset,javascript,vue,angular\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":7}', NULL, NULL, 1, '2018-08-07 22:48:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(118, 'ENTRY', 'UPDATE', '7', 'skill', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"sort\":null,\"title\":\"Typescript\",\"text\":\"A Javascript superset language. Typed and very reliable. Ideal for complex applications. Base of Angular and I like to use it with Vue.\",\"level\":\"7\",\"tags\":\"language,superset,javascript,vue,angular\",\"synonyms\":null}', '{\"text\":\"A Javascript superset language. Typed and very reliable. Ideal for complex applications. Base of Angular and I like to use it with Vue.\",\"id\":\"7\"}', NULL, NULL, 1, '2018-08-07 23:14:40', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(119, 'ENTRY', 'ADD', '8', 'skill', 8, 1, '{\"id\":\"8\",\"status\":\"2\",\"sort\":null,\"title\":\"C++\",\"text\":\"Took a discipline on it at Roger Williams University, USA. Never used in real life applications.\",\"level\":\"3\",\"tags\":\"language\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:18:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(120, 'ENTRY', 'UPDATE', '8', 'skill', 8, 1, '{\"id\":\"8\",\"status\":\"1\",\"sort\":null,\"title\":\"C++\",\"text\":\"Took a discipline on it at Roger Williams University, USA. Never used in real life applications.\",\"level\":\"3\",\"tags\":\"language\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":8}', NULL, NULL, 1, '2018-08-07 23:19:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(121, 'ENTRY', 'ADD', '9', 'skill', 9, 1, '{\"id\":\"9\",\"status\":\"1\",\"sort\":null,\"title\":\"C#\",\"text\":\"Worked with it when exploring Unity3D game development platform. Shares some similarities with Java.\",\"level\":\"5\",\"tags\":\"language\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:25:35', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(122, 'ENTRY', 'ADD', '10', 'skill', 10, 1, '{\"id\":\"10\",\"status\":\"1\",\"sort\":null,\"title\":\"Javascript\",\"text\":\"Client side scripting language. Responsible for all the interaction between user and application.\",\"level\":\"9\",\"tags\":\"language,web,scripting,client,frontend,interaction,ui,ux\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:28:25', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(123, 'ENTRY', 'UPDATE', '5', 'skill', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"title\":\"PHP\",\"text\":\"The most popular server side scripting language. Base of Wordpress CMS. Used a lot since my first internship as a Web developer in 2014.\",\"level\":\"10\",\"tags\":\"language,server,api,backend,web\",\"synonyms\":null}', '{\"tags\":\"language,server,api,backend,web\",\"id\":\"5\"}', NULL, NULL, 1, '2018-08-07 23:28:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(124, 'ENTRY', 'ADD', '11', 'skill', 11, 1, '{\"id\":\"11\",\"status\":\"2\",\"sort\":null,\"title\":\"HTML\",\"text\":\"The most basic language in web development. Gives structure to elements and in the fifth version also provides greater user interaction by default.\",\"level\":\"8\",\"tags\":\"language,web,frontend\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:32:27', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(125, 'ENTRY', 'ADD', '12', 'skill', 12, 1, '{\"id\":\"12\",\"status\":\"1\",\"sort\":null,\"title\":\"CSS\",\"text\":\"Styles webpages. In the third version can provide great animation to increase user experience.\",\"level\":null,\"tags\":\"language,styling,ui,ux\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:38:29', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(126, 'ENTRY', 'UPDATE', '11', 'skill', 11, 1, '{\"id\":\"11\",\"status\":\"1\",\"sort\":null,\"title\":\"HTML\",\"text\":\"The most basic language in web development. Gives structure to elements and in the fifth version also provides greater user interaction by default.\",\"level\":\"8\",\"tags\":\"language,web,frontend\",\"synonyms\":null}', '{\"status\":\"1\",\"id\":11}', NULL, NULL, 1, '2018-08-07 23:38:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(127, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-07 23:47:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(128, 'ENTRY', 'ADD', '13', 'skill', 13, 1, '{\"id\":\"13\",\"status\":\"1\",\"sort\":null,\"title\":\"SCSS\",\"text\":\"A superset language of CSS. Gives it more processing power and reusability.\",\"level\":\"8\",\"tags\":\"language,styling,frontend,client\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:48:30', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(129, 'ENTRY', 'UPDATE', '12', 'skill', 12, 1, '{\"id\":\"12\",\"status\":\"1\",\"sort\":null,\"title\":\"CSS\",\"text\":\"Styles webpages. In the third version can provide great animation to increase user experience.\",\"level\":\"10\",\"tags\":\"language,styling,ui,ux,frontend\",\"synonyms\":null}', '{\"tags\":\"language,styling,ui,ux,frontend\",\"level\":\"10\",\"id\":\"12\"}', NULL, NULL, 1, '2018-08-07 23:48:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(130, 'ENTRY', 'ADD', '14', 'skill', 14, 1, '{\"id\":\"14\",\"status\":\"1\",\"sort\":null,\"title\":\"Software Engineering\",\"text\":\"One of the most valued practices where I graduated. Took many courses on it.\",\"level\":\"8\",\"tags\":\"practice,engineering,software,study,discipline\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:52:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(131, 'ENTRY', 'ADD', '15', 'skill', 15, 1, '{\"id\":\"15\",\"status\":\"1\",\"sort\":null,\"title\":\"Wordpress\",\"text\":\"The most popular CMS. It\'s more than just a content management system. Makes it possible to transform simple websites in modular applications, with pl\",\"level\":\"10\",\"tags\":\"cms,wordpress,web,backend,php\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:54:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(132, 'ENTRY', 'ADD', '16', 'skill', 16, 1, '{\"id\":\"16\",\"status\":\"1\",\"sort\":null,\"title\":\"Directus\",\"text\":\"A great PHP CMS. Light, simple and intuitive. Great to keep data and application completely independent.\",\"level\":\"8\",\"tags\":\"cms,php,backend,api\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-07 23:59:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(133, 'ENTRY', 'UPDATE', '15', 'skill', 15, 1, '{\"id\":\"15\",\"status\":\"1\",\"sort\":null,\"title\":\"Wordpress\",\"text\":\"The most popular CMS. It\'s more than just a content management system. Makes it possible to transform simple websites in modular applications.\",\"level\":\"10\",\"tags\":\"cms,wordpress,web,backend,php,api,restful\",\"synonyms\":null}', '{\"tags\":\"cms,wordpress,web,backend,php,api,restful\",\"text\":\"The most popular CMS. It\'s more than just a content management system. Makes it possible to transform simple websites in modular applications.\",\"id\":\"15\"}', NULL, NULL, 1, '2018-08-07 23:59:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(134, 'ENTRY', 'UPDATE', '16', 'skill', 16, 1, '{\"id\":\"16\",\"status\":\"1\",\"sort\":null,\"title\":\"Directus\",\"text\":\"A great PHP CMS. Light, simple and intuitive. Great to keep data and application completely independent.\",\"level\":\"8\",\"tags\":\"cms,php,backend,api,restful\",\"synonyms\":null}', '{\"tags\":\"cms,php,backend,api,restful\",\"id\":\"16\"}', NULL, NULL, 1, '2018-08-07 23:59:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(135, 'ENTRY', 'ADD', '1', 'languages', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Portuguese\",\"display_title\":\"\"}', '[]', NULL, NULL, 1, '2018-08-08 00:03:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(136, 'ENTRY', 'UPDATE', '1', 'languages', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Portuguese\",\"display_title\":\"Native Portuguese\"}', '{\"display_title\":\"Native Portuguese\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-08 00:04:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(137, 'ENTRY', 'ADD', '2', 'languages', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"title\":\"English\",\"display_title\":\"Advanced English\"}', '[]', NULL, NULL, 1, '2018-08-08 00:04:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(138, 'ENTRY', 'ADD', '3', 'languages', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Spanish\",\"display_title\":\"Wouldn\'t get lost in Spain\"}', '[]', NULL, NULL, 1, '2018-08-08 00:05:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(139, 'ENTRY', 'UPDATE', '2', 'languages', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"English\",\"display_title\":\"Advanced English\"}', '{\"status\":\"1\",\"id\":2}', NULL, NULL, 1, '2018-08-08 00:05:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(140, 'ENTRY', 'ADD', '1', 'experience', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Researcher\\/Programmer\",\"tags\":\"research,physics,academic,mcnp,mcnpx\"}', '[]', NULL, NULL, 1, '2018-08-08 00:30:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(141, 'ENTRY', 'ADD', '1', 'experience_entry', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">During the Physics Bc course, I had the great opportunity to work in a research group, with government funded stipend. Whilst I didn\'t yet plan to engage in Computer Science, it was my first contact with application development.<\\/p><p class=\\\"inserted\\\">The group was studying industrial tomography for the petroleum cracking process, in different departments, seeking the construction of an efficient tomograph for that purpose. The departments were Engineering, Chemistry, Physics and Computer Science.<\\/p><p class=\\\"inserted\\\">My responsibility was to simulate the interaction between matter in the form of a cracking tube, and gama rays, in MCNP, a software and programming language developed by&nbsp;Los Alamos National Laboratory.<\\/p>\",\"date_range\":\"2009-2010\",\"location\":\"Recife, Brazil\",\"experience_id\":\"1\"}', '[]', 1, 'experience', 1, '2018-08-08 00:30:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(142, 'ENTRY', 'UPDATE', '1', 'experience', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Researcher\\/Programmer\",\"tags\":\"research,physics,academic,mcnp,mcnpx\"}', '{\"id\":\"1\"}', NULL, NULL, 1, '2018-08-08 00:30:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(143, 'ENTRY', 'UPDATE', '1', 'experience_entry', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">During the Physics Bc course, I had the great opportunity to work in a research group, with government funded stipend. Whilst I didn\'t yet plan to engage in Computer Science, it was my first contact with application development.<\\/p><p class=\\\"inserted\\\">The group was studying industrial tomography for the petroleum cracking process, in different departments, seeking the construction of an efficient tomograph for that purpose. The departments were Engineering, Chemistry, Physics and Computer Science.<\\/p><p class=\\\"inserted\\\">My responsibility was to simulate the interaction between matter in the form of a cracking tube, and gama rays, in MCNP, a software and programming language developed by&nbsp;Los Alamos National Laboratory.<\\/p>\",\"date_range\":\"2009-2010\",\"location\":\"Recife, Brazil\",\"experience_id\":\"1\"}', '{\"id\":1,\"experience_id\":1}', 1, 'experience', 1, '2018-08-08 00:30:58', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(144, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 44, 1, '{\"id\":\"44\",\"table_name\":\"experience_entry\",\"column_name\":\"text\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"44\"}', NULL, NULL, 1, '2018-08-08 00:41:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(145, 'ENTRY', 'ADD', '2', 'experience', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Backend Intern\",\"tags\":\"web,development,php,internship,intern\"}', '[]', NULL, NULL, 1, '2018-08-08 00:41:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(146, 'ENTRY', 'ADD', '2', 'experience_entry', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">My first contact with PHP, Database and CMS was as an intern in a web development company called \'Ser Digital\'.<br>I learned all the necessary skills to&nbsp;<\\/p><p class=\\\"inserted\\\">adapt their CMS \'Simples\' and display data stored in a database,.<\\/p>\",\"date_range\":null,\"location\":null,\"experience_id\":\"2\"}', '[]', 2, 'experience', 1, '2018-08-08 00:41:51', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(147, 'ENTRY', 'UPDATE', '2', 'experience', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Backend Intern\",\"tags\":\"web,development,php,internship,intern\"}', '{\"id\":\"2\"}', NULL, NULL, 1, '2018-08-08 00:42:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(148, 'ENTRY', 'UPDATE', '2', 'experience_entry', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\"><br><\\/p>\",\"date_range\":null,\"location\":null,\"experience_id\":null}', '{\"text\":\"<p class=\\\"inserted\\\"><br><\\/p>\",\"experience_id\":null,\"id\":2}', 2, 'experience', 1, '2018-08-08 00:42:23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(149, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 44, 1, '{\"id\":\"44\",\"table_name\":\"experience_entry\",\"column_name\":\"text\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"wysiwyg\\\"}\",\"required\":false,\"ui\":\"wysiwyg\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"44\"}', NULL, NULL, 1, '2018-08-08 00:42:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(150, 'ENTRY', 'UPDATE', NULL, 'directus_columns', 44, 1, '{\"id\":\"44\",\"table_name\":\"experience_entry\",\"column_name\":\"text\",\"data_type\":\"TEXT\",\"ui\":\"wysiwyg_full\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_left\":null,\"junction_key_right\":null,\"hidden_input\":\"0\",\"required\":\"0\",\"sort\":\"3\",\"comment\":\"\",\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\"}', '{\"sort\":3,\"options\":\"{\\\"id\\\":\\\"wysiwyg_full\\\"}\",\"required\":false,\"ui\":\"wysiwyg_full\",\"hidden_input\":false,\"comment\":\"\",\"relationship_type\":null,\"related_table\":null,\"junction_table\":null,\"junction_key_right\":null,\"junction_key_left\":null,\"data_type\":\"TEXT\",\"id\":\"44\"}', NULL, NULL, 1, '2018-08-08 00:43:46', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(151, 'ENTRY', 'DELETE', '2', 'experience_entry', 2, 1, '{\"id\":\"2\",\"status\":\"0\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\"><br><\\/p>\",\"date_range\":null,\"location\":null,\"experience_id\":null}', '{\"status\":0,\"id\":\"2\"}', NULL, NULL, 1, '2018-08-08 00:52:54', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(152, 'ENTRY', 'ADD', '3', 'experience_entry', 3, 1, '{\"id\":\"3\",\"status\":\"2\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">My first contact with PHP, Databases and CMSs was as an intern in a web development company called \'Ser Digital\'.<br \\/>There, I learned all the necessary skills to:<\\/p>\\n<ul>\\n<li class=\\\"inserted\\\">Manage data in a MySQL database<\\/li>\\n<li class=\\\"inserted\\\">Customize their proprietary CMS to customer\'s needs<\\/li>\\n<li class=\\\"inserted\\\">Process and display stored information<\\/li>\\n<\\/ul>\",\"date_range\":\"Apr - Jul \\/ 2014\",\"location\":\"Recife, Brazil\",\"experience_id\":\"2\"}', '[]', NULL, NULL, 1, '2018-08-08 00:55:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(153, 'ENTRY', 'UPDATE', '3', 'experience_entry', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">My first contact with PHP, Databases and CMSs was as an intern in a web development company called \'Ser Digital\'.<br \\/>There, I learned all the necessary skills to:<\\/p>\\n<ul>\\n<li class=\\\"inserted\\\">Manage data in a MySQL database<\\/li>\\n<li class=\\\"inserted\\\">Customize their proprietary CMS to customer\'s needs<\\/li>\\n<li class=\\\"inserted\\\">Process and display stored information<\\/li>\\n<\\/ul>\",\"date_range\":\"Apr - Jul \\/ 2014\",\"location\":\"Recife, Brazil\",\"experience_id\":\"2\"}', '{\"status\":\"1\",\"id\":3}', NULL, NULL, 1, '2018-08-08 00:55:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(154, 'ENTRY', 'UPDATE', '3', 'experience_entry', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">My first contact with PHP, Databases and CMSs was as an intern in a web development company called \'Ser Digital\'.<br \\/>There, I learned all the necessary skills to:<\\/p>\\n<ul>\\n<li class=\\\"inserted\\\">Manage data in a MySQL database<\\/li>\\n<li class=\\\"inserted\\\">Customize their proprietary CMS to customer\'s needs<\\/li>\\n<li class=\\\"inserted\\\">Process and display stored information<\\/li>\\n<\\/ul>\\n<p>Left them to study in United States for a year.<\\/p>\",\"date_range\":\"Apr - Jul \\/ 2014\",\"location\":\"Recife, Brazil\",\"experience_id\":\"2\"}', '{\"text\":\"<p class=\\\"inserted\\\">My first contact with PHP, Databases and CMSs was as an intern in a web development company called \'Ser Digital\'.<br \\/>There, I learned all the necessary skills to:<\\/p>\\n<ul>\\n<li class=\\\"inserted\\\">Manage data in a MySQL database<\\/li>\\n<li class=\\\"inserted\\\">Customize their proprietary CMS to customer\'s needs<\\/li>\\n<li class=\\\"inserted\\\">Process and display stored information<\\/li>\\n<\\/ul>\\n<p>Left them to study in United States for a year.<\\/p>\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-08 00:55:56', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(155, 'ENTRY', 'ADD', '4', 'experience_entry', 4, 1, '{\"id\":\"4\",\"status\":\"2\",\"sort\":null,\"text\":\"<p>After returning from United States I kept acting as an intern at \'Ser Digital\', but now with much more knowledge in PHP and specially in frontend development, which became my main focus in the company.<\\/p>\\n<p>After a few months, my previous American employers started to constantly send me work, so I swittched the daily commute to remote work, giving me more time to study.<\\/p>\",\"date_range\":\"Sep - Dec \\/ 2015\",\"location\":\"Recife, Brazil\",\"experience_id\":\"2\"}', '[]', NULL, NULL, 1, '2018-08-08 01:03:11', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(156, 'ENTRY', 'UPDATE', '4', 'experience_entry', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"text\":\"<p>After returning from United States I kept acting as an intern at \'Ser Digital\', but now with much more knowledge in PHP and specially in frontend development, which became my main focus in the company.<\\/p>\\n<p>After a few months, my previous American employers started to constantly send me work, so I swittched the daily commute to remote work, giving me more time to study.<\\/p>\",\"date_range\":\"Sep - Dec \\/ 2015\",\"location\":\"Recife, Brazil\",\"experience_id\":\"2\"}', '{\"status\":\"1\",\"id\":4}', NULL, NULL, 1, '2018-08-08 01:03:17', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(157, 'ENTRY', 'ADD', '3', 'experience', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Exchange in USA\",\"tags\":\"internship,exchange,english,computer science,rwu,roger williams,university,stipend,scholarship,government funded\"}', '[]', NULL, NULL, 1, '2018-08-08 01:34:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(158, 'ENTRY', 'ADD', '5', 'experience_entry', 5, 1, '{\"id\":\"5\",\"status\":\"1\",\"sort\":null,\"text\":\"<p>Backend and frontend Wordpress development intern in \'The Reckoner Group\', USA, during the summer break of my exchange year.<\\/p>\",\"date_range\":\"Jun - Jul \\/ 2015\",\"location\":\"Bristol, USA\",\"experience_id\":\"3\"}', '[]', NULL, NULL, 1, '2018-08-08 01:36:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(159, 'ENTRY', 'ADD', '6', 'experience_entry', 6, 1, '{\"id\":\"6\",\"status\":\"1\",\"sort\":null,\"text\":\"<p>Later, they contacted me to keep working remotely from Brazil.<\\/p>\",\"date_range\":\"Dec \\/ 2015 - Nov \\/ 2017\",\"location\":\"Recife, Brazil\",\"experience_id\":\"3\"}', '[]', NULL, NULL, 1, '2018-08-08 01:38:42', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(160, 'ENTRY', 'UPDATE', '3', 'experience', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Web development Intern in USA\",\"tags\":\"internship,exchange,english,computer science,rwu,roger williams,university,stipend,scholarship,government funded\"}', '{\"title\":\"Web development Intern in USA\",\"id\":\"3\"}', NULL, NULL, 1, '2018-08-08 01:39:10', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(161, 'ENTRY', 'ADD', '4', 'experience', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Freelance Web Developer\",\"tags\":\"freelance,freelancer,web,developer,api,application,website\"}', '[]', NULL, NULL, 1, '2018-08-08 01:40:31', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(162, 'ENTRY', 'ADD', '7', 'experience_entry', 7, 1, '{\"id\":\"7\",\"status\":\"2\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">To focus on finishing my graduation and following my personal goals, I\'ve been only working on my own, as a freelancer. During this period, I\'ve developed websites for Brazilian companies. Two of them which are worth highlighting. One with huge traffic, an online magazine\\/blog for a public government foundation and another for an online cryptocurrency market, with complex interactions and data flow.<\\/p>\",\"date_range\":\"July \\/2017 - Present\",\"location\":\"Recife, Brazil\",\"experience_id\":\"4\"}', '[]', NULL, NULL, 1, '2018-08-08 01:43:16', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(163, 'ENTRY', 'UPDATE', '7', 'experience_entry', 7, 1, '{\"id\":\"7\",\"status\":\"1\",\"sort\":null,\"text\":\"<p class=\\\"inserted\\\">To focus on finishing my graduation and following my personal goals, I\'ve been only working on my own, as a freelancer. During this period, I\'ve developed websites for Brazilian companies. Two of them which are worth highlighting. One with huge traffic, an online magazine\\/blog for a public government foundation and another for an online cryptocurrency market, with complex interactions and data flow.<\\/p>\",\"date_range\":\"July \\/2017 - Present\",\"location\":\"Recife, Brazil\",\"experience_id\":\"4\"}', '{\"status\":\"1\",\"id\":7}', NULL, NULL, 1, '2018-08-08 01:43:20', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(164, 'ENTRY', 'ADD', '1', 'education', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Bs\",\"logo\":null,\"text\":\"<p>Great Computer Science course, with great professors. The Center of Informatics of UFPE focuses mainly in Software Engineering and Data Science, but has strong courses in Theory of Computation and different degrees of Math.<\\/p>\"}', '[]', NULL, NULL, 1, '2018-08-08 01:48:49', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(165, 'ENTRY', 'ADD', '2', 'education', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"title\":\"Computer Science Year\",\"logo\":null,\"text\":\"<p>Althought they don\'t have the best CompSci course, I did some great networking in there. I even joined the Tech Entrepreneurs club, introducing them to Titanium mobile development.<\\/p>\"}', '[]', NULL, NULL, 1, '2018-08-08 01:52:24', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(166, 'ENTRY', 'UPDATE', '2', 'education', 2, 1, '{\"id\":\"2\",\"status\":\"2\",\"sort\":null,\"title\":\"Computer Science Year\",\"logo\":null,\"text\":\"<p>Althought they don\'t have the best CompSci course, I did some great networking in there. I even joined the Tech Entrepreneurs club, introducing them to Titanium framework mobile development.<\\/p>\"}', '{\"text\":\"<p>Althought they don\'t have the best CompSci course, I did some great networking in there. I even joined the Tech Entrepreneurs club, introducing them to Titanium framework mobile development.<\\/p>\",\"id\":\"2\"}', NULL, NULL, 1, '2018-08-08 01:52:33', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(167, 'ENTRY', 'UPDATE', '2', 'education', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Year\",\"logo\":null,\"text\":\"<p>Althought they don\'t have the best CompSci course, I did some great networking in there. I even joined the Tech Entrepreneurs club, introducing them to Titanium framework mobile development.<\\/p>\"}', '{\"status\":\"1\",\"id\":2}', NULL, NULL, 1, '2018-08-08 01:52:38', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(168, 'ENTRY', 'ADD', '3', 'education', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Progressive Web Apps and AngularJS\",\"logo\":null,\"text\":\"<p>30 hour long training in web applications that feel like traditional mobile applications<\\/p>\"}', '[]', NULL, NULL, 1, '2018-08-08 01:53:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(169, 'ENTRY', 'UPDATE', '1', 'education', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Bs\",\"logo\":null,\"text\":\"<p>Focuses mainly in Software Engineering and Data Science, but has strong theoretical courses<\\/p>\"}', '{\"text\":\"<p>Focuses mainly in Software Engineering and Data Science, but has strong theoretical courses<\\/p>\",\"id\":\"1\"}', NULL, NULL, 1, '2018-08-08 01:54:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(170, 'ENTRY', 'UPDATE', '2', 'education', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Year\",\"logo\":null,\"text\":\"<p>I did some great networking in there. Introduced the Tech Entrepreneurs club to the Titanium mobile framework<\\/p>\"}', '{\"text\":\"<p>I did some great networking in there. Introduced the Tech Entrepreneurs club to the Titanium mobile framework<\\/p>\",\"id\":\"2\"}', NULL, NULL, 1, '2018-08-08 01:56:22', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(171, 'ENTRY', 'ADD', '4', 'education', 4, 1, '{\"id\":\"4\",\"status\":\"2\",\"sort\":null,\"title\":\"Physics Bs\",\"logo\":null,\"text\":\"<p>Withdrawn. Feel like it was a necessary time to lead me somewhere I now love to be<\\/p>\"}', '[]', NULL, NULL, 1, '2018-08-08 01:59:32', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(172, 'ENTRY', 'UPDATE', '4', 'education', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Physics Bs\",\"logo\":null,\"text\":\"<p>Withdrawn. Feel like it was a necessary time to lead me somewhere I now love to be<\\/p>\"}', '{\"status\":\"1\",\"id\":4}', NULL, NULL, 1, '2018-08-08 01:59:39', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(173, 'ENTRY', 'ADD', '1', 'directus_files', 9, 1, '{\"id\":\"9\",\"status\":\"1\",\"name\":\"00000000009.png\",\"title\":\"UFPE\",\"location\":\"Recife, Brazil\",\"caption\":\"Federal University of Pernambuco, Recife, Brazil\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"ufpe,universidade,federal,pernambuco,cin,physics,university\",\"width\":\"199\",\"height\":\"103\",\"size\":\"25541\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:06\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-08 02:14:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(174, 'ENTRY', 'UPDATE', '1', 'education', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Bs\",\"logo\":\"9\",\"text\":\"<p>Focuses mainly in Software Engineering and Data Science, but has strong theoretical courses<\\/p>\"}', '{\"logo\":9,\"id\":\"1\"}', NULL, NULL, 1, '2018-08-08 02:14:06', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(175, 'ENTRY', 'ADD', '1', 'directus_files', 10, 1, '{\"id\":\"10\",\"status\":\"1\",\"name\":\"00000000010.png\",\"title\":\"rwu 03\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"196\",\"height\":\"64\",\"size\":\"27182\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:46\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-08 02:14:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(176, 'ENTRY', 'UPDATE', '2', 'education', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"Computer Science Year\",\"logo\":\"10\",\"text\":\"<p>I did some great networking in there. Introduced the Tech Entrepreneurs club to the Titanium mobile framework<\\/p>\"}', '{\"logo\":10,\"id\":\"2\"}', NULL, NULL, 1, '2018-08-08 02:14:47', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(177, 'ENTRY', 'ADD', '1', 'directus_files', 11, 1, '{\"id\":\"11\",\"status\":\"1\",\"name\":\"00000000011.png\",\"title\":\"begyn 03\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"202\",\"height\":\"60\",\"size\":\"18768\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:59\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-08 02:14:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(178, 'ENTRY', 'UPDATE', '3', 'education', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Progressive Web Apps and AngularJS\",\"logo\":\"11\",\"text\":\"<p>30 hour long training in web applications that feel like traditional mobile applications<\\/p>\"}', '{\"logo\":11,\"id\":\"3\"}', NULL, NULL, 1, '2018-08-08 02:14:59', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(179, 'ENTRY', 'ADD', '1', 'directus_files', 12, 1, '{\"id\":\"12\",\"status\":\"1\",\"name\":\"00000000012.png\",\"title\":\"ufpe 03\",\"location\":\"\",\"caption\":\"\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"\",\"width\":\"199\",\"height\":\"103\",\"size\":\"25541\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:15:09\",\"storage_adapter\":\"local\"}', '[]', NULL, NULL, 1, '2018-08-08 02:15:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(180, 'ENTRY', 'UPDATE', '4', 'education', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Physics Bs\",\"logo\":\"12\",\"text\":\"<p>Withdrawn. Feel like it was a necessary time to lead me somewhere I now love to be<\\/p>\"}', '{\"logo\":12,\"id\":\"4\"}', NULL, NULL, 1, '2018-08-08 02:15:09', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(181, 'FILES', 'UPDATE', '1', 'directus_files', 11, 1, '{\"id\":\"11\",\"status\":\"1\",\"name\":\"00000000011.png\",\"title\":\"Begyn Courses\",\"location\":\"Recife, Brazil\",\"caption\":\"Short term courses provider\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"begyn,courses\",\"width\":\"202\",\"height\":\"60\",\"size\":\"18768\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:59\",\"storage_adapter\":\"local\"}', '{\"title\":\"Begyn Courses\",\"location\":\"Recife, Brazil\",\"caption\":\"Short term courses provider\",\"tags\":\"begyn,courses\",\"id\":\"11\"}', NULL, NULL, 1, '2018-08-08 02:17:05', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(182, 'FILES', 'UPDATE', '1', 'directus_files', 10, 1, '{\"id\":\"10\",\"status\":\"1\",\"name\":\"00000000010.png\",\"title\":\"RWU Logo\",\"location\":\"Bristol, USA\",\"caption\":\"Roger Williams University Logo\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"rwu,roger williams,university,logo\",\"width\":\"196\",\"height\":\"64\",\"size\":\"27182\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:46\",\"storage_adapter\":\"local\"}', '{\"title\":\"RWU Logo\",\"location\":\"Bristol, USA\",\"caption\":\"Roger Williams University Logo\",\"tags\":\"rwu,roger williams,university,logo\",\"id\":\"10\"}', NULL, NULL, 1, '2018-08-08 02:17:55', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(183, 'FILES', 'UPDATE', '1', 'directus_files', 11, 1, '{\"id\":\"11\",\"status\":\"1\",\"name\":\"00000000011.png\",\"title\":\"Begyn Logo\",\"location\":\"Recife, Brazil\",\"caption\":\"Short term courses provider logo\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"begyn,courses\",\"width\":\"202\",\"height\":\"60\",\"size\":\"18768\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:59\",\"storage_adapter\":\"local\"}', '{\"title\":\"Begyn Logo\",\"caption\":\"Short term courses provider logo\",\"id\":\"11\"}', NULL, NULL, 1, '2018-08-08 02:18:07', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(184, 'FILES', 'UPDATE', '1', 'directus_files', 9, 1, '{\"id\":\"9\",\"status\":\"1\",\"name\":\"00000000009.png\",\"title\":\"UFPE Logo\",\"location\":\"Recife, Brazil\",\"caption\":\"Federal University of Pernambuco, Recife, Brazil\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"ufpe,universidade,federal,pernambuco,cin,physics,university\",\"width\":\"199\",\"height\":\"103\",\"size\":\"25541\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:06\",\"storage_adapter\":\"local\"}', '{\"title\":\"UFPE Logo\",\"id\":\"9\"}', NULL, NULL, 1, '2018-08-08 02:18:19', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(185, 'ENTRY', 'UPDATE', '1', 'directus_files', 9, 1, '{\"id\":\"9\",\"status\":\"1\",\"name\":\"00000000009.png\",\"title\":\"UFPE Logo\",\"location\":\"Recife, Brazil\",\"caption\":\"Federal University of Pernambuco, Recife, Brazil\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"ufpe,universidade,federal,pernambuco,cin,physics,university\",\"width\":\"199\",\"height\":\"103\",\"size\":\"25541\",\"embed_id\":null,\"user\":\"1\",\"date_uploaded\":\"2018-08-08 02:14:06\",\"storage_adapter\":\"local\"}', '{\"id\":9,\"status\":1,\"name\":\"00000000009.png\",\"title\":\"UFPE Logo\",\"location\":\"Recife, Brazil\",\"caption\":\"Federal University of Pernambuco, Recife, Brazil\",\"type\":\"image\\/png\",\"charset\":\"binary\",\"tags\":\"ufpe,universidade,federal,pernambuco,cin,physics,university\",\"width\":199,\"height\":103,\"size\":25541,\"embed_id\":null,\"user\":1,\"date_uploaded\":\"2018-08-07T22:14:06-04:00\",\"storage_adapter\":\"local\"}', NULL, NULL, 1, '2018-08-08 02:18:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(186, 'ENTRY', 'UPDATE', '4', 'education', 4, 1, '{\"id\":\"4\",\"status\":\"1\",\"sort\":null,\"title\":\"Physics Bs\",\"logo\":\"9\",\"text\":\"<p>Withdrawn. Feel like it was a necessary time to lead me somewhere I now love to be<\\/p>\"}', '{\"logo\":9,\"id\":\"4\"}', NULL, NULL, 1, '2018-08-08 02:18:36', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(187, 'ENTRY', 'ADD', '17', 'skill', 17, 1, '{\"id\":\"17\",\"status\":\"1\",\"sort\":null,\"title\":\"Photoshop\",\"text\":\"Have been using since my internship in \'The Reckoner Group\' as it was a required skill to edit images. Now I use it for designing web sites.\",\"level\":\"6\",\"tags\":\"photoshop,digital art,frontend,project,design\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-08 02:21:34', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(188, 'ENTRY', 'ADD', '18', 'skill', 18, 1, '{\"id\":\"18\",\"status\":\"1\",\"sort\":null,\"title\":\"Sketch\",\"text\":\"Great for designing user interfaces. Went back to using Photoshop because of some bugs I found.\",\"level\":\"5\",\"tags\":\"frontend,project,design,ui,ux\",\"synonyms\":null}', '[]', NULL, NULL, 1, '2018-08-08 02:23:01', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(189, 'ENTRY', 'UPDATE', '17', 'skill', 17, 1, '{\"id\":\"17\",\"status\":\"1\",\"sort\":null,\"title\":\"Photoshop\",\"text\":\"Have been using since my internship in \'The Reckoner Group\' as it was a required skill to edit images. Now I use it for designing web sites.\",\"level\":\"6\",\"tags\":\"photoshop,digital art,frontend,project,design,ui,ux\",\"synonyms\":null}', '{\"tags\":\"photoshop,digital art,frontend,project,design,ui,ux\",\"id\":\"17\"}', NULL, NULL, 1, '2018-08-08 02:23:08', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(190, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-08 17:55:52', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(191, 'LOGIN', 'LOGIN', NULL, 'directus_users', 0, 1, NULL, NULL, NULL, NULL, 0, '2018-08-08 18:29:02', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(192, 'ENTRY', 'ADD', '1', 'social', 1, 1, '{\"id\":\"1\",\"status\":\"1\",\"sort\":null,\"title\":\"NPM\",\"url\":\"https:\\/\\/www.npmjs.com\\/~pedrotorchio\",\"icon\":null}', '[]', NULL, NULL, 1, '2018-08-08 18:29:57', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(193, 'ENTRY', 'ADD', '2', 'social', 2, 1, '{\"id\":\"2\",\"status\":\"1\",\"sort\":null,\"title\":\"LinkedIn\",\"url\":\"https:\\/\\/www.linkedin.com\\/in\\/pedro-torchio\\/\",\"icon\":null}', '[]', NULL, NULL, 1, '2018-08-08 18:32:15', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(194, 'ENTRY', 'ADD', '3', 'social', 3, 1, '{\"id\":\"3\",\"status\":\"2\",\"sort\":null,\"title\":\"Github\",\"url\":\"https:\\/\\/github.com\\/pedrotorchio\",\"icon\":null}', '[]', NULL, NULL, 1, '2018-08-08 18:33:48', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36'),
(195, 'ENTRY', 'UPDATE', '3', 'social', 3, 1, '{\"id\":\"3\",\"status\":\"1\",\"sort\":null,\"title\":\"Github\",\"url\":\"https:\\/\\/github.com\\/pedrotorchio\",\"icon\":null}', '{\"status\":\"1\",\"id\":3}', NULL, NULL, 1, '2018-08-08 18:33:53', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_bookmarks`
--

CREATE TABLE `directus_bookmarks` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_bookmarks`
--

INSERT INTO `directus_bookmarks` (`id`, `user`, `title`, `url`, `section`) VALUES
(1, 1, 'Activity', 'activity', 'other'),
(2, 1, 'Files', 'files', 'other'),
(3, 1, 'Messages', 'messages', 'other'),
(4, 1, 'Users', 'users', 'other');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_columns`
--

CREATE TABLE `directus_columns` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `data_type` varchar(64) DEFAULT NULL,
  `ui` varchar(64) DEFAULT NULL,
  `relationship_type` enum('MANYTOONE','MANYTOMANY','ONETOMANY') DEFAULT NULL,
  `related_table` varchar(64) DEFAULT NULL,
  `junction_table` varchar(64) DEFAULT NULL,
  `junction_key_left` varchar(64) DEFAULT NULL,
  `junction_key_right` varchar(64) DEFAULT NULL,
  `hidden_input` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `comment` varchar(1024) DEFAULT NULL,
  `options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_columns`
--

INSERT INTO `directus_columns` (`id`, `table_name`, `column_name`, `data_type`, `ui`, `relationship_type`, `related_table`, `junction_table`, `junction_key_left`, `junction_key_right`, `hidden_input`, `required`, `sort`, `comment`, `options`) VALUES
(1, 'directus_users', 'group', NULL, 'many_to_one', 'MANYTOONE', 'directus_groups', NULL, NULL, 'group_id', 0, 0, NULL, '', NULL),
(2, 'directus_users', 'avatar_file_id', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'avatar_file_id', 0, 0, NULL, '', NULL),
(3, 'directus_groups', 'users', 'ALIAS', 'directus_users', 'ONETOMANY', 'directus_users', NULL, NULL, 'group', 0, 0, NULL, NULL, NULL),
(4, 'directus_groups', 'permissions', 'ALIAS', 'directus_permissions', 'ONETOMANY', 'directus_privileges', NULL, NULL, 'group_id', 0, 0, NULL, NULL, NULL),
(5, 'general', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(6, 'general', 'main_title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Título principal da página', NULL),
(7, 'general', 'main_image', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'main_image', 0, 0, 2, 'Main decorative image', '{\"id\":\"single_file\"}'),
(8, 'general', 'email_address', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, 'Email address for contact purposes', NULL),
(9, 'about', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(10, 'about', 'avatar_image', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'avatar_image', 0, 0, 1, 'Personal image', '{\"id\":\"single_file\"}'),
(11, 'about', 'bio', 'TEXT', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 2, 'Biography', '{\"id\":\"wysiwyg_full\",\"headings_h2\":\"h2\",\"headings\":\"\",\"headings_h3\":\"h3\",\"headings_h4\":\"h4\",\"blocks_blockquote\":\"blockquote\",\"blocks\":\"p\",\"alignment_alignleft\":\"alignleft\",\"alignment\":\"alignleft,aligncenter,alignright,alignjustify\",\"alignment_aligncenter\":\"aligncenter\",\"alignment_alignright\":\"alignright\",\"alignment_alignjustify\":\"alignjustify\",\"toolbar_options_alignment\":\"alignment\",\"toolbar_options\":\"inline,alignment,table,undo,redo,bullist,numlist,link,unlink,paste\",\"toolbar_options_superscript\":\"superscript\",\"toolbar_options_subscript\":\"subscript\",\"toolbar_options_image\":\"image\",\"toolbar_options_media\":\"media\",\"toolbar_options_unlink\":\"unlink\",\"max_height\":\"30\",\"basic_image_list\":0,\"blocks_div\":\"div\"}'),
(14, 'work', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(15, 'work', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(16, 'work', 'url', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(17, 'work', 'date', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', '{\"id\":\"text_input\"}'),
(18, 'work', 'info', 'TEXT', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 6, '', '{\"id\":\"wysiwyg_full\",\"headings_h2\":\"h2\",\"headings\":\"h3\",\"headings_h3\":\"h3\",\"headings_h4\":\"h4\",\"blocks_blockquote\":\"blockquote\",\"blocks\":\"p\"}'),
(19, 'work', 'thumbnail', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'thumbnail', 0, 0, 7, 'Small screenshot', '{\"id\":\"single_file\"}'),
(20, 'work', 'suitable_color', 'VARCHAR', 'color', NULL, NULL, NULL, NULL, NULL, 0, 0, 8, 'Color adequate to use with the Thumbnail', '{\"id\":\"color\"}'),
(21, 'work', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, '', NULL),
(22, 'service', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(23, 'service', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(24, 'service', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(25, 'work', 'status', 'TINYINT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, '', '{\"id\":\"status\"}'),
(26, 'service', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(27, 'service', 'bubble_header', 'VARCHAR', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', '{\"id\":\"wysiwyg_full\",\"toolbar_options_alignment\":\"alignment\",\"toolbar_options\":\"inline,alignment,table,undo,redo,subscript,superscript,bullist,numlist,link,unlink,image,media,paste\",\"alignment_alignleft\":\"alignleft\",\"alignment\":\"alignleft,aligncenter,alignright,alignjustify\",\"alignment_aligncenter\":\"aligncenter\",\"alignment_alignright\":\"alignright\",\"alignment_alignjustify\":\"alignjustify\",\"max_height\":\"200\"}'),
(28, 'service', 'bubble_text', 'TEXT', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', '{\"id\":\"wysiwyg_full\"}'),
(29, 'skill', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(30, 'skill', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(31, 'skill', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(32, 'skill', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(33, 'skill', 'text', 'VARCHAR', 'textarea', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', '{\"id\":\"textarea\",\"rows\":\"4\"}'),
(34, 'skill', 'level', 'INT', 'numeric', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, 'Between 0 - 10 ', '{\"id\":\"numeric\",\"size\":\"small\",\"localized\":0,\"footer\":1}'),
(39, 'experience_entry', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(40, 'experience_entry', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(41, 'experience_entry', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(44, 'experience_entry', 'text', 'TEXT', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', '{\"id\":\"wysiwyg_full\"}'),
(45, 'experience_entry', 'date_range', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, 'Textual date range', '{\"id\":\"text_input\"}'),
(46, 'experience_entry', 'location', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', NULL),
(48, 'experience', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(49, 'experience', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(50, 'experience', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(51, 'experience_entry', 'experience_id', 'INT', 'many_to_one', 'MANYTOONE', 'experience', NULL, NULL, 'experience_id', 0, 0, 6, '', '{\"id\":\"many_to_one\",\"visible_column\":\"title\",\"visible_column_template\":\"{{title}}\"}'),
(52, 'experience', 'entries', 'ALIAS', 'one_to_many', 'ONETOMANY', 'experience_entry', NULL, NULL, 'experience_id', 0, 0, 3, '', '{\"id\":\"one_to_many\",\"visible_columns\":\"date_range\"}'),
(53, 'experience', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(54, 'work', 'tags', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 9, '', '{\"id\":\"tags\"}'),
(55, 'work', 'synonyms', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 10, '', '{\"id\":\"tags\"}'),
(56, 'skill', 'tags', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 6, '', NULL),
(57, 'skill', 'synonyms', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 7, '', '{\"id\":\"tags\"}'),
(58, 'service', 'tags', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 6, '', NULL),
(59, 'service', 'synonyms', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 7, '', NULL),
(60, 'experience', 'tags', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', '{\"id\":\"tags\"}'),
(62, 'about', 'tags', 'TEXT', 'tags', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(63, 'about', 'description', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(69, 'languages', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(70, 'languages', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(71, 'languages', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(72, 'languages', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(73, 'languages', 'display_title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(74, 'education', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(75, 'education', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(76, 'education', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(77, 'education', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(78, 'education', 'logo', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'logo', 0, 0, 4, '', NULL),
(79, 'education', 'text', 'TEXT', 'wysiwyg_full', NULL, NULL, NULL, NULL, NULL, 0, 0, 5, '', NULL),
(80, 'social', 'id', 'INT', 'primary_key', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL),
(81, 'social', 'sort', 'INT', 'sort', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL),
(82, 'social', 'status', 'INT', 'status', NULL, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL),
(83, 'social', 'title', 'VARCHAR', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 3, '', NULL),
(84, 'social', 'url', 'TEXT', 'text_input', NULL, NULL, NULL, NULL, NULL, 0, 0, 4, '', NULL),
(85, 'social', 'icon', 'INT', 'single_file', 'MANYTOONE', 'directus_files', NULL, NULL, 'icon', 0, 0, 5, '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_files`
--

CREATE TABLE `directus_files` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `location` varchar(200) DEFAULT NULL,
  `caption` text,
  `type` varchar(255) DEFAULT '',
  `charset` varchar(50) DEFAULT '',
  `tags` varchar(255) DEFAULT '',
  `width` int(11) UNSIGNED DEFAULT '0',
  `height` int(11) UNSIGNED DEFAULT '0',
  `size` int(11) UNSIGNED DEFAULT '0',
  `embed_id` varchar(200) DEFAULT NULL,
  `user` int(11) UNSIGNED NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `storage_adapter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_files`
--

INSERT INTO `directus_files` (`id`, `status`, `name`, `title`, `location`, `caption`, `type`, `charset`, `tags`, `width`, `height`, `size`, `embed_id`, `user`, `date_uploaded`, `storage_adapter`) VALUES
(2, 1, '00000000002.jpg', 'Profile Picture', '', 'It\'s me, Pedro', 'image/jpeg', 'binary', 'profile', 640, 640, 71148, NULL, 1, '2018-08-01 12:47:07', 'local'),
(3, 1, '00000000003.jpg', 'Nabuco work thumbnail', 'Recife', 'Screenshot of website, online magazine Nabuco', 'image/jpeg', 'binary', 'magazine,blog,joaquim,nabuco,wordpress', 1468, 1468, 288940, NULL, 1, '2018-08-01 13:22:04', 'local'),
(4, 1, '00000000004.jpg', 'Hero Image', 'Recife', 'Hero image showing home town, Recife', 'image/jpeg', 'binary', 'recife,hero', 1600, 600, 180811, NULL, 1, '2018-08-01 13:51:28', 'local'),
(5, 1, '00000000005.jpg', 'Reato occupational therapy screenshot', 'Brazil', 'Reato occupational therapy landing page screenshot', 'image/jpeg', 'binary', 'reato,coorporate,wordpress,health,occupational,therapy', 1468, 1468, 263957, NULL, 1, '2018-08-01 23:15:17', 'local'),
(6, 1, '00000000006.jpg', 'Lost Worlds Travel Thumbnail', 'USA', 'Lost worlds travel tourism website top image screenshot', 'image/jpeg', 'binary', 'image,tourism,screenshot,wordpress', 1468, 1468, 210205, NULL, 1, '2018-08-01 23:26:46', 'local'),
(7, 1, '00000000007.jpg', 'Bitjá cryptocurrency market thumbnail', 'Brazil', 'Bitjá, cryptocurrency web market landing page screenshot', 'image/jpeg', 'binary', 'bitja,cryptocurrency,market,screenshot,vue', 1468, 1468, 262778, NULL, 1, '2018-08-01 23:36:44', 'local'),
(8, 1, '00000000008.jpg', 'avatar edit', '', '', 'image/jpeg', 'binary', '', 640, 640, 71148, NULL, 1, '2018-08-06 12:07:15', 'local'),
(9, 1, '00000000009.png', 'UFPE Logo', 'Recife, Brazil', 'Federal University of Pernambuco, Recife, Brazil', 'image/png', 'binary', 'ufpe,universidade,federal,pernambuco,cin,physics,university', 199, 103, 25541, NULL, 1, '2018-08-08 02:14:06', 'local'),
(10, 1, '00000000010.png', 'RWU Logo', 'Bristol, USA', 'Roger Williams University Logo', 'image/png', 'binary', 'rwu,roger williams,university,logo', 196, 64, 27182, NULL, 1, '2018-08-08 02:14:46', 'local'),
(11, 1, '00000000011.png', 'Begyn Logo', 'Recife, Brazil', 'Short term courses provider logo', 'image/png', 'binary', 'begyn,courses', 202, 60, 18768, NULL, 1, '2018-08-08 02:14:59', 'local');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_groups`
--

CREATE TABLE `directus_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `restrict_to_ip_whitelist` text,
  `nav_override` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_groups`
--

INSERT INTO `directus_groups` (`id`, `name`, `description`, `restrict_to_ip_whitelist`, `nav_override`) VALUES
(1, 'Administrator', 'Admins have access to all managed data within the system by default', NULL, NULL),
(2, 'Public', 'This sets the data that is publicly available through the API without a token', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_messages`
--

CREATE TABLE `directus_messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `from` int(11) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(512) DEFAULT NULL,
  `response_to` int(11) UNSIGNED DEFAULT NULL,
  `comment_metadata` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_messages_recipients`
--

CREATE TABLE `directus_messages_recipients` (
  `id` int(11) UNSIGNED NOT NULL,
  `message_id` int(11) UNSIGNED NOT NULL,
  `recipient` int(11) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL,
  `group` int(11) UNSIGNED DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_preferences`
--

CREATE TABLE `directus_preferences` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `table_name` varchar(64) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `columns_visible` varchar(300) DEFAULT NULL,
  `sort` varchar(64) DEFAULT 'id',
  `sort_order` varchar(5) DEFAULT 'ASC',
  `status` varchar(64) DEFAULT '3',
  `search_string` text,
  `list_view_options` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_preferences`
--

INSERT INTO `directus_preferences` (`id`, `user`, `table_name`, `title`, `columns_visible`, `sort`, `sort_order`, `status`, `search_string`, `list_view_options`) VALUES
(1, 1, 'directus_activity', NULL, 'type,action,identifier,table_name,row_id,user,data', 'id', 'ASC', '1,2', NULL, NULL),
(2, 1, 'directus_bookmarks', NULL, 'user,title,url,section', 'id', 'ASC', '1,2', NULL, NULL),
(3, 1, 'directus_files', NULL, 'name,title,location,caption,type,charset,tags', 'date_uploaded', 'DESC', '1,2', NULL, NULL),
(4, 1, 'directus_groups', NULL, 'name,description,restrict_to_ip_whitelist,nav_override,users,permissions', 'id', 'ASC', '1,2', NULL, NULL),
(5, 1, 'directus_messages', NULL, 'from,subject,message,datetime,attachment,response_to,comment_metadata', 'id', 'ASC', '1,2', NULL, NULL),
(6, 1, 'directus_messages_recipients', NULL, 'message_id,recipient,read,group,archived', 'id', 'ASC', '1,2', NULL, NULL),
(7, 1, 'directus_schema_migrations', NULL, 'version', 'id', 'ASC', '1,2', NULL, NULL),
(8, 1, 'directus_users', NULL, 'first_name,last_name,email,password,salt,token,access_token', 'id', 'ASC', '1,2', NULL, NULL),
(9, 1, 'general', NULL, 'main_title,main_image,email_address', 'id', 'ASC', '1,2', NULL, NULL),
(10, 1, 'about', NULL, 'avatar_image,bio', 'id', 'ASC', '1,2', NULL, NULL),
(13, 1, 'work', NULL, 'title,url,thumbnail', 'id', 'ASC', '1,2', '', '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(14, 1, NULL, NULL, '', 'id', 'ASC', '', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(15, 1, 'work', NULL, 'title,url,date,info,thumbnail,suitable_color', 'id', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(16, 1, 'service', NULL, 'title,bubble_header,bubble_text', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(17, 1, 'skill', NULL, 'title,text,level,tags', 'id', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(19, 1, 'experience_entry', NULL, 'text,date_range,location', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(20, 1, 'experience', NULL, 'title,entries', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(21, 1, 'skill', NULL, 'status,sort,title,text,level,tags,synonyms', 'id', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(22, 1, 'experience', NULL, 'status,sort,title,tags', 'id', 'ASC', '1,2', NULL, NULL),
(24, 1, 'languages', NULL, 'title,display_title', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(25, 1, 'education', NULL, 'title,logo,text', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}'),
(26, 1, 'social', NULL, 'title,url,icon', 'sort', 'ASC', '1,2', NULL, '{\"spacing\":\"cozy\",\"currentView\":\"table\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_privileges`
--

CREATE TABLE `directus_privileges` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `allow_view` tinyint(1) NOT NULL DEFAULT '0',
  `allow_add` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delete` tinyint(1) NOT NULL DEFAULT '0',
  `allow_alter` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL,
  `read_field_blacklist` varchar(1000) DEFAULT NULL,
  `write_field_blacklist` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `nav_listed` tinyint(1) NOT NULL DEFAULT '1',
  `status_id` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_privileges`
--

INSERT INTO `directus_privileges` (`id`, `table_name`, `allow_view`, `allow_add`, `allow_edit`, `allow_delete`, `allow_alter`, `group_id`, `read_field_blacklist`, `write_field_blacklist`, `nav_listed`, `status_id`) VALUES
(1, 'directus_activity', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(2, 'directus_columns', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(3, 'directus_groups', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(4, 'directus_files', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(5, 'directus_messages', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(6, 'directus_preferences', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(7, 'directus_privileges', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(8, 'directus_settings', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(9, 'directus_tables', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(10, 'directus_users', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(11, 'directus_messages_recipients', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(12, 'directus_bookmarks', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(13, 'general', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(14, 'about', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(17, 'work', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(18, 'service', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(19, 'skill', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(21, 'experience_entry', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(22, 'experience', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(24, 'languages', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(25, 'education', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL),
(26, 'social', 2, 1, 2, 2, 1, 1, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_schema_migrations`
--

CREATE TABLE `directus_schema_migrations` (
  `version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `directus_schema_migrations`
--

INSERT INTO `directus_schema_migrations` (`version`) VALUES
('20150203221946'),
('20150203235646'),
('20150204002341'),
('20150204003426'),
('20150204015251'),
('20150204021255'),
('20150204022237'),
('20150204023325'),
('20150204024327'),
('20150204031412'),
('20150204041007'),
('20150204042725');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `collection`, `name`, `value`) VALUES
(1, 'global', 'cms_user_auto_sign_out', '60'),
(2, 'global', 'project_name', 'api.torchiodev.com'),
(3, 'global', 'project_url', 'http://api.torchiodev.com/'),
(4, 'global', 'rows_per_page', '200'),
(5, 'files', 'thumbnail_quality', '100'),
(6, 'files', 'thumbnail_size', '200'),
(7, 'global', 'cms_thumbnail_url', ''),
(8, 'files', 'file_naming', 'file_id'),
(9, 'files', 'thumbnail_crop_enabled', '1'),
(10, 'files', 'youtube_api_key', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_tables`
--

CREATE TABLE `directus_tables` (
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_template` varchar(255) DEFAULT '',
  `preview_url` varchar(255) DEFAULT '',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `single` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '1',
  `footer` tinyint(1) DEFAULT '0',
  `column_groupings` varchar(255) DEFAULT NULL,
  `primary_column` varchar(64) DEFAULT NULL,
  `sort_column` varchar(64) DEFAULT NULL,
  `status_column` varchar(64) DEFAULT NULL,
  `status_mapping` text,
  `user_create_column` varchar(64) DEFAULT NULL,
  `user_update_column` varchar(64) DEFAULT NULL,
  `date_create_column` varchar(64) DEFAULT NULL,
  `date_update_column` varchar(64) DEFAULT NULL,
  `filter_column_blacklist` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_tables`
--

INSERT INTO `directus_tables` (`table_name`, `display_template`, `preview_url`, `hidden`, `single`, `default_status`, `footer`, `column_groupings`, `primary_column`, `sort_column`, `status_column`, `status_mapping`, `user_create_column`, `user_update_column`, `date_create_column`, `date_update_column`, `filter_column_blacklist`) VALUES
('about', '', '', 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('directus_bookmarks', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_files', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_messages_recipients', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'recipient', NULL, NULL, NULL, NULL),
('directus_preferences', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL, NULL),
('directus_users', '', '', 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 'id', NULL, NULL, NULL, NULL),
('experience', '', '', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('experience_entry', '', '', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('general', '', '', 0, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('work', '{{title}} {{url}}', '', 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `directus_users`
--

CREATE TABLE `directus_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `first_name` varchar(50) DEFAULT '',
  `last_name` varchar(50) DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `salt` varchar(255) DEFAULT '',
  `token` varchar(128) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `reset_token` varchar(255) DEFAULT '',
  `reset_expiration` datetime DEFAULT NULL,
  `position` varchar(500) DEFAULT '',
  `email_messages` tinyint(1) DEFAULT '1',
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `last_page` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `group` int(11) UNSIGNED DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_file_id` int(11) UNSIGNED DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `country` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en',
  `timezone` varchar(32) DEFAULT 'America/New_York',
  `invite_token` varchar(255) DEFAULT NULL,
  `invite_date` datetime DEFAULT NULL,
  `invite_sender` int(11) UNSIGNED DEFAULT NULL,
  `invite_accepted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `directus_users`
--

INSERT INTO `directus_users` (`id`, `status`, `first_name`, `last_name`, `email`, `password`, `salt`, `token`, `access_token`, `reset_token`, `reset_expiration`, `position`, `email_messages`, `last_login`, `last_access`, `last_page`, `ip`, `group`, `avatar`, `avatar_file_id`, `location`, `phone`, `address`, `city`, `state`, `country`, `zip`, `language`, `timezone`, `invite_token`, `invite_date`, `invite_sender`, `invite_accepted`) VALUES
(1, 1, 'Admin', 'User', 'pedro@torchiodev.com', '$2y$12$PnnQJwsVk.6dKCK6orhqceezUe54fdHTBIUrR7w69ZWnIIpfrAX9C', '38HB9upuqPCFGUrc', '9gLLRfyNxBtQV392IVU4aUiPDNYsG20G', 'a3348d95957321324abe3e511300d0967e150e42', '', NULL, '', 1, '2018-08-08 18:29:02', '2018-08-08 18:56:31', '{\"path\":\"tables/general\",\"route\":\"entries\"}', '::1', 1, '//www.gravatar.com/avatar/92e5954b8e626cb83f7442005e059c8a?s=200&d=identicon&r=g', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'en', 'America/New_York', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `logo` int(11) DEFAULT NULL COMMENT '''''',
  `text` text COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `education`
--

INSERT INTO `education` (`id`, `status`, `sort`, `title`, `logo`, `text`) VALUES
(1, 1, NULL, 'Computer Science Bs', 9, '<p>Focuses mainly in Software Engineering and Data Science, but has strong theoretical courses</p>'),
(2, 1, NULL, 'Computer Science Year', 10, '<p>I did some great networking in there. Introduced the Tech Entrepreneurs club to the Titanium mobile framework</p>'),
(3, 1, NULL, 'Progressive Web Apps and AngularJS', 11, '<p>30 hour long training in web applications that feel like traditional mobile applications</p>'),
(4, 1, NULL, 'Physics Bs', 9, '<p>Withdrawn. Feel like it was a necessary time to lead me somewhere I now love to be</p>');

-- --------------------------------------------------------

--
-- Estrutura para tabela `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `experience`
--

INSERT INTO `experience` (`id`, `status`, `sort`, `title`, `tags`) VALUES
(1, 1, NULL, 'Researcher/Programmer', 'research,physics,academic,mcnp,mcnpx'),
(2, 1, NULL, 'Backend Intern', 'web,development,php,internship,intern'),
(3, 1, NULL, 'Web development Intern in USA', 'internship,exchange,english,computer science,rwu,roger williams,university,stipend,scholarship,government funded'),
(4, 1, NULL, 'Freelance Web Developer', 'freelance,freelancer,web,developer,api,application,website');

-- --------------------------------------------------------

--
-- Estrutura para tabela `experience_entry`
--

CREATE TABLE `experience_entry` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `text` text,
  `date_range` varchar(100) DEFAULT NULL COMMENT 'Textual date range',
  `location` varchar(100) DEFAULT NULL COMMENT '''''',
  `experience_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `experience_entry`
--

INSERT INTO `experience_entry` (`id`, `status`, `sort`, `text`, `date_range`, `location`, `experience_id`) VALUES
(1, 1, NULL, '<p class=\"inserted\">During the Physics Bc course, I had the great opportunity to work in a research group, with government funded stipend. Whilst I didn\'t yet plan to engage in Computer Science, it was my first contact with application development.</p><p class=\"inserted\">The group was studying industrial tomography for the petroleum cracking process, in different departments, seeking the construction of an efficient tomograph for that purpose. The departments were Engineering, Chemistry, Physics and Computer Science.</p><p class=\"inserted\">My responsibility was to simulate the interaction between matter in the form of a cracking tube, and gama rays, in MCNP, a software and programming language developed by&nbsp;Los Alamos National Laboratory.</p>', '2009-2010', 'Recife, Brazil', 1),
(2, 0, NULL, '<p class=\"inserted\"><br></p>', NULL, NULL, NULL),
(3, 1, NULL, '<p class=\"inserted\">My first contact with PHP, Databases and CMSs was as an intern in a web development company called \'Ser Digital\'.<br />There, I learned all the necessary skills to:</p>\n<ul>\n<li class=\"inserted\">Manage data in a MySQL database</li>\n<li class=\"inserted\">Customize their proprietary CMS to customer\'s needs</li>\n<li class=\"inserted\">Process and display stored information</li>\n</ul>\n<p>Left them to study in United States for a year.</p>', 'Apr - Jul / 2014', 'Recife, Brazil', 2),
(4, 1, NULL, '<p>After returning from United States I kept acting as an intern at \'Ser Digital\', but now with much more knowledge in PHP and specially in frontend development, which became my main focus in the company.</p>\n<p>After a few months, my previous American employers started to constantly send me work, so I swittched the daily commute to remote work, giving me more time to study.</p>', 'Sep - Dec / 2015', 'Recife, Brazil', 2),
(5, 1, NULL, '<p>Backend and frontend Wordpress development intern in \'The Reckoner Group\', USA, during the summer break of my exchange year.</p>', 'Jun - Jul / 2015', 'Bristol, USA', 3),
(6, 1, NULL, '<p>Later, they contacted me to keep working remotely from Brazil.</p>', 'Dec / 2015 - Nov / 2017', 'Recife, Brazil', 3),
(7, 1, NULL, '<p class=\"inserted\">To focus on finishing my graduation and following my personal goals, I\'ve been only working on my own, as a freelancer. During this period, I\'ve developed websites for Brazilian companies. Two of them which are worth highlighting. One with huge traffic, an online magazine/blog for a public government foundation and another for an online cryptocurrency market, with complex interactions and data flow.</p>', 'July /2017 - Present', 'Recife, Brazil', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `main_title` varchar(100) DEFAULT NULL COMMENT '''Título principal da página''',
  `main_image` int(11) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL COMMENT '''Email address for contact purposes'''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `general`
--

INSERT INTO `general` (`id`, `main_title`, `main_image`, `email_address`) VALUES
(1, 'Pedro Torchio', 4, 'pedro@torchiodev.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `display_title` varchar(100) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `languages`
--

INSERT INTO `languages` (`id`, `status`, `sort`, `title`, `display_title`) VALUES
(1, 1, NULL, 'Portuguese', 'Native Portuguese'),
(2, 1, NULL, 'English', 'Advanced English'),
(3, 1, NULL, 'Spanish', 'Wouldn\'t get lost in Spain');

-- --------------------------------------------------------

--
-- Estrutura para tabela `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `bubble_header` varchar(200) DEFAULT NULL,
  `bubble_text` text,
  `tags` text COMMENT '''''',
  `synonyms` text COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `service`
--

INSERT INTO `service` (`id`, `status`, `sort`, `title`, `bubble_header`, `bubble_text`, `tags`, `synonyms`) VALUES
(1, 1, NULL, 'Self Managed Website', '<p>You change the content yourself. <strong>No skills required.</strong></p>', '<p>It\'s much cheaper to be able to update all the information in the website without needing to reach for any service provider.<br /><strong>Ideal for small companies.</strong></p>', 'wordpress,cms,self,managed,website', NULL),
(2, 1, NULL, 'Blog', '<p>Reach the world and let it reach back.</p>', '<p>Informational&nbsp;website&nbsp;consisting of discrete, often informal&nbsp;diary-style text.</p>', 'blog,cms,wordpress,diary,personal', NULL),
(3, 1, NULL, 'E-commerce', '<p>Make it <strong>easy to find&nbsp;</strong>your products or services.</p>', '<p>Whenever you buy and sell something using the Internet, you&rsquo;re involved in e-commerce</p>', 'commerce,sell,products,services', NULL),
(4, 1, NULL, 'Web Application', '<p>It\'s a website, but also a <strong>mobile app.</strong></p>', '<p><a title=\"pwa info, on theverge.com\" href=\"https://www.theverge.com/circuitbreaker/2018/4/11/17207964/web-apps-quality-pwa-webassembly-houdini\" target=\"_blank\" rel=\"noopener noreferrer\">Progressive web apps</a> are reliable, fast and feel like a natural app on the device. Maybe an application to <strong>manage your products</strong>, maybe a mobile app to <strong>engage people.</strong></p>', 'pwa,progressive,web,app,application,mobile,system', NULL),
(5, 1, NULL, 'Web APIs', '<p>Provide data for different use cases.</p>', '<p>By providing data, you allow people, or maybe yourself, to give it many different usages that you couldn\'t expect. Still keeping your data secure.</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `text` varchar(150) DEFAULT NULL,
  `level` int(11) DEFAULT NULL COMMENT 'Between 0 - 10 ',
  `tags` text COMMENT '''''',
  `synonyms` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `skill`
--

INSERT INTO `skill` (`id`, `status`, `sort`, `title`, `text`, `level`, `tags`, `synonyms`) VALUES
(1, 1, NULL, 'Vue', 'Lightweight data driven web client framework. Been using it constantly since 2016.', 10, 'javascript,data,driven,web,client,framework,pwa,application,app,frontend,reactive', NULL),
(2, 1, NULL, 'Angular', 'Webclient framework. Took a course on it in 2015.', 6, 'javascript,client,framework,pwa,web,data,driven,reactive,application,app,frontend', NULL),
(3, 1, NULL, 'Webpack', 'Incredible Javascript module bundler. A little complex, but got the hang of it. Using since 2016.', 8, 'javascript,module,bundler,tool,web', NULL),
(4, 1, NULL, 'Gulp', 'Great tool for automating development tasks', 7, 'javascript,tool,web,tasks,development,optimization', NULL),
(5, 1, NULL, 'PHP', 'The most popular server side scripting language. Base of Wordpress CMS. Used a lot since my first internship as a Web developer in 2014.', 10, 'language,server,api,backend,web', NULL),
(6, 1, NULL, 'Java', 'General purpose, cross platform programming language. Base of Android apps and many web based systems. First language I learned, in 2013.', 8, 'language,web,cross-platform,application,app,system', NULL),
(7, 1, NULL, 'Typescript', 'A Javascript superset language. Typed and very reliable. Ideal for complex applications. Base of Angular and I like to use it with Vue.', 7, 'language,superset,javascript,vue,angular', NULL),
(8, 1, NULL, 'C++', 'Took a discipline on it at Roger Williams University, USA. Never used in real life applications.', 3, 'language', NULL),
(9, 1, NULL, 'C#', 'Worked with it when exploring Unity3D game development platform. Shares some similarities with Java.', 5, 'language', NULL),
(10, 1, NULL, 'Javascript', 'Client side scripting language. Responsible for all the interaction between user and application.', 9, 'language,web,scripting,client,frontend,interaction,ui,ux', NULL),
(11, 1, NULL, 'HTML', 'The most basic language in web development. Gives structure to elements and in the fifth version also provides greater user interaction by default.', 8, 'language,web,frontend', NULL),
(12, 1, NULL, 'CSS', 'Styles webpages. In the third version can provide great animation to increase user experience.', 10, 'language,styling,ui,ux,frontend', NULL),
(13, 1, NULL, 'SCSS', 'A superset language of CSS. Gives it more processing power and reusability.', 8, 'language,styling,frontend,client', NULL),
(14, 1, NULL, 'Software Engineering', 'One of the most valued practices where I graduated. Took many courses on it.', 8, 'practice,engineering,software,study,discipline', NULL),
(15, 1, NULL, 'Wordpress', 'The most popular CMS. It\'s more than just a content management system. Makes it possible to transform simple websites in modular applications.', 10, 'cms,wordpress,web,backend,php,api,restful', NULL),
(16, 1, NULL, 'Directus', 'A great PHP CMS. Light, simple and intuitive. Great to keep data and application completely independent.', 8, 'cms,php,backend,api,restful', NULL),
(17, 1, NULL, 'Photoshop', 'Have been using since my internship in \'The Reckoner Group\' as it was a required skill to edit images. Now I use it for designing web sites.', 6, 'photoshop,digital art,frontend,project,design,ui,ux', NULL),
(18, 1, NULL, 'Sketch', 'Great for designing user interfaces. Went back to using Photoshop because of some bugs I found.', 5, 'frontend,project,design,ui,ux', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `url` text COMMENT '''''',
  `icon` int(11) DEFAULT NULL COMMENT ''''''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `social`
--

INSERT INTO `social` (`id`, `status`, `sort`, `title`, `url`, `icon`) VALUES
(1, 1, NULL, 'NPM', 'https://www.npmjs.com/~pedrotorchio', NULL),
(2, 1, NULL, 'LinkedIn', 'https://www.linkedin.com/in/pedro-torchio/', NULL),
(3, 1, NULL, 'Github', 'https://github.com/pedrotorchio', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '''''',
  `url` varchar(100) DEFAULT NULL COMMENT '''''',
  `date` varchar(100) DEFAULT NULL,
  `info` text,
  `thumbnail` int(11) DEFAULT NULL COMMENT 'Small screenshot',
  `suitable_color` varchar(100) DEFAULT NULL COMMENT 'Color adequate to use with the Thumbnail',
  `sort` int(11) DEFAULT NULL COMMENT '''''',
  `status` tinyint(1) DEFAULT '2',
  `tags` text,
  `synonyms` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `work`
--

INSERT INTO `work` (`id`, `title`, `url`, `date`, `info`, `thumbnail`, `suitable_color`, `sort`, `status`, `tags`, `synonyms`) VALUES
(1, 'Nabuco Magazine and Blog', 'www.revistanabuco.com.br', '11/2017', '<ul>\n<li>Government funded blog and magazine</li>\n<li>Self managed <strong>Wordpress</strong> content</li>\n<li><strong>Fully customized</strong> Theme and Functionalities</li>\n<li>Progressively enhanced content (<strong>no scripting needed</strong>)</li>\n</ul>', 3, '00ff00', NULL, 1, 'magazine,blog,wordpress,progressive,enhancement,php,custom,theme', NULL),
(2, 'Reato Occupational Therapy', 'www.toreato.com.br', '2015', '<ul>\n<li>Coorporate website</li>\n<li>Wordpress managed content</li>\n<li>Custom enhancements</li>\n</ul>', 5, '206698', NULL, 1, 'coorporate,wordpress,health', NULL),
(3, 'Lost Worlds Travel', 'www.lostworldstravel.com/', '2016', '<ul>\n<li>Regular wordpress website</li>\n<li>Exclusively client managed content</li>\n<li>Custom newsletter functionality</li>\n</ul>', 6, 'f4524d', NULL, 1, 'travel,tourism,wordpress,coorporate', NULL),
(4, 'BitJá', 'www.bitja.com.br', '2018', '<ul>\n<li>Online cryptocurrency market</li>\n<li>Single Page Application (<strong>SPA</strong>)</li>\n<li><strong>Restful API</strong> calls</li>\n<li>User management</li>\n<li>Dozens of <strong>different data models</strong></li>\n</ul>', 7, '499ea7', NULL, 1, 'spa,crypto,currency,vue,restful,api,system,application', NULL),
(5, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, NULL, NULL);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_columns`
--
ALTER TABLE `directus_columns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table-column` (`table_name`,`column_name`);

--
-- Índices de tabela `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_groups`
--
ALTER TABLE `directus_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_name_unique` (`name`);

--
-- Índices de tabela `directus_messages`
--
ALTER TABLE `directus_messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_preferences`
--
ALTER TABLE `directus_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`,`table_name`,`title`),
  ADD UNIQUE KEY `pref_title_constraint` (`user`,`table_name`,`title`);

--
-- Índices de tabela `directus_privileges`
--
ALTER TABLE `directus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `directus_schema_migrations`
--
ALTER TABLE `directus_schema_migrations`
  ADD UNIQUE KEY `idx_directus_schema_migrations_version` (`version`);

--
-- Índices de tabela `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique Collection and Name` (`collection`,`name`);

--
-- Índices de tabela `directus_tables`
--
ALTER TABLE `directus_tables`
  ADD PRIMARY KEY (`table_name`);

--
-- Índices de tabela `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD UNIQUE KEY `directus_users_token_unique` (`token`);

--
-- Índices de tabela `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `experience_entry`
--
ALTER TABLE `experience_entry`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT de tabela `directus_bookmarks`
--
ALTER TABLE `directus_bookmarks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `directus_columns`
--
ALTER TABLE `directus_columns`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `directus_files`
--
ALTER TABLE `directus_files`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `directus_groups`
--
ALTER TABLE `directus_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `directus_messages`
--
ALTER TABLE `directus_messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `directus_messages_recipients`
--
ALTER TABLE `directus_messages_recipients`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `directus_preferences`
--
ALTER TABLE `directus_preferences`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `directus_privileges`
--
ALTER TABLE `directus_privileges`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `directus_users`
--
ALTER TABLE `directus_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `experience_entry`
--
ALTER TABLE `experience_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
