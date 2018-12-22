
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- 数据库: `shopping` 上海欧莱美
--

-- --------------------------------------------------------

--
-- 表的结构 `olm_product`
--


CREATE TABLE IF NOT EXISTS `olm_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(20) DEFAULT NULL COMMENT '商品封面图片',
  `name` varchar(20) DEFAULT NULL COMMENT '商品名称',
  `describe` varchar(20) DEFAULT NULL COMMENT '简单描述',
  `money` DECIMAL(10,2) NOT NULL DEFAULT '0.0' COMMENT '商品原价',
  `ymoney` DECIMAL(10,2) NOT NULL DEFAULT '0.0' COMMENT '商品优惠价',
  `content` text  DEFAULT NULL COMMENT '商品介绍',
  `state` tinyint(1)  NOT NULL DEFAULT '1' COMMENT '商品状态',
  `atime` int(11)  NOT NULL DEFAULT '0' COMMENT '商品发布时间',
  `sellmun` int(11)  NOT NULL DEFAULT '0' COMMENT '预约数量',
  `cid` smallint(5)  NOT NULL COMMENT '商品分类id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表' AUTO_INCREMENT=1 ;

ALTER TABLE `olm_product` ADD `money` DECIMAL(10,2) NOT NULL DEFAULT '0.0' COMMENT '商品原价' AFTER `describe`;
ALTER TABLE `olm_product` ADD `ymoney` DECIMAL(10,2) NOT NULL DEFAULT '0.0' COMMENT '商品优惠价' AFTER `money`;
--
-- 表的结构 `olm_category`
--
CREATE TABLE IF NOT EXISTS `olm_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `catename` varchar(20) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表' AUTO_INCREMENT=1 ;

1544335318

INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES
( '', '埋线双眼皮', '埋线双眼皮，媚眼如丝 即刻呈现，拯救你的眼形', '2980', '680', '', '1', '1544335318', '', '1');


INSERT INTO `olm_category` (`catename`) VALUES ('眼部');
INSERT INTO `olm_category` (`catename`) VALUES ('鼻部');
INSERT INTO `olm_category` (`catename`) VALUES ('胸部');
INSERT INTO `olm_category` (`catename`) VALUES ('吸脂瘦身');
INSERT INTO `olm_category` (`catename`) VALUES ('线雕');
INSERT INTO `olm_category` (`catename`) VALUES ('自体脂肪');
INSERT INTO `olm_category` (`catename`) VALUES ('瘦脸针');
INSERT INTO `olm_category` (`catename`) VALUES ('玻尿酸');
INSERT INTO `olm_category` (`catename`) VALUES ('注射除皱');
INSERT INTO `olm_category` (`catename`) VALUES ('注射隆鼻');
INSERT INTO `olm_category` (`catename`) VALUES ('丰下巴');
INSERT INTO `olm_category` (`catename`) VALUES ('瘦腿针');
INSERT INTO `olm_category` (`catename`) VALUES ('纹绣');
INSERT INTO `olm_category` (`catename`) VALUES ('净肤祛斑');
INSERT INTO `olm_category` (`catename`) VALUES ('紧肤');
INSERT INTO `olm_category` (`catename`) VALUES ('脱毛');
INSERT INTO `olm_category` (`catename`) VALUES ('祛痘');
INSERT INTO `olm_category` (`catename`) VALUES ('美白嫩肤');






INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '埋线双眼皮', '埋线双眼皮，媚眼如丝 即刻呈现，拯救你的眼形', '2980', '680', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '全切双眼皮', '效果自然清新，给你宛如天生的双眼皮', '3980', '980', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '双眼皮+开内眼角', '精雕美眸，芭比双眼皮', '8800', '3800', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '内切祛眼袋', '内吸法祛眼袋，轻松祛眼袋，重塑年轻眼部，', '5800', '1580', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '欧范眼综合', '灵动双眸，盼目生辉', '12600', '7800', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '双眼皮修复', '重塑自然美眸', '28000', '18800', '', '1', '1544341342', '', 1);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '国产假体隆鼻', '国产假体隆鼻', '6800', '1580', '', '1', '1544341342', '', 2);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '韩士生科假体隆鼻', '俏挺美鼻 宛如天生 不畏强光', '12000', '5800', '', '1', '1544341342', '', 2);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '韩士生科综合隆鼻', '自然挺翘  让人怦然心跳', '19600', '9800', '', '1', '1544341342', '', 2);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '立秀膨体隆鼻', '塑造立体气质美鼻', '13800', '8800', '', '1', '1544341342', '', 2);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '立秀膨体鼻综合', '塑造天然挺翘美鼻', '28400', '12800', '', '1', '1544341342', '', 2);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '(花样年华)威宁假体隆胸', '(花样年华)合资假体隆胸', '12800', '6800', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '威宁之星隆胸', '威宁之星隆胸', '22800', '12800', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '(浪漫情环)威宁假体隆胸', '(浪漫情环)威宁合资假体隆胸', '25800', '18800', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪隆胸', '大不一样，凶猛来袭', '28800', '16800', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '曼托圆盘毛面美胸', '手感真实，效果自然', '58000', '29800', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '内窥镜隆胸术', '手感真实，院长技术，精准隆胸，更小创伤，极速恢复', '15000', '10000', '', '1', '1544341342', '', 3);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂大腿环吸', '吸脂(大腿环吸)', '30000', '13800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂腰腹环吸', '吸脂(腰腹环吸)', '30000', '13800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂上臂吸脂', '吸脂(上臂吸脂)', '15000', '6800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪填充(小部位)', '元气babyface少女脸，用自己的细胞种出美丽青春', '2800', '1800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪填充(全脸)', '元气babyface少女脸，用自己的细胞种出美丽青春', '22800', '12800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪隆胸', '大不一样，凶猛来袭', '28800', '16800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦脸针(首次)', '一针塑美。衡力瘦脸针*回归精致小脸', '1980', '680', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦脸针3次', '衡力瘦脸针3次', '5940', '2980', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox瘦脸针(首次)', '精准对抗咬肌  BOTOX瘦脸针', '8800', '2980', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸(首支)', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸(首支)', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇玻尿酸(首支)', '驻颜法宝 打造立体轮廓 海薇玻尿酸', '980', '180', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸(首支)', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸(首支)', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸(首支)', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸(首支)', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸(首支)', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox祛鱼尾纹(首次)', '无皱笑容 无需一键美颜 botox祛鱼尾纹', '2980', '880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox除皱3次', '从此告别皱纹 botox除皱3次装', '8800', '3800', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力除皱(单部位)(首次)', '衡力除皱祛鱼尾纹/眉间纹/抬头纹，3选1', '1980', '399', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox除皱(单部位)(首次)', '保妥适单部位注射除皱(抬头纹/眉间纹/鼻背纹)3选1', '2980', '880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸(首支)', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸(首支)', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸(首支)', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸(首支)', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸(首支)', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸(首支)', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸(首支)', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸(首支)', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸(首支)', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇玻尿酸(首支)', '驻颜法宝 打造立体轮廓 海薇玻尿酸', '980', '180', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸(首支)', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸(首支)', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸(首支)', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸(首支)', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸(首支)', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦腿针(首次)', '拥有纤细小腿 大胆露一夏 *衡力瘦腿针', '3980', '2980', '', '1', '1544341342', '', 11);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '半永久纹眉', '上海欧莱美 半永久裸妆眉', '1680', '998', '', '1', '1544341342', '', 12);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '半永久美瞳线', '上海欧莱美 半永久美瞳线', '1580', '898', '', '1', '1544341342', '', 12);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '360嫩肤祛斑', '360嫩肤祛斑', '998', '498', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '镭射祛斑', '镭射祛斑', '1260', '598', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '超皮秒局部', '超皮秒祛斑美白嫩肤 局部 明星爆款', '2800', '980', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '果酸焕肤', '果酸焕肤', '680', '280', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印(3选1)', '898', '398', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '激光点痣', '激光点痣，正常代谢不留坑不留印', '200', '50', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '点阵激光', '点阵激光祛疤 淡印', '698', '398', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '热拉提(射频紧肤)', '热提拉。面部提升', '998', '480', '', '1', '1544341342', '', 14);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印(3选1)', '898', '398', '', '1', '1544341342', '', 14);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '脱唇/腋毛包年(二选一)', '脱毛，唇毛/腋毛(二选一)', '880', '88', '', '1', '1544341342', '', 15);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '超冰四肢脱毛(四选一)', '超冰舒适脱毛 上臂/前臂/大腿/小腿包年', '5200', '2580', '', '1', '1544341342', '', 15);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '果酸焕肤', '果酸焕肤', '680', '280', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印(3选1)', '898', '398', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '(针清+红蓝光+中药面膜)祛痘', '祛痘，拔除痘根平痘', '380', '38', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '无针水光', '为你的肌肤白净水润', '380', '38', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '小气泡', '韩国小气泡，深层清洁补水嫩肤', '380', '38', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '大气泡(舒敏之星)', '大气泡(舒敏之星)', '680', '98', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '菲洛嘉水光针', '菲洛嘉水光注射，补水抗衰 美白', '5600', '2380', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '基础水光针', '水光针基础', '660', '198', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '美白水光针', '水光针美白', '760', '398', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '紧致水光针', '水光针紧致', '860', '498', '', '1', '1544341342', '', 17);



UPDATE olm_product SET logo = '/src/images/20181204/984e1206ca6f6ed4dd83aeb8ab9ecb2a.jpg' WHERE id in ('89');
UPDATE olm_product SET logo = '/src/images/20181204/c336f2230fed7ab50ae5e2869ceab544.jpg' WHERE id in ('91');
UPDATE olm_product SET logo = '/src/images/20181204/36056d3291fb9d23fe8f4e4195d32415.jpg' WHERE id in ('134');
UPDATE olm_product SET logo = '/src/images/20181204/92a9bbd0ef8f3fd79de0872377f8c9e3.jpg' WHERE id in ('113');
UPDATE olm_product SET logo = '/src/images/20181204/ae6454f9bec5d92dba6e564f35409591.jpg' WHERE id in ('115');
UPDATE olm_product SET logo = '/src/images/20181204/8162c121899e7a56e78312b91bb15f54.jpg' WHERE id in ('103');
UPDATE olm_product SET logo = '/src/images/20181204/091b676d9b52e50021790c1562aad99d.jpg' WHERE id in ('112');
UPDATE olm_product SET logo = '/src/images/20181204/4315dc60a20e7ab7b83170db330b8836.jpg' WHERE id in ('147');
UPDATE olm_product SET logo = '/src/images/20181204/0f13574ae5f0e8a87a0803ec9fa40eb8.jpg' WHERE id in ('108');
UPDATE olm_product SET logo = '/src/images/20181204/0f13574ae5f0e8a87a0803ec9fa40eb8.jpg' WHERE id in ('121');
UPDATE olm_product SET logo = '/src/images/20181204/0f13574ae5f0e8a87a0803ec9fa40eb8.jpg' WHERE id in ('127');
UPDATE olm_product SET logo = '/src/images/20181204/e477ab0cf174201dc938bcf5e8dada37.jpg' WHERE id in ('133');
UPDATE olm_product SET logo = '/src/images/20181204/4b2d2ffaeff602800ef987766025593e.jpg' WHERE id in ('132');
UPDATE olm_product SET logo = '/src/images/20181204/a8c9d3194a0681a5424baa5312771e6b.jpg' WHERE id in ('144');
UPDATE olm_product SET logo = '/src/images/20181204/21d1e74f8f9d50a385befa9d3a860f3b.jpg' WHERE id in ('136');
UPDATE olm_product SET logo = '/src/images/20181204/35ab09e974842ce0cea51094a9f4fec2.jpg' WHERE id in ('150');
UPDATE olm_product SET logo = '/src/images/20181204/77447221b42d3c265e254eee2432939d.jpg' WHERE id in ('140');
UPDATE olm_product SET logo = '/src/images/20181204/9b28b990d695cff517f351156b84525b.jpg' WHERE id in ('151');
UPDATE olm_product SET logo = '/src/images/20181204/b1724521b0f9f83eeb2de06d83f4a318.jpg' WHERE id in ('138');
UPDATE olm_product SET logo = '/src/images/20181204/b1724521b0f9f83eeb2de06d83f4a318.jpg' WHERE id in ('142');
UPDATE olm_product SET logo = '/src/images/20181204/b1724521b0f9f83eeb2de06d83f4a318.jpg' WHERE id in ('146');
UPDATE olm_product SET logo = '/src/images/20181204/997f384593624dba814b9a0d7d8974c8.jpg' WHERE id in ('84');
UPDATE olm_product SET logo = '/src/images/20181204/697f4091c62b9ccac1c3f5cbd22bffc0.jpg' WHERE id in ('137');
UPDATE olm_product SET logo = '/src/images/20181204/697f4091c62b9ccac1c3f5cbd22bffc0.jpg' WHERE id in ('145');
UPDATE olm_product SET logo = '/src/images/20181204/765668472498aa773e1b756afcbff451.jpg' WHERE id in ('104');
UPDATE olm_product SET logo = '/src/images/20181204/765668472498aa773e1b756afcbff451.jpg' WHERE id in ('120');
UPDATE olm_product SET logo = '/src/images/20181204/765668472498aa773e1b756afcbff451.jpg' WHERE id in ('123');
UPDATE olm_product SET logo = '/src/images/20181204/abc859a68aa3eab5599852b1816824ea.jpg' WHERE id in ('106');
UPDATE olm_product SET logo = '/src/images/20181204/abc859a68aa3eab5599852b1816824ea.jpg' WHERE id in ('125');
UPDATE olm_product SET logo = '/src/images/20181204/85cd6883ff3fcdf0250541eed6bcbec1.jpg' WHERE id in ('85');
UPDATE olm_product SET logo = '/src/images/20181204/de9d63627a09cbc00de280cd1dcc656f.jpg' WHERE id in ('86');
UPDATE olm_product SET logo = '/src/images/20181204/567181d48e147484d6085ec6c6db1dac.jpg' WHERE id in ('114');
UPDATE olm_product SET logo = '/src/images/20181204/be03ce351b1c1d105dc16ac19dd40da8.jpg' WHERE id in ('102');
UPDATE olm_product SET logo = '/src/images/20181204/df1e2e29ab2a08c76eabbd7471445c55.jpg' WHERE id in ('101');
UPDATE olm_product SET logo = '/src/images/20181204/cf6c33fc8cdcaf79ab613a23dda1f4fe.jpg' WHERE id in ('131');
UPDATE olm_product SET logo = '/src/images/20181204/1c1789b34c8b8d17eb09dd57b30661dc.jpg' WHERE id in ('152');
UPDATE olm_product SET logo = '/src/images/20181204/46f6c99c3b21e08469cf37ae93c51d74.jpg' WHERE id in ('139');
UPDATE olm_product SET logo = '/src/images/20181204/47b7357ad1afeb6b691ecf4f235a6328.jpg' WHERE id in ('154');
UPDATE olm_product SET logo = '/src/images/20181204/04d9f04e3ac0e3aeb70a03162cca657b.jpg' WHERE id in ('135');
UPDATE olm_product SET logo = '/src/images/20181204/11c4441819259b2de48b0b7fac3b4354.jpg' WHERE id in ('88');
UPDATE olm_product SET logo = '/src/images/20181204/2675112f7aa156269f0008e711dcf4d7.jpg' WHERE id in ('87');
UPDATE olm_product SET logo = '/src/images/20181204/594280ad869def8176b4627c442c2e42.jpg' WHERE id in ('78');
UPDATE olm_product SET logo = '/src/images/20181204/6e086f151d05858f3f23d0c2a2817960.jpg' WHERE id in ('93');
UPDATE olm_product SET logo = '/src/images/20181204/3eabdf7573fad5bf74429ebf60ec3d8f.jpg' WHERE id in ('153');
UPDATE olm_product SET logo = '/src/images/20181204/45fdb9a409611c11e220be40c3466698.jpg' WHERE id in ('94');
UPDATE olm_product SET logo = '/src/images/20181204/814eb67a9acb03cc61b51178de866d09.jpg' WHERE id in ('81');
UPDATE olm_product SET logo = '/src/images/20181204/177a588ba2bc7bb4c31dc2db0ca67370.jpg' WHERE id in ('82');
UPDATE olm_product SET logo = '/src/images/20181204/efa4fefc70fe897b34db256ea098c891.jpg' WHERE id in ('110');
UPDATE olm_product SET logo = '/src/images/20181204/efa4fefc70fe897b34db256ea098c891.jpg' WHERE id in ('118');
UPDATE olm_product SET logo = '/src/images/20181204/efa4fefc70fe897b34db256ea098c891.jpg' WHERE id in ('129');
UPDATE olm_product SET logo = '/src/images/20181204/e94fd4051382e6070fc4f125ca9024c6.jpg' WHERE id in ('79');
UPDATE olm_product SET logo = '/src/images/20181204/c7e9ef36d837009611034f76f5059b5e.jpg' WHERE id in ('141');
UPDATE olm_product SET logo = '/src/images/20181204/49f312163eab4821a265fe1d0dfa965a.jpg' WHERE id in ('109');
UPDATE olm_product SET logo = '/src/images/20181204/49f312163eab4821a265fe1d0dfa965a.jpg' WHERE id in ('117');
UPDATE olm_product SET logo = '/src/images/20181204/49f312163eab4821a265fe1d0dfa965a.jpg' WHERE id in ('128');
UPDATE olm_product SET logo = '/src/images/20181204/382bedd61ddc9ca045f53347255e47af.jpg' WHERE id in ('105');
UPDATE olm_product SET logo = '/src/images/20181204/382bedd61ddc9ca045f53347255e47af.jpg' WHERE id in ('116');
UPDATE olm_product SET logo = '/src/images/20181204/382bedd61ddc9ca045f53347255e47af.jpg' WHERE id in ('124');
UPDATE olm_product SET logo = '/src/images/20181204/729b2caf6c398feb814728f01ca95016.jpg' WHERE id in ('80');
UPDATE olm_product SET logo = '/src/images/20181204/a91e00fe1854345d9c4d724ed3cc20c2.jpg' WHERE id in ('83');
UPDATE olm_product SET logo = '/src/images/20181204/55fc3f2d7515e91a813b01cfda644136.jpg' WHERE id in ('143');
UPDATE olm_product SET logo = '/src/images/20181204/40f7d5141649a32848b55d6b2f4df497.jpg' WHERE id in ('90');
UPDATE olm_product SET logo = '/src/images/20181204/e8e4854cb0951bf4c33772e8691b0205.jpg' WHERE id in ('148');
UPDATE olm_product SET logo = '/src/images/20181204/c6a14a6ae750ba893cbe7ebc43144bb0.jpg' WHERE id in ('95');
UPDATE olm_product SET logo = '/src/images/20181204/57c1a44eeb91a7227cf0b98ecefbf6e0.jpg' WHERE id in ('97');
UPDATE olm_product SET logo = '/src/images/20181204/0538cfd19180e16d52f2d385b9099409.jpg' WHERE id in ('96');
UPDATE olm_product SET logo = '/src/images/20181204/1c8ce1aed7bbda8ccf581738a5c0f61c.jpg' WHERE id in ('149');
UPDATE olm_product SET logo = '/src/images/20181204/4a30ea3bb00212acee4add20b3594073.jpg' WHERE id in ('107');
UPDATE olm_product SET logo = '/src/images/20181204/4a30ea3bb00212acee4add20b3594073.jpg' WHERE id in ('119');
UPDATE olm_product SET logo = '/src/images/20181204/4a30ea3bb00212acee4add20b3594073.jpg' WHERE id in ('126');
UPDATE olm_product SET logo = '/src/images/20181204/43733a31227718ca8a9cdf74b1014b61.jpg' WHERE id in ('111');
UPDATE olm_product SET logo = '/src/images/20181204/43733a31227718ca8a9cdf74b1014b61.jpg' WHERE id in ('122');
UPDATE olm_product SET logo = '/src/images/20181204/43733a31227718ca8a9cdf74b1014b61.jpg' WHERE id in ('130');
UPDATE olm_product SET logo = '/src/images/20181204/1b87b56e8072b27cfe722dc739a8d854.jpg' WHERE id in ('92');
UPDATE olm_product SET logo = '/src/images/20181204/1b87b56e8072b27cfe722dc739a8d854.jpg' WHERE id in ('100');
UPDATE olm_product SET logo = '/src/images/20181204/d5dee1bad7ba68c86a8f3f24a23232e5.jpg' WHERE id in ('99');
UPDATE olm_product SET logo = '/src/images/20181204/f58d16be83c11ceca92217fbb6f73ed9.jpg' WHERE id in ('98');