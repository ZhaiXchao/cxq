-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
-- �ͻ���
-- ---

DROP TABLE IF EXISTS `user`;
		
CREATE TABLE `user` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` VARCHAR(20) NOT NULL DEFAULT 'NULL' COMMENT '�û���',
  `password` VARCHAR(50) NOT NULL DEFAULT 'NULL' COMMENT '����',
  `real_name` VARCHAR NULL DEFAULT NULL COMMENT '��ʵ����',
  `phone` VARCHAR(11) NOT NULL DEFAULT 'NULL' COMMENT '�ֻ���',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '״̬��0��ͣ��/1������',
  PRIMARY KEY (`id`),
KEY (`phone`)
) COMMENT '�ͻ���';

-- ---
-- Table 'product'
-- ��Ʒ��
-- ---

DROP TABLE IF EXISTS `product`;
		
CREATE TABLE `product` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `product_name` VARCHAR(30) NOT NULL DEFAULT 'NULL' COMMENT '��Ʒ����',
  `product_img` VARCHAR(100) NULL DEFAULT NULL COMMENT '��ƷͼƬ��ַ',
  `category_id` INTEGER NOT NULL DEFAULT NULL COMMENT '����',
  `flavour_id` VARCHAR NULL DEFAULT NULL COMMENT '��ζid',
  `price` DECIMAL NOT NULL DEFAULT NULL COMMENT '��Ʒ�۸�',
  `create_time` DATE NOT NULL DEFAULT 'NULL' COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) COMMENT '��Ʒ��';

-- ---
-- Table 'order'
-- ������
-- ---

DROP TABLE IF EXISTS `order`;
		
CREATE TABLE `order` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `order_sn` VARCHAR(30) NOT NULL DEFAULT 'NULL' COMMENT '��ˮ��',
  `create_user_id` INTEGER NOT NULL DEFAULT NULL COMMENT '������id',
  `create_time` DATETIME NOT NULL DEFAULT 'NULL' COMMENT '����ʱ��',
  `take_time` DATETIME NULL DEFAULT NULL COMMENT 'ȡ��ʱ��',
  `price` DECIMAL NOT NULL DEFAULT NULL COMMENT '�������',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '����״̬��-1�����ύ��0/δ֧����1/��֧����2/��ȷ��;3/����ȡ',
  `note` VARCHAR NULL DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) COMMENT '������';

-- ---
-- Table 'order_product_relation'
-- ������Ʒӳ���
-- ---

DROP TABLE IF EXISTS `order_product_relation`;
		
CREATE TABLE `order_product_relation` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `order_id` INTEGER NULL DEFAULT NULL,
  `product_id` INTEGER NOT NULL DEFAULT NULL COMMENT '��Ʒid',
  `count` INTEGER NOT NULL DEFAULT 1 COMMENT '��Ʒ����',
  `status` INTEGER NOT NULL DEFAULT NULL COMMENT '��Ʒ״̬��0��δ������1��������',
  PRIMARY KEY (`id`)
) COMMENT '������Ʒӳ���';

-- ---
-- Table 'category'
-- �౨��
-- ---

DROP TABLE IF EXISTS `category`;
		
CREATE TABLE `category` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `category_name` VARCHAR NOT NULL DEFAULT 'NULL' COMMENT '��������',
  PRIMARY KEY (`id`)
) COMMENT '�౨��';

-- ---
-- Table 'flavour'
-- ��ζ����
-- ---

DROP TABLE IF EXISTS `flavour`;
		
CREATE TABLE `flavour` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `flavour_name` VARCHAR NOT NULL DEFAULT 'NULL' COMMENT '��ζ����',
  PRIMARY KEY (`id`)
) COMMENT '��ζ����';

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