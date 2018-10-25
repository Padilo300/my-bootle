-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 25 2018 г., 17:14
-- Версия сервера: 10.1.26-MariaDB-0+deb9u1
-- Версия PHP: 7.0.30-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my-bottle`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'SqSbxIx5NPk0u9eoq0d2y2lbRLox4vTdJ19jRvXQ1V857NUnN2wTiBuoZV5JVPwtGO8bdZuIWCazF07F8RaeCIB3NbE4nTzUza1AYNKcBvfLR4RVxBTJTh8uAknHBrYglcBElTFF7fyWnaNnmyg1VlQM3nJZNA94CRd622tUUikTg3Jbx8Ys5CgRoh1PoCrAcx5v8E6YB3nWRcIiwnW6qg6j4ade0xAzpVS5TmQyxL39xeXYX11QsspNy2aqCkTO', 1, '2018-09-13 23:08:42', '2018-09-13 23:08:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(1, 3, 'Description'),
(2, 3, 'No. of Cores'),
(4, 3, 'test 1'),
(5, 3, 'test 2'),
(6, 3, 'test 3'),
(7, 3, 'test 4'),
(8, 3, 'test 5'),
(9, 3, 'test 6'),
(10, 3, 'test 7'),
(11, 3, 'test 8'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(3, 3, 'Memory'),
(4, 3, 'Technical'),
(5, 3, 'Motherboard'),
(6, 3, 'Processor');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(113, 7, 3, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(114, 6, 3, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(115, 8, 3, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(116, 8, 3, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(117, 8, 3, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(118, 8, 3, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(119, 8, 3, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(120, 8, 3, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(121, 8, 3, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(122, 8, 3, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(123, 8, 3, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(124, 7, 3, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(125, 8, 3, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(126, 8, 3, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author`
--

CREATE TABLE `oc_bm_author` (
  `author_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_group_id` int(11) NOT NULL,
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author`
--

INSERT INTO `oc_bm_author` (`author_id`, `user_id`, `author_group_id`, `custom`, `setting`) VALUES
(1, 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_description`
--

CREATE TABLE `oc_bm_author_description` (
  `author_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `author_description_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author_description`
--

INSERT INTO `oc_bm_author_description` (`author_id`, `language_id`, `name`, `description`, `short_description`, `meta_title`, `meta_description`, `meta_keyword`, `author_description_id`) VALUES
(1, 1, 'Author', '&lt;p&gt;Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.&lt;/p&gt;&lt;p&gt;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', 'Author', '', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_author_group`
--

CREATE TABLE `oc_bm_author_group` (
  `author_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_author_group`
--

INSERT INTO `oc_bm_author_group` (`author_group_id`, `name`, `permission`) VALUES
(1, 'admin', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(2, 'editor', '[\"add_posts\",\"edit_posts\",\"delete_posts\",\"edit_others_posts\",\"delete_others_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\",\"add_authors\",\"edit_authors\",\"delete_authors\",\"add_author_groups\",\"edit_author_groups\",\"delete_author_groups\",\"add_categories\",\"edit_categories\",\"delete_categories\",\"change_post_author\"]'),
(3, 'author', '[\"add_posts\",\"edit_posts\",\"add_reviews\",\"edit_reviews\",\"delete_reviews\"]'),
(4, 'moderator', '[\"add_reviews\",\"edit_reviews\",\"delete_reviews\",\"add_others_reviews\",\"edit_others_reviews\",\"delete_others_reviews\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category`
--

CREATE TABLE `oc_bm_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category`
--

INSERT INTO `oc_bm_category` (`category_id`, `parent_id`, `sort_order`, `image`, `status`, `custom`, `setting`, `date_added`, `date_modified`) VALUES
(1, 0, 1, 'catalog/d_blog_module/category/Photo_blog_17.jpg', 1, 0, '\"\"', '2016-04-09 11:28:15', '2018-10-02 22:25:03');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_description`
--

CREATE TABLE `oc_bm_category_description` (
  `category_description_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_description`
--

INSERT INTO `oc_bm_category_description` (`category_description_id`, `category_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(8, 1, 1, 'NOWOSCI', 'Lorem ipsum dolor sit amet, justo aliquid reformidans ea vel, vim porro dictas et, ut elit partem invidunt vis. Saepe melius complectitur eum ea. Zril delenit vis ut. His suavitate rationibus in, tale discere ceteros eu nec. Vel ut utamur laoreet vituperata, in discere contentiones definitionem ius.', '&lt;p&gt;Lorem ipsum dolor sit amet, an eleifend intellegat cum, ei amet tota modus nec. Vix ut veniam placerat, an nam amet legere consequat, vix nulla labores ne. Eam invidunt imperdiet persecuti ne, et mel aperiri feugait, in alterum facilisi mel. Et ullum scripserit usu, has ullum offendit ut. An feugait expetendis has.&lt;br&gt;&lt;/p&gt;', 'Jeans', '', 'Lorem ipsum dolor sit amet, an eleifend intellegat cum, ei amet tota modus nec. Vix ut veniam placerat, an nam amet legere consequat, vix nulla labores ne. Eam invidunt imperdiet persecuti ne, et mel aperiri feugait, in alterum facilisi mel. Et ullum scripserit usu, has ullum offendit ut. An feugait expetendis has.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_path`
--

CREATE TABLE `oc_bm_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_path`
--

INSERT INTO `oc_bm_category_path` (`category_id`, `path_id`, `level`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_layout`
--

CREATE TABLE `oc_bm_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_layout`
--

INSERT INTO `oc_bm_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_category_to_store`
--

CREATE TABLE `oc_bm_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_category_to_store`
--

INSERT INTO `oc_bm_category_to_store` (`category_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post`
--

CREATE TABLE `oc_bm_post` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_title` varchar(255) DEFAULT NULL,
  `image_alt` varchar(255) DEFAULT NULL,
  `review_display` int(1) DEFAULT '0',
  `images_review` int(1) DEFAULT '0',
  `viewed` int(11) DEFAULT '1',
  `status` int(1) DEFAULT '1',
  `custom` int(1) DEFAULT '0',
  `setting` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_published` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post`
--

INSERT INTO `oc_bm_post` (`post_id`, `user_id`, `image`, `image_title`, `image_alt`, `review_display`, `images_review`, `viewed`, `status`, `custom`, `setting`, `date_added`, `date_published`, `date_modified`) VALUES
(13, 1, 'catalog/blog/52b.png', NULL, NULL, 0, 0, 46, 1, 0, '', '2018-10-02 21:41:28', '2018-10-02 18:40:32', '2018-10-02 23:16:49'),
(14, 1, 'catalog/blog/53.png', NULL, NULL, 0, 0, 4, 1, 0, '', '2018-10-02 21:42:10', '2018-10-02 18:40:33', '2018-10-02 21:42:10'),
(15, 1, 'catalog/blog/54.png', NULL, NULL, 0, 0, 1, 1, 0, '', '2018-10-02 21:42:45', '2018-10-02 18:40:34', '2018-10-02 21:42:45'),
(16, 1, 'catalog/blog/52.png', NULL, NULL, 0, 0, 1, 1, 0, '', '2018-10-02 21:44:34', '2018-10-02 18:44:04', '2018-10-02 21:44:34'),
(17, 1, 'catalog/blog/52.png', NULL, NULL, 0, 0, 1, 1, 0, '', '2018-10-02 21:45:08', '2018-10-02 18:44:36', '2018-10-02 21:45:08'),
(12, 1, 'catalog/blog/52.png', NULL, NULL, 0, 0, 2, 1, 0, '', '2018-10-02 21:39:15', '2018-10-02 18:37:39', '2018-10-02 21:40:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_description`
--

CREATE TABLE `oc_bm_post_description` (
  `post_description_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_description`
--

INSERT INTO `oc_bm_post_description` (`post_description_id`, `post_id`, `language_id`, `title`, `short_description`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `tag`) VALUES
(132, 12, 1, 'BLENDERBOTTLE’S SPORTMIXER® NOW AVAILABLE IN STAINLESS STEEL', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...', '&lt;p&gt;&lt;span style=&quot;color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 17.6px;&quot;&gt;Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'BLENDERBOTTLE’S SPORTMIXER® NOW AVAILABLE IN STAINLESS STEEL', '', '', ''),
(139, 13, 1, 'Start the Day Off Right With a Healthy Morning Routine for Success', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...\r\n\r\n', 'Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.', 'Start the Day Off Right With a Healthy Morning Routine for Success', '', '', ''),
(134, 14, 1, '5 Delicious Protein Shakes that Taste Like Dessert', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...', '&lt;div class=&quot;cartArticle&quot; style=&quot;position: relative; min-height: auto; padding-top: 20px; padding-bottom: 20px; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;br class=&quot;Apple-interchange-newline&quot;&gt;&lt;div class=&quot;hr&quot; style=&quot;width: 1110px; border-bottom: 1px solid rgb(225, 225, 225); margin: 0px; position: absolute; bottom: 0px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 1rem; font-size: 1.1em; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.&lt;/p&gt;', '5 Delicious Protein Shakes that Taste Like Dessert', '', '', ''),
(135, 15, 1, '5 Healthy Summer Recipes', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...', '&lt;div class=&quot;cartArticle&quot; style=&quot;position: relative; min-height: auto; padding-top: 20px; padding-bottom: 20px; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;br class=&quot;Apple-interchange-newline&quot;&gt;&lt;div class=&quot;hr&quot; style=&quot;width: 1110px; border-bottom: 1px solid rgb(225, 225, 225); margin: 0px; position: absolute; bottom: 0px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 1rem; font-size: 1.1em; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.&lt;/p&gt;', '5 Healthy Summer Recipes', '', '', ''),
(136, 16, 1, 'BLENDERBOTTLE’S SPORTMIXER® NOW AVAILABLE IN STAINLESS STEEL', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...', '&lt;div class=&quot;cartArticle&quot; style=&quot;position: relative; min-height: auto; padding-top: 20px; padding-bottom: 20px; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;br class=&quot;Apple-interchange-newline&quot;&gt;&lt;div class=&quot;hr&quot; style=&quot;width: 1110px; border-bottom: 1px solid rgb(225, 225, 225); margin: 0px; position: absolute; bottom: 0px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 1rem; font-size: 1.1em; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.&lt;/p&gt;', 'BLENDERBOTTLE’S SPORTMIXER® NOW AVAILABLE IN STAINLESS STEEL', '', '', ''),
(137, 17, 1, 'Protein Shakes for the Family: What You Need to Know', 'BlenderBottle’s most popular shaker/water-bottle hybrid adds an element of armored elegance to its collection with the all-new Stainless Steel SportMixer® Lehi, Utah– –(May 2016) – BlenderBottle, creators of the BlenderBottle Classic™ – the original, best-selling portable mixer that revolutionized the market – is excited to add a new stainless-steel design...', '&lt;div class=&quot;cartArticle&quot; style=&quot;position: relative; min-height: auto; padding-top: 20px; padding-bottom: 20px; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;; font-size: 16px;&quot;&gt;&lt;br class=&quot;Apple-interchange-newline&quot;&gt;&lt;div class=&quot;hr&quot; style=&quot;width: 1110px; border-bottom: 1px solid rgb(225, 225, 225); margin: 0px; position: absolute; bottom: 0px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 1rem; font-size: 1.1em; color: rgb(27, 27, 27); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, &amp;quot;Helvetica Neue&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;, &amp;quot;Noto Color Emoji&amp;quot;;&quot;&gt;Protein is essential for everyone’s health: yours and your child’s included. As a macronutrient, the body needs a considerable amount of protein in order to function optimally. This is as opposed to a micronutrient, which the body needs in smaller amounts. In children whose bodies are still maturing and changing, adequate protein intake becomes even more important. A diet fortified with protein contributes to strengthening organs, balancing hormones, improving bone density, repairing muscle tissues, and sustaining physical exertion. But how can you ensure that everyone in the family gets enough protein? What’s more, what are the healthiest—and kid-approved—sources of protein to consume? Protein shakes are a great choice for the whole family. Not only are protein shakes convenient to make quickly and take on the go, kids will also love the way they taste and get plenty of quality protein at the same time. Let’s learn more about protein needs and how protein shakes can be useful for the entire family. What Are Our Protein Requirements? A person’s recommended dietary allowance (RDA) of protein is contingent on two factors—their age and their weight. In adults, this equals 0.8 grams of protein for each kilogram of bodyweight. As such, a healthy protein intake for adults is between 10 percent and 25 percent of their daily caloric needs. As a general rule for kids, the older a child is, the higher their protein intake should be. According to the USDA, their daily needs break down as follows: Ages 2 to 3: 2 ounces Ages 4 to 8: 4 ounces Girls, ages 9 to 18: 5 ounces Boys, ages 9 to 13: 5 ounces Boys, ages 14 to 18: 6.5 ounces Keep in mind that other variables can influence the amount of protein you and your kids need. Active bodies require more protein than sedentary bodies. Also, children who don’t eat dairy, nuts, seeds, or other common sources of protein may also need more protein than the average kid. Are Protein Shakes Healthy for Kids? With a crammed schedule of work deadlines, school assignments, dance lessons, soccer practices, and household demands, cooking a protein-dense meal for the whole family might not be possible every day. That’s where protein shakes come into the equation. All you need to do is blend 1-2 scoops of high-quality protein powder with other nutritious ingredients like leafy greens, mashed banana, and fresh berries. Or simply mix your protein powder with water, milk, yogurt, or non-dairy milk substitutes. If using protein powder made specifically for kids, simply follow the serving size on the back of the container, as it was designed with their needs in mind. When using regular protein powder, consider giving half a scoop or less to younger kids. Most scoops of supplement powder contain at least 20 grams of protein. That’s more than half of the daily recommended allowance for younger kids, if you consider that one ounce is equal to 28 grams. How Do You Choose the Right Protein Powder? It’s worth noting that not all protein powders are created equal. Not all varieties are nutritionally dense—in fact, some are loaded with ingredients that cause more harm than good, like added sugars and preservatives. Use the following tips from Protein Powder for Kids: A Complete Guide when buying protein for your young ones (and for yourself!): Check the ingredients: There are many brands that make protein powder from whole, organic ingredients that are best for your child. Make sure you know what every ingredient is included before buying. If you don’t, research it first or check with your pediatrician. Be wary of “natural flavors”:When checking the ingredients, make sure you’re avoiding anything with “natural flavors.” This confusing term can be used when a product is derived from a “natural” source originally—even if other items are added to it during processing. Stick with whey protein (unless dairy intolerance is an issue):This type of protein is made from cow’s milk and is commonly found in baby formulas and is made up of casein and whey. It’s also a complete protein, as opposed to all other plant-based proteins, with the exception of soy, meaning it contains all the amino acids the body needs. All of these details should be considered when purchasing protein powder for everyone in the family, including yourself. When you follow these guidelines, you’ll be sure to choose only the highest-quality protein for you and your growing kids. Enjoy Protein Shakes As a Family Protein is a necessary component of a well-balanced diet—for you and especially for your kids. Protein shakes are an easy and convenient way to make sure your family is getting enough of this critical macronutrient every single day. Keep these resources and suggestions in mind as you start to enjoy protein shakes as a family. Know your protein needs and those of your child, choose the highest-quality protein powder, and enjoy a new-found source of energy. BIO: Jessica Thiefels has been writing for more than ten years. She\'s also an ACE Certified Personal Trainer, NASM Certified Fitness Nutrition specialist, and the founder and Editor-in-Chief of, Honest Body Fitness. Follow her on Twitter and Instagram.&lt;/p&gt;', 'Protein Shakes for the Family: What You Need to Know', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_related`
--

CREATE TABLE `oc_bm_post_related` (
  `post_id` int(11) NOT NULL,
  `post_related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_category`
--

CREATE TABLE `oc_bm_post_to_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_category`
--

INSERT INTO `oc_bm_post_to_category` (`post_id`, `category_id`) VALUES
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_layout`
--

CREATE TABLE `oc_bm_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_layout`
--

INSERT INTO `oc_bm_post_to_layout` (`post_id`, `store_id`, `layout_id`) VALUES
(17, 0, 0),
(14, 0, 0),
(16, 0, 0),
(15, 0, 0),
(13, 0, 0),
(12, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_product`
--

CREATE TABLE `oc_bm_post_to_product` (
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_to_store`
--

CREATE TABLE `oc_bm_post_to_store` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_bm_post_to_store`
--

INSERT INTO `oc_bm_post_to_store` (`post_id`, `store_id`) VALUES
(17, 0),
(14, 0),
(16, 0),
(15, 0),
(13, 0),
(12, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_post_video`
--

CREATE TABLE `oc_bm_post_video` (
  `post_id` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_review`
--

CREATE TABLE `oc_bm_review` (
  `review_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `reply_to_review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `guest_email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(1) DEFAULT '1',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_bm_review_to_image`
--

CREATE TABLE `oc_bm_review_to_image` (
  `review_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(1, 0, 0, 'f3d21b30677d8c258148131daa', 51, 0, '{\"242\":\"35\",\"240\":\"30\",\"239\":\"28\"}', 1, '2018-10-24 22:04:29');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(59, '', 0, 1, 1, 4, 1, '2018-09-17 15:21:51', '2018-10-20 10:40:48'),
(60, '', 0, 1, 1, 2, 1, '2018-09-17 15:22:22', '2018-10-20 10:37:24'),
(61, '', 0, 1, 1, 1, 1, '2018-09-17 15:22:34', '2018-10-20 10:38:04'),
(62, '', 0, 1, 0, 3, 1, '2018-09-17 15:22:53', '2018-10-20 10:39:19'),
(63, '', 60, 0, 1, 5, 1, '2018-09-17 16:55:37', '2018-09-22 22:08:42'),
(64, '', 60, 0, 1, 7, 1, '2018-09-17 16:56:16', '2018-09-22 22:08:58'),
(65, '', 63, 0, 1, 6, 1, '2018-09-17 16:56:51', '2018-09-22 22:08:50'),
(66, '', 60, 0, 1, 3, 1, '2018-09-30 19:11:19', '2018-09-30 19:11:19'),
(67, '', 66, 0, 1, 2, 1, '2018-10-01 23:03:12', '2018-10-01 23:03:12'),
(68, '', 66, 0, 1, 3, 1, '2018-10-01 23:03:37', '2018-10-01 23:03:37'),
(69, '', 66, 0, 1, 3, 1, '2018-10-01 23:03:56', '2018-10-01 23:03:56'),
(70, '', 64, 0, 1, 2, 1, '2018-10-01 23:04:21', '2018-10-01 23:04:21'),
(71, '', 64, 0, 1, 99, 1, '2018-10-01 23:05:36', '2018-10-01 23:05:36'),
(72, '', 63, 0, 1, 99, 1, '2018-10-01 23:07:17', '2018-10-01 23:07:17');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(63, 1, 'bottle', '', 'bottle', '', ''),
(64, 1, 'shaker', '', 'shaker', '', ''),
(65, 1, 'awsome', '', 'awsome', '', ''),
(66, 1, 'GALLONY', '', 'GALLONY', '', ''),
(67, 1, 'Collection', '', 'Collection', '', ''),
(68, 1, 'Subscription', '', 'Subscription', '', ''),
(69, 1, 'DC comics', '', 'DC comics', '', ''),
(70, 1, 'Just for Fun', '', 'Just for Fun', '', ''),
(71, 1, 'Create shaker', '', 'Create shaker', '', ''),
(72, 1, 'Create shaker', '', 'Create shaker', '', ''),
(59, 1, 'Спортивная одежда', '', 'Odziez sportowa', '', ''),
(60, 1, 'Товары', '', 'PRODUKTY ', '', ''),
(62, 1, 'Бренды', '', 'Marki', '', ''),
(63, 2, 'bottle', '', 'bottle', '', ''),
(64, 2, 'shaker', '', 'shaker', '', ''),
(65, 2, 'awsome', '', 'awsome', '', ''),
(66, 2, 'GALLONY', '', 'GALLONY', '', ''),
(67, 2, 'Collection', '', 'Collection', '', ''),
(68, 2, 'Subscription', '', 'Subscription', '', ''),
(69, 2, 'DC comics', '', 'DC comics', '', ''),
(70, 2, 'Just for Fun', '', 'Just for Fun', '', ''),
(71, 2, 'Create shaker', '', 'Create shaker', '', ''),
(72, 2, 'Create shaker', '', 'Create shaker', '', ''),
(59, 2, 'Odziez sportowa', '', 'Odziez sportowa', '', ''),
(60, 2, 'Produkty', '', 'PRODUKTY ', '', ''),
(61, 1, 'Для фитнеса', '', 'Akcesoria fitness', '', ''),
(62, 2, 'Marki', '', 'Marki', '', ''),
(63, 3, 'bottle', '', 'bottle', '', ''),
(64, 3, 'shaker', '', 'shaker', '', ''),
(65, 3, 'awsome', '', 'awsome', '', ''),
(66, 3, 'GALLONY', '', 'GALLONY', '', ''),
(67, 3, 'Collection', '', 'Collection', '', ''),
(68, 3, 'Subscription', '', 'Subscription', '', ''),
(69, 3, 'DC comics', '', 'DC comics', '', ''),
(70, 3, 'Just for Fun', '', 'Just for Fun', '', ''),
(71, 3, 'Create shaker', '', 'Create shaker', '', ''),
(72, 3, 'Create shaker', '', 'Create shaker', '', ''),
(61, 2, 'Akcesoria fitness', '', 'Akcesoria fitness', '', ''),
(60, 3, 'Товари', '', 'PRODUKTY ', '', ''),
(61, 3, 'Для фiтнесу', '', 'Akcesoria fitness', '', ''),
(62, 3, 'Бренди', '', 'Marki', '', ''),
(59, 3, 'Спортивний одяг', '', 'Odziez sportowa', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(59, 59, 0),
(60, 60, 0),
(72, 72, 2),
(72, 63, 1),
(72, 60, 0),
(71, 71, 2),
(71, 64, 1),
(71, 60, 0),
(70, 70, 2),
(70, 64, 1),
(70, 60, 0),
(69, 69, 2),
(69, 66, 1),
(69, 60, 0),
(68, 68, 2),
(68, 66, 1),
(68, 60, 0),
(67, 67, 2),
(67, 66, 1),
(67, 60, 0),
(66, 66, 1),
(66, 60, 0),
(65, 65, 2),
(65, 60, 0),
(65, 63, 1),
(64, 64, 1),
(64, 60, 0),
(63, 63, 1),
(63, 60, 0),
(62, 62, 0),
(61, 61, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Рубль', 'RUB', '', 'р.', '0', 1.00000000, 1, '2018-10-24 18:28:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '127.0.0.1', 1, '2018-10-10 14:05:24', '2018-10-10 14:05:24');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(194, 'd_blog_module', 'catalog/model/design/layout/getLayout/after', 'extension/event/d_blog_module/model_design_layout_getLayout_after', 1, 0),
(193, 'd_blog_module', 'admin/model/localisation/language/deleteLanguage/after', 'extension/event/d_blog_module/model_localisation_language_deleteLanguage_after', 1, 0),
(191, 'd_blog_module', 'catalog/view/common/menu/before', 'extension/event/d_blog_module/view_common_menu_before', 1, 0),
(192, 'd_blog_module', 'admin/model/localisation/language/addLanguage/after', 'extension/event/d_blog_module/model_localisation_language_addLanguage_after', 1, 0),
(190, 'd_blog_module', 'catalog/view/common/header/before', 'extension/event/d_blog_module/view_common_header_before', 1, 0),
(189, 'd_blog_module', 'admin/view/setting/setting/before', 'extension/event/d_blog_module/view_setting_setting_captcha_before', 1, 0),
(188, 'd_blog_module', 'admin/view/common/column_left/before', 'extension/event/d_blog_module/view_common_column_left_before', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(43, 'module', 'html'),
(44, 'module', 'latest'),
(47, 'module', 'd_blog_module');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(4, 0, 'dblogmodulecompiledoc3.0.2.0.v3.0.12.ocmod.zip', '2018-10-02 21:05:58'),
(5, 0, 'ukrainian-3 ver1.1.ocmod.zip', '2018-10-10 18:02:07'),
(6, 0, 'sizecoloroptiondisplay.ocmod.zip', '2018-10-16 11:24:38'),
(7, 0, 'D.ocmod.zip', '2018-10-16 11:29:04'),
(8, 0, 'D.ocmod.zip', '2018-10-16 11:29:46');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(48, 4, 'image/catalog/d_blog_module', '2018-10-02 21:06:00'),
(49, 4, 'system/config/d_ajax_search', '2018-10-02 21:06:00'),
(50, 4, 'system/config/d_blog_module.php', '2018-10-02 21:06:00'),
(51, 4, 'system/config/d_blog_module_demo', '2018-10-02 21:06:00'),
(52, 4, 'system/config/d_blog_module_layout', '2018-10-02 21:06:00'),
(53, 4, 'system/config/d_event_manager.php', '2018-10-02 21:06:00'),
(54, 4, 'system/config/d_visual_designer_route', '2018-10-02 21:06:00'),
(55, 4, 'system/library/d_shopunity', '2018-10-02 21:06:00'),
(56, 4, 'system/library/d_simple_html_dom.php', '2018-10-02 21:06:00'),
(57, 4, 'admin/controller/extension/d_ajax_search', '2018-10-02 21:06:00'),
(58, 4, 'admin/controller/extension/d_blog_module', '2018-10-02 21:06:00'),
(59, 4, 'admin/controller/extension/event', '2018-10-02 21:06:00'),
(60, 4, 'admin/model/extension/d_blog_module', '2018-10-02 21:06:00'),
(61, 4, 'admin/model/extension/d_opencart_patch', '2018-10-02 21:06:00'),
(62, 4, 'admin/view/image/d_blog_module', '2018-10-02 21:06:00'),
(63, 4, 'admin/view/javascript/d_bootstrap_bootbox', '2018-10-02 21:06:00'),
(64, 4, 'admin/view/javascript/d_bootstrap_colorpicker', '2018-10-02 21:06:00'),
(65, 4, 'admin/view/javascript/d_bootstrap_rating', '2018-10-02 21:06:00'),
(66, 4, 'admin/view/javascript/d_bootstrap_switch', '2018-10-02 21:06:00'),
(67, 4, 'admin/view/javascript/d_fileinput', '2018-10-02 21:06:00'),
(68, 4, 'admin/view/javascript/d_rubaxa_sortable', '2018-10-02 21:06:00'),
(69, 4, 'admin/view/javascript/d_tinysort', '2018-10-02 21:06:00'),
(70, 4, 'catalog/controller/extension/d_blog_module', '2018-10-02 21:06:00'),
(71, 4, 'catalog/controller/extension/event', '2018-10-02 21:06:00'),
(72, 4, 'catalog/model/extension/d_blog_module', '2018-10-02 21:06:00'),
(73, 4, 'catalog/model/extension/d_opencart_patch', '2018-10-02 21:06:00'),
(74, 4, 'catalog/view/javascript/d_bootstrap_bootbox', '2018-10-02 21:06:00'),
(75, 4, 'catalog/view/javascript/d_bootstrap_colorpicker', '2018-10-02 21:06:00'),
(76, 4, 'catalog/view/javascript/d_bootstrap_rating', '2018-10-02 21:06:00'),
(77, 4, 'catalog/view/javascript/d_bootstrap_switch', '2018-10-02 21:06:00'),
(78, 4, 'catalog/view/javascript/d_fileinput', '2018-10-02 21:06:00'),
(79, 4, 'catalog/view/javascript/d_rubaxa_sortable', '2018-10-02 21:06:00'),
(80, 4, 'catalog/view/javascript/d_tinysort', '2018-10-02 21:06:00'),
(81, 4, 'image/catalog/d_blog_module/category', '2018-10-02 21:06:00'),
(82, 4, 'image/catalog/d_blog_module/no_profile_image.png', '2018-10-02 21:06:00'),
(83, 4, 'image/catalog/d_blog_module/post', '2018-10-02 21:06:00'),
(84, 4, 'image/catalog/d_blog_module/review', '2018-10-02 21:06:00'),
(85, 4, 'system/config/d_ajax_search/blog.php', '2018-10-02 21:06:00'),
(86, 4, 'system/config/d_blog_module_demo/d_blog_module.php', '2018-10-02 21:06:00'),
(87, 4, 'system/config/d_blog_module_demo/d_blog_module.sql', '2018-10-02 21:06:00'),
(88, 4, 'system/config/d_blog_module_layout/grid.php', '2018-10-02 21:06:00'),
(89, 4, 'system/config/d_visual_designer_route/d_blog_module_author.php', '2018-10-02 21:06:00'),
(90, 4, 'system/config/d_visual_designer_route/d_blog_module_category.php', '2018-10-02 21:06:00'),
(91, 4, 'system/config/d_visual_designer_route/d_blog_module_post.php', '2018-10-02 21:06:00'),
(92, 4, 'system/library/d_shopunity/extension', '2018-10-02 21:06:00'),
(93, 4, 'system/library/d_shopunity/install', '2018-10-02 21:06:00'),
(94, 4, 'system/library/d_shopunity/readme', '2018-10-02 21:06:00'),
(95, 4, 'admin/controller/extension/d_ajax_search/blog.php', '2018-10-02 21:06:00'),
(96, 4, 'admin/controller/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(97, 4, 'admin/controller/extension/d_blog_module/author_group.php', '2018-10-02 21:06:00'),
(98, 4, 'admin/controller/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(99, 4, 'admin/controller/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(100, 4, 'admin/controller/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(101, 4, 'admin/controller/extension/event/d_blog_module.php', '2018-10-02 21:06:00'),
(102, 4, 'admin/controller/extension/module/d_blog_module.php', '2018-10-02 21:06:00'),
(103, 4, 'admin/language/en-gb/extension/d_blog_module', '2018-10-02 21:06:00'),
(104, 4, 'admin/language/en-gb/extension/event', '2018-10-02 21:06:00'),
(105, 4, 'admin/model/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(106, 4, 'admin/model/extension/d_blog_module/author_group.php', '2018-10-02 21:06:00'),
(107, 4, 'admin/model/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(108, 4, 'admin/model/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(109, 4, 'admin/model/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(110, 4, 'admin/model/extension/d_opencart_patch/event.php', '2018-10-02 21:06:00'),
(111, 4, 'admin/model/extension/d_opencart_patch/extension.php', '2018-10-02 21:06:00'),
(112, 4, 'admin/model/extension/d_opencart_patch/load.php', '2018-10-02 21:06:00'),
(113, 4, 'admin/model/extension/d_opencart_patch/modification.php', '2018-10-02 21:06:00'),
(114, 4, 'admin/model/extension/d_opencart_patch/module.php', '2018-10-02 21:06:00'),
(115, 4, 'admin/model/extension/d_opencart_patch/setting.php', '2018-10-02 21:06:00'),
(116, 4, 'admin/model/extension/d_opencart_patch/store.php', '2018-10-02 21:06:00'),
(117, 4, 'admin/model/extension/d_opencart_patch/url.php', '2018-10-02 21:06:00'),
(118, 4, 'admin/model/extension/d_opencart_patch/user.php', '2018-10-02 21:06:00'),
(119, 4, 'admin/model/extension/d_opencart_patch/vqmod.php', '2018-10-02 21:06:00'),
(120, 4, 'admin/model/extension/module/d_blog_module.php', '2018-10-02 21:06:00'),
(121, 4, 'admin/model/extension/module/d_event_manager.php', '2018-10-02 21:06:00'),
(122, 4, 'admin/model/extension/module/d_twig_manager.php', '2018-10-02 21:06:00'),
(123, 4, 'admin/view/image/d_blog_module/welcome.jpg', '2018-10-02 21:06:00'),
(124, 4, 'admin/view/image/d_blog_module/welcome.png', '2018-10-02 21:06:00'),
(125, 4, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.js', '2018-10-02 21:06:00'),
(126, 4, 'admin/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2018-10-02 21:06:00'),
(127, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css', '2018-10-02 21:06:00'),
(128, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img', '2018-10-02 21:06:00'),
(129, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js', '2018-10-02 21:06:00'),
(130, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2018-10-02 21:06:00'),
(131, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2018-10-02 21:06:00'),
(132, 4, 'admin/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2018-10-02 21:06:00'),
(133, 4, 'admin/view/javascript/d_bootstrap_switch/css', '2018-10-02 21:06:00'),
(134, 4, 'admin/view/javascript/d_bootstrap_switch/js', '2018-10-02 21:06:00'),
(135, 4, 'admin/view/javascript/d_fileinput/CHANGE.md', '2018-10-02 21:06:00'),
(136, 4, 'admin/view/javascript/d_fileinput/LICENSE.md', '2018-10-02 21:06:00'),
(137, 4, 'admin/view/javascript/d_fileinput/bower.json', '2018-10-02 21:06:00'),
(138, 4, 'admin/view/javascript/d_fileinput/canvas-to-blob.js', '2018-10-02 21:06:00'),
(139, 4, 'admin/view/javascript/d_fileinput/composer.json', '2018-10-02 21:06:00'),
(140, 4, 'admin/view/javascript/d_fileinput/css', '2018-10-02 21:06:00'),
(141, 4, 'admin/view/javascript/d_fileinput/examples', '2018-10-02 21:06:00'),
(142, 4, 'admin/view/javascript/d_fileinput/fileinput.css', '2018-10-02 21:06:00'),
(143, 4, 'admin/view/javascript/d_fileinput/fileinput.js', '2018-10-02 21:06:00'),
(144, 4, 'admin/view/javascript/d_fileinput/img', '2018-10-02 21:06:00'),
(145, 4, 'admin/view/javascript/d_fileinput/js', '2018-10-02 21:06:00'),
(146, 4, 'admin/view/javascript/d_fileinput/nuget', '2018-10-02 21:06:00'),
(147, 4, 'admin/view/javascript/d_fileinput/package.json', '2018-10-02 21:06:00'),
(148, 4, 'admin/view/javascript/d_fileinput/sass', '2018-10-02 21:06:00'),
(149, 4, 'admin/view/javascript/d_fileinput/themes', '2018-10-02 21:06:00'),
(150, 4, 'admin/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2018-10-02 21:06:00'),
(151, 4, 'admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2018-10-02 21:06:00'),
(152, 4, 'admin/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2018-10-02 21:06:00'),
(153, 4, 'admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2018-10-02 21:06:00'),
(154, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.css', '2018-10-02 21:06:00'),
(155, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.js', '2018-10-02 21:06:00'),
(156, 4, 'admin/view/javascript/d_rubaxa_sortable/sortable.min.js', '2018-10-02 21:06:00'),
(157, 4, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2018-10-02 21:06:00'),
(158, 4, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2018-10-02 21:06:00'),
(159, 4, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2018-10-02 21:06:00'),
(160, 4, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2018-10-02 21:06:00'),
(161, 4, 'admin/view/javascript/d_tinysort/tinysort.js', '2018-10-02 21:06:00'),
(162, 4, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2018-10-02 21:06:00'),
(163, 4, 'admin/view/template/extension/d_blog_module', '2018-10-02 21:06:00'),
(164, 4, 'admin/view/template/extension/event', '2018-10-02 21:06:00'),
(165, 4, 'catalog/controller/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(166, 4, 'catalog/controller/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(167, 4, 'catalog/controller/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(168, 4, 'catalog/controller/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(169, 4, 'catalog/controller/extension/d_blog_module/search.php', '2018-10-02 21:06:00'),
(170, 4, 'catalog/controller/extension/event/d_blog_module.php', '2018-10-02 21:06:00'),
(171, 4, 'catalog/language/en-gb/extension/d_blog_module', '2018-10-02 21:06:00'),
(172, 4, 'catalog/language/en-gb/extension/event', '2018-10-02 21:06:00'),
(173, 4, 'catalog/model/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(174, 4, 'catalog/model/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(175, 4, 'catalog/model/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(176, 4, 'catalog/model/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(177, 4, 'catalog/model/extension/d_opencart_patch/load.php', '2018-10-02 21:06:00'),
(178, 4, 'catalog/model/extension/d_opencart_patch/user.php', '2018-10-02 21:06:00'),
(179, 4, 'catalog/model/extension/module/d_blog_module.php', '2018-10-02 21:06:00'),
(180, 4, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.js', '2018-10-02 21:06:00'),
(181, 4, 'catalog/view/javascript/d_bootstrap_bootbox/bootbox.min.js', '2018-10-02 21:06:00'),
(182, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css', '2018-10-02 21:06:00'),
(183, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img', '2018-10-02 21:06:00'),
(184, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js', '2018-10-02 21:06:00'),
(185, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.css', '2018-10-02 21:06:00'),
(186, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.js', '2018-10-02 21:06:00'),
(187, 4, 'catalog/view/javascript/d_bootstrap_rating/bootstrap-rating.min.js', '2018-10-02 21:06:00'),
(188, 4, 'catalog/view/javascript/d_bootstrap_switch/css', '2018-10-02 21:06:00'),
(189, 4, 'catalog/view/javascript/d_bootstrap_switch/js', '2018-10-02 21:06:00'),
(190, 4, 'catalog/view/javascript/d_fileinput/CHANGE.md', '2018-10-02 21:06:00'),
(191, 4, 'catalog/view/javascript/d_fileinput/LICENSE.md', '2018-10-02 21:06:00'),
(192, 4, 'catalog/view/javascript/d_fileinput/bower.json', '2018-10-02 21:06:00'),
(193, 4, 'catalog/view/javascript/d_fileinput/canvas-to-blob.js', '2018-10-02 21:06:00'),
(194, 4, 'catalog/view/javascript/d_fileinput/composer.json', '2018-10-02 21:06:00'),
(195, 4, 'catalog/view/javascript/d_fileinput/css', '2018-10-02 21:06:00'),
(196, 4, 'catalog/view/javascript/d_fileinput/examples', '2018-10-02 21:06:00'),
(197, 4, 'catalog/view/javascript/d_fileinput/fileinput.css', '2018-10-02 21:06:00'),
(198, 4, 'catalog/view/javascript/d_fileinput/fileinput.js', '2018-10-02 21:06:00'),
(199, 4, 'catalog/view/javascript/d_fileinput/img', '2018-10-02 21:06:00'),
(200, 4, 'catalog/view/javascript/d_fileinput/js', '2018-10-02 21:06:00'),
(201, 4, 'catalog/view/javascript/d_fileinput/nuget', '2018-10-02 21:06:00'),
(202, 4, 'catalog/view/javascript/d_fileinput/package.json', '2018-10-02 21:06:00'),
(203, 4, 'catalog/view/javascript/d_fileinput/sass', '2018-10-02 21:06:00'),
(204, 4, 'catalog/view/javascript/d_fileinput/themes', '2018-10-02 21:06:00'),
(205, 4, 'catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2018-10-02 21:06:00'),
(206, 4, 'catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2018-10-02 21:06:00'),
(207, 4, 'catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2018-10-02 21:06:00'),
(208, 4, 'catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2018-10-02 21:06:00'),
(209, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.css', '2018-10-02 21:06:00'),
(210, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.js', '2018-10-02 21:06:00'),
(211, 4, 'catalog/view/javascript/d_rubaxa_sortable/sortable.min.js', '2018-10-02 21:06:00'),
(212, 4, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2018-10-02 21:06:00'),
(213, 4, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2018-10-02 21:06:00'),
(214, 4, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2018-10-02 21:06:00'),
(215, 4, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2018-10-02 21:06:00'),
(216, 4, 'catalog/view/javascript/d_tinysort/tinysort.js', '2018-10-02 21:06:00'),
(217, 4, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2018-10-02 21:06:00'),
(218, 4, 'catalog/view/theme/default/javascript', '2018-10-02 21:06:00'),
(219, 4, 'image/catalog/d_blog_module/category/Photo_blog_11.jpg', '2018-10-02 21:06:00'),
(220, 4, 'image/catalog/d_blog_module/category/Photo_blog_12.jpg', '2018-10-02 21:06:00'),
(221, 4, 'image/catalog/d_blog_module/category/Photo_blog_13.jpg', '2018-10-02 21:06:00'),
(222, 4, 'image/catalog/d_blog_module/category/Photo_blog_14.jpg', '2018-10-02 21:06:00'),
(223, 4, 'image/catalog/d_blog_module/category/Photo_blog_15.jpg', '2018-10-02 21:06:00'),
(224, 4, 'image/catalog/d_blog_module/category/Photo_blog_16.jpg', '2018-10-02 21:06:00'),
(225, 4, 'image/catalog/d_blog_module/category/Photo_blog_17.jpg', '2018-10-02 21:06:00'),
(226, 4, 'image/catalog/d_blog_module/category/blog.jpg', '2018-10-02 21:06:00'),
(227, 4, 'image/catalog/d_blog_module/post/Photo_blog_1.jpg', '2018-10-02 21:06:00'),
(228, 4, 'image/catalog/d_blog_module/post/Photo_blog_10.jpg', '2018-10-02 21:06:00'),
(229, 4, 'image/catalog/d_blog_module/post/Photo_blog_2.jpg', '2018-10-02 21:06:00'),
(230, 4, 'image/catalog/d_blog_module/post/Photo_blog_3.jpg', '2018-10-02 21:06:00'),
(231, 4, 'image/catalog/d_blog_module/post/Photo_blog_4.jpg', '2018-10-02 21:06:00'),
(232, 4, 'image/catalog/d_blog_module/post/Photo_blog_5.jpg', '2018-10-02 21:06:00'),
(233, 4, 'image/catalog/d_blog_module/post/Photo_blog_6.jpg', '2018-10-02 21:06:00'),
(234, 4, 'image/catalog/d_blog_module/post/Photo_blog_7.jpg', '2018-10-02 21:06:00'),
(235, 4, 'image/catalog/d_blog_module/post/Photo_blog_8.jpg', '2018-10-02 21:06:00'),
(236, 4, 'image/catalog/d_blog_module/post/Photo_blog_9.jpg', '2018-10-02 21:06:00'),
(237, 4, 'image/catalog/d_blog_module/post/post-1.jpg', '2018-10-02 21:06:00'),
(238, 4, 'image/catalog/d_blog_module/review/index.html', '2018-10-02 21:06:00'),
(239, 4, 'system/library/d_shopunity/extension/d_blog_module.json', '2018-10-02 21:06:00'),
(240, 4, 'system/library/d_shopunity/extension/d_bootstrap_bootbox.json', '2018-10-02 21:06:00'),
(241, 4, 'system/library/d_shopunity/extension/d_bootstrap_colorpicker.json', '2018-10-02 21:06:00'),
(242, 4, 'system/library/d_shopunity/extension/d_bootstrap_rating.json', '2018-10-02 21:06:00'),
(243, 4, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2018-10-02 21:06:00'),
(244, 4, 'system/library/d_shopunity/extension/d_event_manager.json', '2018-10-02 21:06:00'),
(245, 4, 'system/library/d_shopunity/extension/d_fileinput.json', '2018-10-02 21:06:00'),
(246, 4, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2018-10-02 21:06:00'),
(247, 4, 'system/library/d_shopunity/extension/d_rubaxa_sortable.json', '2018-10-02 21:06:00'),
(248, 4, 'system/library/d_shopunity/extension/d_simple_html_dom.json', '2018-10-02 21:06:00'),
(249, 4, 'system/library/d_shopunity/extension/d_tinysort.json', '2018-10-02 21:06:00'),
(250, 4, 'system/library/d_shopunity/extension/d_twig_manager.json', '2018-10-02 21:06:00'),
(251, 4, 'system/library/d_shopunity/extension/d_twig_partial.json', '2018-10-02 21:06:00'),
(252, 4, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2018-10-02 21:06:00'),
(253, 4, 'system/library/d_shopunity/install/d_twig_manager.xml', '2018-10-02 21:06:00'),
(254, 4, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2018-10-02 21:06:00'),
(255, 4, 'admin/language/en-gb/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(256, 4, 'admin/language/en-gb/extension/d_blog_module/author_group.php', '2018-10-02 21:06:00'),
(257, 4, 'admin/language/en-gb/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(258, 4, 'admin/language/en-gb/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(259, 4, 'admin/language/en-gb/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(260, 4, 'admin/language/en-gb/extension/event/d_blog_module.php', '2018-10-02 21:06:00'),
(261, 4, 'admin/language/en-gb/extension/module/d_blog_module.php', '2018-10-02 21:06:00'),
(262, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2018-10-02 21:06:00'),
(263, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2018-10-02 21:06:00'),
(264, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2018-10-02 21:06:00'),
(265, 4, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2018-10-02 21:06:00'),
(266, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2018-10-02 21:06:00'),
(267, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2018-10-02 21:06:00'),
(268, 4, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2018-10-02 21:06:00'),
(269, 4, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2018-10-02 21:06:00'),
(270, 4, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2018-10-02 21:06:00'),
(271, 4, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2018-10-02 21:06:00'),
(272, 4, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2018-10-02 21:06:00'),
(273, 4, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.css', '2018-10-02 21:06:00'),
(274, 4, 'admin/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2018-10-02 21:06:00'),
(275, 4, 'admin/view/javascript/d_fileinput/css/fileinput.css', '2018-10-02 21:06:00'),
(276, 4, 'admin/view/javascript/d_fileinput/css/fileinput.min.css', '2018-10-02 21:06:00'),
(277, 4, 'admin/view/javascript/d_fileinput/examples/index.html', '2018-10-02 21:06:00'),
(278, 4, 'admin/view/javascript/d_fileinput/img/loading-sm.gif', '2018-10-02 21:06:00'),
(279, 4, 'admin/view/javascript/d_fileinput/img/loading.gif', '2018-10-02 21:06:00'),
(280, 4, 'admin/view/javascript/d_fileinput/js/fileinput.js', '2018-10-02 21:06:00'),
(281, 4, 'admin/view/javascript/d_fileinput/js/fileinput.min.js', '2018-10-02 21:06:00'),
(282, 4, 'admin/view/javascript/d_fileinput/js/locales', '2018-10-02 21:06:00'),
(283, 4, 'admin/view/javascript/d_fileinput/js/plugins', '2018-10-02 21:06:00'),
(284, 4, 'admin/view/javascript/d_fileinput/nuget/Package.nuspec', '2018-10-02 21:06:00'),
(285, 4, 'admin/view/javascript/d_fileinput/nuget/build.bat', '2018-10-02 21:06:00'),
(286, 4, 'admin/view/javascript/d_fileinput/sass/fileinput.scss', '2018-10-02 21:06:00'),
(287, 4, 'admin/view/javascript/d_fileinput/themes/explorer', '2018-10-02 21:06:00'),
(288, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa', '2018-10-02 21:06:00'),
(289, 4, 'admin/view/javascript/d_fileinput/themes/fa', '2018-10-02 21:06:00'),
(290, 4, 'admin/view/javascript/d_fileinput/themes/gly', '2018-10-02 21:06:00'),
(291, 4, 'admin/view/template/extension/d_blog_module/author_form.twig', '2018-10-02 21:06:00'),
(292, 4, 'admin/view/template/extension/d_blog_module/author_group_form.twig', '2018-10-02 21:06:00'),
(293, 4, 'admin/view/template/extension/d_blog_module/author_group_list.twig', '2018-10-02 21:06:00'),
(294, 4, 'admin/view/template/extension/d_blog_module/author_list.twig', '2018-10-02 21:06:00'),
(295, 4, 'admin/view/template/extension/d_blog_module/category_form.twig', '2018-10-02 21:06:00'),
(296, 4, 'admin/view/template/extension/d_blog_module/category_list.twig', '2018-10-02 21:06:00'),
(297, 4, 'admin/view/template/extension/d_blog_module/post_form.twig', '2018-10-02 21:06:00'),
(298, 4, 'admin/view/template/extension/d_blog_module/post_list.twig', '2018-10-02 21:06:00'),
(299, 4, 'admin/view/template/extension/d_blog_module/review_form.twig', '2018-10-02 21:06:00'),
(300, 4, 'admin/view/template/extension/d_blog_module/review_list.twig', '2018-10-02 21:06:00'),
(301, 4, 'admin/view/template/extension/event/d_blog_module.twig', '2018-10-02 21:06:00'),
(302, 4, 'admin/view/template/extension/module/d_blog_module.twig', '2018-10-02 21:06:00'),
(303, 4, 'catalog/language/en-gb/extension/d_blog_module/author.php', '2018-10-02 21:06:00'),
(304, 4, 'catalog/language/en-gb/extension/d_blog_module/category.php', '2018-10-02 21:06:00'),
(305, 4, 'catalog/language/en-gb/extension/d_blog_module/post.php', '2018-10-02 21:06:00'),
(306, 4, 'catalog/language/en-gb/extension/d_blog_module/review.php', '2018-10-02 21:06:00'),
(307, 4, 'catalog/language/en-gb/extension/d_blog_module/search.php', '2018-10-02 21:06:00'),
(308, 4, 'catalog/language/en-gb/extension/event/d_blog_module.php', '2018-10-02 21:06:00'),
(309, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2018-10-02 21:06:00'),
(310, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2018-10-02 21:06:00'),
(311, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2018-10-02 21:06:00'),
(312, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2018-10-02 21:06:00'),
(313, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2018-10-02 21:06:00'),
(314, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2018-10-02 21:06:00'),
(315, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2018-10-02 21:06:00'),
(316, 4, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2018-10-02 21:06:00'),
(317, 4, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2018-10-02 21:06:00'),
(318, 4, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2018-10-02 21:06:00'),
(319, 4, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2018-10-02 21:06:00'),
(320, 4, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.css', '2018-10-02 21:06:00'),
(321, 4, 'catalog/view/javascript/d_fileinput/css/fileinput-rtl.min.css', '2018-10-02 21:06:00'),
(322, 4, 'catalog/view/javascript/d_fileinput/css/fileinput.css', '2018-10-02 21:06:00'),
(323, 4, 'catalog/view/javascript/d_fileinput/css/fileinput.min.css', '2018-10-02 21:06:00'),
(324, 4, 'catalog/view/javascript/d_fileinput/examples/index.html', '2018-10-02 21:06:00'),
(325, 4, 'catalog/view/javascript/d_fileinput/img/loading-sm.gif', '2018-10-02 21:06:00'),
(326, 4, 'catalog/view/javascript/d_fileinput/img/loading.gif', '2018-10-02 21:06:00'),
(327, 4, 'catalog/view/javascript/d_fileinput/js/fileinput.js', '2018-10-02 21:06:00'),
(328, 4, 'catalog/view/javascript/d_fileinput/js/fileinput.min.js', '2018-10-02 21:06:00'),
(329, 4, 'catalog/view/javascript/d_fileinput/js/locales', '2018-10-02 21:06:00'),
(330, 4, 'catalog/view/javascript/d_fileinput/js/plugins', '2018-10-02 21:06:00'),
(331, 4, 'catalog/view/javascript/d_fileinput/nuget/Package.nuspec', '2018-10-02 21:06:00'),
(332, 4, 'catalog/view/javascript/d_fileinput/nuget/build.bat', '2018-10-02 21:06:00'),
(333, 4, 'catalog/view/javascript/d_fileinput/sass/fileinput.scss', '2018-10-02 21:06:00'),
(334, 4, 'catalog/view/javascript/d_fileinput/themes/explorer', '2018-10-02 21:06:00'),
(335, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa', '2018-10-02 21:06:00'),
(336, 4, 'catalog/view/javascript/d_fileinput/themes/fa', '2018-10-02 21:06:00'),
(337, 4, 'catalog/view/javascript/d_fileinput/themes/gly', '2018-10-02 21:06:00'),
(338, 4, 'catalog/view/theme/default/javascript/d_blog_module', '2018-10-02 21:06:00'),
(339, 4, 'catalog/view/theme/default/javascript/partial', '2018-10-02 21:06:00'),
(340, 4, 'catalog/view/theme/default/stylesheet/d_blog_module', '2018-10-02 21:06:00'),
(341, 4, 'catalog/view/theme/default/template/d_blog_module', '2018-10-02 21:06:00'),
(342, 4, 'catalog/view/theme/default/template/partial', '2018-10-02 21:06:00'),
(343, 4, 'system/library/template/Twig/Extension/DTwigManager.php', '2018-10-02 21:06:00'),
(344, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2018-10-02 21:06:00'),
(345, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2018-10-02 21:06:00'),
(346, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2018-10-02 21:06:00'),
(347, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2018-10-02 21:06:00'),
(348, 4, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2018-10-02 21:06:00'),
(349, 4, 'admin/view/javascript/d_fileinput/js/locales/LANG.js', '2018-10-02 21:06:00'),
(350, 4, 'admin/view/javascript/d_fileinput/js/locales/ar.js', '2018-10-02 21:06:00'),
(351, 4, 'admin/view/javascript/d_fileinput/js/locales/az.js', '2018-10-02 21:06:00'),
(352, 4, 'admin/view/javascript/d_fileinput/js/locales/bg.js', '2018-10-02 21:06:00'),
(353, 4, 'admin/view/javascript/d_fileinput/js/locales/ca.js', '2018-10-02 21:06:00'),
(354, 4, 'admin/view/javascript/d_fileinput/js/locales/cr.js', '2018-10-02 21:06:00'),
(355, 4, 'admin/view/javascript/d_fileinput/js/locales/cz.js', '2018-10-02 21:06:00'),
(356, 4, 'admin/view/javascript/d_fileinput/js/locales/da.js', '2018-10-02 21:06:00'),
(357, 4, 'admin/view/javascript/d_fileinput/js/locales/de.js', '2018-10-02 21:06:00'),
(358, 4, 'admin/view/javascript/d_fileinput/js/locales/el.js', '2018-10-02 21:06:00'),
(359, 4, 'admin/view/javascript/d_fileinput/js/locales/es.js', '2018-10-02 21:06:00'),
(360, 4, 'admin/view/javascript/d_fileinput/js/locales/et.js', '2018-10-02 21:06:00'),
(361, 4, 'admin/view/javascript/d_fileinput/js/locales/fa.js', '2018-10-02 21:06:00'),
(362, 4, 'admin/view/javascript/d_fileinput/js/locales/fi.js', '2018-10-02 21:06:00'),
(363, 4, 'admin/view/javascript/d_fileinput/js/locales/fr.js', '2018-10-02 21:06:00'),
(364, 4, 'admin/view/javascript/d_fileinput/js/locales/gl.js', '2018-10-02 21:06:00'),
(365, 4, 'admin/view/javascript/d_fileinput/js/locales/hu.js', '2018-10-02 21:06:00'),
(366, 4, 'admin/view/javascript/d_fileinput/js/locales/id.js', '2018-10-02 21:06:00'),
(367, 4, 'admin/view/javascript/d_fileinput/js/locales/it.js', '2018-10-02 21:06:00'),
(368, 4, 'admin/view/javascript/d_fileinput/js/locales/ja.js', '2018-10-02 21:06:00'),
(369, 4, 'admin/view/javascript/d_fileinput/js/locales/kr.js', '2018-10-02 21:06:00'),
(370, 4, 'admin/view/javascript/d_fileinput/js/locales/kz.js', '2018-10-02 21:06:00'),
(371, 4, 'admin/view/javascript/d_fileinput/js/locales/nl.js', '2018-10-02 21:06:00'),
(372, 4, 'admin/view/javascript/d_fileinput/js/locales/no.js', '2018-10-02 21:06:00'),
(373, 4, 'admin/view/javascript/d_fileinput/js/locales/pl.js', '2018-10-02 21:06:00'),
(374, 4, 'admin/view/javascript/d_fileinput/js/locales/pt-BR.js', '2018-10-02 21:06:00'),
(375, 4, 'admin/view/javascript/d_fileinput/js/locales/pt.js', '2018-10-02 21:06:00'),
(376, 4, 'admin/view/javascript/d_fileinput/js/locales/ro.js', '2018-10-02 21:06:00'),
(377, 4, 'admin/view/javascript/d_fileinput/js/locales/ru.js', '2018-10-02 21:06:00'),
(378, 4, 'admin/view/javascript/d_fileinput/js/locales/sk.js', '2018-10-02 21:06:00'),
(379, 4, 'admin/view/javascript/d_fileinput/js/locales/sl.js', '2018-10-02 21:06:00'),
(380, 4, 'admin/view/javascript/d_fileinput/js/locales/sv.js', '2018-10-02 21:06:00'),
(381, 4, 'admin/view/javascript/d_fileinput/js/locales/th.js', '2018-10-02 21:06:00'),
(382, 4, 'admin/view/javascript/d_fileinput/js/locales/tr.js', '2018-10-02 21:06:00'),
(383, 4, 'admin/view/javascript/d_fileinput/js/locales/uk.js', '2018-10-02 21:06:00'),
(384, 4, 'admin/view/javascript/d_fileinput/js/locales/vi.js', '2018-10-02 21:06:00'),
(385, 4, 'admin/view/javascript/d_fileinput/js/locales/zh-TW.js', '2018-10-02 21:06:00'),
(386, 4, 'admin/view/javascript/d_fileinput/js/locales/zh.js', '2018-10-02 21:06:00'),
(387, 4, 'admin/view/javascript/d_fileinput/js/plugins/piexif.js', '2018-10-02 21:06:00'),
(388, 4, 'admin/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2018-10-02 21:06:00'),
(389, 4, 'admin/view/javascript/d_fileinput/js/plugins/purify.js', '2018-10-02 21:06:00'),
(390, 4, 'admin/view/javascript/d_fileinput/js/plugins/purify.min.js', '2018-10-02 21:06:00'),
(391, 4, 'admin/view/javascript/d_fileinput/js/plugins/sortable.js', '2018-10-02 21:06:00'),
(392, 4, 'admin/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2018-10-02 21:06:00'),
(393, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.css', '2018-10-02 21:06:00'),
(394, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.js', '2018-10-02 21:06:00'),
(395, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2018-10-02 21:06:00'),
(396, 4, 'admin/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2018-10-02 21:06:00'),
(397, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2018-10-02 21:06:00'),
(398, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2018-10-02 21:06:00'),
(399, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2018-10-02 21:06:00'),
(400, 4, 'admin/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2018-10-02 21:06:00'),
(401, 4, 'admin/view/javascript/d_fileinput/themes/fa/theme.js', '2018-10-02 21:06:00'),
(402, 4, 'admin/view/javascript/d_fileinput/themes/fa/theme.min.js', '2018-10-02 21:06:00'),
(403, 4, 'admin/view/javascript/d_fileinput/themes/gly/theme.js', '2018-10-02 21:06:00'),
(404, 4, 'admin/view/javascript/d_fileinput/themes/gly/theme.min.js', '2018-10-02 21:06:00'),
(405, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2018-10-02 21:06:00'),
(406, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2018-10-02 21:06:00'),
(407, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2018-10-02 21:06:00'),
(408, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2018-10-02 21:06:00'),
(409, 4, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2018-10-02 21:06:00'),
(410, 4, 'catalog/view/javascript/d_fileinput/js/locales/LANG.js', '2018-10-02 21:06:00'),
(411, 4, 'catalog/view/javascript/d_fileinput/js/locales/ar.js', '2018-10-02 21:06:00'),
(412, 4, 'catalog/view/javascript/d_fileinput/js/locales/az.js', '2018-10-02 21:06:00'),
(413, 4, 'catalog/view/javascript/d_fileinput/js/locales/bg.js', '2018-10-02 21:06:00'),
(414, 4, 'catalog/view/javascript/d_fileinput/js/locales/ca.js', '2018-10-02 21:06:00'),
(415, 4, 'catalog/view/javascript/d_fileinput/js/locales/cr.js', '2018-10-02 21:06:00'),
(416, 4, 'catalog/view/javascript/d_fileinput/js/locales/cz.js', '2018-10-02 21:06:00'),
(417, 4, 'catalog/view/javascript/d_fileinput/js/locales/da.js', '2018-10-02 21:06:00'),
(418, 4, 'catalog/view/javascript/d_fileinput/js/locales/de.js', '2018-10-02 21:06:00'),
(419, 4, 'catalog/view/javascript/d_fileinput/js/locales/el.js', '2018-10-02 21:06:00'),
(420, 4, 'catalog/view/javascript/d_fileinput/js/locales/es.js', '2018-10-02 21:06:00'),
(421, 4, 'catalog/view/javascript/d_fileinput/js/locales/et.js', '2018-10-02 21:06:00'),
(422, 4, 'catalog/view/javascript/d_fileinput/js/locales/fa.js', '2018-10-02 21:06:00'),
(423, 4, 'catalog/view/javascript/d_fileinput/js/locales/fi.js', '2018-10-02 21:06:00'),
(424, 4, 'catalog/view/javascript/d_fileinput/js/locales/fr.js', '2018-10-02 21:06:00'),
(425, 4, 'catalog/view/javascript/d_fileinput/js/locales/gl.js', '2018-10-02 21:06:00'),
(426, 4, 'catalog/view/javascript/d_fileinput/js/locales/hu.js', '2018-10-02 21:06:00'),
(427, 4, 'catalog/view/javascript/d_fileinput/js/locales/id.js', '2018-10-02 21:06:00'),
(428, 4, 'catalog/view/javascript/d_fileinput/js/locales/it.js', '2018-10-02 21:06:00'),
(429, 4, 'catalog/view/javascript/d_fileinput/js/locales/ja.js', '2018-10-02 21:06:00'),
(430, 4, 'catalog/view/javascript/d_fileinput/js/locales/kr.js', '2018-10-02 21:06:00'),
(431, 4, 'catalog/view/javascript/d_fileinput/js/locales/kz.js', '2018-10-02 21:06:00'),
(432, 4, 'catalog/view/javascript/d_fileinput/js/locales/nl.js', '2018-10-02 21:06:00'),
(433, 4, 'catalog/view/javascript/d_fileinput/js/locales/no.js', '2018-10-02 21:06:00'),
(434, 4, 'catalog/view/javascript/d_fileinput/js/locales/pl.js', '2018-10-02 21:06:00'),
(435, 4, 'catalog/view/javascript/d_fileinput/js/locales/pt-BR.js', '2018-10-02 21:06:00'),
(436, 4, 'catalog/view/javascript/d_fileinput/js/locales/pt.js', '2018-10-02 21:06:00'),
(437, 4, 'catalog/view/javascript/d_fileinput/js/locales/ro.js', '2018-10-02 21:06:00'),
(438, 4, 'catalog/view/javascript/d_fileinput/js/locales/ru.js', '2018-10-02 21:06:00'),
(439, 4, 'catalog/view/javascript/d_fileinput/js/locales/sk.js', '2018-10-02 21:06:00'),
(440, 4, 'catalog/view/javascript/d_fileinput/js/locales/sl.js', '2018-10-02 21:06:00'),
(441, 4, 'catalog/view/javascript/d_fileinput/js/locales/sv.js', '2018-10-02 21:06:00'),
(442, 4, 'catalog/view/javascript/d_fileinput/js/locales/th.js', '2018-10-02 21:06:00'),
(443, 4, 'catalog/view/javascript/d_fileinput/js/locales/tr.js', '2018-10-02 21:06:00'),
(444, 4, 'catalog/view/javascript/d_fileinput/js/locales/uk.js', '2018-10-02 21:06:00'),
(445, 4, 'catalog/view/javascript/d_fileinput/js/locales/vi.js', '2018-10-02 21:06:00'),
(446, 4, 'catalog/view/javascript/d_fileinput/js/locales/zh-TW.js', '2018-10-02 21:06:00'),
(447, 4, 'catalog/view/javascript/d_fileinput/js/locales/zh.js', '2018-10-02 21:06:00'),
(448, 4, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.js', '2018-10-02 21:06:00'),
(449, 4, 'catalog/view/javascript/d_fileinput/js/plugins/piexif.min.js', '2018-10-02 21:06:00'),
(450, 4, 'catalog/view/javascript/d_fileinput/js/plugins/purify.js', '2018-10-02 21:06:00'),
(451, 4, 'catalog/view/javascript/d_fileinput/js/plugins/purify.min.js', '2018-10-02 21:06:00'),
(452, 4, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.js', '2018-10-02 21:06:00'),
(453, 4, 'catalog/view/javascript/d_fileinput/js/plugins/sortable.min.js', '2018-10-02 21:06:00'),
(454, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.css', '2018-10-02 21:06:00'),
(455, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.js', '2018-10-02 21:06:00'),
(456, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.css', '2018-10-02 21:06:00'),
(457, 4, 'catalog/view/javascript/d_fileinput/themes/explorer/theme.min.js', '2018-10-02 21:06:00'),
(458, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.css', '2018-10-02 21:06:00'),
(459, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.js', '2018-10-02 21:06:00'),
(460, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.css', '2018-10-02 21:06:00'),
(461, 4, 'catalog/view/javascript/d_fileinput/themes/explorer-fa/theme.min.js', '2018-10-02 21:06:00'),
(462, 4, 'catalog/view/javascript/d_fileinput/themes/fa/theme.js', '2018-10-02 21:06:00'),
(463, 4, 'catalog/view/javascript/d_fileinput/themes/fa/theme.min.js', '2018-10-02 21:06:00'),
(464, 4, 'catalog/view/javascript/d_fileinput/themes/gly/theme.js', '2018-10-02 21:06:00'),
(465, 4, 'catalog/view/javascript/d_fileinput/themes/gly/theme.min.js', '2018-10-02 21:06:00'),
(466, 4, 'catalog/view/theme/default/javascript/d_blog_module/author.js', '2018-10-02 21:06:00'),
(467, 4, 'catalog/view/theme/default/javascript/d_blog_module/category.js', '2018-10-02 21:06:00'),
(468, 4, 'catalog/view/theme/default/javascript/d_blog_module/main.js', '2018-10-02 21:06:00'),
(469, 4, 'catalog/view/theme/default/javascript/d_blog_module/post.js', '2018-10-02 21:06:00'),
(470, 4, 'catalog/view/theme/default/javascript/d_blog_module/review.js', '2018-10-02 21:06:00'),
(471, 4, 'catalog/view/theme/default/javascript/partial/d_address_field.js', '2018-10-02 21:06:00'),
(472, 4, 'catalog/view/theme/default/javascript/partial/d_custom_field.js', '2018-10-02 21:06:00'),
(473, 4, 'catalog/view/theme/default/javascript/partial/d_product_sort.js', '2018-10-02 21:06:00'),
(474, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/animate.css', '2018-10-02 21:06:00'),
(475, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css', '2018-10-02 21:06:00'),
(476, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.css.map', '2018-10-02 21:06:00'),
(477, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/bootstrap.scss', '2018-10-02 21:06:00'),
(478, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css', '2018-10-02 21:06:00'),
(479, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.css.map', '2018-10-02 21:06:00'),
(480, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/d_blog_module.scss', '2018-10-02 21:06:00'),
(481, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme', '2018-10-02 21:06:00'),
(482, 4, 'catalog/view/theme/default/template/d_blog_module/author.twig', '2018-10-02 21:06:00'),
(483, 4, 'catalog/view/theme/default/template/d_blog_module/category.twig', '2018-10-02 21:06:00'),
(484, 4, 'catalog/view/theme/default/template/d_blog_module/layout_grid.twig', '2018-10-02 21:06:00'),
(485, 4, 'catalog/view/theme/default/template/d_blog_module/post.twig', '2018-10-02 21:06:00'),
(486, 4, 'catalog/view/theme/default/template/d_blog_module/post_thumb.twig', '2018-10-02 21:06:00'),
(487, 4, 'catalog/view/theme/default/template/d_blog_module/review.twig', '2018-10-02 21:06:00'),
(488, 4, 'catalog/view/theme/default/template/d_blog_module/review_thumb.twig', '2018-10-02 21:06:00'),
(489, 4, 'catalog/view/theme/default/template/d_blog_module/search.twig', '2018-10-02 21:06:00'),
(490, 4, 'catalog/view/theme/default/template/partial/d_account_field.twig', '2018-10-02 21:06:00'),
(491, 4, 'catalog/view/theme/default/template/partial/d_address_field.twig', '2018-10-02 21:06:00'),
(492, 4, 'catalog/view/theme/default/template/partial/d_breadcrumb.twig', '2018-10-02 21:06:00'),
(493, 4, 'catalog/view/theme/default/template/partial/d_button.twig', '2018-10-02 21:06:00'),
(494, 4, 'catalog/view/theme/default/template/partial/d_button_continue.twig', '2018-10-02 21:06:00'),
(495, 4, 'catalog/view/theme/default/template/partial/d_button_submit.twig', '2018-10-02 21:06:00'),
(496, 4, 'catalog/view/theme/default/template/partial/d_custom_field.twig', '2018-10-02 21:06:00'),
(497, 4, 'catalog/view/theme/default/template/partial/d_empty.twig', '2018-10-02 21:06:00'),
(498, 4, 'catalog/view/theme/default/template/partial/d_layout_close.twig', '2018-10-02 21:06:00'),
(499, 4, 'catalog/view/theme/default/template/partial/d_layout_open.twig', '2018-10-02 21:06:00'),
(500, 4, 'catalog/view/theme/default/template/partial/d_name_field.twig', '2018-10-02 21:06:00'),
(501, 4, 'catalog/view/theme/default/template/partial/d_notification.twig', '2018-10-02 21:06:00'),
(502, 4, 'catalog/view/theme/default/template/partial/d_product_sort.twig', '2018-10-02 21:06:00'),
(503, 4, 'catalog/view/theme/default/template/partial/d_product_thumb.twig', '2018-10-02 21:06:00'),
(504, 4, 'catalog/view/theme/default/template/partial/d_rating.twig', '2018-10-02 21:06:00'),
(505, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css', '2018-10-02 21:06:00'),
(506, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default.css.map', '2018-10-02 21:06:00'),
(507, 4, 'catalog/view/theme/default/stylesheet/d_blog_module/theme/default.scss', '2018-10-02 21:06:00'),
(508, 5, 'admin/language/uk-ua', '2018-10-10 18:02:09'),
(509, 5, 'catalog/language/uk-ua', '2018-10-10 18:02:09'),
(510, 5, 'admin/language/uk-ua/batch_editor', '2018-10-10 18:02:09'),
(511, 5, 'admin/language/uk-ua/catalog', '2018-10-10 18:02:09'),
(512, 5, 'admin/language/uk-ua/common', '2018-10-10 18:02:09'),
(513, 5, 'admin/language/uk-ua/customer', '2018-10-10 18:02:09'),
(514, 5, 'admin/language/uk-ua/design', '2018-10-10 18:02:09'),
(515, 5, 'admin/language/uk-ua/error', '2018-10-10 18:02:09'),
(516, 5, 'admin/language/uk-ua/extension', '2018-10-10 18:02:09'),
(517, 5, 'admin/language/uk-ua/localisation', '2018-10-10 18:02:09'),
(518, 5, 'admin/language/uk-ua/mail', '2018-10-10 18:02:09'),
(519, 5, 'admin/language/uk-ua/marketing', '2018-10-10 18:02:09'),
(520, 5, 'admin/language/uk-ua/report', '2018-10-10 18:02:09'),
(521, 5, 'admin/language/uk-ua/sale', '2018-10-10 18:02:09'),
(522, 5, 'admin/language/uk-ua/setting', '2018-10-10 18:02:09'),
(523, 5, 'admin/language/uk-ua/tool', '2018-10-10 18:02:09'),
(524, 5, 'admin/language/uk-ua/uk-ua.php', '2018-10-10 18:02:09'),
(525, 5, 'admin/language/uk-ua/uk-ua.png', '2018-10-10 18:02:09'),
(526, 5, 'admin/language/uk-ua/user', '2018-10-10 18:02:09'),
(527, 5, 'catalog/language/uk-ua/account', '2018-10-10 18:02:09'),
(528, 5, 'catalog/language/uk-ua/affiliate', '2018-10-10 18:02:09'),
(529, 5, 'catalog/language/uk-ua/api', '2018-10-10 18:02:09'),
(530, 5, 'catalog/language/uk-ua/checkout', '2018-10-10 18:02:09'),
(531, 5, 'catalog/language/uk-ua/common', '2018-10-10 18:02:09'),
(532, 5, 'catalog/language/uk-ua/error', '2018-10-10 18:02:09'),
(533, 5, 'catalog/language/uk-ua/extension', '2018-10-10 18:02:09'),
(534, 5, 'catalog/language/uk-ua/information', '2018-10-10 18:02:09'),
(535, 5, 'catalog/language/uk-ua/mail', '2018-10-10 18:02:09'),
(536, 5, 'catalog/language/uk-ua/product', '2018-10-10 18:02:09'),
(537, 5, 'catalog/language/uk-ua/tool', '2018-10-10 18:02:09'),
(538, 5, 'catalog/language/uk-ua/uk-ua.php', '2018-10-10 18:02:09'),
(539, 5, 'catalog/language/uk-ua/uk-ua.png', '2018-10-10 18:02:09'),
(540, 5, 'admin/language/uk-ua/batch_editor/attention.php', '2018-10-10 18:02:09'),
(541, 5, 'admin/language/uk-ua/batch_editor/calculate.php', '2018-10-10 18:02:09'),
(542, 5, 'admin/language/uk-ua/batch_editor/field.php', '2018-10-10 18:02:09'),
(543, 5, 'admin/language/uk-ua/batch_editor/index.php', '2018-10-10 18:02:09'),
(544, 5, 'admin/language/uk-ua/batch_editor/setting.php', '2018-10-10 18:02:09'),
(545, 5, 'admin/language/uk-ua/batch_editor/tool.php', '2018-10-10 18:02:09'),
(546, 5, 'admin/language/uk-ua/catalog/attribute.php', '2018-10-10 18:02:09'),
(547, 5, 'admin/language/uk-ua/catalog/attribute_group.php', '2018-10-10 18:02:09'),
(548, 5, 'admin/language/uk-ua/catalog/category.php', '2018-10-10 18:02:09'),
(549, 5, 'admin/language/uk-ua/catalog/download.php', '2018-10-10 18:02:09'),
(550, 5, 'admin/language/uk-ua/catalog/filter.php', '2018-10-10 18:02:09'),
(551, 5, 'admin/language/uk-ua/catalog/information.php', '2018-10-10 18:02:09'),
(552, 5, 'admin/language/uk-ua/catalog/manufacturer.php', '2018-10-10 18:02:09'),
(553, 5, 'admin/language/uk-ua/catalog/option.php', '2018-10-10 18:02:09'),
(554, 5, 'admin/language/uk-ua/catalog/product.php', '2018-10-10 18:02:09'),
(555, 5, 'admin/language/uk-ua/catalog/recurring.php', '2018-10-10 18:02:09'),
(556, 5, 'admin/language/uk-ua/catalog/review.php', '2018-10-10 18:02:09'),
(557, 5, 'admin/language/uk-ua/common/column_left.php', '2018-10-10 18:02:09'),
(558, 5, 'admin/language/uk-ua/common/dashboard.php', '2018-10-10 18:02:09'),
(559, 5, 'admin/language/uk-ua/common/filemanager.php', '2018-10-10 18:02:09'),
(560, 5, 'admin/language/uk-ua/common/footer.php', '2018-10-10 18:02:09'),
(561, 5, 'admin/language/uk-ua/common/forgotten.php', '2018-10-10 18:02:09'),
(562, 5, 'admin/language/uk-ua/common/header.php', '2018-10-10 18:02:09'),
(563, 5, 'admin/language/uk-ua/common/login.php', '2018-10-10 18:02:09'),
(564, 5, 'admin/language/uk-ua/common/reset.php', '2018-10-10 18:02:09'),
(565, 5, 'admin/language/uk-ua/customer/custom_field.php', '2018-10-10 18:02:09'),
(566, 5, 'admin/language/uk-ua/customer/customer.php', '2018-10-10 18:02:09'),
(567, 5, 'admin/language/uk-ua/customer/customer_group.php', '2018-10-10 18:02:09'),
(568, 5, 'admin/language/uk-ua/design/banner.php', '2018-10-10 18:02:09'),
(569, 5, 'admin/language/uk-ua/design/language.php', '2018-10-10 18:02:09'),
(570, 5, 'admin/language/uk-ua/design/layout.php', '2018-10-10 18:02:09'),
(571, 5, 'admin/language/uk-ua/design/menu.php', '2018-10-10 18:02:09'),
(572, 5, 'admin/language/uk-ua/design/theme.php', '2018-10-10 18:02:09'),
(573, 5, 'admin/language/uk-ua/design/translation.php', '2018-10-10 18:02:09'),
(574, 5, 'admin/language/uk-ua/error/not_found.php', '2018-10-10 18:02:09'),
(575, 5, 'admin/language/uk-ua/error/permission.php', '2018-10-10 18:02:09'),
(576, 5, 'admin/language/uk-ua/extension/analytics', '2018-10-10 18:02:09'),
(577, 5, 'admin/language/uk-ua/extension/captcha', '2018-10-10 18:02:09'),
(578, 5, 'admin/language/uk-ua/extension/dashboard', '2018-10-10 18:02:09'),
(579, 5, 'admin/language/uk-ua/extension/event.php', '2018-10-10 18:02:09'),
(580, 5, 'admin/language/uk-ua/extension/extension', '2018-10-10 18:02:09'),
(581, 5, 'admin/language/uk-ua/extension/extension.php', '2018-10-10 18:02:09'),
(582, 5, 'admin/language/uk-ua/extension/feed', '2018-10-10 18:02:09'),
(583, 5, 'admin/language/uk-ua/extension/fraud', '2018-10-10 18:02:09'),
(584, 5, 'admin/language/uk-ua/extension/installer.php', '2018-10-10 18:02:09'),
(585, 5, 'admin/language/uk-ua/extension/modification.php', '2018-10-10 18:02:09'),
(586, 5, 'admin/language/uk-ua/extension/module', '2018-10-10 18:02:09'),
(587, 5, 'admin/language/uk-ua/extension/openbay', '2018-10-10 18:02:09'),
(588, 5, 'admin/language/uk-ua/extension/payment', '2018-10-10 18:02:09'),
(589, 5, 'admin/language/uk-ua/extension/shipping', '2018-10-10 18:02:09'),
(590, 5, 'admin/language/uk-ua/extension/store.php', '2018-10-10 18:02:09'),
(591, 5, 'admin/language/uk-ua/extension/theme', '2018-10-10 18:02:09'),
(592, 5, 'admin/language/uk-ua/extension/total', '2018-10-10 18:02:09'),
(593, 5, 'admin/language/uk-ua/localisation/country.php', '2018-10-10 18:02:09'),
(594, 5, 'admin/language/uk-ua/localisation/currency.php', '2018-10-10 18:02:09'),
(595, 5, 'admin/language/uk-ua/localisation/geo_zone.php', '2018-10-10 18:02:09'),
(596, 5, 'admin/language/uk-ua/localisation/language.php', '2018-10-10 18:02:09'),
(597, 5, 'admin/language/uk-ua/localisation/length_class.php', '2018-10-10 18:02:09'),
(598, 5, 'admin/language/uk-ua/localisation/location.php', '2018-10-10 18:02:09'),
(599, 5, 'admin/language/uk-ua/localisation/order_status.php', '2018-10-10 18:02:09'),
(600, 5, 'admin/language/uk-ua/localisation/return_action.php', '2018-10-10 18:02:09'),
(601, 5, 'admin/language/uk-ua/localisation/return_reason.php', '2018-10-10 18:02:09'),
(602, 5, 'admin/language/uk-ua/localisation/return_status.php', '2018-10-10 18:02:09'),
(603, 5, 'admin/language/uk-ua/localisation/stock_status.php', '2018-10-10 18:02:09'),
(604, 5, 'admin/language/uk-ua/localisation/tax_class.php', '2018-10-10 18:02:09'),
(605, 5, 'admin/language/uk-ua/localisation/tax_rate.php', '2018-10-10 18:02:09'),
(606, 5, 'admin/language/uk-ua/localisation/weight_class.php', '2018-10-10 18:02:09'),
(607, 5, 'admin/language/uk-ua/localisation/zone.php', '2018-10-10 18:02:09'),
(608, 5, 'admin/language/uk-ua/mail/affiliate.php', '2018-10-10 18:02:09'),
(609, 5, 'admin/language/uk-ua/mail/customer.php', '2018-10-10 18:02:09'),
(610, 5, 'admin/language/uk-ua/mail/forgotten.php', '2018-10-10 18:02:09'),
(611, 5, 'admin/language/uk-ua/mail/return.php', '2018-10-10 18:02:09'),
(612, 5, 'admin/language/uk-ua/mail/voucher.php', '2018-10-10 18:02:09'),
(613, 5, 'admin/language/uk-ua/marketing/affiliate.php', '2018-10-10 18:02:09'),
(614, 5, 'admin/language/uk-ua/marketing/contact.php', '2018-10-10 18:02:09'),
(615, 5, 'admin/language/uk-ua/marketing/coupon.php', '2018-10-10 18:02:09'),
(616, 5, 'admin/language/uk-ua/marketing/marketing.php', '2018-10-10 18:02:09'),
(617, 5, 'admin/language/uk-ua/report/affiliate.php', '2018-10-10 18:02:09'),
(618, 5, 'admin/language/uk-ua/report/affiliate_activity.php', '2018-10-10 18:02:09'),
(619, 5, 'admin/language/uk-ua/report/customer_activity.php', '2018-10-10 18:02:09'),
(620, 5, 'admin/language/uk-ua/report/customer_credit.php', '2018-10-10 18:02:09'),
(621, 5, 'admin/language/uk-ua/report/customer_online.php', '2018-10-10 18:02:09'),
(622, 5, 'admin/language/uk-ua/report/customer_order.php', '2018-10-10 18:02:09'),
(623, 5, 'admin/language/uk-ua/report/customer_reward.php', '2018-10-10 18:02:09'),
(624, 5, 'admin/language/uk-ua/report/customer_search.php', '2018-10-10 18:02:09'),
(625, 5, 'admin/language/uk-ua/report/marketing.php', '2018-10-10 18:02:09'),
(626, 5, 'admin/language/uk-ua/report/product_purchased.php', '2018-10-10 18:02:09'),
(627, 5, 'admin/language/uk-ua/report/product_viewed.php', '2018-10-10 18:02:09'),
(628, 5, 'admin/language/uk-ua/report/sale_coupon.php', '2018-10-10 18:02:09'),
(629, 5, 'admin/language/uk-ua/report/sale_order.php', '2018-10-10 18:02:09'),
(630, 5, 'admin/language/uk-ua/report/sale_return.php', '2018-10-10 18:02:09'),
(631, 5, 'admin/language/uk-ua/report/sale_shipping.php', '2018-10-10 18:02:09');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(632, 5, 'admin/language/uk-ua/report/sale_tax.php', '2018-10-10 18:02:09'),
(633, 5, 'admin/language/uk-ua/sale/order.php', '2018-10-10 18:02:09'),
(634, 5, 'admin/language/uk-ua/sale/recurring.php', '2018-10-10 18:02:09'),
(635, 5, 'admin/language/uk-ua/sale/return.php', '2018-10-10 18:02:09'),
(636, 5, 'admin/language/uk-ua/sale/voucher.php', '2018-10-10 18:02:09'),
(637, 5, 'admin/language/uk-ua/sale/voucher_theme.php', '2018-10-10 18:02:09'),
(638, 5, 'admin/language/uk-ua/setting/setting.php', '2018-10-10 18:02:09'),
(639, 5, 'admin/language/uk-ua/setting/store.php', '2018-10-10 18:02:09'),
(640, 5, 'admin/language/uk-ua/tool/backup.php', '2018-10-10 18:02:09'),
(641, 5, 'admin/language/uk-ua/tool/log.php', '2018-10-10 18:02:09'),
(642, 5, 'admin/language/uk-ua/tool/upload.php', '2018-10-10 18:02:09'),
(643, 5, 'admin/language/uk-ua/user/api.php', '2018-10-10 18:02:09'),
(644, 5, 'admin/language/uk-ua/user/user.php', '2018-10-10 18:02:09'),
(645, 5, 'admin/language/uk-ua/user/user_group.php', '2018-10-10 18:02:09'),
(646, 5, 'catalog/language/uk-ua/account/account.php', '2018-10-10 18:02:09'),
(647, 5, 'catalog/language/uk-ua/account/address.php', '2018-10-10 18:02:09'),
(648, 5, 'catalog/language/uk-ua/account/download.php', '2018-10-10 18:02:09'),
(649, 5, 'catalog/language/uk-ua/account/edit.php', '2018-10-10 18:02:09'),
(650, 5, 'catalog/language/uk-ua/account/forgotten.php', '2018-10-10 18:02:09'),
(651, 5, 'catalog/language/uk-ua/account/login.php', '2018-10-10 18:02:09'),
(652, 5, 'catalog/language/uk-ua/account/logout.php', '2018-10-10 18:02:09'),
(653, 5, 'catalog/language/uk-ua/account/newsletter.php', '2018-10-10 18:02:09'),
(654, 5, 'catalog/language/uk-ua/account/order.php', '2018-10-10 18:02:09'),
(655, 5, 'catalog/language/uk-ua/account/password.php', '2018-10-10 18:02:09'),
(656, 5, 'catalog/language/uk-ua/account/recurring.php', '2018-10-10 18:02:09'),
(657, 5, 'catalog/language/uk-ua/account/register.php', '2018-10-10 18:02:09'),
(658, 5, 'catalog/language/uk-ua/account/reset.php', '2018-10-10 18:02:09'),
(659, 5, 'catalog/language/uk-ua/account/return.php', '2018-10-10 18:02:09'),
(660, 5, 'catalog/language/uk-ua/account/reward.php', '2018-10-10 18:02:09'),
(661, 5, 'catalog/language/uk-ua/account/success.php', '2018-10-10 18:02:09'),
(662, 5, 'catalog/language/uk-ua/account/transaction.php', '2018-10-10 18:02:09'),
(663, 5, 'catalog/language/uk-ua/account/voucher.php', '2018-10-10 18:02:09'),
(664, 5, 'catalog/language/uk-ua/account/wishlist.php', '2018-10-10 18:02:09'),
(665, 5, 'catalog/language/uk-ua/affiliate/account.php', '2018-10-10 18:02:09'),
(666, 5, 'catalog/language/uk-ua/affiliate/edit.php', '2018-10-10 18:02:09'),
(667, 5, 'catalog/language/uk-ua/affiliate/forgotten.php', '2018-10-10 18:02:09'),
(668, 5, 'catalog/language/uk-ua/affiliate/login.php', '2018-10-10 18:02:09'),
(669, 5, 'catalog/language/uk-ua/affiliate/logout.php', '2018-10-10 18:02:09'),
(670, 5, 'catalog/language/uk-ua/affiliate/password.php', '2018-10-10 18:02:09'),
(671, 5, 'catalog/language/uk-ua/affiliate/payment.php', '2018-10-10 18:02:09'),
(672, 5, 'catalog/language/uk-ua/affiliate/register.php', '2018-10-10 18:02:09'),
(673, 5, 'catalog/language/uk-ua/affiliate/success.php', '2018-10-10 18:02:09'),
(674, 5, 'catalog/language/uk-ua/affiliate/tracking.php', '2018-10-10 18:02:09'),
(675, 5, 'catalog/language/uk-ua/affiliate/transaction.php', '2018-10-10 18:02:09'),
(676, 5, 'catalog/language/uk-ua/api/cart.php', '2018-10-10 18:02:09'),
(677, 5, 'catalog/language/uk-ua/api/coupon.php', '2018-10-10 18:02:09'),
(678, 5, 'catalog/language/uk-ua/api/customer.php', '2018-10-10 18:02:09'),
(679, 5, 'catalog/language/uk-ua/api/login.php', '2018-10-10 18:02:09'),
(680, 5, 'catalog/language/uk-ua/api/order.php', '2018-10-10 18:02:09'),
(681, 5, 'catalog/language/uk-ua/api/payment.php', '2018-10-10 18:02:09'),
(682, 5, 'catalog/language/uk-ua/api/reward.php', '2018-10-10 18:02:09'),
(683, 5, 'catalog/language/uk-ua/api/shipping.php', '2018-10-10 18:02:09'),
(684, 5, 'catalog/language/uk-ua/api/voucher.php', '2018-10-10 18:02:09'),
(685, 5, 'catalog/language/uk-ua/checkout/cart.php', '2018-10-10 18:02:09'),
(686, 5, 'catalog/language/uk-ua/checkout/checkout.php', '2018-10-10 18:02:09'),
(687, 5, 'catalog/language/uk-ua/checkout/failure.php', '2018-10-10 18:02:09'),
(688, 5, 'catalog/language/uk-ua/checkout/success.php', '2018-10-10 18:02:09'),
(689, 5, 'catalog/language/uk-ua/common/cart.php', '2018-10-10 18:02:09'),
(690, 5, 'catalog/language/uk-ua/common/currency.php', '2018-10-10 18:02:09'),
(691, 5, 'catalog/language/uk-ua/common/footer.php', '2018-10-10 18:02:09'),
(692, 5, 'catalog/language/uk-ua/common/header.php', '2018-10-10 18:02:09'),
(693, 5, 'catalog/language/uk-ua/common/language.php', '2018-10-10 18:02:09'),
(694, 5, 'catalog/language/uk-ua/common/maintenance.php', '2018-10-10 18:02:09'),
(695, 5, 'catalog/language/uk-ua/common/menu.php', '2018-10-10 18:02:09'),
(696, 5, 'catalog/language/uk-ua/common/search.php', '2018-10-10 18:02:09'),
(697, 5, 'catalog/language/uk-ua/error/not_found.php', '2018-10-10 18:02:09'),
(698, 5, 'catalog/language/uk-ua/extension/captcha', '2018-10-10 18:02:09'),
(699, 5, 'catalog/language/uk-ua/extension/module', '2018-10-10 18:02:09'),
(700, 5, 'catalog/language/uk-ua/extension/openbay', '2018-10-10 18:02:09'),
(701, 5, 'catalog/language/uk-ua/extension/payment', '2018-10-10 18:02:09'),
(702, 5, 'catalog/language/uk-ua/extension/recurring', '2018-10-10 18:02:09'),
(703, 5, 'catalog/language/uk-ua/extension/shipping', '2018-10-10 18:02:09'),
(704, 5, 'catalog/language/uk-ua/extension/total', '2018-10-10 18:02:09'),
(705, 5, 'catalog/language/uk-ua/information/contact.php', '2018-10-10 18:02:09'),
(706, 5, 'catalog/language/uk-ua/information/information.php', '2018-10-10 18:02:09'),
(707, 5, 'catalog/language/uk-ua/information/sitemap.php', '2018-10-10 18:02:09'),
(708, 5, 'catalog/language/uk-ua/mail/affiliate.php', '2018-10-10 18:02:09'),
(709, 5, 'catalog/language/uk-ua/mail/customer.php', '2018-10-10 18:02:09'),
(710, 5, 'catalog/language/uk-ua/mail/forgotten.php', '2018-10-10 18:02:09'),
(711, 5, 'catalog/language/uk-ua/mail/order.php', '2018-10-10 18:02:09'),
(712, 5, 'catalog/language/uk-ua/mail/order_add.php', '2018-10-10 18:02:09'),
(713, 5, 'catalog/language/uk-ua/mail/order_alert.php', '2018-10-10 18:02:09'),
(714, 5, 'catalog/language/uk-ua/mail/order_edit.php', '2018-10-10 18:02:09'),
(715, 5, 'catalog/language/uk-ua/mail/review.php', '2018-10-10 18:02:09'),
(716, 5, 'catalog/language/uk-ua/mail/voucher.php', '2018-10-10 18:02:09'),
(717, 5, 'catalog/language/uk-ua/product/category.php', '2018-10-10 18:02:09'),
(718, 5, 'catalog/language/uk-ua/product/compare.php', '2018-10-10 18:02:09'),
(719, 5, 'catalog/language/uk-ua/product/manufacturer.php', '2018-10-10 18:02:09'),
(720, 5, 'catalog/language/uk-ua/product/product.php', '2018-10-10 18:02:09'),
(721, 5, 'catalog/language/uk-ua/product/search.php', '2018-10-10 18:02:09'),
(722, 5, 'catalog/language/uk-ua/product/special.php', '2018-10-10 18:02:09'),
(723, 5, 'catalog/language/uk-ua/tool/upload.php', '2018-10-10 18:02:09'),
(724, 5, 'admin/language/uk-ua/extension/analytics/google_analytics.php', '2018-10-10 18:02:09'),
(725, 5, 'admin/language/uk-ua/extension/captcha/basic_captcha.php', '2018-10-10 18:02:09'),
(726, 5, 'admin/language/uk-ua/extension/captcha/google_captcha.php', '2018-10-10 18:02:09'),
(727, 5, 'admin/language/uk-ua/extension/dashboard/activity.php', '2018-10-10 18:02:09'),
(728, 5, 'admin/language/uk-ua/extension/dashboard/chart.php', '2018-10-10 18:02:09'),
(729, 5, 'admin/language/uk-ua/extension/dashboard/customer.php', '2018-10-10 18:02:09'),
(730, 5, 'admin/language/uk-ua/extension/dashboard/map.php', '2018-10-10 18:02:09'),
(731, 5, 'admin/language/uk-ua/extension/dashboard/online.php', '2018-10-10 18:02:09'),
(732, 5, 'admin/language/uk-ua/extension/dashboard/order.php', '2018-10-10 18:02:09'),
(733, 5, 'admin/language/uk-ua/extension/dashboard/recent.php', '2018-10-10 18:02:09'),
(734, 5, 'admin/language/uk-ua/extension/dashboard/sale.php', '2018-10-10 18:02:09'),
(735, 5, 'admin/language/uk-ua/extension/extension/analytics.php', '2018-10-10 18:02:09'),
(736, 5, 'admin/language/uk-ua/extension/extension/captcha.php', '2018-10-10 18:02:09'),
(737, 5, 'admin/language/uk-ua/extension/extension/dashboard.php', '2018-10-10 18:02:09'),
(738, 5, 'admin/language/uk-ua/extension/extension/feed.php', '2018-10-10 18:02:09'),
(739, 5, 'admin/language/uk-ua/extension/extension/fraud.php', '2018-10-10 18:02:09'),
(740, 5, 'admin/language/uk-ua/extension/extension/module.php', '2018-10-10 18:02:09'),
(741, 5, 'admin/language/uk-ua/extension/extension/payment.php', '2018-10-10 18:02:09'),
(742, 5, 'admin/language/uk-ua/extension/extension/shipping.php', '2018-10-10 18:02:09'),
(743, 5, 'admin/language/uk-ua/extension/extension/theme.php', '2018-10-10 18:02:09'),
(744, 5, 'admin/language/uk-ua/extension/extension/total.php', '2018-10-10 18:02:09'),
(745, 5, 'admin/language/uk-ua/extension/feed/google_base.php', '2018-10-10 18:02:09'),
(746, 5, 'admin/language/uk-ua/extension/feed/google_sitemap.php', '2018-10-10 18:02:09'),
(747, 5, 'admin/language/uk-ua/extension/fraud/ip.php', '2018-10-10 18:02:09'),
(748, 5, 'admin/language/uk-ua/extension/module/account.php', '2018-10-10 18:02:09'),
(749, 5, 'admin/language/uk-ua/extension/module/affiliate.php', '2018-10-10 18:02:09'),
(750, 5, 'admin/language/uk-ua/extension/module/banner.php', '2018-10-10 18:02:09'),
(751, 5, 'admin/language/uk-ua/extension/module/bestseller.php', '2018-10-10 18:02:09'),
(752, 5, 'admin/language/uk-ua/extension/module/carousel.php', '2018-10-10 18:02:09'),
(753, 5, 'admin/language/uk-ua/extension/module/category.php', '2018-10-10 18:02:09'),
(754, 5, 'admin/language/uk-ua/extension/module/featured.php', '2018-10-10 18:02:09'),
(755, 5, 'admin/language/uk-ua/extension/module/filter.php', '2018-10-10 18:02:09'),
(756, 5, 'admin/language/uk-ua/extension/module/google_hangouts.php', '2018-10-10 18:02:09'),
(757, 5, 'admin/language/uk-ua/extension/module/html.php', '2018-10-10 18:02:09'),
(758, 5, 'admin/language/uk-ua/extension/module/information.php', '2018-10-10 18:02:09'),
(759, 5, 'admin/language/uk-ua/extension/module/latest.php', '2018-10-10 18:02:09'),
(760, 5, 'admin/language/uk-ua/extension/module/pp_button.php', '2018-10-10 18:02:09'),
(761, 5, 'admin/language/uk-ua/extension/module/slideshow.php', '2018-10-10 18:02:09'),
(762, 5, 'admin/language/uk-ua/extension/module/special.php', '2018-10-10 18:02:09'),
(763, 5, 'admin/language/uk-ua/extension/module/store.php', '2018-10-10 18:02:09'),
(764, 5, 'admin/language/uk-ua/extension/payment/bank_transfer.php', '2018-10-10 18:02:09'),
(765, 5, 'admin/language/uk-ua/extension/payment/cheque.php', '2018-10-10 18:02:09'),
(766, 5, 'admin/language/uk-ua/extension/payment/cod.php', '2018-10-10 18:02:09'),
(767, 5, 'admin/language/uk-ua/extension/payment/free_checkout.php', '2018-10-10 18:02:09'),
(768, 5, 'admin/language/uk-ua/extension/payment/liqpay.php', '2018-10-10 18:02:09'),
(769, 5, 'admin/language/uk-ua/extension/payment/pp_express.php', '2018-10-10 18:02:09'),
(770, 5, 'admin/language/uk-ua/extension/payment/pp_express_order.php', '2018-10-10 18:02:09'),
(771, 5, 'admin/language/uk-ua/extension/payment/pp_express_refund.php', '2018-10-10 18:02:09'),
(772, 5, 'admin/language/uk-ua/extension/payment/pp_express_search.php', '2018-10-10 18:02:09'),
(773, 5, 'admin/language/uk-ua/extension/payment/pp_express_view.php', '2018-10-10 18:02:09'),
(774, 5, 'admin/language/uk-ua/extension/payment/pp_pro.php', '2018-10-10 18:02:09'),
(775, 5, 'admin/language/uk-ua/extension/payment/pp_standard.php', '2018-10-10 18:02:09'),
(776, 5, 'admin/language/uk-ua/extension/shipping/citylink.php', '2018-10-10 18:02:09'),
(777, 5, 'admin/language/uk-ua/extension/shipping/flat.php', '2018-10-10 18:02:09'),
(778, 5, 'admin/language/uk-ua/extension/shipping/free.php', '2018-10-10 18:02:09'),
(779, 5, 'admin/language/uk-ua/extension/shipping/item.php', '2018-10-10 18:02:09'),
(780, 5, 'admin/language/uk-ua/extension/shipping/pickup.php', '2018-10-10 18:02:09'),
(781, 5, 'admin/language/uk-ua/extension/shipping/weight.php', '2018-10-10 18:02:09'),
(782, 5, 'admin/language/uk-ua/extension/theme/theme_default.php', '2018-10-10 18:02:09'),
(783, 5, 'admin/language/uk-ua/extension/total/coupon.php', '2018-10-10 18:02:09'),
(784, 5, 'admin/language/uk-ua/extension/total/credit.php', '2018-10-10 18:02:09'),
(785, 5, 'admin/language/uk-ua/extension/total/handling.php', '2018-10-10 18:02:09'),
(786, 5, 'admin/language/uk-ua/extension/total/low_order_fee.php', '2018-10-10 18:02:09'),
(787, 5, 'admin/language/uk-ua/extension/total/reward.php', '2018-10-10 18:02:09'),
(788, 5, 'admin/language/uk-ua/extension/total/shipping.php', '2018-10-10 18:02:09'),
(789, 5, 'admin/language/uk-ua/extension/total/sub_total.php', '2018-10-10 18:02:09'),
(790, 5, 'admin/language/uk-ua/extension/total/tax.php', '2018-10-10 18:02:09'),
(791, 5, 'admin/language/uk-ua/extension/total/total.php', '2018-10-10 18:02:09'),
(792, 5, 'admin/language/uk-ua/extension/total/voucher.php', '2018-10-10 18:02:09'),
(793, 5, 'catalog/language/uk-ua/extension/captcha/basic_captcha.php', '2018-10-10 18:02:09'),
(794, 5, 'catalog/language/uk-ua/extension/captcha/google_captcha.php', '2018-10-10 18:02:09'),
(795, 5, 'catalog/language/uk-ua/extension/module/account.php', '2018-10-10 18:02:09'),
(796, 5, 'catalog/language/uk-ua/extension/module/affiliate.php', '2018-10-10 18:02:09'),
(797, 5, 'catalog/language/uk-ua/extension/module/bestseller.php', '2018-10-10 18:02:09'),
(798, 5, 'catalog/language/uk-ua/extension/module/category.php', '2018-10-10 18:02:09'),
(799, 5, 'catalog/language/uk-ua/extension/module/featured.php', '2018-10-10 18:02:09'),
(800, 5, 'catalog/language/uk-ua/extension/module/filter.php', '2018-10-10 18:02:09'),
(801, 5, 'catalog/language/uk-ua/extension/module/google_hangouts.php', '2018-10-10 18:02:09'),
(802, 5, 'catalog/language/uk-ua/extension/module/information.php', '2018-10-10 18:02:09'),
(803, 5, 'catalog/language/uk-ua/extension/module/latest.php', '2018-10-10 18:02:09'),
(804, 5, 'catalog/language/uk-ua/extension/module/sms_alert.php', '2018-10-10 18:02:09'),
(805, 5, 'catalog/language/uk-ua/extension/module/special.php', '2018-10-10 18:02:09'),
(806, 5, 'catalog/language/uk-ua/extension/module/store.php', '2018-10-10 18:02:09'),
(807, 5, 'catalog/language/uk-ua/extension/payment/bank_transfer.php', '2018-10-10 18:02:09'),
(808, 5, 'catalog/language/uk-ua/extension/payment/cheque.php', '2018-10-10 18:02:09'),
(809, 5, 'catalog/language/uk-ua/extension/payment/cod.php', '2018-10-10 18:02:09'),
(810, 5, 'catalog/language/uk-ua/extension/payment/free_checkout.php', '2018-10-10 18:02:09'),
(811, 5, 'catalog/language/uk-ua/extension/payment/liqpay.php', '2018-10-10 18:02:09'),
(812, 5, 'catalog/language/uk-ua/extension/payment/moneybookers.php', '2018-10-10 18:02:09'),
(813, 5, 'catalog/language/uk-ua/extension/payment/pp_express.php', '2018-10-10 18:02:09'),
(814, 5, 'catalog/language/uk-ua/extension/payment/pp_pro.php', '2018-10-10 18:02:09'),
(815, 5, 'catalog/language/uk-ua/extension/payment/pp_standard.php', '2018-10-10 18:02:09'),
(816, 5, 'catalog/language/uk-ua/extension/recurring/pp_express.php', '2018-10-10 18:02:09'),
(817, 5, 'catalog/language/uk-ua/extension/shipping/citylink.php', '2018-10-10 18:02:09'),
(818, 5, 'catalog/language/uk-ua/extension/shipping/flat.php', '2018-10-10 18:02:09'),
(819, 5, 'catalog/language/uk-ua/extension/shipping/free.php', '2018-10-10 18:02:09'),
(820, 5, 'catalog/language/uk-ua/extension/shipping/item.php', '2018-10-10 18:02:09'),
(821, 5, 'catalog/language/uk-ua/extension/shipping/pickup.php', '2018-10-10 18:02:09'),
(822, 5, 'catalog/language/uk-ua/extension/shipping/weight.php', '2018-10-10 18:02:09'),
(823, 5, 'catalog/language/uk-ua/extension/total/coupon.php', '2018-10-10 18:02:09'),
(824, 5, 'catalog/language/uk-ua/extension/total/credit.php', '2018-10-10 18:02:09'),
(825, 5, 'catalog/language/uk-ua/extension/total/handling.php', '2018-10-10 18:02:09'),
(826, 5, 'catalog/language/uk-ua/extension/total/low_order_fee.php', '2018-10-10 18:02:09'),
(827, 5, 'catalog/language/uk-ua/extension/total/reward.php', '2018-10-10 18:02:09'),
(828, 5, 'catalog/language/uk-ua/extension/total/shipping.php', '2018-10-10 18:02:09'),
(829, 5, 'catalog/language/uk-ua/extension/total/sub_total.php', '2018-10-10 18:02:09'),
(830, 5, 'catalog/language/uk-ua/extension/total/total.php', '2018-10-10 18:02:09'),
(831, 5, 'catalog/language/uk-ua/extension/total/voucher.php', '2018-10-10 18:02:09'),
(832, 8, 'catalog/view/theme/my-bottle/stylesheet/size-color.min.css', '2018-10-16 11:29:49'),
(833, 8, 'catalog/view/theme/my-bottle/stylesheet/size-color.min.js', '2018-10-16 11:29:49');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2014-05-21 22:30:20', '2014-09-09 11:48:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', ''),
(5, 1, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
(3, 1, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', ''),
(6, 1, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
(4, 2, 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', ''),
(5, 2, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
(3, 2, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', ''),
(6, 2, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', ''),
(4, 3, 'О нас', '&lt;p&gt;\r\n	About Us&lt;/p&gt;', 'О нас', '', ''),
(5, 3, 'Условия соглашения', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;', 'Условия соглашения', '', ''),
(3, 3, 'Политика Безопасности', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;', 'Политика Безопасности', '', ''),
(6, 3, 'Доставка', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;', 'Доставка', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'Russian', 'ru-ru', 'ru_RU.UTF-8,ru_RU,russian', 'ru-ru.png', 'russian', 1, 1),
(2, 'english', 'en-gb', 'en', '', '', 1, 1),
(3, 'Українська', 'uk-ua', 'ua_UA.UTF-8,ua_UA,ua_UA,ua', '', '', 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(100, 'Blog post'),
(101, 'Blog category'),
(102, 'Blog search'),
(103, 'Blog author');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(118, 1, 'html.36', 'content_top', 7),
(117, 1, 'featured.35', 'content_top', 6),
(116, 1, 'html.38', 'content_top', 5),
(126, 100, 'html.41', 'content_bottom', 0),
(124, 3, 'category', 'column_left', 1),
(115, 1, 'featured.28', 'content_top', 4),
(114, 1, 'html.37', 'content_top', 3),
(113, 1, 'html.34', 'content_top', 2),
(112, 1, 'html.33', 'content_top', 1),
(111, 1, 'html.32', 'content_top', 0),
(123, 2, 'featured.28', 'content_bottom', 1),
(122, 2, 'html.39', 'content_bottom', 0),
(127, 100, 'html.40', 'content_bottom', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(68, 3, 0, 'product/category'),
(64, 1, 0, 'common/home'),
(67, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(74, 100, 0, 'extension/d_blog_module/post'),
(70, 101, 0, 'extension/d_blog_module/category'),
(71, 102, 0, 'extension/d_blog_module/search'),
(72, 103, 0, 'extension/d_blog_module/author');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Сантиметр', 'см'),
(2, 1, 'Миллиметр', 'мм'),
(1, 2, 'Сантиметр', 'см'),
(2, 2, 'Миллиметр', 'мм'),
(1, 3, 'Сантиметр', 'см'),
(2, 3, 'Миллиметр', 'мм');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_megamenu`
--

CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text,
  `icon` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_megamenu_description`
--

CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_megamenu_widgets`
--

CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:\"video_code\";s:168:\"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:\"html\";a:1:{i:1;s:275:\"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.\";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:5:\"limit\";s:2:\"12\";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(4, 4, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.x', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.x</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2018-10-02 21:06:00'),
(5, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2018-10-02 21:06:20'),
(6, 8, 'Size and Color option display', 'size_color_option_display', 'Rishabh Thakur', '1.0', '', '﻿<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Size and Color option display</name>\r\n    <version>1.0</version>\r\n    <code>size_color_option_display</code>\r\n    <author>Rishabh Thakur</author>\r\n    <link></link>\r\n    <file path=\"admin/language/*/catalog/option.php\">\r\n        <operation>\r\n            <search><![CDATA[$_[\'entry_type\']]]></search>\r\n            <add position=\"before\"><![CDATA[$_[\'entry_display_type\']  = \'Option Display Type\';]]></add>\r\n        </operation>\r\n    </file> \r\n\r\n    <file path=\"admin/controller/catalog/option.php\">\r\n        <operation>\r\n            <search><![CDATA[public function index() {]]></search>\r\n            <add position=\"after\"><![CDATA[     if ($this->db->query(\'SHOW COLUMNS FROM `\' . DB_PREFIX . \'option` LIKE \"display_type\"\')->num_rows == 0) {\r\n            $this->db->query(\"ALTER TABLE `\" . DB_PREFIX . \"option` ADD `display_type` INT(3) NOT NULL DEFAULT \'0\' COMMENT \'0 = Default, 1 = Box\' AFTER `type`\");\r\n        }]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'entry_type\'] = $this->language->get(\'entry_type\');]]></search>\r\n            <add position=\"after\"><![CDATA[     $data[\'entry_display_type\'] = $this->language->get(\'entry_display_type\');]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[if (isset($this->request->post[\'sort_order\'])) {]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if (isset($this->request->post[\'display_type\'])) {\r\n                    $data[\'display_type\'] = $this->request->post[\'display_type\'];\r\n                } elseif (!empty($option_info)) {\r\n                    $data[\'display_type\'] = $option_info[\'display_type\'];\r\n                } else {\r\n                    $data[\'display_type\'] = \'0\';\r\n                }\r\n                ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/model/catalog/option.php\">\r\n        <operation>\r\n            <search><![CDATA[type = \'\" . $this->db->escape($data[\'type\']) . \"\']]></search>\r\n            <add position=\"replace\"><![CDATA[type = \'\" . $this->db->escape($data[\'type\']) . \"\', display_type = \'\" . $this->db->escape($data[\'display_type\']) . \"\']]></add>\r\n        </operation>        \r\n    </file>     \r\n    \r\n    <file path=\"admin/view/template/catalog/option_form.twig\">\r\n        <operation>\r\n            <search><![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-sort-order\"><?php echo $entry_sort_order; ?></label>]]></search>\r\n            <add position=\"before\"><![CDATA[            <label class=\"col-sm-2 control-label\" for=\"input-display-type\"><?php echo $entry_display_type; ?></label>\r\n            <div class=\"col-sm-10\">\r\n              <select name=\"display_type\" id=\"input-display-type\" class=\"form-control\">                \r\n                <?php if ($display_type == \'1\') { ?>\r\n                <option value=\"0\" >Default</option>\r\n                <option value=\"1\" selected=\"selected\">Size & Color View</option>\r\n                <?php } else { ?>\r\n                <option value=\"0\" selected=\"selected\">Default</option>\r\n                <option value=\"1\">Size & Color View</option>\r\n                <?php } ?>                \r\n              </select>\r\n            </div>\r\n          </div>\r\n          <div class=\"form-group\">]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(\'#option-value\').show();]]></search>\r\n            <add position=\"after\"><![CDATA[$(\'#input-display-type\').closest(\".form-group\").show();]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$(\'#option-value\').hide();]]></search>\r\n            <add position=\"after\"><![CDATA[$(\'#input-display-type\').closest(\".form-group\").hide();]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[$product_option[\'type\']]]></search>\r\n            <add position=\"replace\"><![CDATA[$product_option[\'type\'], \'display_type\' => $product_option[\'display_type\']]]></add>\r\n        </operation>\r\n    </file>    \r\n    <file path=\"catalog/controller/product/product.php\">\r\n        <operation>\r\n            <search><![CDATA[$data[\'heading_title\'] = $product_info[\'name\'];]]></search>\r\n            <add position=\"before\"><![CDATA[            $this->document->addScript(\'catalog/view/sizecoloroption/size-color.min.js\');\r\n            $this->document->addStyle(\'catalog/view/sizecoloroption/size-color.min.css\');]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$option[\'type\']]]></search>\r\n            <add position=\"replace\"><![CDATA[$option[\'type\'], \'display_type\' => $option[\'display_type\']]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/view/theme/default/template/product/product.twig\">\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'select\') { ?>]]></search>\r\n            <add position=\"after\"><![CDATA[            <?php if ($option[\'display_type\'] == \'1\') { ?>\r\n            <div class=\"form-group<?php echo ($option[\'required\'] ? \' required\' : \'\'); ?>\">\r\n              <label class=\"control-label\" for=\"input-option<?php echo $option[\'product_option_id\']; ?>\"><?php echo $option[\'name\']; ?></label>\r\n              <ul class=\"size-color-select\">\r\n                <?php foreach ($option[\'product_option_value\'] as $option_value) { ?>\r\n                  <li class=\"boxselect\" id=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\" onclick=\"addSelected(this,\'<?php echo $option[\'product_option_id\']; ?>\',\'<?php echo $option_value[\'product_option_value_id\']; ?>\');\"><?php echo $option_value[\'name\']; ?></li>\r\n                <?php } ?>\r\n              </ul>\r\n              <select name=\"option[<?php echo $option[\'product_option_id\']; ?>]\" id=\"input-option<?php echo $option[\'product_option_id\']; ?>\" class=\"form-control hide-field\">\r\n                <option value=\"\"><?php echo $text_select; ?></option>\r\n                <?php foreach ($option[\'product_option_value\'] as $option_value) { ?>\r\n                <option value=\"<?php echo $option_value[\'product_option_value_id\']; ?>\"><?php echo $option_value[\'name\']; ?>\r\n                <?php if ($option_value[\'price\']) { ?>\r\n                (<?php echo $option_value[\'price_prefix\']; ?><?php echo $option_value[\'price\']; ?>)\r\n                <?php } ?>\r\n                </option>\r\n                <?php } ?>\r\n              </select>\r\n            </div>            \r\n            <?php }else{ ?>]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'radio\') { ?>]]></search>\r\n            <add position=\"before\"><![CDATA[            <?php } ?>]]></add>\r\n        </operation>          \r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'radio\') { ?>]]></search>\r\n            <add position=\"after\"><![CDATA[            <?php if ($option[\'display_type\'] == \'1\') { ?>\r\n            <div class=\"form-group<?php echo ($option[\'required\'] ? \' required\' : \'\'); ?>\">\r\n              <label class=\"control-label\"><?php echo $option[\'name\']; ?></label>\r\n              <div class=\"size-color\" id=\"input-option<?php echo $option[\'product_option_id\']; ?>\">\r\n                <?php foreach ($option[\'product_option_value\'] as $option_value) { ?>\r\n                <input type=\"radio\" name=\"option[<?php echo $option[\'product_option_id\']; ?>]\" value=\"<?php echo $option_value[\'product_option_value_id\']; ?>\" id=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\" class=\"hide-field\" />                \r\n                  <label for=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\"><?php echo $option_value[\'name\']; ?></label>\r\n                <?php } ?>\r\n              </div>\r\n            </div>          \r\n            <?php }else{ ?>]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'checkbox\') { ?>]]></search>\r\n            <add position=\"before\"><![CDATA[            <?php } ?>]]></add>\r\n        </operation>        \r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'checkbox\') { ?>]]></search>\r\n            <add position=\"after\"><![CDATA[            <?php if ($option[\'display_type\'] == \'1\') { ?>\r\n            <div class=\"form-group<?php echo ($option[\'required\'] ? \' required\' : \'\'); ?>\">\r\n              <label class=\"control-label\"><?php echo $option[\'name\']; ?></label>\r\n              <div class=\"size-color\" id=\"input-option<?php echo $option[\'product_option_id\']; ?>\">\r\n                <?php foreach ($option[\'product_option_value\'] as $option_value) { ?>\r\n                <input type=\"checkbox\" name=\"option[<?php echo $option[\'product_option_id\']; ?>][]\" value=\"<?php echo $option_value[\'product_option_value_id\']; ?>\" id=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\" class=\"hide-field\" />                \r\n                  <label for=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\"><?php echo $option_value[\'name\']; ?></label>\r\n                <?php } ?>\r\n              </div>\r\n            </div>            \r\n            <?php }else{ ?>]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'image\') { ?>]]></search>\r\n            <add position=\"before\"><![CDATA[            <?php } ?>]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'image\') { ?>]]></search>\r\n            <add position=\"after\"><![CDATA[            <?php if ($option[\'display_type\'] == \'1\') { ?>\r\n            <div class=\"form-group<?php echo ($option[\'required\'] ? \' required\' : \'\'); ?>\">\r\n              <label class=\"control-label\"><?php echo $option[\'name\']; ?></label>\r\n              <div class=\"size-color\" id=\"input-option<?php echo $option[\'product_option_id\']; ?>\">\r\n                <?php foreach ($option[\'product_option_value\'] as $option_value) { ?>\r\n                <label for=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\"><input type=\"radio\" name=\"option[<?php echo $option[\'product_option_id\']; ?>]\" value=\"<?php echo $option_value[\'product_option_value_id\']; ?>\" id=\"option-value-<?php echo $option_value[\'product_option_value_id\']; ?>\" class=\"hide-field\" />\r\n                <img src=\"<?php echo $option_value[\'image\']; ?>\" alt=\"<?php echo $option_value[\'name\'] . ($option_value[\'price\'] ? \' \' . $option_value[\'price_prefix\'] . $option_value[\'price\'] : \'\'); ?>\" id=\"image-option-<?php echo $option_value[\'product_option_value_id\']; ?>\" onclick=\"imageSelected(this,\'<?php echo $option[\'product_option_id\']; ?>\',\'<?php echo $option_value[\'product_option_value_id\']; ?>\');\" class=\"img-thumbnail boximage\"  /></label>\r\n                <?php } ?>\r\n              </div>\r\n            </div>            \r\n            <?php }else{ ?>]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<?php if ($option[\'type\'] == \'text\') { ?>]]></search>\r\n            <add position=\"before\"><![CDATA[            <?php } ?>]]></add>\r\n        </operation>         \r\n    </file>  \r\n    \r\n</modification>', 1, '2018-10-16 11:29:50');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'product hit', 'featured', '{\"name\":\"product hit\",\"product_name\":\"\",\"product\":[\"52\",\"51\",\"53\",\"54\"],\"limit\":\"4\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(35, 'new product', 'featured', '{\"name\":\"new product\",\"product_name\":\"\",\"product\":[\"51\",\"52\",\"53\",\"54\"],\"limit\":\"5\",\"width\":\"400\",\"height\":\"400\",\"status\":\"1\"}'),
(32, 'Slider home', 'html', '{\"name\":\"Slider home\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"\"},\"1\":{\"title\":\"\",\"description\":\" &lt;section class=&quot;container specialProductHome&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-9&quot;&gt;\\r\\n                &lt;div class=&quot;homeSlider&quot;&gt;\\r\\n                    &lt;div class=&quot;homeSliderIteam&quot;&gt;\\r\\n                       &lt;img src=&quot;image\\/catalog\\/sliderHome\\/10-layers.png&quot; alt=&quot;shaker&quot;&gt;\\r\\n                        &lt;button class=&quot;BTNdark&quot;&gt;\\r\\n                            BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                        &lt;\\/button&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;homeSliderIteam&quot;&gt;\\r\\n                        &lt;img src=&quot;image\\/catalog\\/sliderHome\\/10-layers.png&quot; alt=&quot;shaker&quot;&gt;\\r\\n                        &lt;button class=&quot;BTNdark&quot;&gt;\\r\\n                            BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                        &lt;\\/button&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;homeSliderIteam&quot;&gt;\\r\\n                        &lt;img src=&quot;image\\/catalog\\/sliderHome\\/10-layers.png&quot; alt=&quot;shaker&quot;&gt;\\r\\n                        &lt;button class=&quot;BTNdark&quot;&gt;\\r\\n                            BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                        &lt;\\/button&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;homeSliderIteam&quot;&gt;\\r\\n                        &lt;img src=&quot;image\\/catalog\\/sliderHome\\/10-layers.png&quot; alt=&quot;shaker&quot;&gt;\\r\\n                        &lt;button class=&quot;BTNdark&quot;&gt;\\r\\n                            BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                        &lt;\\/button&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-lg-3 col-12 homeSpecialProductRightSide&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot;&gt;\\r\\n                   &lt;img src=&quot;\\/image\\/catalog\\/sliderHome\\/specialProduct2.png&quot; alt=&quot;\\u041a\\u0440\\u0443\\u0442\\u0430\\u044f \\u0444\\u043b\\u044f\\u0433\\u0430&quot;&gt;\\r\\n                &lt;\\/a&gt;\\r\\n                &lt;a href=&quot;\\/&quot;&gt;\\r\\n                  &lt;img src=&quot;\\/image\\/catalog\\/sliderHome\\/specialProduct1.png&quot; alt=&quot;\\u041a\\u0440\\u0443\\u0442\\u043e\\u0439 \\u0448\\u0435\\u0439\\u043a\\u0435\\u0440&quot;&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;\"},\"3\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}'),
(33, 'Feedback', 'html', '{\"name\":\"Feedback\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"   &lt;section class=&quot;subscription container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col col-12&quot;&gt;\\r\\n                &lt;div class=&quot;row&quot;&gt;\\r\\n                    &lt;div class=&quot;col col-lg-8 col-12 subscription_Text&quot;&gt;\\r\\n                        &lt;p&gt;\\r\\n                            &lt;img src=&quot;data:image\\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAABDCAMAAADwFEhBAAAAAXNSR0IB2cksfwAAAeZQTFRFAAAA\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/\\/GSMnDwAAAKJ0Uk5TAAMCBAEGCAkHBQo0dX18d3t5eHR2enI2MjozNTk3LVr\\/YraKHhudglnKwsTGwcPHxcj+RholIR0mJBwgH1QU80JM8khVGPY+TSht4C\\/UZEU7T9tgaPAP9aeJI1KVjBlKP+OxDugTPUE8Uwu15EmsEEBQmvRelKhYR+YWDEsnErzQqu\\/8+pFmQ1HrXOW3FRFOF1dsX1tdVvjO1p\\/Y3N3e3+Gh5QOBxwAABtlJREFUeJyNWAl3FEUQrj5memaISTBEQhJklIAhiVlEkqCGQzReUUERUNEQRREieIGuguItimcMwQNz+E+tqu6e6dldH9n3YLZ7a6rr+Oqr6gAICQq0AKHxKcMFPaFx0y6UfU0KUBpARDpW0ugo0kaoWCcpLRJtlDI6iaSRaYwLgYvESsRpuBmhPgkmlZmOYsiEyAD3MpkaMAo3E9pUBmInYbyEVjFLQJTgJqAA7qX0XRoUAEMCscJNFhC4yRL8Fh9sZKEXJRS6i69aFSQdWoECzgpWoflgdCiTVdNSAGnPsGYCmmkKMzMprApgCVlKkJ28KXET0IHSCtxjR1xYhVPhvdJsJ8ba2akz2pSYsCh0xAXLCtCB6L6NRaHCHgJltADYKRvOzIczcASqjkhVNQ0PwZhGXoU2zVawtLeiOZyc6RR0gAsVZkQUGamG0zg7jaTX0E4JugkXhafoSBELaMAFB1zHdDJWgCxwUXWEBZyKLHTEOEd8FjCmypmZmuZwNjlSSLDxqd0EEQeOWFz4WFQcCaPlJNhOg+Ur+HujI7gps5a40DacvooS3ARKcGtc6Ja4SAtcuJMpHGmAi4QEXPClg4AuHCkygiGMy+rkmgscAVM90EbOpx0BHnlHEL\\/KIlxjzVVw4R1BllvLB3HGNYcWNX4yZM11bbe1tXd0tLd1rm9rb7u9s6uzY0N7V3d3V+eGjs6u7o62zg13rINYR+gLqkg29mzq7dvU07+xd1PP5v47NarYkq\\/lcxeoBPGB\\/+5u+GUr6IE1qcjzbZI5OYHtDT\\/cAzCIjx1DQ8Mj946MjtaGdu4cqo0O14ZqO0droyMjQ7Xh4ftGd+zK8\\/stJysBu8fGJ\\/ZMjD\\/w4NhDk2MDkxiRvahj3y0CmuzP8wPcgghFjR8DD5OdwMmRQE9tn5oX0kb+YJ4\\/AsTJwiVVhXwBj6KOSRS\\/MwbfR0r8JpBO4Tn7Hsvzx\\/HpOZkEyo+AJ1DHkwBP5dNPY1ssSInRqaDnmf3PAkyhL4dIWIADuNZ9PYf7+g739Peg7udQxwDA83m+6wjGTAftB+AF\\/PEowLHjpIM4OXFlBi8WeXnJxvRlgBO0fAVC1gZ4lTZR88xx8oVrzjoSBTq2ajiJjzG0Z\\/Y1\\/PL6KepkjvhmRnHnjQMY3Tc5psTJnsGF6J093f9W\\/5nZXiHgLApOQKph7m38du6A7cuYj\\/NHcf0Opj2DdzGm76EFyMlSuj5SfjS8zzHltz4g005QgWNWO5yvWO2w+wLhQxMnh0llEkGbGR\\/jwH0ELtJ7HxIqjn1E0axTNqWCY5iXjyG1NVe2IgueyOJjHJjXAHrP4aoWw+lPqAKmyH86+RLjI+aaSzzx4Vx0eXJ82wT68ilKf2Y7DdLLlc9x+cV6sudLVGxVwKWDZAeNVFD2EanPfJV\\/nX\\/TbeMxALaPaDzqW5ey7xAMrlkxPq4yJ3Pv88R3lgW3W2DsAU\\/Q6OL39MMPm0En4NoEzFygvFDNKddHmMHh6rW9W87i8iRjjNuyw0X\\/j\\/lPP0PkrcC0\\/4K+nAdZmYOI1u0nZZxizYmSoOHyOqj2uysY01lgTnb8nBFp+z4CvzI+7EzhooW648S3CdyEGVtzPAdVupntI6xjErKwCbr5qoATnGJ8ECdHxVipy37na665cQtTDJ6\\/HSdfaA7CjumLspwvOKb6Vt3lKMUUgye1H10rg9I86vh9fqG+cH3wSH1xsb4wuGVhfvF6faF+ffHGxcH6xRvX5hf+oLpF0rM11zgowaE19obNxK3lHESxsFZgY1V\\/rknFXwnwHFSdtVyNQPL3zenpf6aXlvG\\/laXVpZXppenlZX6uLq+sLq2uLK\\/e\\/HeKRlMQJsQFJ4GnX+4QeEasZQyRwvLAKTQWWDspMx+OT4SYyDAnx03zBQP8VkmxgI4rc5BpHB\\/+FxemnMYsfpmTw\\/tIeRMqh6NgxLazJgSbqeekYIB2o2vqZ3sfcNX6roScTHOQaZ6DPLvygR45xY0ND5mj2SdTco44maS9I1lohZ81gzKLi2tMedFhTo7dAF3e3piUYkcHhZ2BI07CjavEyeWgL7OQXcvIEV9AoyMoMQd49SzvppXOHjhShDO4bvnJ3NopoIqLJMQF41eY6oUkabTTzUGtrajgorx6VrGAr0U0BxW44Hin3kziTm9FgIusdMQar90clDU54scSG86kCGfmcOEDnnHNRY03AeuIzsLO0GinCUNoR6kAF9Vw0marjJQ5C+6msbuPlfG2uJhrAjhiYS4EC3KydJdXyYMdzkNGEhsqZSRdskX1zx9Gx2l5k2fvOLnE7ilgY04BSTDVqFnRAseUVNKipQQGkuZb3PwPoDLkbIduf\\/EAAAAASUVORK5CYII=&quot; alt=&quot;mail&quot;&gt;\\r\\n                            ZAPISZ SI\\u0118 DO NEWSLETTERA\\r\\n\\r\\n                            &lt;mark&gt;\\r\\n                                Zapisz si\\u0119 do newslettera! Otrzymasz 40 z\\u0142 rabatu\\r\\n                            &lt;\\/mark&gt;\\r\\n                        &lt;\\/p&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;col col-lg-4 col-12&quot;&gt;\\r\\n                            &lt;div class=&quot;formSubscription&quot;&gt;\\r\\n                              &lt;input type=&quot;mail&quot; name=&quot;formSubscription&quot; placeholder=&quot;Twoj adress e-mail&quot;&gt;\\r\\n                              &lt;button type=&quot;submit&quot;&gt;\\r\\n                                Zapisz sie\\r\\n                            \\t&lt;\\/button&gt;\\r\\n                            &lt;\\/div&gt;\\r\\n                            \\r\\n                        \\r\\n                    &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;\\r\\n\\r\\n\\r\\n&lt;div class=&quot;modal fade&quot; id=&quot;formSubscription&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;exampleModalLabel&quot; aria-hidden=&quot;true&quot;&gt;\\r\\n  &lt;div class=&quot;modal-dialog&quot; role=&quot;document&quot;&gt;\\r\\n    &lt;div class=&quot;modal-content&quot;&gt;\\r\\n      &lt;div class=&quot;modal-header&quot;&gt;\\r\\n        &lt;h5 class=&quot;modal-title&quot; id=&quot;exampleModalLabel&quot;&gt;\\u041f\\u0438\\u0441\\u044c\\u043c\\u043e \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u043e!&lt;\\/h5&gt;\\r\\n        &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-label=&quot;Close&quot;&gt;\\r\\n          &lt;span aria-hidden=&quot;true&quot;&gt;\\u00d7&lt;\\/span&gt;\\r\\n        &lt;\\/button&gt;\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;modal-body&quot;&gt;\\r\\n       \\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e! \\r\\n\\t\\t&lt;br&gt;\\r\\n        \\u041c\\u044b \\u0441\\u043a\\u043e\\u0440\\u043e \\u0441\\u0432\\u044f\\u0436\\u0435\\u043c\\u0441\\u044f \\u0432 \\u0412\\u0430\\u043c\\u0438. \\r\\n\\t\\t&lt;br&gt;\\r\\n        \\u0412\\u0430\\u0448\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0449\\u0435\\u043d\\u0438\\u0435 \\u043e\\u0447\\u0435\\u043d\\u044c \\u0432\\u0430\\u0436\\u043d\\u043e \\u0434\\u043b\\u044f \\u043d\\u0430\\u0441!\\r\\n      &lt;\\/div&gt;\\r\\n      &lt;div class=&quot;modal-footer&quot;&gt;\\r\\n        &lt;button type=&quot;button&quot; class=&quot;btn btn-secondary&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;\\/button&gt;\\r\\n       \\r\\n      &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"formSubscription\":\"\",\"status\":\"1\"}'),
(34, 'category img', 'html', '{\"name\":\"category img\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"\\r\\n&lt;section class=&quot;imgCategory container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/40.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        CLASSIC &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/43.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        GoStak\\u00ae Snack Pack &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/45.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        CLASSIC &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/46.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        CLASSIC &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/47.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        GoStak\\u00ae Snack Pack &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n            &lt;div class=&quot;col col-12 col-lg-4 col-md-6&quot;&gt;\\r\\n                &lt;a href=&quot;\\/&quot; class=&quot;imgCategoryIteam&quot;&gt;\\r\\n                    &lt;img src=&quot;\\/image\\/catalog\\/body\\/categoryIMG\\/48.png&quot; alt=&quot;\\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f&quot;&gt;\\r\\n                    &lt;span&gt;\\r\\n                        CLASSIC &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;\\/i&gt;\\r\\n                    &lt;\\/span&gt;\\r\\n                &lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;\"}},\"status\":\"1\"}'),
(36, 'home text', 'html', '{\"name\":\"home text\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\" &lt;section class=&quot;aboutUs container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col-12 col&quot;&gt;\\r\\n                &lt;p&gt;\\r\\n                    &lt;br&gt;\\r\\n                    Oferujemy wysokiej jako\\u015bci szejki i dzbanki na wod\\u0119 w atrakcyjnych cenach, kt\\u00f3re pomog\\u0105 Ci w profesjonalny spos\\u00f3b promowa\\u0107 sw\\u00f3j biznes. Nasze produkty wykonane s\\u0105 z najwy\\u017cszej jako\\u015bci materia\\u0142\\u00f3w i zaprojektowane, aby zapobiega\\u0107 wyciekom i zapewni\\u0107 doskona\\u0142e i bezpieczne zamkni\\u0119cie.\\r\\n                    &lt;br&gt;\\r\\n                    &lt;br&gt;\\r\\n                    Nasza szeroka gama kolor\\u00f3w pozwala Ci znale\\u017a\\u0107 ulubione produkty, a tak\\u017ce kolory Twojej firmy, aby przyci\\u0105gn\\u0105\\u0107 uwag\\u0119 tw\\u00f3rc\\u00f3w, a reklama by\\u0142a jeszcze bardziej skuteczna. Nasza szeroka gama kolor\\u00f3w gwarantuje, \\u017ce znajdziesz ulubione, a tak\\u017ce kolory w\\u0142asne firmy, aby przyci\\u0105gn\\u0105\\u0107 uwag\\u0119 tw\\u00f3rc\\u00f3w, a reklama by\\u0142a jeszcze bardziej skuteczna.\\r\\n                &lt;\\/p&gt;\\r\\n                &lt;p class=&quot;alarmBlueTex&quot;&gt;\\r\\n                    SPERSONALIZOWANE SHAKERS I KUBKI WODNE W WIELKICH CENACH! \\r\\n                    &lt;br&gt;\\r\\n                    POPRAW SWOJ\\u0104 SPRZEDA\\u017b Z W\\u0141ASNYMI, OSOBISTYMI WY\\u0141\\u0104CZNIKAMI!\\r\\n                &lt;\\/p&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;\"}},\"status\":\"1\"}'),
(37, 'HITY WYPRZEDAŻY', 'html', '{\"name\":\"HITY WYPRZEDA\\u017bY\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"\\r\\n &lt;div class=&quot;container&quot;&gt;\\r\\n      &lt;div class=&quot;row&quot;&gt;\\r\\n          &lt;div class=&quot;col col-12&quot;&gt;\\r\\n              &lt;div class=&quot;lineTitleWrap&quot;&gt;\\r\\n                  &lt;h5 class=&quot;lineTitle&quot;&gt;\\r\\n                     HITY WYPRZEDA\\u017bY\\r\\n                  &lt;\\/h5&gt;\\r\\n              &lt;\\/div&gt;\\r\\n          &lt;\\/div&gt;\\r\\n      &lt;\\/div&gt;\\r\\n  &lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(38, 'NOWIE POSTUPLENIE', 'html', '{\"name\":\"NOWIE POSTUPLENIE\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"  &lt;div class=&quot;container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col col-12&quot;&gt;\\r\\n                &lt;div class=&quot;lineTitleWrap&quot;&gt;\\r\\n                    &lt;h5 class=&quot;lineTitle&quot;&gt;\\r\\n                        NOWIE POSTUPLENIE\\r\\n                    &lt;\\/h5&gt;\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/div&gt;\\r\\n\"}},\"status\":\"1\"}'),
(39, ' MOŻE CI SIĘ SPODOBAĆ RÓWNIEŻ', 'html', '{\"name\":\" MO\\u017bE CI SI\\u0118 SPODOBA\\u0106 R\\u00d3WNIE\\u017b\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}'),
(40, 'textAbouteUs_blog', 'html', '{\"name\":\"textAbouteUs_blog\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\" &lt;section class=&quot;aboutUs container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col-12 col&quot;&gt;\\r\\n                &lt;p&gt;\\r\\n                    &lt;br&gt;\\r\\n                    Oferujemy wysokiej jako\\u015bci szejki i dzbanki na wod\\u0119 w atrakcyjnych cenach, kt\\u00f3re pomog\\u0105 Ci w profesjonalny spos\\u00f3b promowa\\u0107 sw\\u00f3j biznes. Nasze produkty wykonane s\\u0105 z najwy\\u017cszej jako\\u015bci materia\\u0142\\u00f3w i zaprojektowane, aby zapobiega\\u0107 wyciekom i zapewni\\u0107 doskona\\u0142e i bezpieczne zamkni\\u0119cie.\\r\\n                    &lt;br&gt;\\r\\n                    &lt;br&gt;\\r\\n                    Nasza szeroka gama kolor\\u00f3w pozwala Ci znale\\u017a\\u0107 ulubione produkty, a tak\\u017ce kolory Twojej firmy, aby przyci\\u0105gn\\u0105\\u0107 uwag\\u0119 tw\\u00f3rc\\u00f3w, a reklama by\\u0142a jeszcze bardziej skuteczna. Nasza szeroka gama kolor\\u00f3w gwarantuje, \\u017ce znajdziesz ulubione, a tak\\u017ce kolory w\\u0142asne firmy, aby przyci\\u0105gn\\u0105\\u0107 uwag\\u0119 tw\\u00f3rc\\u00f3w, a reklama by\\u0142a jeszcze bardziej skuteczna.\\r\\n                &lt;\\/p&gt;\\r\\n                &lt;p class=&quot;alarmBlueTex&quot;&gt;\\r\\n                    SPERSONALIZOWANE SHAKERS I KUBKI WODNE W WIELKICH CENACH! \\r\\n                    &lt;br&gt;\\r\\n                    POPRAW SWOJ\\u0104 SPRZEDA\\u017b Z W\\u0141ASNYMI, OSOBISTYMI WY\\u0141\\u0104CZNIKAMI!\\r\\n                &lt;\\/p&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;&lt;!-- end aboutUs --&gt;\"}},\"status\":\"1\"}'),
(41, 'Feedback_POSTS', 'html', '{\"name\":\"Feedback_POSTS\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;section class=&quot;subscription container&quot;&gt;\\r\\n        &lt;div class=&quot;row&quot;&gt;\\r\\n            &lt;div class=&quot;col col-12&quot;&gt;\\r\\n                &lt;div class=&quot;row&quot;&gt;\\r\\n                    &lt;div class=&quot;col col-lg-8 col-12 subscription_Text&quot;&gt;\\r\\n                        &lt;p&gt;\\r\\n                            &lt;img src=&quot;http:\\/\\/my-bottle.lan\\/image\\/catalog\\/ico\\/12.png&quot; alt=&quot;mail&quot;&gt;\\r\\n                            ZAPISZ SI\\u0118 DO NEWSLETTERA\\r\\n\\r\\n                            &lt;mark&gt;\\r\\n                                Zapisz si\\u0119 do newslettera! Otrzymasz 40 z\\u0142 rabatu\\r\\n                            &lt;\\/mark&gt;\\r\\n                        &lt;\\/p&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                    &lt;div class=&quot;col col-lg-4 col-12&quot;&gt;\\r\\n                        &lt;div class=&quot;formSubscription&quot;&gt;\\r\\n                            &lt;input type=&quot;text&quot; name=&quot;formSubscription&quot; placeholder=&quot;Twoj adress e-mail&quot;&gt;\\r\\n                            &lt;button type=&quot;submit&quot;&gt;\\r\\n                                Zapisz sie\\r\\n                            &lt;\\/button&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;\\r\\n    &lt;\\/section&gt;&lt;!-- end subscription --&gt;\"}},\"formSubscription\":\"\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `display_type` int(3) NOT NULL DEFAULT '0' COMMENT '0 = Default, 1 = Box',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `display_type`, `sort_order`) VALUES
(1, 'radio', 0, 2),
(2, 'checkbox', 0, 2),
(4, 'text', 0, 3),
(5, 'select', 0, 4),
(6, 'textarea', 0, 5),
(7, 'file', 0, 999),
(8, 'date', 0, 7),
(9, 'time', 0, 8),
(10, 'datetime', 0, 9),
(11, 'select', 0, 2),
(12, 'date', 0, 11),
(13, 'radio', 0, 99999),
(14, 'select', 0, 2),
(15, 'radio', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'ILOŚĆ'),
(13, 1, 'del'),
(14, 1, 'WYBIERZ KOLOR'),
(15, 1, 'WYBIERZ KOLOR'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'ILOŚĆ'),
(13, 2, 'del'),
(14, 2, 'WYBIERZ KOLOR'),
(15, 2, 'WYBIERZ KOLOR'),
(1, 3, 'Radio'),
(2, 3, 'Checkbox'),
(4, 3, 'Text'),
(6, 3, 'Textarea'),
(8, 3, 'Date'),
(7, 3, 'File'),
(5, 3, 'Select'),
(9, 3, 'Time'),
(10, 3, 'Date &amp; Time'),
(12, 3, 'Delivery Date'),
(11, 3, 'ILOŚĆ'),
(13, 3, 'del'),
(14, 3, 'WYBIERZ KOLOR'),
(15, 3, 'WYBIERZ KOLOR');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(31, 1, '', 2),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(32, 1, '', 1),
(23, 2, '', 1),
(24, 2, '', 2),
(51, 14, '', 0),
(47, 11, '', 2),
(46, 11, '', 1),
(50, 14, '', 0),
(49, 13, '', 1),
(53, 15, 'catalog/colors/822.96x96.jpg', 2),
(52, 15, 'catalog/colors/krasnij_gloss.jpg', 1),
(54, 15, 'catalog/product/bottel/photo5343900835303762628.jpg', 0),
(55, 15, 'catalog/product/bottel/Sloj_65.png', 0),
(56, 15, 'catalog/product/shaker/49.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(31, 1, 1, 'Medium'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(32, 1, 1, 'Small'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(49, 1, 13, 'green'),
(47, 1, 11, '200'),
(46, 1, 11, '100'),
(51, 1, 14, '500 ml'),
(50, 1, 14, '700 ml'),
(53, 3, 15, ' желный 281'),
(43, 2, 1, 'Large'),
(31, 2, 1, 'Medium'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(32, 2, 1, 'Small'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(49, 2, 13, 'green'),
(47, 2, 11, '200'),
(46, 2, 11, '100'),
(51, 2, 14, '500 ml'),
(50, 2, 14, '700 ml'),
(53, 1, 15, ' желный 281'),
(43, 3, 1, 'Large'),
(31, 3, 1, 'Medium'),
(45, 3, 2, 'Checkbox 4'),
(44, 3, 2, 'Checkbox 3'),
(32, 3, 1, 'Small'),
(42, 3, 5, 'Yellow'),
(41, 3, 5, 'Green'),
(39, 3, 5, 'Red'),
(40, 3, 5, 'Blue'),
(23, 3, 2, 'Checkbox 1'),
(24, 3, 2, 'Checkbox 2'),
(49, 3, 13, 'green'),
(47, 3, 11, '200'),
(46, 3, 11, '100'),
(51, 3, 14, '500 ml'),
(50, 3, 14, '700 ml'),
(52, 3, 15, '  красный 221'),
(53, 2, 15, ' желный 281'),
(52, 1, 15, ' красный 221'),
(52, 2, 15, ' красный 221'),
(54, 3, 15, 'черный'),
(54, 1, 15, 'черный'),
(54, 2, 15, 'черный'),
(55, 2, 15, 'Зеленый'),
(55, 1, 15, 'Зеленый'),
(55, 3, 15, 'Зеленый'),
(56, 2, 15, 'черный'),
(56, 1, 15, 'черный'),
(56, 3, 15, 'черный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Ожидание'),
(2, 1, 'В обработке'),
(3, 1, 'Доставлено'),
(7, 1, 'Отменено'),
(5, 1, 'Сделка завершена'),
(8, 1, 'Возврат'),
(9, 1, 'Отмена и аннулирование'),
(10, 1, 'Неудавшийся'),
(11, 1, 'Возмещенный'),
(12, 1, 'Полностью измененный'),
(13, 1, 'Полный возврат'),
(1, 2, 'Ожидание'),
(2, 2, 'В обработке'),
(3, 2, 'Доставлено'),
(7, 2, 'Отменено'),
(5, 2, 'Сделка завершена'),
(8, 2, 'Возврат'),
(9, 2, 'Отмена и аннулирование'),
(10, 2, 'Неудавшийся'),
(11, 2, 'Возмещенный'),
(12, 2, 'Полностью измененный'),
(13, 2, 'Полный возврат'),
(1, 3, 'Ожидание'),
(2, 3, 'В обработке'),
(3, 3, 'Доставлено'),
(7, 3, 'Отменено'),
(5, 3, 'Сделка завершена'),
(8, 3, 'Возврат'),
(9, 3, 'Отмена и аннулирование'),
(10, 3, 'Неудавшийся'),
(11, 3, 'Возмещенный'),
(12, 3, 'Полностью измененный'),
(13, 3, 'Полный возврат');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(51, ' 1', '', '', '', '', '', '', '', 1, 7, 'catalog/product/bottel/Sloj_65.png', 0, 1, '19.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 197, '2018-09-17 15:18:12', '2018-10-16 12:27:45'),
(52, 'shaker', '', '', '', '', '', '', '', 1, 7, 'catalog/product/shaker/33.png', 0, 1, '10.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 12, '2018-09-17 17:01:17', '2018-09-17 17:01:34'),
(53, 'shaker', '', '', '', '', '', '', '', 1, 7, 'catalog/product/shaker/49.png', 0, 1, '10.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2018-09-17 17:02:03', '2018-09-17 17:02:11'),
(54, 'shaker', '', '', '', '', '', '', '', 1, 7, 'catalog/product/shaker/50.png', 0, 1, '10.0000', 0, 0, '2018-09-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2018-09-17 17:02:38', '2018-09-17 17:02:38');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(51, 2, 'PRO SERIES SHAKER', ' &lt;section class=&quot;productCastomInfo container&quot;&gt;\r\n        &lt;div class=&quot;row&quot;&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfoWrapIMG&quot;&gt;\r\n                 &lt;img src=&quot;/image/catalog/product/bottel/discription/productInfo.png&quot; alt=&quot;my-bottle&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;row&quot;&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                        &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                            &lt;div&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_1.png&quot; alt=&quot;alt&quot;&gt;\r\n                            &lt;/div&gt;\r\n                           &lt;ul&gt;\r\n                               &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                           &lt;/ul&gt;\r\n                        &lt;/figure&gt;\r\n                    &lt;/div&gt; &lt;!-- end col --&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                            &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                                &lt;div&gt;\r\n                                    &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_2.png&quot; alt=&quot;alt&quot;&gt;\r\n                                &lt;/div&gt;\r\n                               &lt;ul&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                               &lt;/ul&gt;\r\n                            &lt;/figure&gt;\r\n                        &lt;/div&gt; &lt;!-- end col --&gt;\r\n                &lt;/div&gt;&lt;!-- end row --&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt; &lt;!-- end row --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemOne row&quot;&gt;\r\n                &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                    &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                        &lt;article&gt;\r\n                            &lt;h2 class=&quot;titleAndBorderb&quot;&gt;\r\n                                Our best-selling shaker.elevated.\r\n                            &lt;/h2&gt;\r\n                            &lt;p&gt;\r\n                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima tempora laudantium quisquam nostrum cumque culpa ipsum. Nostrum, quidem quis! Est hic sit illo quia quae recusandae dignissimos reiciendis! Quis, accusantium.\r\n                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse necessitatibus obcaecati eius id quis! Quaerat cumque dolores unde vitae consectetur nam, voluptatum perspiciatis ad iste id sed repudiandae modi nostrum.\r\n                                lore\r\n                            &lt;/p&gt;\r\n                            &lt;button class=&quot;BTNdark&quot;&gt;\r\n                                BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;\r\n                            &lt;/button&gt;\r\n                        &lt;/article&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                    &lt;img src=&quot;/image/catalog/product/bottel/discription/68.png&quot; alt=&quot;img&quot;&gt;\r\n                &lt;/div&gt;\r\n        &lt;/section&gt;&lt;!-- end productCastomInfo_ItemOne  --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemTwo row&quot;&gt;\r\n            &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                    &lt;ul&gt;\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/23.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/234.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/342.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/72.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n                    &lt;/ul&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/product/bottel/discription/111.png&quot; alt=&quot;img&quot;&gt;\r\n            &lt;/div&gt;\r\n        &lt;/section&gt;\r\n    &lt;/section&gt;&lt;!-- end productCastomInfo.container --&gt;', '', 'PRO SERIES SHAKER', '', ''),
(52, 1, 'shaker', '', '', 'shaker', '', ''),
(53, 1, 'shaker 2', '', '', 'shaker', '', ''),
(54, 1, 'shaker 3', '', '', 'shaker', '', ''),
(51, 3, 'PRO SERIES SHAKER', ' &lt;section class=&quot;productCastomInfo container&quot;&gt;\r\n        &lt;div class=&quot;row&quot;&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfoWrapIMG&quot;&gt;\r\n                 &lt;img src=&quot;/image/catalog/product/bottel/discription/productInfo.png&quot; alt=&quot;my-bottle&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;row&quot;&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                        &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                            &lt;div&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_1.png&quot; alt=&quot;alt&quot;&gt;\r\n                            &lt;/div&gt;\r\n                           &lt;ul&gt;\r\n                               &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                           &lt;/ul&gt;\r\n                        &lt;/figure&gt;\r\n                    &lt;/div&gt; &lt;!-- end col --&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                            &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                                &lt;div&gt;\r\n                                    &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_2.png&quot; alt=&quot;alt&quot;&gt;\r\n                                &lt;/div&gt;\r\n                               &lt;ul&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                               &lt;/ul&gt;\r\n                            &lt;/figure&gt;\r\n                        &lt;/div&gt; &lt;!-- end col --&gt;\r\n                &lt;/div&gt;&lt;!-- end row --&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt; &lt;!-- end row --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemOne row&quot;&gt;\r\n                &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                    &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                        &lt;article&gt;\r\n                            &lt;h2 class=&quot;titleAndBorderb&quot;&gt;\r\n                                Our best-selling shaker.elevated.\r\n                            &lt;/h2&gt;\r\n                            &lt;p&gt;\r\n                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima tempora laudantium quisquam nostrum cumque culpa ipsum. Nostrum, quidem quis! Est hic sit illo quia quae recusandae dignissimos reiciendis! Quis, accusantium.\r\n                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse necessitatibus obcaecati eius id quis! Quaerat cumque dolores unde vitae consectetur nam, voluptatum perspiciatis ad iste id sed repudiandae modi nostrum.\r\n                                lore\r\n                            &lt;/p&gt;\r\n                            &lt;button class=&quot;BTNdark&quot;&gt;\r\n                                BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;\r\n                            &lt;/button&gt;\r\n                        &lt;/article&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                    &lt;img src=&quot;/image/catalog/product/bottel/discription/68.png&quot; alt=&quot;img&quot;&gt;\r\n                &lt;/div&gt;\r\n        &lt;/section&gt;&lt;!-- end productCastomInfo_ItemOne  --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemTwo row&quot;&gt;\r\n            &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                    &lt;ul&gt;\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/23.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/234.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/342.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/72.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n                    &lt;/ul&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/product/bottel/discription/111.png&quot; alt=&quot;img&quot;&gt;\r\n            &lt;/div&gt;\r\n        &lt;/section&gt;\r\n    &lt;/section&gt;&lt;!-- end productCastomInfo.container --&gt;', '', 'PRO SERIES SHAKER', '', ''),
(52, 2, 'shaker', '', '', 'shaker', '', ''),
(53, 2, 'shaker 2', '', '', 'shaker', '', ''),
(54, 2, 'shaker 3', '', '', 'shaker', '', ''),
(51, 1, 'PRO SERIES SHAKER', ' &lt;section class=&quot;productCastomInfo container&quot;&gt;\r\n        &lt;div class=&quot;row&quot;&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfoWrapIMG&quot;&gt;\r\n                 &lt;img src=&quot;/image/catalog/product/bottel/discription/productInfo.png&quot; alt=&quot;my-bottle&quot;&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;row&quot;&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                        &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                            &lt;div&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_1.png&quot; alt=&quot;alt&quot;&gt;\r\n                            &lt;/div&gt;\r\n                           &lt;ul&gt;\r\n                               &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                               &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                           &lt;/ul&gt;\r\n                        &lt;/figure&gt;\r\n                    &lt;/div&gt; &lt;!-- end col --&gt;\r\n                    &lt;div class=&quot;col col-md-6 col-12&quot;&gt;\r\n                            &lt;figure class=&quot;productCastomInfoFigure&quot;&gt;\r\n                                &lt;div&gt;\r\n                                    &lt;img src=&quot;/image/catalog/product/bottel/discription/Slice_2.png&quot; alt=&quot;alt&quot;&gt;\r\n                                &lt;/div&gt;\r\n                               &lt;ul&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad ma fasfsad dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasd dfsf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsma fasfsadf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf dfsma fasfsadf&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf ma fasfsad&lt;/li&gt;\r\n                                   &lt;li&gt;Nie ma fasfsad dfsf&lt;/li&gt;    \r\n                               &lt;/ul&gt;\r\n                            &lt;/figure&gt;\r\n                        &lt;/div&gt; &lt;!-- end col --&gt;\r\n                &lt;/div&gt;&lt;!-- end row --&gt;\r\n            &lt;/div&gt;\r\n        &lt;/div&gt; &lt;!-- end row --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemOne row&quot;&gt;\r\n                &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                    &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                        &lt;article&gt;\r\n                            &lt;h2 class=&quot;titleAndBorderb&quot;&gt;\r\n                                Our best-selling shaker.elevated.\r\n                            &lt;/h2&gt;\r\n                            &lt;p&gt;\r\n                                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Minima tempora laudantium quisquam nostrum cumque culpa ipsum. Nostrum, quidem quis! Est hic sit illo quia quae recusandae dignissimos reiciendis! Quis, accusantium.\r\n                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Esse necessitatibus obcaecati eius id quis! Quaerat cumque dolores unde vitae consectetur nam, voluptatum perspiciatis ad iste id sed repudiandae modi nostrum.\r\n                                lore\r\n                            &lt;/p&gt;\r\n                            &lt;button class=&quot;BTNdark&quot;&gt;\r\n                                BUY NOW  &lt;i class=&quot;fa fa-caret-right&quot; aria-hidden=&quot;true&quot;&gt;&lt;/i&gt;\r\n                            &lt;/button&gt;\r\n                        &lt;/article&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                    &lt;img src=&quot;/image/catalog/product/bottel/discription/68.png&quot; alt=&quot;img&quot;&gt;\r\n                &lt;/div&gt;\r\n        &lt;/section&gt;&lt;!-- end productCastomInfo_ItemOne  --&gt;\r\n        &lt;section class=&quot;productCastomInfo_ItemTwo row&quot;&gt;\r\n            &lt;div class=&quot;col col-md-12 col-sm-12 col-lg-7&quot;&gt;\r\n                &lt;div class=&quot;productCastomInfo_ItemOne_text&quot;&gt;\r\n                    &lt;ul&gt;\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/23.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/234.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/342.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n\r\n                        &lt;li class=&quot;row&quot;&gt;\r\n                            &lt;div class=&quot;col col-lg-3 col-md-3 col-12&quot;&gt;\r\n                                &lt;img src=&quot;/image/catalog/product/bottel/discription/72.png&quot; alt=&quot;img&quot;&gt;\r\n                            &lt;/div&gt;                            \r\n                            &lt;div class=&quot;col col-lg-9&quot;&gt;\r\n                                &lt;p class=&quot;titleAndBorderb&quot;&gt;\r\n                                    New pro series lid\r\n                                &lt;/p&gt;\r\n                                &lt;p class=&quot;textInfoProduct&quot;&gt;\r\n                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut dolore ratione quae ducimus, recusandae ea quasi inventore nobis porro unde iste eius repellat cupiditate labore ipsa, dolorem iusto. Porro, in?\r\n                                &lt;/p&gt;\r\n                            &lt;/div&gt;                            \r\n                        &lt;/li&gt;\r\n                    &lt;/ul&gt;\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;\r\n            &lt;div class=&quot;col-12 col col-md-12 col-lg-5 productCastomInfo_ItemOne_IMG&quot;&gt;\r\n                &lt;img src=&quot;/image/catalog/product/bottel/discription/111.png&quot; alt=&quot;img&quot;&gt;\r\n            &lt;/div&gt;\r\n        &lt;/section&gt;\r\n    &lt;/section&gt;&lt;!-- end productCastomInfo.container --&gt;', '', 'PRO SERIES SHAKER', '', ''),
(52, 3, 'shaker', '', '', 'shaker', '', ''),
(53, 3, 'shaker 2', '', '', 'shaker', '', ''),
(54, 3, 'shaker 3', '', '', 'shaker', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2376, 51, 'catalog/product/bottel/back1.jpeg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(242, 51, 15, '', 1),
(241, 51, 7, '', 0),
(240, 51, 14, '', 1),
(239, 51, 11, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(33, 242, 51, 15, 52, 3, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(35, 242, 51, 15, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(34, 242, 51, 15, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(36, 242, 51, 15, 56, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(31, 240, 51, 14, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 240, 51, 14, 51, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 239, 51, 11, 47, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 239, 51, 11, 46, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 242, 51, 15, 53, 2, 0, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(51, 60),
(51, 63),
(52, 60);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(51, 0),
(52, 0),
(53, 0),
(54, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Возвращены средства'),
(2, 1, 'Выдан в кредит'),
(3, 1, 'Отправлен другой товар для замены'),
(1, 2, 'Возвращены средства'),
(2, 2, 'Выдан в кредит'),
(3, 2, 'Отправлен другой товар для замены'),
(1, 3, 'Возвращены средства'),
(2, 3, 'Выдан в кредит'),
(3, 3, 'Отправлен другой товар для замены');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Получен/доставлен неисправным (сломан)'),
(2, 1, 'Получен не тот (ошибочный) товар'),
(3, 1, 'Ошибочный заказ'),
(4, 1, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 1, 'Другое (другая причина), пожалуйста укажите/приложите подробности'),
(1, 2, 'Получен/доставлен неисправным (сломан)'),
(2, 2, 'Получен не тот (ошибочный) товар'),
(3, 2, 'Ошибочный заказ'),
(4, 2, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 2, 'Другое (другая причина), пожалуйста укажите/приложите подробности'),
(1, 3, 'Получен/доставлен неисправным (сломан)'),
(2, 3, 'Получен не тот (ошибочный) товар'),
(3, 3, 'Ошибочный заказ'),
(4, 3, 'Ошибка, пожалуйста укажите/приложите подробности'),
(5, 3, 'Другое (другая причина), пожалуйста укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Рассматриваемый'),
(3, 1, 'Готов (к отправке)'),
(2, 1, 'Заказ в ожидании'),
(1, 2, 'Рассматриваемый'),
(3, 2, 'Готов (к отправке)'),
(2, 2, 'Заказ в ожидании'),
(1, 3, 'Рассматриваемый'),
(3, 3, 'Готов (к отправке)'),
(2, 3, 'Заказ в ожидании');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(940, 0, 1, 'category_id=72', 'create-shaker1'),
(934, 0, 1, 'category_id=66', 'gallony'),
(772, 0, 1, 'information_id=4', 'about_us'),
(939, 0, 1, 'category_id=71', 'create-shaker'),
(938, 0, 1, 'category_id=70', 'just-for-fun'),
(937, 0, 1, 'category_id=69', 'dc-comics'),
(936, 0, 1, 'category_id=68', 'subscription'),
(947, 0, 1, 'product_id=51', 'pro-series-shaker'),
(949, 0, 2, 'category_id=59', 'sportivnaya-odezhda'),
(948, 0, 1, 'category_id=62', 'brendy'),
(931, 0, 1, 'category_id=63', 'bottle'),
(933, 0, 1, 'category_id=64', 'shaker'),
(932, 0, 1, 'category_id=65', 'awsome'),
(922, 0, 1, 'product_id=52', 'shaker1'),
(924, 0, 1, 'product_id=53', 'shaker 2'),
(925, 0, 1, 'product_id=54', 'shaker-31'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(845, 0, 1, 'common/home', ''),
(846, 0, 1, 'information/contact', 'contact'),
(847, 0, 1, 'information/sitemap', 'sitemap'),
(848, 0, 1, 'product/special', 'specials'),
(849, 0, 1, 'product/manufacturer', 'brands'),
(850, 0, 1, 'product/compare', 'compare-products'),
(851, 0, 1, 'product/search', 'search'),
(852, 0, 1, 'checkout/cart', 'cart'),
(853, 0, 1, 'checkout/checkout', 'checkout'),
(854, 0, 1, 'account/login', 'login'),
(855, 0, 1, 'account/logout', 'logout'),
(856, 0, 1, 'account/voucher', 'vouchers'),
(857, 0, 1, 'account/wishlist', 'wishlist'),
(858, 0, 1, 'account/account', 'my-account'),
(859, 0, 1, 'account/order', 'order-history'),
(860, 0, 1, 'account/newsletter', 'newsletter'),
(861, 0, 1, 'account/return/add', 'return-add'),
(862, 0, 1, 'account/forgotten', 'forgot-password'),
(863, 0, 1, 'account/download', 'downloads'),
(864, 0, 1, 'account/return', 'returns'),
(865, 0, 1, 'account/transaction', 'transactions'),
(866, 0, 1, 'account/register', 'create-account'),
(867, 0, 1, 'account/recurring', 'recurring'),
(868, 0, 1, 'account/address', 'address-book'),
(869, 0, 1, 'account/reward', 'reward-points'),
(870, 0, 1, 'account/edit', 'edit-account'),
(871, 0, 1, 'account/password', 'change-password'),
(880, 0, 1, 'affiliate/forgotten', 'affiliate-forgot-password'),
(881, 0, 1, 'affiliate/register', 'create-affiliate-account'),
(882, 0, 1, 'affiliate/login', 'affiliate-login'),
(883, 0, 1, 'affiliate/payment', 'affiliate-payment'),
(884, 0, 1, 'affiliate/tracking', 'affiliate-tracking'),
(885, 0, 1, 'affiliate/transaction', 'affiliate-transaction'),
(886, 0, 1, 'affiliate/account', 'affiliates'),
(935, 0, 1, 'category_id=67', 'collection');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('066b0a63bbc90245c12d135471', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 17:08:07'),
('09d7312ac0f9bf4f4195eac39c', '{\"user_id\":\"1\",\"user_token\":\"BWPQmg5eWOI7hPIHtlaQroY6F3LEz11f\",\"language\":\"ru-ru\",\"currency\":\"RUB\",\"directory_file_manager\":\"product\\/bottel\",\"page_file_manager\":null}', '2018-10-20 07:14:15'),
('0d1a69c83fdbd997af0d56fac4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 19:07:58'),
('13a0c063d64a77c04f2bc35c72', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"account\":\"guest\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"\\u0411\\u043e\\u0433\\u0434\\u0430\\u043d\",\"lastname\":\"\\u041c\\u043e\\u0440\\u043e\\u0437\",\"email\":\"bogdan.moroz96@gmail.com\",\"telephone\":\"38068923123\",\"custom_field\":[],\"shipping_address\":\"1\"},\"payment_address\":{\"firstname\":\"\\u0411\\u043e\\u0433\\u0434\\u0430\\u043d\",\"lastname\":\"\\u041c\\u043e\\u0440\\u043e\\u0437\",\"company\":\"21\\u044321\\u044312\\u0443\",\"address_1\":\"\\u0428\\u0435\\u0432\\u0447\\u0435\\u043d\\u043a\\u0430 61\\u0430\",\"address_2\":\"12\\u044312\\u044312\\u0443\",\"postcode\":\"44500\",\"city\":\"\\u041a\\u0430\\u043c\\u0435\\u043d\\u044c-\\u041a\\u0430\\u0448\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439\",\"country_id\":\"80\",\"zone_id\":\"19\",\"country\":\"\\u0413\\u0440\\u0443\\u0437\\u0438\\u044f\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Shida Kartli\",\"zone_code\":\"SK\"},\"shipping_address\":{\"firstname\":\"\\u0411\\u043e\\u0433\\u0434\\u0430\\u043d\",\"lastname\":\"\\u041c\\u043e\\u0440\\u043e\\u0437\",\"company\":\"21\\u044321\\u044312\\u0443\",\"address_1\":\"\\u0428\\u0435\\u0432\\u0447\\u0435\\u043d\\u043a\\u0430 61\\u0430\",\"address_2\":\"12\\u044312\\u044312\\u0443\",\"postcode\":\"44500\",\"city\":\"\\u041a\\u0430\\u043c\\u0435\\u043d\\u044c-\\u041a\\u0430\\u0448\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439\",\"country_id\":\"80\",\"zone_id\":\"19\",\"country\":\"\\u0413\\u0440\\u0443\\u0437\\u0438\\u044f\",\"iso_code_2\":\"GE\",\"iso_code_3\":\"GEO\",\"address_format\":\"\",\"zone\":\"Shida Kartli\",\"zone_code\":\"SK\",\"custom_field\":[]},\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5\\u0440.\"}},\"sort_order\":\"1\",\"error\":false}}}', '2018-10-16 19:34:16'),
('1af6bb3b98b3e38359209a21c4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-11 11:54:02'),
('1e821ed1e4312e077627cb6d31', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-19 21:50:05'),
('1ecc8ace302c9f5684a1c2212a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:52:03'),
('1efdd3ab09212923aa71b34432', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"Wwh0jfz1J7zziS4mCJ5ADqtSmBxDGb2K\",\"install\":\"1m0awl4O62\",\"directory_file_manager\":\"product\\/shaker\",\"page_file_manager\":null}', '2018-10-16 11:58:40'),
('21a3e550e9df521b42f24b7ae2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"d_blog_module_debug\":0}', '2018-10-02 18:42:46'),
('278fc9e9081f97e0b8a09e19a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:17:19'),
('2c26a736efe70da63c0791775b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:19:30'),
('2d91b3ccfb3964023f84c9efce', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:13:42'),
('32d4246baf42eab593107bd70d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:22:53'),
('3b0d568784192e6d6644e5104d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:02:27'),
('3d4967cd6d9af0ba5fb0fa7c53', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:26:58'),
('41583abb055f9915e47a5d048d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:16:07'),
('43e6f254322bd08e709626ce9e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-11 14:25:15'),
('44d679ea5bcbf25cd2f1b4ef0a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 12:05:41'),
('6148800e7dd852fee6e4903b1a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-10 17:25:25'),
('6c7f5412c19899e4a308d16172', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:21:09'),
('74fbc1935cec7c7f905306be77', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 11:17:21'),
('7ba89bae1cbf6810e07f043c8f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 11:56:21'),
('940310015662dd91288f1e19bd', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 07:31:33'),
('9998d2f8274178eabcfaafcd44', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-15 21:17:12'),
('9eef7290dff90f591e5d0b4526', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:00:15'),
('9f453de7713604a875409c517a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 13:13:35'),
('a12e41bc81cbc02b653356104c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:15:22'),
('b6affa5ac67d12f48ee3fcfd75', '{\"language\":\"en-gb\",\"currency\":\"RUB\"}', '2018-10-12 18:08:02'),
('b6cf005cf73e883c7b5928c960', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 13:13:35'),
('bc66eb981e09102a315aca75a5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-10 17:23:14'),
('bca68ad3b5d84ff5c4dc8a2590', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"d_blog_module_debug\":0}', '2018-10-16 12:05:13'),
('bd86baf81058190626b6d5595c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:04:15'),
('be51461ffaa7e2049402486662', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 14:54:00'),
('c5cee75b0f4af16df1f835e562', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 09:55:55'),
('c91414f8d0e8b262c85d5f16f9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 14:39:34'),
('d3386fe3cfffe2418c07c05bf9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-17 17:05:23'),
('d8546bad9e4b05930caa7f65cb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 14:37:45'),
('dcfd091d007fa00207667a2c60', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"d_blog_module_debug\":0}', '2018-10-15 21:08:38'),
('dd522d7e2776a101346c464937', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:36:20'),
('ea5d4cb25396a9c241d401658d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-17 21:22:32'),
('f15fdb78337452a278892114d6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"8cvKNyXPkqddoyVqcxHOemagx5dPrANd\"}', '2018-10-15 21:18:45'),
('f353a9b98ff28479186c98996d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 14:55:27'),
('f3d21b30677d8c258148131daa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"user_id\":\"1\",\"user_token\":\"aR37ltXu4xbflTJUJhUgATi82K5orRnk\",\"install\":\"j416tz2476\",\"directory_file_manager\":\"colors\",\"page_file_manager\":null,\"vouchers\":[],\"compare\":[\"51\"],\"d_blog_module_debug\":0,\"wishlist\":[\"51\"]}', '2018-10-24 20:11:19'),
('f545271821971b7153f8437439', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:17:05'),
('f7a90c1acb30fd483882142293', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-16 20:52:09'),
('f7f98028b6bd0c63079cc490be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:12:05'),
('ff459f8b5c02d0be82a4902b9b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2018-10-12 15:01:03');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1223, 0, 'config', 'config_compression', '0', 0),
(1224, 0, 'config', 'config_secure', '0', 0),
(1225, 0, 'config', 'config_password', '1', 0),
(1226, 0, 'config', 'config_shared', '0', 0),
(1227, 0, 'config', 'config_encryption', 'oRPUBlabHrSXNtUIR6s0UlcAMkN4Zec67haA7o5iaSsdyfZqAS2vx1ovn1zk6QulrTBX1Ta8F6wZc3YsZvKZCz53UvvOUUW9hBiVrcQbcWgW8NzK1MFwrrBXRjomVXLDdCpTgv5yJQYwVRY9ct0betPx0WjMhhsQs7c9mcTOYv8bCl5GmDx610qTeZU9LSv91JcJS0gPq9c2WBzXNUgMP1GjYcGU1CVDRAFY8RepCHxVzFgq9HYcBo3mlwMJX10IWh0pXb8z3FyIviTCU3ZknQDgcAruhdfK00ajinffebpWXtErgs4dq0eXl9ulutIv3SujzTZT2htxm3ha7L1ttnLdfMat8QGIMSLPmrjQ7vVKeepeLSe5wZtuUPJGLWVz1L6jdrfkbtfeSoOQuNXTxyrfTJ5q9TxAxwwJrlXwFvS6PyrX7cD7eMkMapqoGAK84mJdoFWHKMmLuqOorHzdVB8u3xyly4JHWGk85dEMRboSoBbIBlixCSjseJfPULSmMJ4vRn7SSmfOkOmw9X3fTNelpNW7jR5JZyZ3FNXqnRqfmghuSsx3GNfRO4wXAwbnmz9j6xl0nfTzgoKkv4Q4JgnDYoXbKRfV13WfpUgvm3kiwdNFVQl6Ul52XKxYTXHY85GB7IfzgMbTwGAXRmOD6ANRnasTD3QnKOxBfFMrE373OrJDSv3Y33cCmYFArJ1NqFsrC7rWxqh35pzcbyhnE7rzUVHaLcqeFESpBKTyG2O8MBByA32IkkBYQrZwWANvTO41dSLJiLXWozWshcG2HbsoiJNB6EfmU0TdB7JIREydkiSdrT6lTEyqisypczcKJziAy53fWGi3oHDYaq8BLaM38HPy2BOMqoVgcz1ZyCOXlAGrQRm8hnfXyZuV1CWyPUen7gJfGa0cl3WQAfoZYFgwbw9682gIMVeON57LNnXYu0dWscmL7OcZYeAmOsHKGLx4a1vdsCV5CB3dW0Yx4mE3wKHK1YxvD933AmhDcGvVJfriHw8TQ1MMYAE2s0k4', 0),
(4, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(1228, 0, 'config', 'config_file_max_size', '300000', 0),
(1229, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1230, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1222, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1221, 0, 'config', 'config_seo_url', '0', 0),
(1220, 0, 'config', 'config_maintenance', '0', 0),
(1219, 0, 'config', 'config_mail_alert_email', '', 0),
(1218, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1217, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1216, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1215, 0, 'config', 'config_mail_smtp_password', '', 0),
(1214, 0, 'config', 'config_mail_smtp_username', '', 0),
(1213, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1212, 0, 'config', 'config_mail_parameter', '', 0),
(1211, 0, 'config', 'config_mail_engine', 'mail', 0),
(1210, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '0', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(793, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(792, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(791, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(790, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(789, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(788, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(787, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(786, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(785, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(784, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(783, 0, 'theme_default', 'theme_default_image_additional_height', '435', 0),
(782, 0, 'theme_default', 'theme_default_image_additional_width', '275', 0),
(781, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(780, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(779, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(778, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(777, 0, 'theme_default', 'theme_default_image_thumb_height', '435', 0),
(776, 0, 'theme_default', 'theme_default_image_thumb_width', '275', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(231, 0, 'developer', 'developer_sass', '0', 0),
(1209, 0, 'config', 'config_logo', 'catalog/logo/logo.png', 0),
(1208, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1207, 0, 'config', 'config_captcha', '', 0),
(1205, 0, 'config', 'config_return_id', '0', 0),
(1206, 0, 'config', 'config_return_status_id', '2', 0),
(1204, 0, 'config', 'config_affiliate_id', '4', 0),
(1203, 0, 'config', 'config_affiliate_commission', '5', 0),
(1202, 0, 'config', 'config_affiliate_auto', '0', 0),
(773, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(774, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(772, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(230, 0, 'developer', 'developer_theme', '0', 0),
(771, 0, 'theme_default', 'theme_default_status', '1', 0),
(770, 0, 'theme_default', 'theme_default_directory', 'my-bottle', 0),
(280, 0, 'oc3x_storage_cleaner', 'oc3x_storage_cleaner_status', '1', 0),
(281, 0, 'oc3x_storage_cleaner', 'oc3x_storage_cleaner_size', '1', 0),
(775, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1201, 0, 'config', 'config_affiliate_approval', '0', 0),
(1200, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1199, 0, 'config', 'config_stock_checkout', '0', 0),
(1198, 0, 'config', 'config_stock_warning', '0', 0),
(1197, 0, 'config', 'config_stock_display', '0', 0),
(1196, 0, 'config', 'config_api_id', '1', 0),
(1195, 0, 'config', 'config_fraud_status_id', '2', 0),
(1194, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(886, 0, 'module_d_blog_module', 'module_d_blog_module_status', '1', 0),
(887, 0, 'module_d_blog_module', 'module_d_blog_module_setting', '{\"category\":{\"main_category_id\":\"1\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"5\",\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"1\",\"sub_category_col\":\"6\",\"sub_category_image\":\"1\",\"sub_category_post_count\":\"1\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"300\",\"popup_display\":\"1\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"1\",\"date_format\":\"l  Y\",\"review_display\":\"0\",\"rating_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"1\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"300\",\"image_height\":\"105\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"1\",\"date_format\":\"F  Y\",\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"\"},\"review\":{\"guest\":\"1\",\"social_login\":\"1\",\"page_limit\":\"5\",\"rating_display\":\"1\",\"customer_display\":\"1\",\"moderate\":\"0\",\"image_user_display\":\"1\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"1\",\"image_display\":\"1\",\"rating_display\":\"1\",\"image_user_display\":\"1\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(888, 0, 'd_blog_module', 'd_blog_module_status', '1', 0),
(889, 0, 'd_blog_module', 'd_blog_module_setting', '{\"category\":{\"main_category_id\":\"1\",\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"5\",\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"750\",\"sub_category_display\":\"1\",\"sub_category_col\":\"6\",\"sub_category_image\":\"1\",\"sub_category_post_count\":\"1\",\"sub_category_image_width\":\"120\",\"sub_category_image_height\":\"75\"},\"post\":{\"image_display\":\"1\",\"image_width\":\"1200\",\"image_height\":\"300\",\"popup_display\":\"1\",\"popup_width\":\"1400\",\"popup_height\":\"875\",\"author_display\":\"0\",\"date_display\":\"1\",\"date_format\":\"l  Y\",\"review_display\":\"0\",\"rating_display\":\"0\",\"category_label_display\":\"0\",\"short_description_length\":\"150\",\"style_short_description_display\":\"0\",\"nav_display\":\"1\",\"nav_same_category\":\"0\"},\"post_thumb\":{\"image_width\":\"300\",\"image_height\":\"105\",\"title_length\":\"100\",\"short_description_length\":\"300\",\"description_length\":\"300\",\"category_label_display\":\"0\",\"author_display\":\"0\",\"date_display\":\"1\",\"date_format\":\"F  Y\",\"rating_display\":\"0\",\"description_display\":\"1\",\"tag_display\":\"0\",\"views_display\":\"0\",\"review_display\":\"0\",\"read_more_display\":\"1\",\"animate\":\"\"},\"review\":{\"guest\":\"1\",\"social_login\":\"1\",\"page_limit\":\"5\",\"rating_display\":\"1\",\"customer_display\":\"1\",\"moderate\":\"0\",\"image_user_display\":\"1\",\"image_limit\":\"5\",\"image_upload_width\":\"500\",\"image_upload_height\":\"500\"},\"review_thumb\":{\"image_width\":\"70\",\"image_height\":\"70\",\"no_image\":\"catalog\\/d_blog_module\\/no_profile_image.png\",\"date_display\":\"1\",\"image_display\":\"1\",\"rating_display\":\"1\",\"image_user_display\":\"1\",\"image_user_width\":\"70\",\"image_user_height\":\"70\"},\"author\":{\"layout_type\":\"grid\",\"layout\":[\"1\"],\"post_page_limit\":\"7\",\"image_width\":\"400\",\"image_height\":\"400\",\"category_display\":\"1\",\"category_col\":\"6\",\"category_image\":\"1\",\"category_post_count\":\"1\",\"category_image_width\":\"120\",\"category_image_height\":\"75\"},\"theme\":\"default\",\"design\":{\"custom_style\":\"\",\"ssl_url\":\"\"}}', 1),
(1185, 0, 'config', 'config_customer_price', '0', 0),
(1193, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(1192, 0, 'config', 'config_order_status_id', '1', 0),
(1191, 0, 'config', 'config_checkout_id', '5', 0),
(1190, 0, 'config', 'config_checkout_guest', '1', 0),
(1189, 0, 'config', 'config_cart_weight', '1', 0),
(1188, 0, 'config', 'config_invoice_prefix', 'INV-2018-00', 0),
(1187, 0, 'config', 'config_account_id', '3', 0),
(1186, 0, 'config', 'config_login_attempts', '5', 0),
(1184, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1183, 0, 'config', 'config_customer_group_id', '1', 0),
(1182, 0, 'config', 'config_customer_search', '0', 0),
(1181, 0, 'config', 'config_customer_activity', '0', 0),
(1180, 0, 'config', 'config_customer_online', '0', 0),
(1178, 0, 'config', 'config_tax_default', 'shipping', 0),
(1179, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1177, 0, 'config', 'config_tax', '0', 0),
(1176, 0, 'config', 'config_voucher_max', '1000', 0),
(1175, 0, 'config', 'config_voucher_min', '1', 0),
(1174, 0, 'config', 'config_review_guest', '1', 0),
(1173, 0, 'config', 'config_review_status', '1', 0),
(1163, 0, 'config', 'config_country_id', '176', 0),
(1164, 0, 'config', 'config_zone_id', '', 0),
(1165, 0, 'config', 'config_language', 'ru-ru', 0),
(1166, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(1167, 0, 'config', 'config_currency', 'RUB', 0),
(1168, 0, 'config', 'config_currency_auto', '1', 0),
(1169, 0, 'config', 'config_length_class_id', '1', 0),
(1170, 0, 'config', 'config_weight_class_id', '1', 0),
(1171, 0, 'config', 'config_product_count', '1', 0),
(1172, 0, 'config', 'config_limit_admin', '20', 0),
(1162, 0, 'config', 'config_comment', '', 0),
(1159, 0, 'config', 'config_fax', '', 0),
(1160, 0, 'config', 'config_image', 'catalog/logo/logo.png', 0),
(1161, 0, 'config', 'config_open', '', 0),
(1150, 0, 'config', 'config_meta_keyword', '', 0),
(1151, 0, 'config', 'config_theme', 'default', 0),
(1152, 0, 'config', 'config_layout_id', '4', 0),
(1153, 0, 'config', 'config_name', 'my-bottle', 0),
(1154, 0, 'config', 'config_owner', 'Иванов Иван', 0),
(1155, 0, 'config', 'config_address', 'г. Москва, ул. Ленина 10 оф. 32', 0),
(1156, 0, 'config', 'config_geocode', '', 0),
(1157, 0, 'config', 'config_email', 'padilo300@gmail.com', 0),
(1158, 0, 'config', 'config_telephone', '495 888-88-88', 0),
(1149, 0, 'config', 'config_meta_description', 'Мой магазин', 0),
(1148, 0, 'config', 'config_meta_title', 'my-bottle', 0),
(1231, 0, 'config', 'config_error_display', '1', 0),
(1232, 0, 'config', 'config_error_log', '1', 0),
(1233, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'В наличии'),
(8, 1, 'Предзаказ'),
(5, 1, 'Нет в наличии'),
(6, 1, 'Ожидание 2-3 дня'),
(7, 2, 'В наличии'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, 'Ожидание 2-3 дня'),
(7, 3, 'В наличии'),
(8, 3, 'Предзаказ'),
(5, 3, 'Нет в наличии'),
(6, 3, 'Ожидание 2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налоги', 'Облагаемые налогом', '2014-06-06 23:00:00', '2014-09-09 11:50:31');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(87, 3, 'НДС', '18.0000', 'F', '2011-09-21 21:49:23', '2014-09-09 11:49:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, '49.png', '49.png.150QiAMIj38ccEWTYKnbadHJlD0E1ild', '84934148c19bee9c3ac9a1d196ebb73b2e0ff821', '2018-09-17 12:48:57'),
(2, 'color.jpg', 'color.jpg.HMF83BdfV8cZWtYKDCKwnq15n9iq92xI', 'dcfe3bf1fb57f84ad26ba383fd5ff2821d0b31b1', '2018-09-17 14:45:13'),
(3, 'color.jpg', 'color.jpg.7kKXfY53WORslr7zG0pbJvqUlILj3KQs', 'a0a80bce4c4ba0fe701ef04cdc1e0e7923040e74', '2018-09-17 14:59:44'),
(4, 'color.jpg', 'color.jpg.WZG6IP6tagafFS2gv3cMN8gERHl7CDqG', 'b50221b3f923978c82228d6780f5165733df62ff', '2018-09-17 15:03:33'),
(5, 'Snimokekranaot2018-09-2100-02-42.png', 'Snimokekranaot2018-09-2100-02-42.png.A15tGoBcNeY3HZ5gTtm4gNKjyyS1QJa8', 'a41bf3658c38679f3c3f115f0c0fa6ee229b2e82', '2018-09-24 22:41:29'),
(6, '822.96x96.jpg', '822.96x96.jpg.dmsd38O2ukmSjR9yPbl5YGEoIaNjiUY2', '45d5cecf460d70771d41ebd8b8edddbe02da5004', '2018-10-10 16:00:26'),
(7, '822.96x96.jpg', '822.96x96.jpg.bX3anqa8BOcA2HPZltQxOHMNeEpMLYgR', '28a2fe82d8f9dae4faf222f85048ee521243c7e4', '2018-10-10 16:21:14'),
(8, '822.96x96.jpg', '822.96x96.jpg.KzvaAAYFRiAy5NEvYFdqxuBSXG54VWng', 'c52bec44e93cd2ce4a13495f31435fdbab0d0fe8', '2018-10-10 16:33:01'),
(9, '822.96x96.jpg', '822.96x96.jpg.Y8xUIIRvZV0JfVgd3X7z58lML5j5NpYh', '2c944f3da0744f625480783ad3eafcdd324bc2b1', '2018-10-10 16:33:38'),
(10, '822.96x96.jpg', '822.96x96.jpg.F7Mc79nuOL0mvzHlJdib5vDApx251a0j', 'f9f0c7ba196f064412db7c4af8585ed6280f2258', '2018-10-10 16:34:36'),
(11, '822.96x96.jpg', '822.96x96.jpg.AAsbGwWhnIDCns0Oa0uvbuUhDv1sQpdP', '27288e27cf2ddacac973d2a56f99d3d9e76a4029', '2018-10-10 16:37:06'),
(12, '822.96x96.jpg', '822.96x96.jpg.aeEsVlUTcC5p2Wyf6pnb9TBryZAeANqv', 'e04c996e63957d1550daa4da9b0fccfce48bc4fe', '2018-10-10 16:37:52'),
(13, '822.96x96.jpg', '822.96x96.jpg.alfrrNrmv7aH8mLbr4vJGywzchJgbWB7', '867d6404d0082dae20341fc4a886d492228a94e8', '2018-10-10 16:43:04'),
(14, '822.96x96.jpg', '822.96x96.jpg.tF2p3GdKuAakiNATcUAyqQSNxyibhBXS', 'f59cb0c4c9be243d3434dfa42e5055783ce14885', '2018-10-10 16:43:13'),
(15, '822.96x96.jpg', '822.96x96.jpg.vmzaja9UB9wyaMEephajXaQJCWSBS2yo', 'e7ed55a18717ca915495381fd52d543ccbf7522a', '2018-10-10 16:47:49'),
(16, '822.96x96.jpg', '822.96x96.jpg.WqOJESKg7QwE7nymNC5k8gDx62ZvgMvS', '4495e9a2e0d9476ee57418dc3d48d7caa21f8ba8', '2018-10-10 16:48:33'),
(17, '822.96x96.jpg', '822.96x96.jpg.tHprvjFj4MmwCTwCi2ZcEQSBgL8L2s5e', '11e4b676f960dc2a5f3177655f690fbd6820e760', '2018-10-10 16:51:03'),
(18, '822.96x96.jpg', '822.96x96.jpg.LiHHTD4dzwAFvwGKxfT2Qu6oqDjQNxdF', 'e8cfefa7ad5e45593a46f587d5534e71df4ecb2f', '2018-10-10 16:51:39'),
(19, '822.96x96.jpg', '822.96x96.jpg.KsqC6El9E7C6A07S1JNSrbIjPYvoioeK', '951dc1a1a045104f873fe5bcaa77ab96d41597eb', '2018-10-10 16:51:53'),
(20, '822.96x96.jpg', '822.96x96.jpg.xYu9vE7SDJ0ikhs8A93fBJS90enqskT1', '72ccbb79d62a655ba20e05f169b19ca61c79b032', '2018-10-10 16:55:26'),
(21, '822.96x96.jpg', '822.96x96.jpg.pk9rf8OtunbqX9V7MRNlqmpMnOY9JXCC', 'fd859c0551f16715b8a982243a1ddffc4d300df2', '2018-10-10 16:57:03'),
(22, 'upcart.png', 'upcart.png.iDDwM6lLlKRzu4rqKdboEVueKOm0Bk2z', '75cde7a050c1b1117c8b512186426a2d27125975', '2018-10-12 20:44:02'),
(23, '1313.jpg', '1313.jpg.Imm3RM8gWj3SOw9aiERfETRQpNrKvNHe', '80d235898bf1a6edae3b8d86d97e08fff040e62c', '2018-10-15 20:50:11'),
(24, 'android-chrome-192x192.png', 'android-chrome-192x192.png.8XvDRFffeSZK0Qou924yM4sOHQywGo4K', '20e5dc5a685857e07a17e7503e08fff1686ff0e3', '2018-10-15 23:12:19'),
(25, 'primer.png', 'primer.png.gpdmlkwaVJHTuPz345hEIcOsNtnce0h3', 'e37e8830c40f3927d80051b7fc11d26b0bb09b0b', '2018-10-16 09:47:01'),
(26, 'primer.png', 'primer.png.8DhQ62NsBmKPv2cWcy7iWdvvTkkkzunk', 'ae31af3710a21bd10b02368803b4af5bd2ed5267', '2018-10-16 09:48:50'),
(27, '08.jpg', '08.jpg.zgu9OPPBGHV142yG5C7hNZzstiTNLPNq', 'bb5c66c0d4656e0c81085c5a37cce389388117a2', '2018-10-16 09:50:52'),
(28, '08.jpg', '08.jpg.S1MmW3NDH3BayBTRPS4o1qvbNneIOHcY', '4b26dfaa8a10fa484e5823d3f591b65ed9777b8d', '2018-10-16 09:51:36'),
(29, '08.jpg', '08.jpg.FWNs8mbQHRq4ffpy5kCEcKolRmFD3N63', '78cfdf06b7997118b5542689146a25052d9628cc', '2018-10-16 09:51:55'),
(30, '08.jpg', '08.jpg.OOVWAMArtQGKUfN04qG6ZZy5t9LhxCzp', '3a86943a20d329e4c0a5245631ed881fb85e9dda', '2018-10-16 09:55:28'),
(31, '08.jpg', '08.jpg.XA8clUpG1v1vfrHwbA3ewoEB8Zb1DA9o', '369b48e839261fa3cecf32989169d4ccc03c05af', '2018-10-16 09:57:27'),
(32, '08.jpg', '08.jpg.xU9vkU2nh5uBAoxx9p5DVFjgtAAlKdDD', 'fc32b763af5975c1dc5548137d59a7d67d19f3af', '2018-10-16 10:01:02'),
(33, '08.jpg', '08.jpg.KKYd0VOjn24IUzJzLEaLKlC2tyF5cvzq', '14703aeaf9ee2019c8c4718ec89e02a71cc09cfb', '2018-10-16 10:01:56'),
(34, 'WindowsLogo.png', 'WindowsLogo.png.K3wiWzvflnh6llyz8WqFyS5RGQLKpjJZ', '8b48817ea4ee18c3a7f699d954f14cca6d99028d', '2018-10-16 10:03:13'),
(35, 'WindowsLogo.png', 'WindowsLogo.png.vWV9rpmgBbmLeoeyXv104KjCnCVdGrDP', '1b36dc697681bee4cde540efdb463e11e288ce4a', '2018-10-16 10:04:24'),
(36, 'michelinx-mpluss-100.jpg', 'michelinx-mpluss-100.jpg.S2LptO256achcdz5uDqOljtza1QNKSGX', '590f4022d792a476780e1f20cb618b42dbfd2a26', '2018-10-16 10:07:33'),
(37, 'ifcart-empty126588.png', 'ifcart-empty126588.png.Vg9qkC6t8f70C8UKcK8uq9ZKDz6C9s0p', '038efa66a6b5f68ce79ab22dcf2652db0b0e6a38', '2018-10-16 13:05:33'),
(38, 'ifSed-0122323371.png', 'ifSed-0122323371.png.WfspU0JR7A9hROzkKwdDv8G0NaKsa7j6', 'a1c886dc05ef3d93236637c81c5c7e0225b0ef48', '2018-10-16 13:08:40'),
(39, 'ifSed-0122323371.png', 'ifSed-0122323371.png.pUKs4hu4Wj3v5YtlIlEc14nLyK7b4kLK', '48f80eea346f445ae0f58fee160ede1a0b045809', '2018-10-16 13:09:06'),
(40, '1313.jpg', '1313.jpg.PZOcnbpdi5H0i8HQwIaYTLI9fXNSbcVt', '290c5779c54046943f8c70cd87e4d2a755aef05b', '2018-10-16 19:07:18'),
(41, 'ifSed-0122323371.png', 'ifSed-0122323371.png.gUGjBu4fVYqDHzY7u7XMez0qSdD8pe6O', 'f77ccf7ff641099fbea13f374f8012bfea7de57c', '2018-10-16 19:09:34'),
(42, 'Snimokekranaot2018-10-2114-07-15.png', 'Snimokekranaot2018-10-2114-07-15.png.qyI52GbGB4PIJHdSZFmkRG9WxWQuWMCb', 'f7b965ef73e0104561e16e2fd3b61372fb737765', '2018-10-21 17:50:16'),
(43, 'Snimokekranaot2018-10-2117-55-14.png', 'Snimokekranaot2018-10-2117-55-14.png.3xyPcJGlmyNz0Ty00TPx2FFC9q3pqXtd', '4478b7e6c696d08cdad48d5824af3e8a60faf416', '2018-10-21 17:58:42'),
(44, 'Snimokekranaot2018-10-2117-55-14.png', 'Snimokekranaot2018-10-2117-55-14.png.E8Y9aNY31mRyDM8KV4HC2DYwzgENd8iR', '0f8b76d710ae253a4ed267ac4fa06f2cdd5626b1', '2018-10-21 18:02:28'),
(45, 'Snimokekranaot2018-10-2114-07-15.png', 'Snimokekranaot2018-10-2114-07-15.png.eHNFitBD36adm0i6aI2s4jZbVpl83GJ2', '8594762456392fc39fa456f093cc20f5927b4256', '2018-10-21 18:02:53'),
(46, 'Snimokekranaot2018-10-2117-55-14.png', 'Snimokekranaot2018-10-2117-55-14.png.fe1evDS67Nr1CbTH1TjAymQR3FlJJ3GG', '6a84fa43902f3b1ca74be76b0b305c5d9b4e994c', '2018-10-21 18:03:19'),
(47, 'Snimokekranaot2018-10-2114-07-15.png', 'Snimokekranaot2018-10-2114-07-15.png.9M9MfF6FVjxmwmFlSpZ49M3nCWxIhoWA', '0e662432ded21058ecf42b768a568d1fc4daae9b', '2018-10-21 18:04:20'),
(48, 'Snimokekranaot2018-10-2117-55-14.png', 'Snimokekranaot2018-10-2117-55-14.png.DpD5iHSucdsGIi97zzkTfgPbL3eoyqmH', 'ce2e9d481432da1214dd560b91371cf541648b4b', '2018-10-21 18:05:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '7e25bfaeda30f8e950c9dec5d88d9846976e9867', 'aIT9Phcoa', 'Администратор', 'Главный', 'padilo300@gmail.com', '', '', '127.0.0.1', 1, '2018-09-13 23:08:42');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\\/category\",\"extension\\/d_blog_module\\/post\",\"extension\\/d_blog_module\\/review\",\"extension\\/d_blog_module\\/author\",\"extension\\/d_blog_module\\/author_group\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\",\"extension\\/d_blog_module\"]}'),
(10, 'Demonstration', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/ip\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/latest\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/pavmegamenu\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/sms_alert\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_standard\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Новый год'),
(7, 1, 'День рождения'),
(8, 1, 'Другое'),
(6, 2, 'Новый год'),
(7, 2, 'День рождения'),
(8, 2, 'Другое'),
(6, 3, 'Новый год'),
(7, 3, 'День рождения'),
(8, 3, 'Другое');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Килограмм', 'кг'),
(2, 1, 'Грамм', 'г'),
(1, 2, 'Килограмм', 'кг'),
(2, 2, 'Грамм', 'г'),
(1, 3, 'Килограмм', 'кг'),
(2, 3, 'Грамм', 'г');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(128, 176, 'Республика Крым', 'CR', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(146, 176, 'Севастополь', 'SEV', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 176, 0, 3, '2014-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  ADD PRIMARY KEY (`author_id`);

--
-- Индексы таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  ADD PRIMARY KEY (`author_description_id`);

--
-- Индексы таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  ADD PRIMARY KEY (`author_group_id`);

--
-- Индексы таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  ADD PRIMARY KEY (`category_description_id`);

--
-- Индексы таблицы `oc_bm_category_path`
--
ALTER TABLE `oc_bm_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_bm_category_to_store`
--
ALTER TABLE `oc_bm_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Индексы таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  ADD PRIMARY KEY (`post_description_id`);

--
-- Индексы таблицы `oc_bm_post_related`
--
ALTER TABLE `oc_bm_post_related`
  ADD PRIMARY KEY (`post_id`,`post_related_id`);

--
-- Индексы таблицы `oc_bm_post_to_category`
--
ALTER TABLE `oc_bm_post_to_category`
  ADD PRIMARY KEY (`category_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_to_product`
--
ALTER TABLE `oc_bm_post_to_product`
  ADD PRIMARY KEY (`product_id`,`post_id`);

--
-- Индексы таблицы `oc_bm_post_video`
--
ALTER TABLE `oc_bm_post_video`
  ADD PRIMARY KEY (`post_id`,`video`);

--
-- Индексы таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Индексы таблицы `oc_bm_review_to_image`
--
ALTER TABLE `oc_bm_review_to_image`
  ADD PRIMARY KEY (`review_id`,`image`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Индексы таблицы `oc_megamenu_description`
--
ALTER TABLE `oc_megamenu_description`
  ADD PRIMARY KEY (`megamenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Индексы таблицы `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT для таблицы `oc_bm_author`
--
ALTER TABLE `oc_bm_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_bm_author_description`
--
ALTER TABLE `oc_bm_author_description`
  MODIFY `author_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_bm_author_group`
--
ALTER TABLE `oc_bm_author_group`
  MODIFY `author_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `oc_bm_category`
--
ALTER TABLE `oc_bm_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `oc_bm_category_description`
--
ALTER TABLE `oc_bm_category_description`
  MODIFY `category_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_bm_post`
--
ALTER TABLE `oc_bm_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `oc_bm_post_description`
--
ALTER TABLE `oc_bm_post_description`
  MODIFY `post_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT для таблицы `oc_bm_review`
--
ALTER TABLE `oc_bm_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=834;
--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  MODIFY `megamenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2377;
--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;
--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=950;
--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234;
--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
