-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-10-06 15:50:43
-- 服务器版本： 5.7.11
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_oa`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1472089602),
('demo', '3', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, '管理员', NULL, NULL, 1430498197, 1448098717),
('demo', 1, '测试组1', NULL, NULL, 1472118080, 1472118102),
('files/create', 2, '文档上传', NULL, NULL, NULL, NULL),
('files/delete', 2, '文档删除', NULL, NULL, NULL, NULL),
('files/finance-index', 2, '财务模块文档列表', NULL, NULL, NULL, NULL),
('files/manager-index', 2, '经理模块文档列表', NULL, NULL, NULL, NULL),
('files/order-index', 2, '下单模块文档列表', NULL, NULL, NULL, NULL),
('files/quality-index', 2, '品质模块文档列表', NULL, NULL, NULL, NULL),
('files/shipment-index', 2, '出货模块文档列表', NULL, NULL, NULL, NULL),
('files/warehouse-index', 2, '仓库模块文档列表', NULL, NULL, NULL, NULL),
('menus/create', 2, '菜单创建', NULL, NULL, NULL, NULL),
('menus/delete', 2, '菜单删除', NULL, NULL, NULL, NULL),
('menus/index', 2, '菜单列表', NULL, NULL, NULL, NULL),
('menus/update', 2, '菜单修改', NULL, NULL, NULL, NULL),
('orders-material/create', 2, '原料添加', NULL, NULL, NULL, NULL),
('orders-material/index', 2, '原料列表', NULL, NULL, NULL, NULL),
('orders-material/logs', 2, '原料使用明细', NULL, NULL, NULL, NULL),
('orders/apply-storage', 2, '申请入库', NULL, NULL, NULL, NULL),
('orders/create', 2, '订单创建', NULL, NULL, 1472089603, 1472089603),
('orders/export', 2, 'EXCEL导出', NULL, NULL, NULL, NULL),
('orders/index', 2, '订单未完成/已完成', NULL, NULL, 1472089603, 1472089603),
('quality/index', 2, '品质提醒/完成', NULL, NULL, 1472089603, 1472089603),
('quality/update', 2, '成品审核入库', NULL, NULL, NULL, NULL),
('role/create', 2, '用户组创建', NULL, NULL, 1472089603, 1472089603),
('role/delete', 2, '用户组删除', NULL, NULL, 1472089603, 1472089603),
('role/index', 2, '权限组首页', NULL, NULL, 1472089603, 1472089603),
('role/permissions', 2, '权限组修改', NULL, NULL, 1472089603, 1472089603),
('role/update', 2, '用户组修改', NULL, NULL, 1472089603, 1472089603),
('shipment/arrangement-create', 2, '出货安排', NULL, NULL, 1472089603, 1472089603),
('shipment/arrangement-index', 2, '出货未完成/已完成', NULL, NULL, 1472089603, 1472089603),
('shipment/reality-index', 2, '出货申请提醒/完成列表', NULL, NULL, 1472089603, 1472089603),
('shipment/reality-shipment', 2, '确认出货', NULL, NULL, NULL, NULL),
('site/index', 2, '后台首页', NULL, NULL, 1472089603, 1472089603),
('site/login', 2, '后台登录', NULL, NULL, 1472089603, 1472089603),
('site/logout', 2, '登录退出', NULL, NULL, 1472089603, 1472089603),
('user', 1, '会员', NULL, NULL, 1448317057, 1448317057),
('user/create', 2, '用户创建', NULL, NULL, 1472089603, 1472089603),
('user/delete', 2, '用户删除', NULL, NULL, 1472089603, 1472089603),
('user/index', 2, '用户列表', NULL, NULL, 1472089603, 1472089603),
('user/update', 2, '用户修改', NULL, NULL, 1472089603, 1472089603),
('warehouse-sea/create', 2, '海上库存添加', NULL, NULL, NULL, NULL),
('warehouse-sea/index', 2, '海上仓库列表', NULL, NULL, NULL, NULL),
('warehouse-sea/update', 2, '海上库存修改', NULL, NULL, NULL, NULL),
('warehouse/index', 2, '仓库国内/海上/美国', NULL, NULL, 1472089603, 1472089603),
('warehouse/order-index', 2, '仓库提醒/已导入', NULL, NULL, 1472089603, 1472089603),
('warehouse/update-order', 2, '审核入库', NULL, NULL, 1472089603, 1472089603);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'files/create'),
('admin', 'files/delete'),
('admin', 'files/finance-index'),
('admin', 'files/index'),
('admin', 'files/manager-index'),
('admin', 'files/order-index'),
('admin', 'files/quality-index'),
('admin', 'files/shipment-index'),
('admin', 'files/warehouse-index'),
('admin', 'menus/create'),
('admin', 'menus/delete'),
('admin', 'menus/index'),
('admin', 'menus/update'),
('admin', 'orders-material/create'),
('admin', 'orders-material/index'),
('admin', 'orders-material/logs'),
('admin', 'orders/apply-storage'),
('admin', 'orders/create'),
('demo', 'orders/create'),
('admin', 'orders/export'),
('admin', 'orders/index'),
('admin', 'quality/index'),
('admin', 'quality/update'),
('admin', 'role/create'),
('admin', 'role/delete'),
('admin', 'role/index'),
('admin', 'role/permissions'),
('admin', 'role/update'),
('admin', 'shipment/arrangement-create'),
('admin', 'shipment/arrangement-index'),
('admin', 'shipment/reality-index'),
('admin', 'shipment/reality-shipment'),
('admin', 'site/index'),
('demo', 'site/index'),
('admin', 'site/login'),
('demo', 'site/login'),
('admin', 'site/logout'),
('demo', 'site/logout'),
('admin', 'user/create'),
('admin', 'user/delete'),
('admin', 'user/index'),
('admin', 'user/update'),
('admin', 'warehouse-sea/create'),
('admin', 'warehouse-sea/index'),
('admin', 'warehouse-sea/update'),
('admin', 'warehouse/create'),
('admin', 'warehouse/delete'),
('admin', 'warehouse/index'),
('admin', 'warehouse/order-index'),
('admin', 'warehouse/update'),
('admin', 'warehouse/update-order');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `series` varchar(30) DEFAULT NULL COMMENT '系列',
  `product` varchar(60) DEFAULT NULL COMMENT '产品名称',
  `abbreviation` char(20) DEFAULT NULL COMMENT '简写',
  `lamp` varchar(30) DEFAULT NULL COMMENT '灯珠',
  `lamp_number` int(10) unsigned DEFAULT NULL COMMENT '灯珠数量',
  `ic` varchar(30) DEFAULT NULL,
  `ic_number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'IC数量'
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='产品分类表';

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `series`, `product`, `abbreviation`, `lamp`, `lamp_number`, `ic`, `ic_number`) VALUES
(1, 'AURORA series', 'AURORA I Gen3', 'AI', '3014-3v', 3, NULL, 0),
(2, 'AURORA series', 'AURORA III Gen1', 'AIII', '3030-3v', 3, NULL, 0),
(3, 'AURORA series', 'AURORA Red', 'AR', NULL, 0, NULL, 0),
(4, 'AURORA series', 'AURORA MINI White', 'AM', '2835-white', 2, NULL, 0),
(5, 'AURORA series', 'AURORA MINI Red', 'AMR', '2835-red', 2, NULL, 0),
(6, 'AURORA series', 'AURORA SV 7500K', 'ASV', '3014-3v', 3, NULL, 0),
(7, 'AURORA series', 'AURORA SV Red', 'ASR', '2835-red', 3, NULL, 0),
(8, 'Anpro series', 'ANPRO 7500K', 'AP', '3030-9v-Anpro', 2, NULL, 0),
(9, 'Anpro series', 'ANPRO 6300K', 'AP', '3030-9v-6300k', 2, NULL, 0),
(10, 'Anpro series', 'NOXW', 'NX', NULL, 0, NULL, 0),
(11, 'Anpro series', 'SPARX', 'SX', NULL, 0, NULL, 0),
(12, 'WOW series', 'WOW 7500K', 'W7', '3014-3v', 3, NULL, 0),
(13, 'WOW series', 'WOW 6300K', 'W6', '3014-3v-6300k', 3, NULL, 0),
(14, 'WOW series', 'WOW Red', 'WR', '2835-red', 3, NULL, 0),
(15, 'ArRay series', 'ArRay Pro 3.6W', 'ARP', '303-9v-array', 6, 'IC-5415', 2),
(16, 'ArRay series', 'ArRay ECO 1.8W', 'ARE', '303-9v-array', 6, NULL, 0),
(17, 'ArRay series', 'ArRay SF 1.0W', 'ARS', '303-9v-array', 3, NULL, 0),
(18, 'Trident module series', 'Trident DF', 'TDF', '3030-9v-trident', 6, 'IC-bcr450', 2),
(19, 'Trident module series', 'Trident SF', 'TSF', '3030-9v-trident', 3, 'IC-bcr450', 1),
(20, 'Trident module series', 'Trident SF (N L)', NULL, '3030-9v-trident', 3, 'IC-bcr450', 1),
(21, 'Trident module series', 'Trident SF (New Lens) TV', NULL, '3030-9v-trident', 3, 'IC-bcr450', 1),
(22, 'Trident DF Sitck', 'DF Stick 1 FT add on parts', 'DS1', '3030-9v-trident', 6, 'IC-bcr450', 2),
(23, 'Trident DF Sitck', 'Trident DF Stick 18IN', 'DS18', '3030-9v-trident', 6, 'IC-bcr450', 2),
(24, 'Trident DF Sitck', 'Trident DF Stick 42IN', 'DS42', '3030-9v-trident', 24, 'IC-bcr450', 8),
(25, 'Trident DF Sitck', 'Trident DF Stick 64IN', 'DS64', '3030-9v-trident', 36, 'IC-bcr450', 12),
(26, 'Trident DF Sitck', 'Trident DF Stick 2FT', 'DS2F', '3030-9v-trident', 12, 'IC-bcr450', 4),
(27, 'Trident DF Sitck', 'Trident DF Stick 4FT', 'DS4F', '3030-9v-trident', 24, 'IC-bcr450', 8),
(28, 'Trident DF Sitck', 'Trident DF Stick 6FT', 'DS6F', '3030-9v-trident', 36, 'IC-bcr450', 12),
(29, 'Trident DF Sitck', 'Trident DF Stick 8FT', 'DS8F', '3030-9v-trident', 48, 'IC-bcr450', 16),
(30, 'Trident DF Sitck', 'Trident DF Stick 10FT', 'DS10F', '3030-9v-trident', 60, 'IC-bcr450', 20),
(31, 'Trident SF Sitck', 'SF Stick 1 FT add on parts', 'SS1', '3030-9v-trident', 3, 'IC-bcr450', 1),
(32, 'Trident SF Sitck', 'Trident SF Stick 18IN', 'SS18', '3030-9v-trident', 3, 'IC-bcr450', 1),
(33, 'Trident SF Sitck', 'Trident SF Stick 42IN', 'SS42', '3030-9v-trident', 12, 'IC-bcr450', 4),
(34, 'Trident SF Sitck', 'Trident SF Stick 64IN', 'SS64', '3030-9v-trident', 18, 'IC-bcr450', 6),
(35, 'Trident SF Sitck', 'Trident SF Stick 2FT', 'SS2F', '3030-9v-trident', 6, 'IC-bcr450', 2),
(36, 'Trident SF Sitck', 'Trident SF Stick 4FT', 'SS4F', '3030-9v-trident', 12, 'IC-bcr450', 4),
(37, 'Trident SF Sitck', 'Trident SF Stick 6FT', 'SS6F', '3030-9v-trident', 18, 'IC-bcr450', 6),
(38, 'Trident SF Sitck', 'Trident SF Stick 8FT', 'SS8F', '3030-9v-trident', 24, 'IC-bcr450', 8),
(39, 'Trident SF Sitck', 'Trident SF Stick 10FT', 'SS10F', '3030-9v-trident', 30, 'IC-bcr450', 10),
(40, 'SIDE', 'SIDE', 'SIDE', '3535-white', 1, 'IC-bcr450', 1),
(41, 'TriCo', 'TriCo RGB', 'RGB', '5050-rgb', 3, NULL, 0),
(42, 'Power Supplies', '12VDC 100W', NULL, NULL, 0, NULL, 0),
(43, 'Power Supplies', '12VDC 200W', NULL, NULL, 0, NULL, 0),
(44, 'Power Supplies', '12VDC 320W', NULL, NULL, 0, NULL, 0),
(45, 'Accessories', 'ArRay Bracket', NULL, NULL, 0, NULL, 0),
(46, 'Accessories', 'Trident Connector Bkt', NULL, NULL, 0, NULL, 0),
(47, 'Accessories', 'Trident MTG Bkt', NULL, NULL, 0, NULL, 0),
(48, 'Accessories', 'HO Sockets', NULL, NULL, 0, NULL, 0),
(49, 'Accessories', 'Aluminum 4'' Stick', NULL, NULL, 0, NULL, 0),
(50, 'Accessories', 'Plastic Pallet', NULL, NULL, 0, NULL, 0),
(51, 'Flood Light', 'Flood Light 10W', NULL, NULL, 0, NULL, 0),
(52, 'Flood Light', 'Flood Light 20W', NULL, NULL, 0, NULL, 0),
(53, 'Flood Light', 'Flood Light 30W', NULL, NULL, 0, NULL, 0),
(54, 'Flood Light', 'Flood Light 50W', NULL, NULL, 0, NULL, 0),
(55, 'Flood Light', 'Flood Light 100W', NULL, NULL, 0, NULL, 0),
(56, 'Flood Light', 'Flood Light 150W', NULL, NULL, 0, NULL, 0),
(57, 'LED Wall Washer', 'LWW 5 18P', NULL, NULL, 0, NULL, 0),
(58, 'LED Wall Washer', 'LWW 5 36P', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL,
  `name` varchar(105) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL COMMENT '添加人',
  `path` char(100) DEFAULT NULL,
  `category` enum('order','quality','warehouse','shipment','finance','manager') NOT NULL DEFAULT 'order',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文档表';

--
-- 转存表中的数据 `files`
--

INSERT INTO `files` (`id`, `name`, `username`, `path`, `category`, `created_at`) VALUES
(3, 'werew', 'admin', '201609/20160920154547_57509.pdf', 'order', 1474357547),
(4, '测试1', 'admin', '201609/20160921143153_76193.xlsx', 'order', 1474439513);

-- --------------------------------------------------------

--
-- 表的结构 `finance`
--

CREATE TABLE IF NOT EXISTS `finance` (
  `id` int(11) NOT NULL,
  `shipment_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '出货时间',
  `shipment_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '出货方式',
  `supplier` varchar(120) DEFAULT NULL COMMENT '供应商',
  `product_series` varchar(90) DEFAULT NULL COMMENT '产品系列',
  `product_name` varchar(120) DEFAULT NULL COMMENT '产品名称',
  `code_content` varchar(120) DEFAULT NULL COMMENT '打码内容',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `processing_price` decimal(10,2) NOT NULL COMMENT '加工单价',
  `product_unit_price` decimal(10,2) NOT NULL COMMENT '成品单价',
  `total` decimal(10,2) NOT NULL COMMENT '合计',
  `remark` text COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财务表';

-- --------------------------------------------------------

--
-- 表的结构 `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL,
  `root` int(10) unsigned NOT NULL DEFAULT '0',
  `route` varchar(30) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

--
-- 转存表中的数据 `menus`
--

INSERT INTO `menus` (`id`, `root`, `route`, `name`) VALUES
(1, 0, '#', '下单'),
(2, 0, '#', '品质'),
(3, 0, '#', '仓库'),
(4, 0, '#', '出货'),
(5, 0, '#', '财务'),
(6, 0, '#', '经理'),
(7, 0, '#', '系统管理'),
(8, 3, '#', '日常工作'),
(9, 3, '#', '出货'),
(10, 3, '#', '查询'),
(11, 3, '#', '文档'),
(12, 8, '#', '入库申请提醒'),
(13, 8, '#', '已导入'),
(14, 8, '#', '仓库'),
(15, 14, '#', '国内'),
(16, 14, '#', '海上'),
(17, 14, '#', '美国');

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `supplier` varchar(30) DEFAULT NULL COMMENT '供应商',
  `order_no` char(60) DEFAULT NULL COMMENT '订单号',
  `product_name` varchar(120) DEFAULT NULL COMMENT '产品名称',
  `product_batch_no` varchar(150) DEFAULT NULL COMMENT '成品批次号',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产品数量',
  `unit_price` decimal(10,3) NOT NULL COMMENT '单价',
  `processing_unit_price` decimal(10,3) NOT NULL COMMENT '加工单价',
  `total_price` decimal(10,3) NOT NULL COMMENT '总价',
  `lamp_batch_no` char(60) DEFAULT NULL COMMENT '灯珠批号',
  `ic_batch_no` char(60) DEFAULT NULL COMMENT 'ic批号',
  `ic` varchar(120) DEFAULT NULL COMMENT 'IC',
  `ic_number` int(10) unsigned NOT NULL DEFAULT '0',
  `lamp` varchar(120) DEFAULT NULL COMMENT '灯珠',
  `lamp_number` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `is_apply` enum('no','yes') DEFAULT 'no' COMMENT '是否已申请入库或已提醒',
  `is_complete` enum('no','yes') DEFAULT 'no' COMMENT '是否已完成',
  `username` varchar(60) DEFAULT NULL COMMENT '下单人',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建于'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='成品下单表';

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `supplier`, `order_no`, `product_name`, `product_batch_no`, `number`, `unit_price`, `processing_unit_price`, `total_price`, `lamp_batch_no`, `ic_batch_no`, `ic`, `ic_number`, `lamp`, `lamp_number`, `remark`, `is_apply`, `is_complete`, `username`, `created_at`) VALUES
(1, '美耐斯', 'G2G20160920e', 'dgdjso sdf wee', 'hgjhgjhgwe', 100, '0.770', '0.777', '77.000', 'G2G160816T30S', 'weeg dfwerwerwerw', 'werett werwerw', 100, '3014-3v', 50, 'weret dg sdssdfj skld werk ljwelj lsdsdjfh dj枯井厅电压力锅曙', 'yes', 'no', 'admin', 1474332014),
(2, '力侬', 'G2G20160921', '12VDC 100W', 'hgjhgjhg', 333, '222.000', '0.777', '73926.000', '', '', '', 0, '', 0, '', 'no', 'no', 'admin', 1474426584);

-- --------------------------------------------------------

--
-- 表的结构 `orders_material`
--

CREATE TABLE IF NOT EXISTS `orders_material` (
  `id` int(11) NOT NULL,
  `type` enum('ic','lamp') DEFAULT NULL COMMENT '原料类型',
  `supplier` varchar(30) DEFAULT NULL COMMENT '供应商',
  `order_no` char(60) DEFAULT NULL COMMENT '订单号',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `spec` varchar(150) DEFAULT NULL COMMENT '规格',
  `unit_price` decimal(10,3) NOT NULL COMMENT '单价',
  `batch_no` char(60) DEFAULT NULL COMMENT '批号',
  `name` varchar(120) DEFAULT NULL COMMENT '原料名称',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `username` varchar(60) DEFAULT NULL COMMENT '下单人',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建于'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='原料库存表';

--
-- 转存表中的数据 `orders_material`
--

INSERT INTO `orders_material` (`id`, `type`, `supplier`, `order_no`, `number`, `spec`, `unit_price`, `batch_no`, `name`, `remark`, `username`, `created_at`) VALUES
(8, 'ic', '晶太', 'G2G20160919', 1584, '英飞凌', '1.650', 'G2G160303INF-2(LN)', 'IC-bcr450', '', NULL, 1474257308),
(7, 'lamp', '天电', 'G2G20160919', 4700, '3030-9V-TRIDENT ', '3.600', 'G2G160816T30S', '3030-9v-trident', '', NULL, 1474332014);

-- --------------------------------------------------------

--
-- 表的结构 `quality`
--

CREATE TABLE IF NOT EXISTS `quality` (
  `order_id` int(10) unsigned NOT NULL COMMENT '外键订单ID',
  `fiels` varchar(500) DEFAULT NULL COMMENT '附件',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '实际数量',
  `howmany` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '分几次品检',
  `username` varchar(30) DEFAULT NULL COMMENT '品质审核用户名',
  `warehouse_username` varchar(30) DEFAULT NULL COMMENT '仓库审核人',
  `remark` varchar(500) DEFAULT NULL COMMENT '批注',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建于'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='品质表,仓库人也会对表进行审核操作';

--
-- 转存表中的数据 `quality`
--

INSERT INTO `quality` (`order_id`, `fiels`, `number`, `howmany`, `username`, `warehouse_username`, `remark`, `created_at`) VALUES
(1, '201609/new_oa(4).sql', 100, 3, 'admin', 'admin', '', 1474332029);

-- --------------------------------------------------------

--
-- 表的结构 `shipment_arrangement`
--

CREATE TABLE IF NOT EXISTS `shipment_arrangement` (
  `id` int(11) NOT NULL,
  `product_name` varchar(60) DEFAULT NULL COMMENT '产品名称',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '出货数量',
  `shipping_address` varchar(150) DEFAULT NULL COMMENT '配送地址',
  `ship_type` enum('air','sea','other') NOT NULL DEFAULT 'sea' COMMENT '运输方式',
  `ask_remark` varchar(600) DEFAULT NULL COMMENT '发货需求',
  `freight_no` varchar(60) DEFAULT NULL COMMENT '运单号',
  `is_apply` enum('no','yes') NOT NULL DEFAULT 'no' COMMENT '是否已申请入库或已提醒',
  `is_complete` enum('no','yes') NOT NULL DEFAULT 'no' COMMENT '是否已完成',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建于'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='出货安排';

--
-- 转存表中的数据 `shipment_arrangement`
--

INSERT INTO `shipment_arrangement` (`id`, `product_name`, `number`, `shipping_address`, `ship_type`, `ask_remark`, `freight_no`, `is_apply`, `is_complete`, `created_at`) VALUES
(8, '1', 100, '广州白云区太和镇', 'air', 'wewe', NULL, 'no', 'yes', 1474356178),
(9, 'NOXW', 10, '广州白云区太和镇', 'air', 'wewewe', NULL, 'no', 'no', 1474427520),
(10, 'NOXW', 10, '广州白云区太和镇', 'sea', 'wrewrw', NULL, 'no', 'no', 1474509359);

-- --------------------------------------------------------

--
-- 表的结构 `shipment_reality`
--

CREATE TABLE IF NOT EXISTS `shipment_reality` (
  `shipment_id` int(11) NOT NULL,
  `product_name` varchar(60) DEFAULT NULL COMMENT '产品名称',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `processing_price` decimal(10,3) unsigned NOT NULL DEFAULT '0.000' COMMENT '加工价格',
  `total_price` decimal(10,3) DEFAULT NULL COMMENT '总价',
  `freight_no` varchar(60) DEFAULT NULL COMMENT '运单号',
  `freight_factory_no` varchar(60) DEFAULT NULL COMMENT '工厂运单号',
  `shipping_address` varchar(150) DEFAULT NULL COMMENT '配送地址',
  `ship_type` enum('air','sea','other') NOT NULL DEFAULT 'sea' COMMENT '运输方式',
  `ask_remark` varchar(600) DEFAULT NULL COMMENT '发货需求',
  `reality_username` varchar(60) DEFAULT NULL COMMENT '实际出货人',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建于'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='实际出货表';

--
-- 转存表中的数据 `shipment_reality`
--

INSERT INTO `shipment_reality` (`shipment_id`, `product_name`, `number`, `processing_price`, `total_price`, `freight_no`, `freight_factory_no`, `shipping_address`, `ship_type`, `ask_remark`, `reality_username`, `created_at`) VALUES
(8, '1', 100, '0.000', '111.000', NULL, 'ererds56433', '广州白云区太和镇', 'air', 'wewe', 'admin', 1474356178),
(9, 'NOXW', 10, '0.000', NULL, NULL, NULL, '广州白云区太和镇', 'air', 'wewewe', NULL, 1474427520),
(10, 'NOXW', 10, '0.000', NULL, NULL, NULL, '广州白云区太和镇', 'sea', 'wrewrw', NULL, 1474509359);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'rgWR2CX7yN_QC0uesyVLPbrFEqhad7jw', '$2y$13$.AISZR4gOuU3EzwvvjtRQuJ3CSSG.t93m50LD2.DxAabapRVK3GUS', NULL, 'demo@mail.net', 10, 1467105695, 1472176363),
(3, 'demo', 'rgWR2CX7yN_QC0uesyVLPbrFEqhad7jw', '$2y$13$.AISZR4gOuU3EzwvvjtRQuJ3CSSG.t93m50LD2.DxAabapRVK3GUS', NULL, 'demo@mail.com', 10, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_sea`
--

CREATE TABLE IF NOT EXISTS `warehouse_sea` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL COMMENT '名称',
  `send_date` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发出时间',
  `estimated_date` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '预计到达时间',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='仓库-海上';

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_sea_log`
--

CREATE TABLE IF NOT EXISTS `warehouse_sea_log` (
  `id` int(11) NOT NULL,
  `warehouse_sea_id` int(10) unsigned NOT NULL DEFAULT '0',
  `series` varchar(80) DEFAULT NULL,
  `product_name` varchar(120) DEFAULT NULL,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `box_number` int(10) unsigned NOT NULL DEFAULT '0',
  `code_content` varchar(150) DEFAULT NULL,
  `requirements` text,
  `remark` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='海上仓库明细表';

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_sea_log_tpl`
--

CREATE TABLE IF NOT EXISTS `warehouse_sea_log_tpl` (
  `id` int(11) NOT NULL,
  `series` varchar(80) DEFAULT NULL,
  `product_name` varchar(120) DEFAULT NULL,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `box_number` int(10) unsigned NOT NULL DEFAULT '0',
  `code_content` varchar(150) DEFAULT NULL,
  `requirements` text,
  `remark` text
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='海上仓库模板';

--
-- 转存表中的数据 `warehouse_sea_log_tpl`
--

INSERT INTO `warehouse_sea_log_tpl` (`id`, `series`, `product_name`, `number`, `box_number`, `code_content`, `requirements`, `remark`) VALUES
(1, 'Alum Stick4', 'Alum Stick4', 0, 0, NULL, NULL, NULL),
(2, 'Anpro 6300K', 'Anpro 6300K', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_us`
--

CREATE TABLE IF NOT EXISTS `warehouse_us` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL COMMENT '名称',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='仓库-美国';

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_us_log`
--

CREATE TABLE IF NOT EXISTS `warehouse_us_log` (
  `id` int(10) unsigned NOT NULL,
  `warehouse_us_id` int(10) unsigned NOT NULL DEFAULT '0',
  `series` varchar(80) DEFAULT NULL,
  `product_name` varchar(120) DEFAULT NULL,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  `box_number` int(10) unsigned NOT NULL DEFAULT '0',
  `zh_remark` text,
  `remark` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='美国仓库明细';

-- --------------------------------------------------------

--
-- 表的结构 `warehouse_zh`
--

CREATE TABLE IF NOT EXISTS `warehouse_zh` (
  `id` int(11) NOT NULL,
  `product_name` varchar(120) DEFAULT NULL COMMENT '产品名称',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '数量'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='仓库-国内';

--
-- 转存表中的数据 `warehouse_zh`
--

INSERT INTO `warehouse_zh` (`id`, `product_name`, `number`) VALUES
(2, 'NOXW', 100),
(3, '1', 0),
(4, NULL, 0),
(5, NULL, 0),
(6, '12VDC 100W', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product` (`product`),
  ADD UNIQUE KEY `series` (`series`,`product`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_material`
--
ALTER TABLE `orders_material`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`batch_no`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `shipment_arrangement`
--
ALTER TABLE `shipment_arrangement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipment_reality`
--
ALTER TABLE `shipment_reality`
  ADD PRIMARY KEY (`shipment_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `warehouse_sea`
--
ALTER TABLE `warehouse_sea`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`name`);

--
-- Indexes for table `warehouse_sea_log`
--
ALTER TABLE `warehouse_sea_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_sea_log_tpl`
--
ALTER TABLE `warehouse_sea_log_tpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_us`
--
ALTER TABLE `warehouse_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`name`);

--
-- Indexes for table `warehouse_us_log`
--
ALTER TABLE `warehouse_us_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_zh`
--
ALTER TABLE `warehouse_zh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders_material`
--
ALTER TABLE `orders_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shipment_arrangement`
--
ALTER TABLE `shipment_arrangement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `warehouse_sea`
--
ALTER TABLE `warehouse_sea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse_sea_log`
--
ALTER TABLE `warehouse_sea_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse_sea_log_tpl`
--
ALTER TABLE `warehouse_sea_log_tpl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `warehouse_us`
--
ALTER TABLE `warehouse_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse_us_log`
--
ALTER TABLE `warehouse_us_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse_zh`
--
ALTER TABLE `warehouse_zh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
