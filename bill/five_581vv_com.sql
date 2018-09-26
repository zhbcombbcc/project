-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2018-09-26 09:02:07
-- 服务器版本： 5.5.61-log
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `five_581vv_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `bill_apply`
--

CREATE TABLE IF NOT EXISTS `bill_apply` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL COMMENT '账单ID',
  `staff_code` varchar(255) NOT NULL DEFAULT '' COMMENT '结算对象编码',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `remarks` text COMMENT '备注',
  `modify_items` varchar(255) DEFAULT NULL COMMENT '修改项目：以英文逗号分隔，删除时为空',
  `status` tinyint(4) DEFAULT '0' COMMENT '申请结果  0：申请中 1：已通过 2：已驳回',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型  1：修改 2：删除',
  `apply_time` int(11) DEFAULT NULL COMMENT '申请时间',
  `verify_time` int(255) DEFAULT NULL COMMENT '审核时间'
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_apply`
--

INSERT INTO `bill_apply` (`id`, `bill_id`, `staff_code`, `openid`, `remarks`, `modify_items`, `status`, `type`, `apply_time`, `verify_time`) VALUES
(32, 223, '225588', 'oN8H54vTbvG_MDiOrutY9G61W-zo', '666', '费用类型', 2, 1, 1537264967, NULL),
(34, 235, '225588', 'oN8H54vTbvG_MDiOrutY9G61W-zo', 'gfgffggf', NULL, 0, 2, 1537264995, NULL),
(39, 266, '789456', 'oN8H54pE2sf-oqXir_I2speHgXgw', '林', '收件地址、状态', 1, 1, 1537323841, NULL),
(35, 257, '123456', 'oN8H54pDHRmkfpnCFjkK5vWqj05I', '388654', '备注4、发生日期、发件人', 2, 1, 1537318376, NULL),
(36, 249, '123456', 'oN8H54pDHRmkfpnCFjkK5vWqj05I', '6852', '发件号码、收件人、收件地址', 1, 1, 1537318395, NULL),
(37, 258, '123456', 'oN8H54pDHRmkfpnCFjkK5vWqj05I', '仓库好吃', NULL, 2, 2, 1537318406, NULL),
(38, 260, '123456', 'oN8H54pDHRmkfpnCFjkK5vWqj05I', '，厚今薄古', NULL, 1, 2, 1537318427, NULL),
(40, 266, '789456', 'oN8H54pE2sf-oqXir_I2speHgXgw', '营养', '收件人', 1, 1, 1537323937, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bill_articles`
--

CREATE TABLE IF NOT EXISTS `bill_articles` (
  `id` int(11) NOT NULL COMMENT '文章id',
  `title` varchar(155) NOT NULL COMMENT '文章标题',
  `description` varchar(255) NOT NULL COMMENT '文章描述',
  `keywords` varchar(155) NOT NULL COMMENT '文章关键字',
  `thumbnail` varchar(255) NOT NULL COMMENT '文章缩略图',
  `content` text NOT NULL COMMENT '文章内容',
  `add_time` datetime NOT NULL COMMENT '发布时间'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bill_automatic`
--

CREATE TABLE IF NOT EXISTS `bill_automatic` (
  `id` int(11) NOT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '扣款金额',
  `staffs` varchar(255) DEFAULT '' COMMENT '需要扣款的结算对象编码，多个用,分隔',
  `cycle` varchar(255) DEFAULT NULL COMMENT '执行周期：week：每星期 、month：每月、day：每天 、day-n：N天 hour：每小时、hour-n：N小时、minute-n：N分钟',
  `week` varchar(255) DEFAULT '' COMMENT '星期 Monday：周一、Tuesday：周二、Wednesday：周三、Thursday：周四、Friday：周五、Saturday：周六、Sunday：周日',
  `days` smallint(255) DEFAULT NULL COMMENT '天数',
  `day` tinyint(4) DEFAULT NULL COMMENT '日期',
  `hour` tinyint(4) DEFAULT NULL COMMENT '小时',
  `minute` tinyint(255) DEFAULT NULL COMMENT '分钟',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `next_exec_time` int(11) NOT NULL COMMENT '下次执行时间',
  `prev_exec_time` int(11) NOT NULL COMMENT '上次执行时间',
  `exec_count` int(11) NOT NULL COMMENT '执行次数',
  `exec_time` int(11) NOT NULL COMMENT '执行时间'
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_automatic`
--

INSERT INTO `bill_automatic` (`id`, `money`, `staffs`, `cycle`, `week`, `days`, `day`, `hour`, `minute`, `create_time`, `update_time`, `next_exec_time`, `prev_exec_time`, `exec_count`, `exec_time`) VALUES
(181, '10000.00', '225588,123123', 'day', 'Monday', 3, 3, 1, 26, 1537032262, 1537896361, 0, 1537896360, 11, 1537982760),
(182, '100.00', '123456', 'day', 'Monday', 3, 3, 1, 30, 1537266058, 1537896601, 0, 1537896600, 8, 1537983000),
(183, '12.00', '789456', 'day', 'Monday', 3, 3, 10, 37, 1537324568, 1537843021, 0, 1537843020, 7, 1537929420),
(184, '52.00', '140211', 'day', 'Tuesday', 3, 3, 0, 5, 1537360843, 1537891501, 0, 1537891500, 7, 1537977900),
(185, '51.00', '223366,140211', 'day', 'Monday', 3, 3, 0, 1, 1537360872, 1537891261, 0, 1537891260, 7, 1537977660),
(186, '-300.00', '140211', 'week', 'Monday', 3, 3, 0, 2, 1537364548, 1537718521, 0, 1537718520, 1, 1538323320);

-- --------------------------------------------------------

--
-- 表的结构 `bill_bill`
--

CREATE TABLE IF NOT EXISTS `bill_bill` (
  `id` int(11) unsigned NOT NULL COMMENT '类型ID',
  `staff_code` varchar(255) DEFAULT '' COMMENT '结算对象编码',
  `waybill_no` varchar(255) DEFAULT NULL COMMENT '运单号',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `type_id` int(11) DEFAULT NULL COMMENT '费用类型id',
  `weight` double(10,2) DEFAULT '0.00' COMMENT '重量',
  `remark_1` varchar(255) NOT NULL COMMENT '备注1',
  `remark_2` varchar(255) NOT NULL COMMENT '备注2',
  `remark_3` varchar(255) NOT NULL COMMENT '备注3',
  `remark_4` varchar(255) NOT NULL COMMENT '备注4',
  `remark_5` varchar(255) NOT NULL DEFAULT '' COMMENT '备注5',
  `occur_date` int(11) DEFAULT NULL COMMENT '发生日期',
  `settle_date` int(11) DEFAULT NULL COMMENT '结算日期',
  `sender` varchar(255) NOT NULL COMMENT '发送人',
  `send_no` varchar(255) NOT NULL COMMENT '发件号码',
  `send_addr` varchar(255) NOT NULL COMMENT '发件地址',
  `receiver` varchar(255) NOT NULL COMMENT '收件人',
  `receive_no` varchar(255) NOT NULL COMMENT '收件号码',
  `receive_addr` varchar(255) NOT NULL DEFAULT '' COMMENT '收件地址',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1：待确认 2：审核中 3：已完成'
) ENGINE=MyISAM AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_bill`
--

INSERT INTO `bill_bill` (`id`, `staff_code`, `waybill_no`, `money`, `type_id`, `weight`, `remark_1`, `remark_2`, `remark_3`, `remark_4`, `remark_5`, `occur_date`, `settle_date`, `sender`, `send_no`, `send_addr`, `receiver`, `receive_no`, `receive_addr`, `status`) VALUES
(354, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(353, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(352, '225588', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(351, '140211', '', '52.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(350, '140211', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(349, '223366', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(348, '789456', '', '12.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(347, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(344, '140211', '', '52.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(345, '225588', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(346, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(342, '223366', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(343, '140211', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(341, '789456', '', '12.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(340, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(339, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(338, '225588', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(337, '140211', '', '52.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(336, '140211', '', '-300.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(335, '140211', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(334, '223366', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(333, '789456', '', '12.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(332, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(331, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(330, '225588', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(329, '140211', '', '52.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(328, '140211', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(327, '223366', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(326, '789456', '', '12.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(325, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(324, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(323, '225588', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(322, '140211', '', '52.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(321, '140211', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(320, '223366', '', '51.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(319, '789456', '', '12.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(318, '123456', '', '100.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(317, '123123', '', '10000.00', 11, 0.00, '', '', '', '', '', 2018, NULL, '', '', '', '', '', '', 1),
(316, '225588', '66666666666', '10000.15', 11, 0.00, '', '', '', '', '', 2018, 0, '', '', '', '', '', '', 3),
(315, '225588', '70484109133', '1.50', 10, 5.00, '', '', '', '', '', 1517760000, 1518364800, '', '', '', '', '', '', 1),
(314, '223366', '70484101133', '338.00', 12, 5.00, '', '', '', '', '', 1517760000, 1518278400, '', '', '', '', '', '', 1),
(313, '223366', '70484107132', '3.00', 8, 5.00, '', '', '', '', '', 1517587200, 1518192000, '', '', '', '', '', '', 1),
(312, '223366', '70484107132', '3.76', 7, 4.00, '', '', '', '', '', 1517587200, 1518105600, '', '', '', '', '', '', 1),
(311, '225588', '70484109132', '3.00', 10, 3.00, '', '', '', '', '', 1517587200, 1518019200, '', '', '', '', '', '', 1),
(310, '225588', '70484106132', '3.00', 11, 2.00, '', '', '', '', '', 1517587200, 1517932800, '', '', '', '', '', '', 1),
(309, '123456', '50923466501', '3.00', 4, 1.00, '山东发斯蒂芬是否舒服舒服松岛枫松岛枫松岛枫', '山东发斯蒂芬是否舒服舒服松岛枫松岛枫松岛枫', '山东发斯蒂芬是否舒服舒服松岛枫松岛枫松岛枫', '山东发斯蒂芬是否舒服舒服松岛枫松岛枫松岛枫', '山东发斯蒂芬是否舒服舒服松岛枫松岛枫松岛枫', 1517500800, 1517846400, '辅导书发', '66565265626', '方式发送方式等方式放松放松', '是佛山市', '13056565959', '到是否是否似懂非懂是该死的弗格森的肤色热风放入电风扇', 1),
(308, '123123', '70484100133', '-5.00', 2, 1.00, '', '', '', '', '', 1517414400, 1517760000, '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bill_member`
--

CREATE TABLE IF NOT EXISTS `bill_member` (
  `id` int(10) unsigned NOT NULL COMMENT '用户ID',
  `nickname` varchar(255) DEFAULT '' COMMENT '用户昵称',
  `avatarurl` varchar(255) DEFAULT '' COMMENT '用户头像',
  `openid` varchar(255) DEFAULT '' COMMENT 'openid',
  `unionid` varchar(255) DEFAULT NULL COMMENT 'unionid',
  `staff_code` varchar(255) DEFAULT '' COMMENT '用户业务编码（后台设置）',
  `gender` tinyint(2) DEFAULT NULL COMMENT '1=男  2=女  3=保密',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号',
  `city` varchar(255) DEFAULT NULL COMMENT '用户所在城市',
  `province` varchar(255) DEFAULT NULL COMMENT '用户所在省份',
  `country` varchar(255) DEFAULT NULL COMMENT '用户所在国家',
  `language` varchar(255) DEFAULT NULL COMMENT '用户的语言，简体中文为zh_CN',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态  0：未绑定  1：已绑定',
  `register_time` int(11) DEFAULT NULL COMMENT '注册时间（第一次登录时间）'
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_member`
--

INSERT INTO `bill_member` (`id`, `nickname`, `avatarurl`, `openid`, `unionid`, `staff_code`, `gender`, `phone`, `city`, `province`, `country`, `language`, `status`, `register_time`) VALUES
(48, '洪冰', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKxw0EaTicL6slHvVLjkmuZy29icaYYXHwVbh7VN5ZbNLuly5hzLIo7FDHoxLC3EThLbuRW8kxN7zicw/132', 'oN8H54vTbvG_MDiOrutY9G61W-zo', NULL, '225588', NULL, '', NULL, NULL, NULL, NULL, 1, 1537261945),
(49, 'APP小程序公众号网站开发', 'https://wx.qlogo.cn/mmopen/vi_32/BDaibzyicDwYWBVaeBoaqx8oCJ8omrmgU3nAoQkSFbeR7cGdd0D29IbgjJAypBlpEWfgI5xm0CVwAU0Gd8jAVRzg/132', 'oN8H54pE2sf-oqXir_I2speHgXgw', NULL, '789456', NULL, '', NULL, NULL, NULL, NULL, 1, 1537321310),
(45, '齐力信息科技有限公司', 'https://wx.qlogo.cn/mmopen/vi_32/YO58RgWXVrPGwCicPCm2yJNvAfic1h2F5VhSZrBVm8nt67yqibibU1z5Bg6hibrbwxyw0biaUVQBw6oz0v3ICoPKBkZQ/132', 'oN8H54pDHRmkfpnCFjkK5vWqj05I', NULL, '123456', NULL, '', NULL, NULL, NULL, NULL, 1, 1537166570),
(50, '林小喵的光 。', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI2Pn31hdYEmdXicBokia2cJicKb4icRv4OCW1IXByYNudv4qHPokAicRiap3MWjZSa2EwQWmtLX2LumPiaA/132', 'oN8H54lYaaIwrUwbs8hV0ruNf3kM', NULL, '140211', NULL, '', NULL, NULL, NULL, NULL, 1, 1537360667);

-- --------------------------------------------------------

--
-- 表的结构 `bill_node`
--

CREATE TABLE IF NOT EXISTS `bill_node` (
  `id` int(11) NOT NULL,
  `node_name` varchar(155) NOT NULL DEFAULT '' COMMENT '节点名称',
  `control_name` varchar(155) NOT NULL DEFAULT '' COMMENT '控制器名',
  `action_name` varchar(155) NOT NULL COMMENT '方法名',
  `is_menu` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是菜单项 1不是 2是',
  `type_id` int(11) NOT NULL COMMENT '父级节点id',
  `style` varchar(155) DEFAULT '' COMMENT '菜单样式'
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `bill_node`
--

INSERT INTO `bill_node` (`id`, `node_name`, `control_name`, `action_name`, `is_menu`, `type_id`, `style`) VALUES
(1, '系统管理', '#', '#', 2, 0, 'fa fa-users'),
(2, '管理员管理', 'user', 'index', 2, 1, ''),
(3, '添加管理员', 'user', 'useradd', 1, 2, ''),
(4, '编辑管理员', 'user', 'useredit', 1, 2, ''),
(5, '删除管理员', 'user', 'userdel', 1, 2, ''),
(6, '角色管理', 'role', 'index', 2, 1, ''),
(7, '添加角色', 'role', 'roleadd', 1, 6, ''),
(8, '编辑角色', 'role', 'roleedit', 1, 6, ''),
(9, '删除角色', 'role', 'roledel', 1, 6, ''),
(10, '分配权限', 'role', 'giveaccess', 1, 6, ''),
(11, '数据库管理', '#', '#', 2, 0, 'fa fa-desktop'),
(12, '数据备份/还原', 'data', 'index', 2, 11, ''),
(13, '备份数据', 'data', 'importdata', 1, 12, ''),
(14, '还原数据', 'data', 'backdata', 1, 12, ''),
(15, '节点管理', 'node', 'index', 2, 1, ''),
(16, '添加节点', 'node', 'nodeadd', 1, 15, ''),
(17, '编辑节点', 'node', 'nodeedit', 1, 15, ''),
(18, '删除节点', 'node', 'nodedel', 1, 15, ''),
(19, '文章管理', 'articles', 'index', 1, 0, 'fa fa-book'),
(20, '文章列表', 'articles', 'index', 2, 19, ''),
(21, '添加文章', 'articles', 'articleadd', 1, 19, ''),
(22, '编辑文章', 'articles', 'articleedit', 1, 19, ''),
(23, '删除文章', 'articles', 'articledel', 1, 19, ''),
(24, '上传图片', 'articles', 'uploadImg', 1, 19, ''),
(25, '个人中心', '#', '#', 1, 0, ''),
(26, '编辑信息', 'profile', 'index', 1, 25, ''),
(27, '编辑头像', 'profile', 'headedit', 1, 25, ''),
(28, '上传头像', 'profile', 'uploadheade', 1, 25, ''),
(29, '用户管理', '#', '#', 2, 0, 'fa fa-user'),
(30, '小程序用户', 'member', 'index', 2, 29, ''),
(31, '删除用户', 'member', 'del', 1, 29, ''),
(32, '结算对象', 'staff', 'index', 2, 29, ''),
(33, '添加结算对象', 'staff', 'add', 1, 29, ''),
(34, '编辑结算对象', 'staff', 'edit', 1, 29, ''),
(35, '删除结算对象', 'staff', 'del', 1, 29, ''),
(36, '账单管理', '#', '#', 2, 0, 'fa fa-book'),
(37, '账单列表', 'bill', 'index', 2, 36, ''),
(38, '费用类型', 'type', 'index', 2, 36, ''),
(39, '扣费设置', 'automatic', 'index', 2, 36, ''),
(40, '消息管理', 'message', 'index', 2, 0, 'fa fa-envelope'),
(51, '删除（修改申请记录）', 'modify', 'del', 1, 40, ''),
(42, '申请修改', 'modify', 'index', 2, 40, ''),
(43, '添加费用类型', 'type', 'add', 1, 36, ''),
(44, '修改费用类型', 'type', 'edit', 1, 36, ''),
(45, '删除费用类型', 'type', 'del', 1, 36, ''),
(46, '添加账单', 'bill', 'add', 1, 36, ''),
(47, '导入账单', 'bill', 'import', 1, 36, ''),
(48, '修改账单', 'bill', 'edit', 1, 36, ''),
(49, '删除账单', 'bill', 'del', 1, 36, ''),
(50, '导出账单', 'bill', 'export', 1, 36, ''),
(52, '通过修改申请记录', 'modify', 'pass', 1, 40, ''),
(53, '驳回修改申请记录', 'modify', 'reject', 1, 40, ''),
(54, '申请删除', 'delete', 'index', 2, 40, ''),
(55, '通过删除申请记录', 'delete', 'pass', 1, 40, ''),
(56, '删除（删除申请记录）', 'delete', 'del', 1, 40, ''),
(57, '驳回删除申请记录', 'delete', 'reject', 1, 40, ''),
(58, '添加扣费设置', 'automatic', 'add', 1, 36, ''),
(59, '编辑扣费设置', 'automatic', 'edit', 1, 36, ''),
(60, '删除扣费设置', 'automatic', 'del', 1, 36, '');

-- --------------------------------------------------------

--
-- 表的结构 `bill_role`
--

CREATE TABLE IF NOT EXISTS `bill_role` (
  `id` int(11) NOT NULL COMMENT 'id',
  `role_name` varchar(155) NOT NULL COMMENT '角色名称',
  `rule` varchar(255) DEFAULT '' COMMENT '权限节点数据'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `bill_role`
--

INSERT INTO `bill_role` (`id`, `role_name`, `rule`) VALUES
(1, '超级管理员', '*'),
(2, '系统维护员', '1,2,3,4,5,6,7,8,9,10'),
(3, '用户管理员', '29,30,31,32,33,34,35');

-- --------------------------------------------------------

--
-- 表的结构 `bill_staff`
--

CREATE TABLE IF NOT EXISTS `bill_staff` (
  `id` int(10) unsigned NOT NULL COMMENT '员工ID',
  `realname` varchar(255) DEFAULT NULL COMMENT '员工姓名',
  `code` varchar(255) DEFAULT NULL COMMENT '用户业务编码（后台设置）',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `bind_time` int(11) DEFAULT NULL COMMENT '绑定时间',
  `unbind_time` int(11) DEFAULT NULL COMMENT '解除绑定时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态  0：未绑定  1：已绑定',
  `total` decimal(12,2) DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_staff`
--

INSERT INTO `bill_staff` (`id`, `realname`, `code`, `password`, `create_time`, `update_time`, `bind_time`, `unbind_time`, `status`, `total`) VALUES
(1, '张兵下班', '225588', '123456', 1535960282, 2018, 1537320370, 1537319684, 1, '10.10'),
(2, '鑫宇', '223366', '123456', 2018, 2018, NULL, NULL, 0, '1011.00'),
(47, '喵喵', '140211', 'miao66', 1537360752, NULL, 1537360779, NULL, 1, '0.00'),
(46, '黄老邪', '789456', '123456', 1537321451, 2018, 1537321657, NULL, 1, '0.00'),
(44, '测试1', '123456', '123123', 1537252111, 2018, 1537863615, 1537863596, 1, '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `bill_type`
--

CREATE TABLE IF NOT EXISTS `bill_type` (
  `id` int(11) unsigned NOT NULL COMMENT '类型ID',
  `type_name` varchar(255) DEFAULT NULL COMMENT '类型名称',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态  0：禁用 1：启用',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bill_type`
--

INSERT INTO `bill_type` (`id`, `type_name`, `status`, `create_time`, `update_time`) VALUES
(2, '中转费', 1, 1536032263, 2018),
(4, '包仓费', 1, 1536043815, NULL),
(11, '罚款', 1, 1536127531, NULL),
(7, '代收货款', 1, 1536043838, NULL),
(8, '到付费', 1, 1536043845, NULL),
(12, '其他', 1, 1536127565, 2018),
(10, '签收罚款', 1, 1536043858, 2018),
(16, '打包费', 1, 1537360916, NULL),
(17, '充值', 1, 1537361168, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bill_user`
--

CREATE TABLE IF NOT EXISTS `bill_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '密码',
  `head` varchar(255) COLLATE utf8_bin DEFAULT '' COMMENT '头像',
  `login_times` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '最后登录IP',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `real_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '真实姓名',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `role_id` int(11) NOT NULL DEFAULT '1' COMMENT '用户角色id'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `bill_user`
--

INSERT INTO `bill_user` (`id`, `user_name`, `password`, `head`, `login_times`, `last_login_ip`, `last_login_time`, `real_name`, `status`, `role_id`) VALUES
(1, 'admin', 'a9ddd2e7bdff202e3e9bca32765e9ba0', '/upload/head/P8RxnlEDXdoie7cO1mkNwJjVZsgLy4ua.png', 74, '222.175.157.114', 1537921475, 'admin', 1, 1),
(2, '123456', '84386805f4fa719c7023544210fea50c', '/static/admin/images/profile_small.jpg', 0, '', 0, '123456', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_apply`
--
ALTER TABLE `bill_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_articles`
--
ALTER TABLE `bill_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_automatic`
--
ALTER TABLE `bill_automatic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_bill`
--
ALTER TABLE `bill_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_member`
--
ALTER TABLE `bill_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_node`
--
ALTER TABLE `bill_node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_role`
--
ALTER TABLE `bill_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_staff`
--
ALTER TABLE `bill_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_type`
--
ALTER TABLE `bill_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_user`
--
ALTER TABLE `bill_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_apply`
--
ALTER TABLE `bill_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `bill_articles`
--
ALTER TABLE `bill_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bill_automatic`
--
ALTER TABLE `bill_automatic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `bill_bill`
--
ALTER TABLE `bill_bill`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型ID',AUTO_INCREMENT=355;
--
-- AUTO_INCREMENT for table `bill_member`
--
ALTER TABLE `bill_member`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `bill_node`
--
ALTER TABLE `bill_node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `bill_role`
--
ALTER TABLE `bill_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bill_staff`
--
ALTER TABLE `bill_staff`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '员工ID',AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `bill_type`
--
ALTER TABLE `bill_type`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型ID',AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `bill_user`
--
ALTER TABLE `bill_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
