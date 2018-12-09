
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
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂大腿环吸', '吸脂（大腿环吸）', '30000', '13800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂腰腹环吸', '吸脂(腰腹环吸)', '30000', '13800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '吸脂上臂吸脂', '吸脂(上臂吸脂)', '15000', '6800', '', '1', '1544341342', '', 4);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪填充(小部位)', '元气babyface少女脸，用自己的细胞种出美丽青春', '2800', '1800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪填充(全脸)', '元气babyface少女脸，用自己的细胞种出美丽青春', '22800', '12800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '自体脂肪隆胸', '大不一样，凶猛来袭', '28800', '16800', '', '1', '1544341342', '', 5);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦脸针（首次）', '一针塑美。衡力瘦脸针*回归精致小脸', '1980', '680', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦脸针3次', '衡力瘦脸针3次', '5940', '2980', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox瘦脸针（首次）', '精准对抗咬肌  BOTOX瘦脸针', '8800', '2980', '', '1', '1544341342', '', 6);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸（首支）', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸（首支）', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇玻尿酸（首支）', '驻颜法宝 打造立体轮廓 海薇玻尿酸', '980', '180', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸（首支）', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸（首支）', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸（首支）', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸（首支）', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸（首支）', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 7);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox祛鱼尾纹（首次）', '无皱笑容 无需一键美颜 botox祛鱼尾纹', '2980', '880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox除皱3次', '从此告别皱纹 botox除皱3次装', '8800', '3800', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力除皱（单部位）（首次）', '衡力除皱祛鱼尾纹/眉间纹/抬头纹，3选1', '1980', '399', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', 'botox除皱（单部位）（首次）', '保妥适单部位注射除皱（抬头纹/眉间纹/鼻背纹）3选1', '2980', '880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸（首支）', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸（首支）', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸（首支）', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸（首支）', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 8);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸（首支）', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸（首支）', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸（首支）', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 9);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇m+玻尿酸（首支）', '挺翘美鼻 一针拥有 海薇m+玻尿酸', '2980', '980', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '润百颜玻尿酸（首支）', '塑造自然饱满美颜 润百颜玻尿酸', '1580', '380', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '海薇玻尿酸（首支）', '驻颜法宝 打造立体轮廓 海薇玻尿酸', '980', '180', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉c玻尿酸（首支）', '饱满轮廓 即刻拥有 伊婉c玻尿酸', '1980', '780', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '艾莉薇玻尿酸（首支）', '艾莉薇玻尿酸', '6800', '4680', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '瑞蓝玻尿酸（首支）', '瑞蓝玻尿酸', '4800', '1980', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '乔雅登雅致玻尿酸（首支）', '乔雅登雅致玻尿酸', '12666', '7880', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '伊婉v玻尿酸（首支）', '伊婉v玻尿酸 面部立体饱满 水润嘭嘭美肌', '4800', '2680', '', '1', '1544341342', '', 10);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '衡力瘦腿针（首次）', '拥有纤细小腿 大胆露一夏 *衡力瘦腿针', '3980', '2980', '', '1', '1544341342', '', 11);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '半永久纹眉', '上海欧莱美 半永久裸妆眉', '1680', '998', '', '1', '1544341342', '', 12);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '半永久美瞳线', '上海欧莱美 半永久美瞳线', '1580', '898', '', '1', '1544341342', '', 12);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '360嫩肤祛斑', '360嫩肤祛斑', '998', '498', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '镭射祛斑', '镭射祛斑', '1260', '598', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '超皮秒局部', '超皮秒祛斑美白嫩肤 局部 明星爆款', '2800', '980', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '果酸焕肤', '果酸焕肤', '680', '280', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印（3选1）', '898', '398', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '激光点痣', '激光点痣，正常代谢不留坑不留印', '200', '50', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '点阵激光', '点阵激光祛疤 淡印', '698', '398', '', '1', '1544341342', '', 13);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '热拉提（射频紧肤）', '热提拉。面部提升', '998', '480', '', '1', '1544341342', '', 14);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印（3选1）', '898', '398', '', '1', '1544341342', '', 14);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '脱唇/腋毛包年（二选一）', '脱毛，唇毛/腋毛（二选一）', '880', '88', '', '1', '1544341342', '', 15);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '超冰四肢脱毛（四选一）', '超冰舒适脱毛 上臂/前臂/大腿/小腿包年', '5200', '2580', '', '1', '1544341342', '', 15);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '果酸焕肤', '果酸焕肤', '680', '280', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '光子嫩肤', 'opt脉冲光祛斑/嫩肤/祛痘印（3选1）', '898', '398', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '（针清+红蓝光+中药面膜）祛痘', '祛痘，拔除痘根平痘', '380', '38', '', '1', '1544341342', '', 16);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '无针水光', '为你的肌肤白净水润', '380', '38', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '小气泡', '韩国小气泡，深层清洁补水嫩肤', '380', '38', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '大气泡（舒敏之星）', '大气泡（舒敏之星）', '680', '98', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '菲洛嘉水光针', '菲洛嘉水光注射，补水抗衰 美白', '5600', '2380', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '基础水光针', '水光针基础', '660', '198', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '美白水光针', '水光针美白', '760', '398', '', '1', '1544341342', '', 17);
INSERT INTO `olm_product` (`logo`, `name`, `describe`, `money`, `ymoney`, `content`, `state`, `atime`, `sellmun`, `cid`) VALUES ( '', '紧致水光针', '水光针紧致', '860', '498', '', '1', '1544341342', '', 17);
