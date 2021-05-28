-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- 客户表
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(20) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `password` VARCHAR(50) NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `real_name` VARCHAR NULL DEFAULT NULL COMMENT '真实名称',
  `phone` VARCHAR(11) NOT NULL DEFAULT 'NULL' COMMENT '手机号',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '状态：0：停用/1：启用',
  PRIMARY KEY (`id`),
KEY (`phone`)
) COMMENT '客户表';

-- ---
-- Table 'product'
-- 商品表
-- ---

DROP TABLE IF EXISTS `product`;
		
CREATE TABLE `product` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `product_name` VARCHAR(30) NOT NULL DEFAULT 'NULL' COMMENT '商品名称',
  `product_img` VARCHAR(100) NULL DEFAULT NULL COMMENT '商品图片地址',
  `category_id` INTEGER NOT NULL DEFAULT NULL COMMENT '分类',
  `flavour_id` VARCHAR NULL DEFAULT NULL COMMENT '口味id',
  `price` DECIMAL NOT NULL DEFAULT NULL COMMENT '商品价格',
  `create_time` DATE NOT NULL DEFAULT 'NULL' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) COMMENT '商品表';

-- ---
-- Table 'order'
-- 订单表
-- ---

DROP TABLE IF EXISTS `order`;
		
CREATE TABLE `order` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `order_sn` VARCHAR(30) NOT NULL DEFAULT 'NULL' COMMENT '流水号',
  `create_user_id` INTEGER NOT NULL DEFAULT NULL COMMENT '创建人id',
  `create_time` DATETIME NOT NULL DEFAULT 'NULL' COMMENT '创建时间',
  `take_time` DATETIME NULL DEFAULT NULL COMMENT '取货时间',
  `price` DECIMAL NOT NULL DEFAULT NULL COMMENT '订单金额',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '订单状态：-1：已提交；0/未支付；1/已支付；2/已确认;3/已领取',
  `note` VARCHAR NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) COMMENT '订单表';

-- ---
-- Table 'order_product_relation'
-- 订单商品映射表
-- ---

DROP TABLE IF EXISTS `order_product_relation`;
		
CREATE TABLE `order_product_relation` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `order_id` INTEGER NULL DEFAULT NULL,
  `product_id` INTEGER NOT NULL DEFAULT NULL COMMENT '商品id',
  `count` INTEGER NOT NULL DEFAULT 1 COMMENT '商品份数',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '商品状态：0：未制作；1：制作中',
  PRIMARY KEY (`id`)
) COMMENT '订单商品映射表';

-- ---
-- Table 'category'
-- 类报表
-- ---

DROP TABLE IF EXISTS `category`;
		
CREATE TABLE `category` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `category_name` VARCHAR NOT NULL DEFAULT 'NULL' COMMENT '分类名称',
  PRIMARY KEY (`id`)
) COMMENT '类报表';

-- ---
-- Table 'flavour'
-- 口味分类
-- ---

DROP TABLE IF EXISTS `flavour`;
		
CREATE TABLE `flavour` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `flavour_name` VARCHAR NOT NULL DEFAULT 'NULL' COMMENT '口味名称',
  PRIMARY KEY (`id`)
) COMMENT '口味分类';

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `product` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `order` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `order_product_relation` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `category` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `flavour` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `user` (`id`,`username`,`password`,`real_name`,`phone`,`status`) VALUES
-- ('','','','','','');
-- INSERT INTO `product` (`id`,`product_name`,`product_img`,`category_id`,`flavour_id`,`price`,`create_time`) VALUES
-- ('','','','','','','');
-- INSERT INTO `order` (`id`,`order_sn`,`create_user_id`,`create_time`,`take_time`,`price`,`status`,`note`) VALUES
-- ('','','','','','','','');
-- INSERT INTO `order_product_relation` (`id`,`order_id`,`product_id`,`count`,`status`) VALUES
-- ('','','','','');
-- INSERT INTO `category` (`id`,`category_name`) VALUES
-- ('','');
-- INSERT INTO `flavour` (`id`,`flavour_name`) VALUES
-- ('','');