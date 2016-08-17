/*
Navicat MySQL Data Transfer

Source Server         : WESHOP
Source Server Version : 50542
Source Host           : dev1.bstarx.com:3306
Source Database       : bjcms

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2016-06-20 11:49:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `baijiacms_addon7_award`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon7_award`;
CREATE TABLE `baijiacms_addon7_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL,
  `awardtype` int(1) NOT NULL DEFAULT '0',
  `gold` decimal(10,2) NOT NULL DEFAULT '0.00',
  `credit_cost` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '100',
  `content` text NOT NULL,
  `createtime` int(10) NOT NULL,
  `deleted` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon7_award
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_addon7_config`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon7_config`;
CREATE TABLE `baijiacms_addon7_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon7_config
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_addon7_request`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon7_request`;
CREATE TABLE `baijiacms_addon7_request` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `award_id` int(10) unsigned NOT NULL,
  `status` int(5) NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon7_request
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_addon8_article`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon8_article`;
CREATE TABLE `baijiacms_addon8_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iscommend` tinyint(1) NOT NULL DEFAULT '0',
  `ishot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '一级分类',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '二级分类',
  `mobileTheme` int(10) NOT NULL DEFAULT '0' COMMENT '内容模板',
  `title` varchar(100) NOT NULL DEFAULT '',
  `readcount` int(10) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  `description` varchar(200) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `thumb` varchar(200) NOT NULL DEFAULT '' COMMENT '缩略图',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_iscommend` (`iscommend`),
  KEY `idx_ishot` (`ishot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon8_article
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_addon8_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon8_article_category`;
CREATE TABLE `baijiacms_addon8_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `icon` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon8_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_addon9_singlepage`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_addon9_singlepage`;
CREATE TABLE `baijiacms_addon9_singlepage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `open_footer` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_addon9_singlepage
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_alipay_alifans`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_alipay_alifans`;
CREATE TABLE `baijiacms_alipay_alifans` (
  `createtime` int(10) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `alipay_openid` varchar(50) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  PRIMARY KEY (`alipay_openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_alipay_alifans
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_alipay_rule`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_alipay_rule`;
CREATE TABLE `baijiacms_alipay_rule` (
  `url` varchar(500) NOT NULL,
  `thumb` varchar(60) NOT NULL,
  `keywords` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ruletype` int(11) NOT NULL COMMENT '1文本回复 2图文回复',
  `content` text,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_alipay_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_attachment`;
CREATE TABLE `baijiacms_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `filename` varchar(255) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '1为图片',
  `createtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_bonus_good`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_bonus_good`;
CREATE TABLE `baijiacms_bonus_good` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` mediumint(8) NOT NULL,
  `good_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_bonus_good
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_bonus_type`;
CREATE TABLE `baijiacms_bonus_type` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_bonus_type
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_bonus_user`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_bonus_user`;
CREATE TABLE `baijiacms_bonus_user` (
  `bonus_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` varchar(20) NOT NULL DEFAULT '',
  `openid` varchar(50) NOT NULL DEFAULT '',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `isuse` int(1) NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `collect_time` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL,
  PRIMARY KEY (`bonus_id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_bonus_user
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_config`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_config`;
CREATE TABLE `baijiacms_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(100) NOT NULL COMMENT '配置名称',
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_config
-- ----------------------------
INSERT INTO `baijiacms_config` VALUES ('1', 'shop_openreg', '1');
INSERT INTO `baijiacms_config` VALUES ('2', 'system_config_cache', 'a:15:{s:12:\"shop_openreg\";s:1:\"1\";s:19:\"system_config_cache\";s:0:\"\";s:10:\"weixinname\";s:9:\"尚善水\";s:11:\"weixintoken\";s:32:\"liqv3ideaykfqxerkidyb4qc35ceuvqf\";s:14:\"EncodingAESKey\";s:43:\"mlhGKGKB6QnwQcpSfpZ68uT5bGIyvZTYgbHJrKsrUN5\";s:12:\"weixin_appId\";s:18:\"wx40247cf4fc20a8c9\";s:16:\"weixin_appSecret\";s:32:\"88f227bac22ced5edea22e449b174e95\";s:14:\"weixin_autoreg\";s:1:\"0\";s:18:\"weixin_autoaddress\";s:1:\"0\";s:15:\"weixin_noaccess\";s:1:\"0\";s:19:\"weixin_access_token\";s:191:\"a:2:{s:5:\"token\";s:138:\"JAct12EVa-7PJHoifRyyE-E7sHXxXZZHWJJJCCL0KKxfq4nCqP6X4khtSycGyfeJ4Z1OnhaZ-JtkBUDeEbdiJu30y-pOih9Ji49E_KJnuIymd8KvrQDTyIqePPwcmolKQBQfAJAEPE\";s:6:\"expire\";i:1459233436;}\";s:12:\"jsapi_ticket\";s:86:\"kgt8ON7yVITDhtdwci0qeerikoQD2O7HKHoPzaQ9Rn3AdQF8UodVb3Jw9-eMOd4mMRNTXoocPflSkNXqZOqRVg\";s:20:\"jsapi_ticket_exptime\";s:10:\"1458004316\";s:14:\"weixin_guanzhu\";s:24:\"欢迎关注黑星科技\";s:19:\"weixin_guanzhu_open\";s:1:\"1\";}');
INSERT INTO `baijiacms_config` VALUES ('3', 'weixinname', '尚善水');
INSERT INTO `baijiacms_config` VALUES ('4', 'weixintoken', 'liqv3ideaykfqxerkidyb4qc35ceuvqf');
INSERT INTO `baijiacms_config` VALUES ('5', 'EncodingAESKey', 'mlhGKGKB6QnwQcpSfpZ68uT5bGIyvZTYgbHJrKsrUN5');
INSERT INTO `baijiacms_config` VALUES ('6', 'weixin_appId', 'wx40247cf4fc20a8c9');
INSERT INTO `baijiacms_config` VALUES ('7', 'weixin_appSecret', '88f227bac22ced5edea22e449b174e95');
INSERT INTO `baijiacms_config` VALUES ('8', 'weixin_autoreg', '0');
INSERT INTO `baijiacms_config` VALUES ('9', 'weixin_autoaddress', '0');
INSERT INTO `baijiacms_config` VALUES ('10', 'weixin_noaccess', '0');
INSERT INTO `baijiacms_config` VALUES ('14', 'weixin_access_token', 'a:2:{s:5:\"token\";s:138:\"JAct12EVa-7PJHoifRyyE-E7sHXxXZZHWJJJCCL0KKxfq4nCqP6X4khtSycGyfeJ4Z1OnhaZ-JtkBUDeEbdiJu30y-pOih9Ji49E_KJnuIymd8KvrQDTyIqePPwcmolKQBQfAJAEPE\";s:6:\"expire\";i:1459233436;}');
INSERT INTO `baijiacms_config` VALUES ('12', 'jsapi_ticket', 'kgt8ON7yVITDhtdwci0qeerikoQD2O7HKHoPzaQ9Rn3AdQF8UodVb3Jw9-eMOd4mMRNTXoocPflSkNXqZOqRVg');
INSERT INTO `baijiacms_config` VALUES ('13', 'jsapi_ticket_exptime', '1458004316');
INSERT INTO `baijiacms_config` VALUES ('15', 'weixin_guanzhu', '欢迎关注黑星科技');
INSERT INTO `baijiacms_config` VALUES ('16', 'weixin_guanzhu_open', '1');

-- ----------------------------
-- Table structure for `baijiacms_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_dispatch`;
CREATE TABLE `baijiacms_dispatch` (
  `id` int(7) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `sendtype` int(5) NOT NULL DEFAULT '1' COMMENT '0为快递，1为自提',
  `desc` text NOT NULL,
  `configs` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_dispatch
-- ----------------------------
INSERT INTO `baijiacms_dispatch` VALUES ('1', 'cac', '上门取货', '1', '上门取货', '', '1');
INSERT INTO `baijiacms_dispatch` VALUES ('2', 'zhaijisong', '宅急送', '0', '宅急送', '', '1');

-- ----------------------------
-- Table structure for `baijiacms_gold_order`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_gold_order`;
CREATE TABLE `baijiacms_gold_order` (
  `createtime` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `paytime` int(10) DEFAULT '0' COMMENT '支付时间',
  `price` decimal(10,2) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_gold_order
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_gold_teller`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_gold_teller`;
CREATE TABLE `baijiacms_gold_teller` (
  `createtime` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0未审核-1拒绝1审核功成',
  `fee` decimal(10,2) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `ordersn` varchar(20) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_gold_teller
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_member`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_member`;
CREATE TABLE `baijiacms_member` (
  `email` varchar(20) NOT NULL,
  `credit` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `gold` double NOT NULL DEFAULT '0' COMMENT '余额',
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `createtime` int(10) NOT NULL,
  `istemplate` tinyint(1) DEFAULT '0' COMMENT '是否为临时账户 1是，0为否',
  `status` tinyint(1) DEFAULT '1' COMMENT '0为禁用，1为可用',
  `experience` int(11) DEFAULT '0' COMMENT '账户经验值',
  `avatar` varchar(200) DEFAULT '' COMMENT '用户头像',
  `outgold` double NOT NULL DEFAULT '0' COMMENT '已提取余额',
  `outgoldinfo` varchar(1000) DEFAULT '0' COMMENT '提款信息 序列化',
  `weixin_openid` varchar(100) DEFAULT '' COMMENT '微信openid',
  `alipay_openid` varchar(50) DEFAULT '' COMMENT '阿里openid',
  PRIMARY KEY (`openid`),
  KEY `idx_member_from_user` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_member
-- ----------------------------
INSERT INTO `baijiacms_member` VALUES ('', '0', '0', '2016022411509', '霄飞', '15600905086', '6a0020a603d71296da825cd02dc2ac0f', '1456286069', '0', '1', '0', '', '0', '0', '', '');

-- ----------------------------
-- Table structure for `baijiacms_member_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_member_paylog`;
CREATE TABLE `baijiacms_member_paylog` (
  `createtime` int(10) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `type` varchar(30) NOT NULL COMMENT 'usegold使用金额 addgold充值金额 usecredit使用积分 addcredit充值积分',
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_fee` decimal(10,2) NOT NULL COMMENT '账户剩余积分或余额',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_member_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_modules`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_modules`;
CREATE TABLE `baijiacms_modules` (
  `displayorder` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(30) NOT NULL,
  `group` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `version` decimal(5,2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `isdisable` int(1) DEFAULT '0' COMMENT '模块是否禁用',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_modules
-- ----------------------------
INSERT INTO `baijiacms_modules` VALUES ('0', 'icon-bar-chart', 'addons', '数据报表', '1.00', 'addon6', '0');
INSERT INTO `baijiacms_modules` VALUES ('0', 'icon-money', 'addons', '积分兑换', '1.00', 'addon7', '0');
INSERT INTO `baijiacms_modules` VALUES ('0', 'icon-edit', 'addons', '微文章', '1.00', 'addon8', '0');
INSERT INTO `baijiacms_modules` VALUES ('0', 'icon-list-alt', 'addons', '微单页', '1.00', 'addon9', '0');

-- ----------------------------
-- Table structure for `baijiacms_modules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_modules_menu`;
CREATE TABLE `baijiacms_modules_menu` (
  `href` varchar(200) NOT NULL,
  `title` varchar(50) NOT NULL,
  `module` varchar(30) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_modules_menu
-- ----------------------------
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=salereport', '零售生意报告', 'addon6', '1');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=orderstatistics', '订单统计', 'addon6', '2');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=saledetails', '商品销售明细', 'addon6', '3');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=saletargets', '销售指标分析', 'addon6', '4');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=productsaleranking', '商品销售排行', 'addon6', '5');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=productsalestatistics', '商品访问与购买比', 'addon6', '6');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=memberranking', '会员消费排行', 'addon6', '7');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon6&do=userincreasestatistics', '会员增长统计', 'addon6', '8');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon7&do=setting', '参数设置', 'addon7', '9');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon7&do=addaward', '添加积分商品', 'addon7', '10');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon7&do=awardlist', '积分商品列表', 'addon7', '11');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon7&do=applyed', '兑换申请列表', 'addon7', '12');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon8&do=article', '文章管理', 'addon8', '13');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon8&do=category', '文章分类', 'addon8', '14');
INSERT INTO `baijiacms_modules_menu` VALUES ('index.php?mod=site&name=addon9&do=singlepage', '单页设置', 'addon9', '15');

-- ----------------------------
-- Table structure for `baijiacms_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_paylog`;
CREATE TABLE `baijiacms_paylog` (
  `paytype` varchar(30) NOT NULL,
  `pdate` text NOT NULL,
  `ptype` varchar(10) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of baijiacms_paylog
-- ----------------------------
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '1');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '2');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '支付成功', '3');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '4');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '5');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '6');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '7');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '8');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '9');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '10');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '11');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '12');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '13');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '14');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '15');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '16');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '17');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '18');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '19');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微信支付记录', '20');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><appid><![CDATA[wx40247cf4fc20a8c9]]></appid>\n<bank_type><![CDATA[CFT]]></bank_type>\n<cash_fee><![CDATA[1]]></cash_fee>\n<fee_type><![CDATA[CNY]]></fee_type>\n<is_subscribe><![CDATA[Y]]></is_subscribe>\n<mch_id><![CDATA[1313147401]]></mch_id>\n<nonce_str><![CDATA[42678232]]></nonce_str>\n<openid><![CDATA[os3_Pw4PTLtgxBleoD_F9OVdxzLU]]></openid>\n<out_trade_no><![CDATA[20160224345261-1]]></out_trade_no>\n<result_code><![CDATA[SUCCESS]]></result_code>\n<return_code><![CDATA[SUCCESS]]></return_code>\n<sign><![CDATA[7004354046D45162717C77587623046A]]></sign>\n<time_end><![CDATA[20160224151916]]></time_end>\n<total_fee>1</total_fee>\n<trade_type><![CDATA[JSAPI]]></trade_type>\n<transaction_id><![CDATA[1005880715201602243500951251]]></transaction_id>\n</xml>', 'success', '微支付成功返回', '21');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><openid>os3_Pw4PTLtgxBleoD_F9OVdxzLU</openid><trade_type>JSAPI</trade_type><return_code>SUCCESS</return_code><time_end>20160301093234</time_end><mch_id>1313147401</mch_id><sign>7004354046D45162717C77587623046A</sign><cash_fee>1</cash_fee><is_subscribe>Y</is_subscribe><bank_type>CFT</bank_type><out_trade_no>20160224345261-1</out_trade_no><transaction_id>1005880715201602243500951251</transaction_id><total_fee>1</total_fee><appid>wx40247cf4fc20a8c9</appid><noncestr>20150531233956996351</noncestr><result_code>SUCCESS</result_code></xml>', 'success', '微信支付记录', '22');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><openid>os3_Pw4PTLtgxBleoD_F9OVdxzLU</openid><trade_type>JSAPI</trade_type><return_code>SUCCESS</return_code><time_end>20160301093234</time_end><mch_id>1313147401</mch_id><sign>7004354046D45162717C77587623046A</sign><cash_fee>1</cash_fee><is_subscribe>Y</is_subscribe><bank_type>CFT</bank_type><out_trade_no>20160224345261-1</out_trade_no><transaction_id>1005880715201602243500951251</transaction_id><total_fee>1</total_fee><appid>wx40247cf4fc20a8c9</appid><noncestr>20150531233956996351</noncestr><result_code>SUCCESS</result_code></xml>', 'error', '签名验证失败', '23');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><openid>os3_Pw4PTLtgxBleoD_F9OVdxzLU</openid><trade_type>JSAPI</trade_type><return_code>SUCCESS</return_code><time_end>20160301094001</time_end><mch_id>1313147401</mch_id><cash_fee>1</cash_fee><is_subscribe>Y</is_subscribe><bank_type>CFT</bank_type><out_trade_no>20160224345261-1</out_trade_no><transaction_id>1005880715201602243500951251</transaction_id><total_fee>1</total_fee><appid>wx40247cf4fc20a8c9</appid><noncestr>20150531233956996351</noncestr><result_code>SUCCESS</result_code></xml>', 'success', '微信支付记录', '24');
INSERT INTO `baijiacms_paylog` VALUES ('weixin', '<xml><openid>os3_Pw4PTLtgxBleoD_F9OVdxzLU</openid><trade_type>JSAPI</trade_type><return_code>SUCCESS</return_code><time_end>20160301094001</time_end><mch_id>1313147401</mch_id><cash_fee>1</cash_fee><is_subscribe>Y</is_subscribe><bank_type>CFT</bank_type><out_trade_no>20160224345261-1</out_trade_no><transaction_id>1005880715201602243500951251</transaction_id><total_fee>1</total_fee><appid>wx40247cf4fc20a8c9</appid><noncestr>20150531233956996351</noncestr><result_code>SUCCESS</result_code></xml>', 'error', '签名验证失败', '25');

-- ----------------------------
-- Table structure for `baijiacms_paylog_alipay`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_paylog_alipay`;
CREATE TABLE `baijiacms_paylog_alipay` (
  `createtime` int(10) NOT NULL,
  `alipay_safepid` varchar(50) DEFAULT NULL,
  `buyer_email` varchar(50) DEFAULT NULL,
  `buyer_id` varchar(50) DEFAULT NULL,
  `out_trade_no` varchar(50) DEFAULT NULL,
  `seller_email` varchar(50) DEFAULT NULL,
  `seller_id` varchar(50) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `trade_no` varchar(50) DEFAULT NULL,
  `body` varchar(200) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `ordersn` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `presult` varchar(50) DEFAULT NULL COMMENT 'success 或error',
  `order_table` varchar(50) DEFAULT NULL COMMENT '订单类型 shop_order gold_order',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_paylog_alipay
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_paylog_unionpay`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_paylog_unionpay`;
CREATE TABLE `baijiacms_paylog_unionpay` (
  `createtime` int(10) NOT NULL,
  `txnTime` int(10) DEFAULT NULL,
  `txnAmt` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `queryid` varchar(50) DEFAULT NULL COMMENT '交易查询流水号',
  `currencyCode` varchar(10) DEFAULT NULL COMMENT '交易币种',
  `reqReserved` varchar(100) DEFAULT NULL COMMENT '请求保留域',
  `settleAmt` decimal(10,2) DEFAULT NULL COMMENT '清算金额',
  `settleCurrencyCode` varchar(10) DEFAULT NULL COMMENT '清算币种',
  `traceTime` int(10) DEFAULT NULL COMMENT '交易传输时间',
  `traceNo` varchar(50) DEFAULT NULL COMMENT '系统跟踪号',
  `merId` varchar(50) DEFAULT NULL COMMENT '商户代码',
  `orderid` int(10) DEFAULT NULL,
  `ordersn` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `presult` varchar(50) DEFAULT NULL COMMENT 'success 或error',
  `order_table` varchar(50) DEFAULT NULL COMMENT '订单类型 shop_order gold_order',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_paylog_unionpay
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_paylog_weixin`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_paylog_weixin`;
CREATE TABLE `baijiacms_paylog_weixin` (
  `createtime` int(10) NOT NULL,
  `timeend` int(10) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `mchId` varchar(50) DEFAULT NULL COMMENT '商户id',
  `openid` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `out_trade_no` varchar(50) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `ordersn` varchar(50) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `presult` varchar(50) DEFAULT NULL COMMENT 'success 或error',
  `order_table` varchar(50) DEFAULT NULL COMMENT '订单类型 shop_order gold_order',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_paylog_weixin
-- ----------------------------
INSERT INTO `baijiacms_paylog_weixin` VALUES ('1456298358', '2147483647', '1.00', '1313147401', 'os3_Pw4PTLtgxBleoD_F9OVdxzLU', '1005880715201602243500951251', '20160224345261-1', '1', '20160224345261', '支付成功', 'success', 'shop_order', '1');

-- ----------------------------
-- Table structure for `baijiacms_payment`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_payment`;
CREATE TABLE `baijiacms_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configs` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iscod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_payment
-- ----------------------------
INSERT INTO `baijiacms_payment` VALUES ('1', 'weixin', '微信支付', '微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。微信支付以绑定银行卡的快捷支付为基础，向用户提供安全、快捷、高效的支付服务。', '0', 'a:2:{s:16:\"weixin_pay_mchId\";s:10:\"1313147401\";s:21:\"weixin_pay_paySignKey\";s:32:\"5ZSQWEiznwFfrFzuxOw0ReZWQGUYZYA4\";}', '1', '0', '1');
INSERT INTO `baijiacms_payment` VALUES ('2', 'alipay', '支付宝（手机版）', '国内先进的网上支付平台。三种支付接口：担保交易，即时到账，双接口。在线即可开通，零预付，免年费，单笔阶梯费率，无流量限制。', '0', '', '0', '0', '1');
INSERT INTO `baijiacms_payment` VALUES ('3', 'unionpay', '银联在线支付', '银联在线支付是由中国银联联合各商业银行共同打造的银行卡网上交易转接清算平台。', '0', '', '0', '0', '1');
INSERT INTO `baijiacms_payment` VALUES ('4', 'gold', '余额支付', '余额支付', '0', 'a:1:{s:13:\"gold_pay_desc\";s:0:\"\";}', '1', '0', '1');
INSERT INTO `baijiacms_payment` VALUES ('5', 'delivery', '货到付款', '货到付款', '0', 'a:1:{s:17:\"delivery_pay_desc\";s:0:\"\";}', '1', '1', '0');
INSERT INTO `baijiacms_payment` VALUES ('6', 'bank', '银行汇款/转帐', '银行汇款/转帐', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `baijiacms_qq_qqfans`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_qq_qqfans`;
CREATE TABLE `baijiacms_qq_qqfans` (
  `createtime` int(10) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `qq_openid` varchar(50) NOT NULL,
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  PRIMARY KEY (`qq_openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_qq_qqfans
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_qrcode_url`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_qrcode_url`;
CREATE TABLE `baijiacms_qrcode_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `urlname` varchar(100) NOT NULL COMMENT 'urlname',
  `urlstr` varchar(300) NOT NULL COMMENT 'url内容',
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_qrcode_url
-- ----------------------------
INSERT INTO `baijiacms_qrcode_url` VALUES ('1', '百度新闻', 'http://news.xinhuanet.com/politics/2016-02/28/c_128754803.htm', '2016-02-29 16:51:32');
INSERT INTO `baijiacms_qrcode_url` VALUES ('3', '新浪', 'http://www.sina.com.cn/', '2016-02-29 16:51:39');

-- ----------------------------
-- Table structure for `baijiacms_rank_model`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_rank_model`;
CREATE TABLE `baijiacms_rank_model` (
  `experience` int(11) DEFAULT '0',
  `rank_level` int(3) NOT NULL DEFAULT '0' COMMENT '等级',
  `rank_name` varchar(50) DEFAULT NULL COMMENT '等级名称',
  PRIMARY KEY (`rank_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_rank_model
-- ----------------------------
INSERT INTO `baijiacms_rank_model` VALUES ('0', '1', '普通会员');

-- ----------------------------
-- Table structure for `baijiacms_rank_phb`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_rank_phb`;
CREATE TABLE `baijiacms_rank_phb` (
  `rank_level` int(11) DEFAULT '0',
  `rank_name` varchar(50) DEFAULT '',
  `realname` varchar(50) NOT NULL DEFAULT '',
  `openid` varchar(50) NOT NULL DEFAULT '',
  `rank_top` int(2) NOT NULL DEFAULT '0' COMMENT '名次',
  PRIMARY KEY (`rank_top`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_rank_phb
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_rule`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_rule`;
CREATE TABLE `baijiacms_rule` (
  `moddescription` varchar(20) NOT NULL,
  `moddo` varchar(20) NOT NULL DEFAULT '',
  `modname` varchar(20) NOT NULL DEFAULT '',
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of baijiacms_rule
-- ----------------------------
INSERT INTO `baijiacms_rule` VALUES ('商品管理', 'goods', 'shop', '1');
INSERT INTO `baijiacms_rule` VALUES ('管理分类', 'category', 'shop', '2');
INSERT INTO `baijiacms_rule` VALUES ('订单管理', 'order', 'shop', '3');
INSERT INTO `baijiacms_rule` VALUES ('批量发货', 'orderbat', 'shop', '4');
INSERT INTO `baijiacms_rule` VALUES ('商城基础设置', 'config', 'shop', '5');
INSERT INTO `baijiacms_rule` VALUES ('首页广告', 'adv', 'shop', '6');
INSERT INTO `baijiacms_rule` VALUES ('模板设置', 'themes', 'shop', '7');
INSERT INTO `baijiacms_rule` VALUES ('支付方式', 'payment', 'modules', '8');
INSERT INTO `baijiacms_rule` VALUES ('快捷登录', 'thirdlogin', 'modules', '9');
INSERT INTO `baijiacms_rule` VALUES ('配送方式', 'dispatch', 'shop', '10');
INSERT INTO `baijiacms_rule` VALUES ('会员管理', 'list', 'member', '11');
INSERT INTO `baijiacms_rule` VALUES ('权限管理', 'user', 'user', '12');
INSERT INTO `baijiacms_rule` VALUES ('云服务', 'update', 'modules', '13');
INSERT INTO `baijiacms_rule` VALUES ('微信设置', 'weixin', 'weixin', '14');
INSERT INTO `baijiacms_rule` VALUES ('支付宝服务窗设置', 'alipay', 'alipay', '15');
INSERT INTO `baijiacms_rule` VALUES ('促销管理', 'bonus', 'bonus', '16');

-- ----------------------------
-- Table structure for `baijiacms_shop_address`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_address`;
CREATE TABLE `baijiacms_shop_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `realname` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `province` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `isdefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_address
-- ----------------------------
INSERT INTO `baijiacms_shop_address` VALUES ('1', '2016022411509', '郭小飞', '15600905086', '北京市', '北京辖区', '东城区', '山西省晋城市', '0', '1');
INSERT INTO `baijiacms_shop_address` VALUES ('2', '2016022411509', '郭霄飞', '15600905086', '山西省', '晋城市', '市辖区', '山西省晋城市', '1', '0');

-- ----------------------------
-- Table structure for `baijiacms_shop_adv`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_adv`;
CREATE TABLE `baijiacms_shop_adv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `displayorder` int(11) DEFAULT '0',
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_enabled` (`enabled`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_cart`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_cart`;
CREATE TABLE `baijiacms_shop_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `goodstype` tinyint(1) NOT NULL DEFAULT '1',
  `session_id` varchar(50) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `optionid` int(10) DEFAULT '0',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idx_openid` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_category`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_category`;
CREATE TABLE `baijiacms_shop_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commission` int(10) unsigned DEFAULT '0' COMMENT '推荐该类商品所能获得的佣金',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `thumb` varchar(255) NOT NULL COMMENT '分类图片',
  `thumbadv` varchar(255) NOT NULL COMMENT '分类广告图片',
  `thumbadvurl` varchar(255) NOT NULL COMMENT '分类广告url',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID,0为第一级',
  `isrecommand` int(10) DEFAULT '0',
  `description` varchar(500) NOT NULL COMMENT '分类介绍',
  `displayorder` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_category
-- ----------------------------
INSERT INTO `baijiacms_shop_category` VALUES ('1', '0', '洗衣液', 'jpg/2016/02/366566475539527.jpg', 'jpg/2016/02/586337836133679.jpg', 'http://www.bluemoon.com.cn/index.asp', '0', '1', '蓝月亮机洗至尊，开创机洗泵时代', '0', '0', '1');

-- ----------------------------
-- Table structure for `baijiacms_shop_dispatch`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_dispatch`;
CREATE TABLE `baijiacms_shop_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispatchname` varchar(50) NOT NULL,
  `sendtype` int(5) NOT NULL DEFAULT '1' COMMENT '0为快递，1为自提',
  `firstprice` decimal(10,2) NOT NULL,
  `secondprice` decimal(10,2) NOT NULL,
  `provance` varchar(30) DEFAULT '',
  `city` varchar(30) DEFAULT '',
  `area` varchar(30) DEFAULT '',
  `firstweight` int(10) NOT NULL,
  `secondweight` int(10) NOT NULL,
  `express` varchar(50) NOT NULL,
  `deleted` int(10) NOT NULL DEFAULT '0',
  `displayorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_dispatch
-- ----------------------------
INSERT INTO `baijiacms_shop_dispatch` VALUES ('1', '', '1', '0.00', '0.00', '', '', '', '1000', '1000', 'cac', '0', '0');

-- ----------------------------
-- Table structure for `baijiacms_shop_dispatch_area`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_dispatch_area`;
CREATE TABLE `baijiacms_shop_dispatch_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispatchid` int(11) NOT NULL,
  `country` varchar(30) NOT NULL,
  `provance` varchar(30) DEFAULT '',
  `city` varchar(30) DEFAULT '',
  `area` varchar(30) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_dispatch_area
-- ----------------------------
INSERT INTO `baijiacms_shop_dispatch_area` VALUES ('8', '1', '中国', '山西省', '晋城市', '高平市');
INSERT INTO `baijiacms_shop_dispatch_area` VALUES ('7', '1', '中国', '山西省', '晋城市', '城区');
INSERT INTO `baijiacms_shop_dispatch_area` VALUES ('6', '1', '中国', '山西省', '晋城市', '阳城县');
INSERT INTO `baijiacms_shop_dispatch_area` VALUES ('9', '1', '中国', '上海市', '上海辖区', '浦东新区');
INSERT INTO `baijiacms_shop_dispatch_area` VALUES ('10', '1', '中国', '', '', '');

-- ----------------------------
-- Table structure for `baijiacms_shop_diymenu`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_diymenu`;
CREATE TABLE `baijiacms_shop_diymenu` (
  `menu_type` varchar(10) NOT NULL,
  `torder` int(2) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `url` varchar(350) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_diymenu
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_goods`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods`;
CREATE TABLE `baijiacms_shop_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pcate` int(10) unsigned NOT NULL DEFAULT '0',
  `ccate` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '0为实体，1为虚拟',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `displayorder` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `description` varchar(1000) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `goodssn` varchar(50) NOT NULL DEFAULT '',
  `weight` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productsn` varchar(50) NOT NULL DEFAULT '',
  `marketprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total` int(10) NOT NULL DEFAULT '0',
  `totalcnf` int(11) DEFAULT '0' COMMENT '0 拍下减库存 1 付款减库存 2 永久不减',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `credit` int(11) DEFAULT '0',
  `hasoption` int(11) DEFAULT '0',
  `isnew` int(11) DEFAULT '0',
  `issendfree` int(11) DEFAULT NULL,
  `ishot` int(11) DEFAULT '0',
  `isdiscount` int(11) DEFAULT '0',
  `isrecommand` int(11) DEFAULT '0',
  `istime` int(11) DEFAULT '0',
  `timestart` int(11) DEFAULT '0',
  `timeend` int(11) DEFAULT '0',
  `viewcount` int(11) DEFAULT '0',
  `remark` text,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isfirst` int(1) DEFAULT '0' COMMENT '首发',
  `isjingping` int(1) DEFAULT '0' COMMENT '精品',
  `isverify` int(1) DEFAULT '0' COMMENT '是否是核销产品0否1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods
-- ----------------------------
INSERT INTO `baijiacms_shop_goods` VALUES ('1', '1', '0', '0', '1', '0', '蓝月亮洗衣液', 'jpg/2016/02/127262718498561.jpg', '蓝月亮洗衣液你值得拥有', '<p><span style=\"color:\" font-family:=\"font-size:=\" line-height:=\"background-color:=\">蓝月亮机洗至尊开启了机洗泵时代，完成了洗化行业从“液”向“泵”时代的跨越，让消费者洗衣更省心省力，更环保。这主要表现在三个方面：</span><br style=\"margin:\" padding:=\"font-size:=\" color:=\"font-family:=\" line-height:=\"white-space:=\" background-color:=\"\"><span style=\"color:\" font-family:=\"font-size:=\" line-height:=\"background-color:=\">首先，机洗至尊运用了大容量泵头设计。消费者只需单手拿握瓶身并单指按压，一泵出液量8g，通过计算按压的泵数，就可以清楚地知道所加洗衣液的量，操作简便。</span><br style=\"margin:\" padding:=\"font-size:=\" color:=\"font-family:=\" line-height:=\"white-space:=\" background-color:=\"\"><span style=\"color:\" font-family:=\"font-size:=\" line-height:=\"background-color:=\">其次，机洗至尊采用了高能量配方，总活性物含量是国家标准洗衣液的3倍以上，洁净效果显著。一瓶660g相当于蓝月亮深层洁净护理洗衣液2.2kg，用量可节省70%。三口之家一瓶可以用2.5个月，算下来洗一件衣服只需花5分钱。</span><br style=\"margin:\" padding:=\"font-size:=\" color:=\"font-family:=\" line-height:=\"white-space:=\" background-color:=\"\"><span style=\"color:\" font-family:=\"font-size:=\" line-height:=\"background-color:=\">最后，机洗至尊的泵头可以保证约40,000次均匀出液，耐用性大约是普通泵头的50倍。消费者可以循环利用瓶身，用袋装补充瓶装。这样不仅性价比更高，还能大量减少包装生产的能源消耗，节约资源。</span></p>', '100011', '500.00', '', '0.01', '78.00', '99', '0', '1', '1456285881', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '18', null, '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `baijiacms_shop_goods_comment`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods_comment`;
CREATE TABLE `baijiacms_shop_goods_comment` (
  `createtime` int(10) NOT NULL,
  `optionname` varchar(100) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `ordersn` varchar(20) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `comment` text,
  `rate` int(1) DEFAULT '0' COMMENT '0差评 1中评 2好评',
  `goodsid` int(10) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_goods_option`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods_option`;
CREATE TABLE `baijiacms_shop_goods_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `thumb` varchar(60) DEFAULT '',
  `productprice` decimal(10,2) DEFAULT '0.00',
  `marketprice` decimal(10,2) DEFAULT '0.00',
  `costprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `displayorder` int(11) DEFAULT '0',
  `specs` text,
  PRIMARY KEY (`id`),
  KEY `indx_goodsid` (`goodsid`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods_option
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_goods_piclist`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods_piclist`;
CREATE TABLE `baijiacms_shop_goods_piclist` (
  `picurl` varchar(255) NOT NULL,
  `goodid` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods_piclist
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods_spec`;
CREATE TABLE `baijiacms_shop_goods_spec` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `displaytype` tinyint(3) unsigned NOT NULL,
  `content` text NOT NULL,
  `goodsid` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods_spec
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_goods_spec_item`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_goods_spec_item`;
CREATE TABLE `baijiacms_shop_goods_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specid` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `thumb` varchar(255) DEFAULT '',
  `show` int(11) DEFAULT '0',
  `displayorder` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_specid` (`specid`),
  KEY `indx_show` (`show`),
  KEY `indx_displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_goods_spec_item
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_order`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_order`;
CREATE TABLE `baijiacms_shop_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `ordersn` varchar(20) NOT NULL,
  `credit` int(10) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '-6已退款 -5已退货 -4退货中， -3换货中， -2退款中，-1取消状态，0普通状态，1为已付款，2为已发货，3为成功',
  `sendtype` tinyint(1) unsigned NOT NULL COMMENT '0为快递，1为自提',
  `paytype` tinyint(1) NOT NULL COMMENT '1为余额，2为在线，3为到付',
  `paytypecode` varchar(30) NOT NULL COMMENT '0货到付款，1微支付，2支付宝付款，3余额支付，4积分支付',
  `paytypename` varchar(50) NOT NULL,
  `transid` varchar(50) NOT NULL DEFAULT '0' COMMENT '外部单号(微支付单号等)',
  `remark` varchar(1000) NOT NULL DEFAULT '',
  `expresscom` varchar(30) NOT NULL,
  `expresssn` varchar(50) NOT NULL,
  `express` varchar(30) NOT NULL,
  `addressid` int(10) unsigned NOT NULL,
  `goodsprice` decimal(10,2) DEFAULT '0.00',
  `dispatchprice` decimal(10,2) DEFAULT '0.00',
  `dispatchexpress` varchar(50) DEFAULT '',
  `dispatch` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `address_address` varchar(100) NOT NULL,
  `address_area` varchar(10) NOT NULL,
  `address_city` varchar(10) NOT NULL,
  `address_province` varchar(10) NOT NULL,
  `address_realname` varchar(10) NOT NULL,
  `address_mobile` varchar(20) NOT NULL,
  `rsreson` varchar(500) DEFAULT '' COMMENT '退货款退原因',
  `isrest` int(1) NOT NULL DEFAULT '0',
  `paytime` int(10) DEFAULT '0' COMMENT '订单支付时间',
  `updatetime` int(10) DEFAULT '0' COMMENT '订单更新时间',
  `hasbonus` int(1) DEFAULT '0' COMMENT '是否使用优惠券',
  `bonusprice` decimal(10,2) DEFAULT '0.00' COMMENT '优惠券抵消金额',
  `isverify` int(1) DEFAULT '0' COMMENT '是否是核销订单0否1是',
  `verify_shopvname` varchar(50) DEFAULT '' COMMENT '核销门店名称',
  `verify_shopvid` int(10) DEFAULT '0' COMMENT '核销门店id',
  `verify_openid` varchar(50) DEFAULT '' COMMENT '核销员openid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_order
-- ----------------------------
INSERT INTO `baijiacms_shop_order` VALUES ('1', '2016022411509', '20160224345261', '0', '0.01', '3', '1', '2', 'weixin', '微信支付', '0', '', '', '1234567890', '', '2', '0.01', '0.00', 'cac', '1', '1456298339', '山西省晋城市', '市辖区', '晋城市', '山西省', '郭霄飞', '15600905086', '', '0', '1456298358', '1456298990', '0', '0.00', '0', '', '0', '');

-- ----------------------------
-- Table structure for `baijiacms_shop_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_order_goods`;
CREATE TABLE `baijiacms_shop_order_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` int(10) unsigned NOT NULL,
  `goodsid` int(10) unsigned NOT NULL,
  `status` tinyint(3) DEFAULT '0' COMMENT '申请状态，-2为标志删除，-1为审核无效，0为未申请，1为正在申请，2为审核通过',
  `content` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `total` int(10) unsigned NOT NULL DEFAULT '1',
  `optionid` int(10) DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL,
  `optionname` text,
  `iscomment` int(1) DEFAULT '0' COMMENT '是否已评论0否1是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_order_goods
-- ----------------------------
INSERT INTO `baijiacms_shop_order_goods` VALUES ('1', '1', '1', '0', null, '0.01', '1', '0', '1456298339', null, '0');

-- ----------------------------
-- Table structure for `baijiacms_shop_order_paylog`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_order_paylog`;
CREATE TABLE `baijiacms_shop_order_paylog` (
  `createtime` int(10) NOT NULL,
  `orderid` int(10) NOT NULL,
  `fee` decimal(10,2) NOT NULL,
  `openid` varchar(40) NOT NULL,
  `pid` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_order_paylog
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_shop_pormotions`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_shop_pormotions`;
CREATE TABLE `baijiacms_shop_pormotions` (
  `description` varchar(200) DEFAULT NULL COMMENT '描述(预留)',
  `endtime` int(10) NOT NULL COMMENT '束结时间',
  `starttime` int(10) NOT NULL COMMENT '开始时间',
  `condition` decimal(10,2) NOT NULL COMMENT '条件',
  `promoteType` int(11) NOT NULL COMMENT '0 按订单数包邮 1满额包邮',
  `pname` varchar(100) NOT NULL COMMENT '名称',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_shop_pormotions
-- ----------------------------

-- ----------------------------
-- Table structure for `baijiacms_thirdlogin`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_thirdlogin`;
CREATE TABLE `baijiacms_thirdlogin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `desc` text NOT NULL,
  `configs` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pay_code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_thirdlogin
-- ----------------------------
INSERT INTO `baijiacms_thirdlogin` VALUES ('1', 'weixin', '微信快捷登录', '', '', '1');

-- ----------------------------
-- Table structure for `baijiacms_user`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_user`;
CREATE TABLE `baijiacms_user` (
  `createtime` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_user
-- ----------------------------
INSERT INTO `baijiacms_user` VALUES ('1455524116', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1');

-- ----------------------------
-- Table structure for `baijiacms_user_rule`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_user_rule`;
CREATE TABLE `baijiacms_user_rule` (
  `moddo` varchar(15) NOT NULL,
  `modname` varchar(15) NOT NULL,
  `uid` int(10) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of baijiacms_user_rule
-- ----------------------------
INSERT INTO `baijiacms_user_rule` VALUES ('goods', 'shop', '1', '1');
INSERT INTO `baijiacms_user_rule` VALUES ('category', 'shop', '1', '2');
INSERT INTO `baijiacms_user_rule` VALUES ('order', 'shop', '1', '3');
INSERT INTO `baijiacms_user_rule` VALUES ('orderbat', 'shop', '1', '4');
INSERT INTO `baijiacms_user_rule` VALUES ('config', 'shop', '1', '5');
INSERT INTO `baijiacms_user_rule` VALUES ('adv', 'shop', '1', '6');
INSERT INTO `baijiacms_user_rule` VALUES ('themes', 'shop', '1', '7');
INSERT INTO `baijiacms_user_rule` VALUES ('payment', 'modules', '1', '8');
INSERT INTO `baijiacms_user_rule` VALUES ('thirdlogin', 'modules', '1', '9');
INSERT INTO `baijiacms_user_rule` VALUES ('dispatch', 'shop', '1', '10');
INSERT INTO `baijiacms_user_rule` VALUES ('list', 'member', '1', '11');
INSERT INTO `baijiacms_user_rule` VALUES ('user', 'user', '1', '12');
INSERT INTO `baijiacms_user_rule` VALUES ('update', 'modules', '1', '13');
INSERT INTO `baijiacms_user_rule` VALUES ('weixin', 'weixin', '1', '14');
INSERT INTO `baijiacms_user_rule` VALUES ('alipay', 'alipay', '1', '15');
INSERT INTO `baijiacms_user_rule` VALUES ('bonus', 'bonus', '1', '16');

-- ----------------------------
-- Table structure for `baijiacms_weixin_rule`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_weixin_rule`;
CREATE TABLE `baijiacms_weixin_rule` (
  `url` varchar(500) NOT NULL,
  `thumb` varchar(60) NOT NULL,
  `keywords` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ruletype` int(11) NOT NULL COMMENT '1文本回复 2图文回复',
  `addonsrule` int(1) NOT NULL DEFAULT '0' COMMENT '0常规，1模块规则',
  `addonsModule` varchar(50) DEFAULT '' COMMENT '所属模块',
  `content` text,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_weixin_rule
-- ----------------------------
INSERT INTO `baijiacms_weixin_rule` VALUES ('', '', '你好', '你好', '你好，欢迎关注互联网黑科技，谢谢', '1', '0', '', null, '1');
INSERT INTO `baijiacms_weixin_rule` VALUES ('https://www.baidu.com/', 'jpg/2016/02/162369585257675.jpg', '图文', '图文', '其实我也比较喜欢卡卡的', '2', '0', '', null, '2');
INSERT INTO `baijiacms_weixin_rule` VALUES ('', '', '最新消息', '最新消息', '您点击查看了最新消息，我们会给您提供最新的互联网黑科技。。。', '1', '0', '', null, '3');
INSERT INTO `baijiacms_weixin_rule` VALUES ('', '', '山西', '山西', '欢迎关注黑星科技山西消息', '1', '0', '', null, '4');

-- ----------------------------
-- Table structure for `baijiacms_weixin_wxfans`
-- ----------------------------
DROP TABLE IF EXISTS `baijiacms_weixin_wxfans`;
CREATE TABLE `baijiacms_weixin_wxfans` (
  `createtime` int(10) NOT NULL DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `weixin_openid` varchar(100) NOT NULL,
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(200) NOT NULL DEFAULT '',
  `gender` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别(0:保密 1:男 2:女)',
  `longitude` decimal(10,2) DEFAULT '0.00' COMMENT '地理位置经度',
  `latitude` decimal(10,2) DEFAULT '0.00' COMMENT '地理位置纬度',
  `precision` decimal(10,2) DEFAULT '0.00' COMMENT '地理位置精度',
  PRIMARY KEY (`weixin_openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baijiacms_weixin_wxfans
-- ----------------------------
INSERT INTO `baijiacms_weixin_wxfans` VALUES ('1455626151', null, 'of_GTt9lkZtFUfEjlAGPwhqv4GMU', '1', '', '', '0', '112.38', '35.48', '5.00');
INSERT INTO `baijiacms_weixin_wxfans` VALUES ('1455689818', '2016022411509', 'os3_Pw4PTLtgxBleoD_F9OVdxzLU', '1', '霄飞', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7Q03exbe5kgbic74ILE4fwrJ37dhVuToay6VuuiajAt5g3x6V5XZSlOYHybdtFxC5weQCJpQoEw3Pg/0', '0', '0.00', '0.00', '0.00');
INSERT INTO `baijiacms_weixin_wxfans` VALUES ('1456201607', null, 'of_GTtzWbkU0KEoHb4c4KbQ_2A2g', '1', '', '', '0', '121.39', '31.19', '30.00');
INSERT INTO `baijiacms_weixin_wxfans` VALUES ('1457401310', null, 'os3_Pw8y4gNQ3AH4izmqoXRTYu5Q', '1', 'Song SJun', 'http://wx.qlogo.cn/mmopen/Dibia3icaSrA6n4DQbCEAiagGwmUA0ZpKgB51KiaoAe7XJdEgibJmJwP2HZFKyXIObCjySowUBTVyKm1f0Nr7iciapts3IYK0wZc0432/0', '0', '0.00', '0.00', '0.00');
INSERT INTO `baijiacms_weixin_wxfans` VALUES ('1457776901', null, 'os3_Pw7_ST95VVbjCvTIjecDJ1WU', '0', '', '', '0', '0.00', '0.00', '0.00');
