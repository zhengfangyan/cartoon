#设置客户端连接器端使用的编码为utf8
SET NAMES UTF8;
#丢弃指定数据库，如果存在的话
DROP DATABASE IF EXISTS cartoon;
#创建新的数据库，设置存储的编码为utf8
CREATE DATABASE cartoon CHARSET = UTF8;
#进入数据库
USE cartoon;
/**有妖气家族型号**/
CREATE TABLE ct_laptop_family(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32),
  href VARCHAR(128)
);
INSERT INTO ct_laptop_family VALUES
(NULL, '一禅小和尚', 'details?lid=1'),
(NULL, '心之茧','details?lid=2'),
(NULL, '非人哉', 'details?lid=3'),
(NULL, '镇魂街','details?lid=4'),
(NULL, '端脑','details?lid=5'),
(NULL, '雏蜂','details?lid=6'),
(NULL, '麦哥今天不加班','details?lid=7'),
(NULL, '拜见女皇陛下','details?lid=8'),
(NULL, '空心恋人','details?lid=9'),
(NULL, '恋爱生死簿','details?lid=10');
/**有妖气分类**/
CREATE TABLE ct_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  limg  VARCHAR(128),          
  title VARCHAR(128),         
  author VARCHAR(64),         
  type VARCHAR(64),           
  click  DECIMAL(12,2),       
  href VARCHAR(128),
  rank VARCHAR(128),
  ltop_sale TINYINT
);
/*有妖气详情*/
CREATE TABLE ct_detail(
    lid INT PRIMARY KEY AUTO_INCREMENT,   
    fid INT,                               
    title VARCHAR(32),
    bimg VARCHAR(128),
    mimg VARCHAR(128),
    dauthor  VARCHAR(64),
    moods  DECIMAL(12,2), 
    dtype VARCHAR(100),
    details VARCHAR(500)
);
/**用户信息**/
CREATE TABLE ct_user(
  uid INT PRIMARY KEY  AUTO_INCREMENT,
  uname VARCHAR(32),
  phone VARCHAR(16),
  upwd VARCHAR(128),
  toupwd VARCHAR(128)
);
/****首页轮播广告商品****/
CREATE TABLE ct_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****有妖气首页内容****/
CREATE TABLE ct_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  limg VARCHAR(128),
  title VARCHAR(64),
  author VARCHAR(64),
  type VARCHAR(64),
  click DECIMAL(12,2),
  href VARCHAR(128),
  seq_top_sale TINYINT
);

/*******************/
/******数据导入******/
/*******************/
/**笔记本电脑型号家族**/

/**用户信息**/
INSERT INTO ct_user VALUES
(NULL, 'dingding','13501234567',md5('123456'),md5('123456')),
(NULL, 'dangdang','13501234568', md5('123456'), md5('123456')),
(NULL, 'doudou', '13501234569', md5('123456'), md5('123456'));

/****首页轮播广告商品****/
INSERT INTO ct_index_carousel VALUES
(NULL, 'http://127.0.0.1:3000/img/index/lunbo1.jpg','轮播广告商品1','http://m.u17.com/c/68109.html'),
(NULL, 'http://127.0.0.1:3000/img/index/lunbo2.jpg','轮播广告商品2','http://m.u17.com/c/149716.html'),
(NULL, 'http://127.0.0.1:3000/img/index/lunbo3.jpg','轮播广告商品3','http://m.u17.com/c/153687.html');

/****首页商品****/
INSERT INTO ct_index_product VALUES
(NULL,'http://127.0.0.1:3000/img/index/f1_01.jpg','一禅小和尚','一禅小和尚','少女|搞笑|生活',2794 ,'http://m.u17.com/c/144983.html',1),
(NULL,'http://127.0.0.1:3000/img/index/f1_02.jpg','心之茧','RosyStarling','少女|生活|恋爱 |纯爱',8472,'http://m.u17.com/c/145630.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f1_03.jpg','非人哉','一汪空气','少女|搞笑',1.54,'http://m.u17.com/c/120003.html',3),
(NULL,'http://127.0.0.1:3000/img/index/f1_04.jpg','镇魂街','许辰','少年|魔幻',42.94,'http://m.u17.com/c/3166.html', 4),
(NULL,'http://127.0.0.1:3000/img/index/f1_05.jpg','端脑','壁水羽', '少年|科幻|推理',23.68,'http://m.u17.com/c/13707.html', 5),
(NULL,'http://127.0.0.1:3000/img/index/f1_06.jpg','雏蜂', '白猫骑士','少年|动作|科幻',15.14, 'http://m.u17.com/c/195.html',6),
(NULL,'http://127.0.0.1:3000/img/index/f2_01.jpg','姜哥今天不加班','新周猫姜哥','少女|搞笑|生活',79003,'http://m.u17.com/c/179373.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f2_02.jpg','拜见女皇陛下','ZCloud','少年|恋爱|生活',11.42, 'http://m.u17.com/c/190.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f2_03.jpg','空心恋人','王桃','少女|恋爱|纯爱',7160,'/http://m.u17.com/c/126616.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f2_04.jpg','恋爱生死簿','芳子惜','少女|恋爱',3615,'http://m.u17.com/c/141397.html',0),
(NULL, 'http://127.0.0.1:3000/img/index/f2_05.jpg','八宝与布丁','愤怒的饺子2','少年|搞笑|魔幻',22831,'http://m.u17.com/c/182908.html', 0),
(NULL,'http://127.0.0.1:3000/img/index/f2_06.jpg','小恶魔可可果','愤怒的饺子2','少年|搞笑|动作',72311, 'http://m.u17.com/c/182892.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f3_01.jpg','龙符之王道天下','神居动漫','少年|动作',659.5, 'http://m.u17.com/c/145194.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f3_02.jpg','谪仙录','泼克文化','少女|魔幻|恋爱',414791, 'http://m.u17.com/c/178752.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f3_03.jpg','从今天开始当城.','青亭文华','少年|魔幻|动作',116.3, 'http://m.u17.com/c/181510.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f4_01.jpg','我的黑王子','沁狩','少女|生活|恋爱',3547,'http://m.u17.com/c/18633.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f4_02.jpg','请勿擅自签订契约','赵迎乐','少年|科幻|推理',6588, 'http://m.u17.com/c/85740.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f4_03.jpg','明汐志','波菜','少年|魔幻|动作',2048,'http://m.u17.com/c/125814.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f5_01.jpg','张小邪日记','牛里牛气哦','少女|纯爱|同人',1619,'http://m.u17.com/c/10713.html',0),
(NULL,'http://127.0.0.1:3000/img/index/f5_02.jpg','恋与星途','星海动漫','少女|生活|恋爱',5357,'http://m.u17.com/c/142882.html', 0),
(NULL,'http://127.0.0.1:3000/img/index/f6_01.jpg','混吃不等死','乱入','少女|搞笑', 3173,'http://m.u17.com/c/28550.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f6_02.jpg','开封奇谈','少年|搞笑|生活','晓晨兽',1.24,'http://m.u17.com/c/74712.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f6_03.jpg','小龙的随身空间','猫哭无声','少女|纯爱|魔幻|生活',3.69,'http://m.u17.com/c/62377.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f7_01.jpg','蓝翅','徐璐AKO','少女|生活|恋爱',6.5,'http://m.u17.com/c/68109.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f7_02.jpg','生存日','前进高棉','少年|动作|战争',1.58, 'http://m.u17.com/c/40863.html',2),
(NULL,'http://127.0.0.1:3000/img/index/f7_03.jpg','盗墓随笔记','火腐妈妈','少女|生活|恋爱',5857, 'http://m.u17.com/c/48080.html',2);

INSERT INTO ct_laptop VALUES
(NULL,'http://127.0.0.1:3000/img/Popular/p_01.jpg','镇魂街', '许辰','少年|魔幻',42.94,'http://m.u17.com/c/3166.html','http://127.0.0.1:3000/img/Popular/r_v1.jpg', 1),
(NULL,'http://127.0.0.1:3000/img/Popular/p_02.jpg','十万个冷笑话', '寒舞','少年|搞笑',27.12,'http://m.u17.com/c/5553.html','http://127.0.0.1:3000/img/Popular/r_v2.jpg', 2),
(NULL,'http://127.0.0.1:3000/img/Popular/p_03.jpg','惊叹之夜', '兔B','少年|魔幻|动作',25.67,'http://m.u17.com/c/11072.html',"http://127.0.0.1:3000/img/Popular/r_v3.jpg", 3),
(NULL,'http://127.0.0.1:3000/img/Popular/p_04.jpg','雏蜂', '白猫骑士','少年|动作|科幻',15.14,'http://m.u17.com/c/195.html', "04",4),
(NULL,'http://127.0.0.1:3000/img/Popular/p_05.jpg','虎X鹤 妖师录', '黄晓达','少年|魔幻|动作',9.42,'http://m.u17.com/c/8805.html',"05", 5),
(NULL,'http://127.0.0.1:3000/img/Popular/p_46.jpg','阴阳教师', '重庆坤兰','少年|搞笑|魔幻',2109,'http://m.u17.com/c/101090.html',"06", 6),
(NULL,'http://127.0.0.1:3000/img/Popular/p_07.jpg','神明之胄', '肥鱼工作室','少年|魔幻|动作',5.87,'http://m.u17.com/c/4885.html',"07",7),
(NULL,'http://127.0.0.1:3000/img/Popular/p_08.jpg','球娘', '猛画哥','少年|搞笑|体育',4.14,'http://m.u17.com/c/27107.html',"08",8),
(NULL,'http://127.0.0.1:3000/img/Popular/p_09.jpg','以彼之名', '诛砂','少女|搞笑|魔幻',3.59,'http://m.u17.com/c/1368.html',"09",9),
(NULL,'http://127.0.0.1:3000/img/Popular/p_10.jpg','超能领域', '达特尼安','少年|魔幻|推理',3.27,'http://m.u17.com/c/38368.html',"10", 10),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_13.jpg','斗破苍穹 药老传奇', '漫工厂','少年|魔幻|动作',3745,'http://m.u17.com/c/81513.html',"11", 11),
(NULL,'http://127.0.0.1:3000/img/Popular/p_12.jpg','无视者', '壁水羽','少年|动作|科幻',2.62,'http://m.u17.com/c/64715.html', "12",12),
(NULL,'http://127.0.0.1:3000/img/Popular/p_13.jpg','尚善', '蒋家梅子','少女|生活',2.31,'http://m.u17.com/c/57524.html',"13", 13),
(NULL,'http://127.0.0.1:3000/img/Popular/p_14.jpg','逆川神之瞳', '戈鹊大戈','少年|动作|科幻',1.77,'http://m.u17.com/c/19572.html',"14", 14),
(NULL,'http://127.0.0.1:3000/img/Popular/p_15.jpg','邪君宠-貂蝉', '王曼','少年|魔幻|恋爱',1.36,'http://m.u17.com/c/98063.html',"15", 15),
(NULL,'http://127.0.0.1:3000/img/Popular/p_16.jpg','菊叔5岁画', '菊花叔','少年|搞笑',1.29,'http://m.u17.com/c/7835.html',"16", 16),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_17.jpg','魂鸣双重奏', '亚瑟熊','少女|魔幻|科幻',4192,'http://m.u17.com/c/37430.html',"17", 17),
(NULL,'http://127.0.0.1:3000/img/Popular/p_18.jpg','妖闻录', '小铜钱','少年|魔幻',1.07,'http://m.u17.com/c/64171.html',"18",18),
(NULL,'http://127.0.0.1:3000/img/Popular/p_19.jpg','天下统一', '日光天境文化','少年|魔幻|动作',1.01,'http://m.u17.com/c/74952.html',"19",19),
(NULL,'http://127.0.0.1:3000/img/Popular/p_20.jpg','金牌助理', '修大绿Green','少女|生活|恋爱|纯爱',1.00,'http://m.u17.com/c/75763.html',"20",20),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_01.jpg','端脑', '壁水羽','少年|科幻|推理',23.68,'http://m.u17.com/c/13707.html',"21", 21),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_02.jpg','小龙的随身空间', '猫哭无声','少女|纯爱|魔幻|生活',3.69,'http://m.u17.com/c/62377.html',"22", 22),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_04.jpg','星际', '默','少年|搞笑|动作',25.67,'http://m.u17.com/c/76564.html',"23", 23),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_05.jpg','九鼎记', '北京业主行','少年|魔幻|动作',7359,'product_details.html?lid=1',"24", 24),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_03.jpg','越界·双生', '黑麦','少年|搞笑|魔幻|纯爱',1.35,'product_details.html?lid=1',"25", 25),
(NULL,'http://127.0.0.1:3000/img/Popular/p_21.jpg','我有特别的颜艺技巧', '啵叽','少年|魔幻|推理',8925,'http://m.u17.com/c/70568.html',"26", 26),
(NULL,'http://127.0.0.1:3000/img/Popular/p_22.jpg','皇上,我不是女主！', '蜀黍好1','少年|搞笑|恋爱',8529,'http://m.u17.com/c/110239.html',"27", 27),
(NULL,'http://127.0.0.1:3000/img/Popular/p_23.jpg','心之茧', 'RosyStarling','少女|生活|恋爱|纯爱',8472,'http://m.u17.com/c/145630.html',"28", 28),
(NULL,'http://127.0.0.1:3000/img/Popular/p_24.jpg','迷失在世界尽头', '乱羽','少年|魔幻|动作',8389,'http://m.u17.com/c/94607.html', "29",29),
(NULL,'http://127.0.0.1:3000/img/Popular/p_25.jpg','无常道', 'MYstery落木','少年|魔幻',8082,'http://m.u17.com/c/75050.html',"30",30),
(NULL,'http://127.0.0.1:3000/img/Popular/p_26.jpg','讨厌你喜欢你', '東爺','少女|恋爱|纯爱',7425,'http://m.u17.com/c/136224.html',"31",31),
(NULL,'http://127.0.0.1:3000/img/Popular/p_27.jpg','空心恋人', '王桃','少女|恋爱|纯爱',7160,'http://m.u17.com/c/126616.html',"32",32),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_11.jpg','他来了，请闭眼', '天成文画','少女|恋爱|推理',6540,'http://m.u17.com/c/126278.html',"33",33),
(NULL,'http://127.0.0.1:3000/img/Popular/p_29.jpg','雪国', '草堂卧龙生','少女|动作|战争',6138,'http://m.u17.com/c/116969.html',"34",34),
(NULL,'http://127.0.0.1:3000/img/Popular/p_30.jpg','叫姐姐', '疯怪','少女|生活|恋爱',5911,'http://m.u17.com/c/108320.html',"35",35),
(NULL,'http://127.0.0.1:3000/img/Popular/p_31.jpg','英雄', '幽·灵','少年|动作|推理',5411,'http://m.u17.com/c/69027.html',"36",36),
(NULL,'http://127.0.0.1:3000/img/Popular/p_32.jpg','锁龙', '风行漫画','少女|搞笑|魔幻',5391,'http://m.u17.com/c/149716.html',"37",37),
(NULL,'http://127.0.0.1:3000/img/Popular/p_33.jpg','非君不可', '朵朵啦','少女|魔幻|恋爱',4900,'http://m.u17.com/c/83541.html',"38",38),
(NULL,'http://127.0.0.1:3000/img/Popular/p_34.jpg','夏家灵异录', '猫哭无声','少女|魔幻|生活',4815,'http://m.u17.com/c/113995.html',"39",39),
(NULL,'http://127.0.0.1:3000/img/Popular/p_35.jpg','当不良老大的男人', 'lamatter','少女|生活|恋爱|纯爱',4622,'http://m.u17.com/c/114373.html',"40",40),
(NULL,'http://127.0.0.1:3000/img/Popular/p_36.jpg','觉醒纪元', '菊花叔’','少年|搞笑|魔幻',4421,'http://m.u17.com/c/98600.html',"41",41),
(NULL,'http://127.0.0.1:3000/img/Popular/p_37.jpg','剑锋帝国', '疯·马·圈','少年|科幻|战争',4245,'http://m.u17.com/c/112485.html',"42",42),
(NULL,'http://127.0.0.1:3000/img/Popular/p_38.jpg','祖先帮帮忙', '美味的鱿鱼子','少年|搞笑|生活',3903,'http://m.u17.com/c/101278.html',"43",43),
(NULL,'http://127.0.0.1:3000/img/Popular/p_39.jpg','姻缘结', '卜小凡','少女|纯爱|恋爱',3871,'http://m.u17.com/c/130468.html',"44",44),
(NULL,'http://127.0.0.1:3000/img/Popular/p_40.jpg','神之一脚', '四夕文文武','少女|搞笑|体育',3823,'http://m.u17.com/c/93661.html',"45",45),
(NULL,'http://127.0.0.1:3000/img/Popular/p3_01.jpg','请勿擅自签订契约', '赵迎乐','少年|科幻|推理',6540,'http://m.u17.com/c/85740.html',"46",46),
(NULL,'http://127.0.0.1:3000/img/Popular/p3_02.jpg','我的黑王子', '沁狩','少女|生活|恋爱',3538,'http://m.u17.com/c/18633.html',"47",47),
(NULL,'http://127.0.0.1:3000/img/Popular/p3_03.jpg','明汐志', '菠菜','少年|魔幻|动作',2079,'http://m.u17.com/c/125814.html',"48",48),
(NULL,'http://127.0.0.1:3000/img/Popular/p3_04.jpg','绝望之境', '求月票的阿飞','少年|科幻|战争',1916,'http://m.u17.com/c/122315.html',"49",49),
(NULL,'http://127.0.0.1:3000/img/Popular/p3_05.jpg','夜市王', '星客X月客','少年|搞笑|生活',284.9,'http://m.u17.com/c/125281.html',"50",50),
(NULL,'http://127.0.0.1:3000/img/Popular/p_11.jpg','噬规者', '日光天境文化','少年|魔幻|科幻',2.76,'http://m.u17.com/c/75859.html', "51",51),
(NULL,'http://127.0.0.1:3000/img/Popular/p_12.jpg','无视者', '壁水羽','少年|动作|科幻',2.62,'http://m.u17.com/c/64715.html',"52", 52),
(NULL,'http://127.0.0.1:3000/img/Popular/p_13.jpg','尚善', '蒋家梅子','少女|生活',2.31,'http://m.u17.com/c/57524.html',"53", 53),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_06.jpg','分裂女武神', '乱羽','少年|动作|魔幻',1.65,'http://m.u17.com/c/2244.html',"54", 54),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_12.jpg','我家大师兄脑子有坑', '剧象漫画','少年|搞笑|动作',7554,'http://m.u17.com/c/104429.html',"55", 55),
(NULL,'http://127.0.0.1:3000/img/Popular/p_17.jpg','开封奇谈-这个包公不太行', '晓晨兽','少年|搞笑|生活',1.24,'http://m.u17.com/c/74712.html',"56", 56),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_04.jpg','星际', '默','少年|搞笑|动作',25.67,'http://m.u17.com/c/76564.html',"57", 57),
(NULL,'http://127.0.0.1:3000/img/Popular/p_18.jpg','妖闻录', '小铜钱','少年|魔幻',1.07,'product_details.html?lid=1',"58",58),
(NULL,'http://127.0.0.1:3000/img/Popular/p_41.jpg','超质体', '燕子青_漫画','少年|魔幻|动作',3519,'http://m.u17.com/c/141690.html',"59",59),
(NULL,'http://127.0.0.1:3000/img/Popular/p_42.jpg','花样公公', '悠拉悠','少女|搞笑|恋爱',3052,'http://m.u17.com/c/126150.html',"60",60),
(NULL,'http://127.0.0.1:3000/img/Popular/p_43.jpg','不优雅', '败德兔','少女|魔幻|恋爱',2944,'http://m.u17.com/c/101196.html',"61",61),
(NULL,'http://127.0.0.1:3000/img/Popular/p_44.jpg','灶神4917', 'marmotte','少女|生活|恋爱',2008,'http://m.u17.com/c/153687.html',"62",62),
(NULL,'http://127.0.0.1:3000/img/Popular/p_45.jpg','逆命师', '旁边的边','少年|魔幻|动作',1586,'http://m.u17.com/c/84951.html',"63",63),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_01.jpg','端脑', '壁水羽','少年|科幻|推理',23.68,'http://m.u17.com/c/13707.html',"64", 64),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_04.jpg','拜见女皇陛下', 'ZCloud','少年|生活|恋爱',11.42,'http://m.u17.com/c/190.html',"65", 65),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_01.jpg','春哥转', '默','少年|搞笑|动作',8.34,'http://m.u17.com/c/2144.html',"66",66),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_02.jpg','女儿国传奇-胜男篇', '王曼','少女|搞笑|魔幻',4.42,'http://m.u17.com/c/1405.html',"67", 67),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_03.png','约克逊是个郡', '极乐鸟','少年|搞笑|魔幻',3.17,'http://m.u17.com/c/1374.html',"68", 68),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_14.jpg','宅妖记', '北京三福','少年|搞笑|动作',7072,'http://m.u17.com/c/125095.html',"69", 69),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_05.jpg','大汉夜郎歌', '左亲','少女|魔幻|恋爱',2.08,'http://m.u17.com/c/30889.html',"70", 70),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_06.jpg','分裂女武神', '乱羽','少年|动作|魔幻',1.65,'http://m.u17.com/c/30889.html',"71", 71),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_07.jpg','无限历险', '星之颂001','少年|动作|魔幻',1.57,'http://m.u17.com/c/29999.html',"72", 72),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_03.jpg','越界·双生', '黑麦','少年|搞笑|魔幻|纯爱',1.35,'http://m.u17.com/c/6453.html',"73", 73),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_08.jpg','世界腐到没药救', '我是僵僵','少女|纯爱',1.26,'http://m.u17.com/c/14559.html',"74", 74),
(NULL,'http://127.0.0.1:3000/img/Popular/p_17.jpg','开封奇谈-这个包公不太行', '晓晨兽','少年|搞笑|生活',1.24,'product_details.html?lid=1',"75", 75),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_04.jpg','星际', '默','少年|搞笑|动作',25.67,'http://m.u17.com/c/76564.html',"76", 76),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_09.jpg','【腐】穿越同人漫', '67君','少女|纯爱|同人',1.16,'http://m.u17.com/c/8552.html',"77", 77),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_10.jpg','火影 鼬Vs佩恩', '戈鹊大戈','少年|搞笑|动作',1.08,'http://m.u17.com/c/6929.html',"78", 78),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_11.jpg','魁拔', '青青树动漫','少年|魔幻|动作',7525,'http://m.u17.com/c/15533.html',"79", 79),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_12.jpg','李小猫传奇(漫画世界)', '大乐漫画','少年|搞笑',7267,'http://m.u17.com/c/20815.html',"80", 80),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_05.jpg','九鼎记', '北京业主行','少年|魔幻|动作',7359,'http://m.u17.com/c/33638.html',"81", 81),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_13.jpg','我是君子', '陆霊君','少年|魔幻|搞笑',6727,'http://m.u17.com/c/31280.html',"82", 82),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_14.jpg','亲兄弟明算账', '乱入','少女|纯爱',6510,'http://m.u17.com/c/10817.html',"83", 83),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_15.jpg','天使之泪', '米虫安','少女|魔幻|恋爱',6480,'http://m.u17.com/c/4895.html',"84", 84),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_16.jpg','二战那些事', '那个黄同学~','少年|战争',5877,'http://m.u17.com/c/64219.html',"85",85),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_17.jpg','我的不靠谱王子殿下', '南宁金号角','少女|搞笑|生活',5797,'http://m.u17.com/c/101412.html',"86", 86),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_18.jpg','我家来了一条鱼', 'lovelanea','少女|生活|纯爱',5568,'http://m.u17.com/c/84023.html',"87",87),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_19.jpg','秀逗海盗(漫画世界)', '大乐漫画','少年|搞笑',4314,'http://m.u17.com/c/20801.html',"88", 88),
(NULL,'http://127.0.0.1:3000/img/Popular/p_03.jpg','惊叹之夜', '兔B','少年|魔幻|动作',25.67,'http://m.u17.com/c/11072.html',"89", 89),
(NULL,'http://127.0.0.1:3000/img/Popular/p_04.jpg','雏蜂', '白猫骑士','少年|动作|科幻',15.14,'http://m.u17.com/c/195.html',"90",90),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_01.jpg','那年那兔那些事儿', '黯花儿','少年|搞笑',7.15,'http://m.u17.com/c/38640.html',"91",91),
(NULL,'http://127.0.0.1:3000/img/Popular/p_06.jpg','蓝翅', '徐璐AKO','少女|生活|恋爱',6.5,'http://m.u17.com/c/68109.html',"92", 92),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_09.jpg','给力军团', '七月初七','少年|搞笑|生活',1686,'http://m.u17.com/c/4885.html',"93",93),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_02.jpg','妖神记', '踏雪动漫','少年|魔幻',5.16,'http://m.u17.com/c/99874.html',"94",94),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_03.jpg','守护者传说', 'wuli','少女|魔幻',3.92,'http://m.u17.com/c/1874.html',"95",95),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_04.jpg','斗罗大陆', '上海风炫动画','少年|恋爱|动作',3.89,'http://m.u17.com/c/71064.html',"96",96),
(NULL,'http://127.0.0.1:3000/img/Popular/p_09.jpg','以彼之名', '诛砂','少女|搞笑|魔幻',3.59,'http://m.u17.com/c/1368.html',"97",97),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_05.jpg','驭灵师', '时代漫王','少女|搞笑|魔幻',3.39,'http://m.u17.com/c/121836.html',"98",98),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_03.png','约克逊是个郡', '极乐鸟','少年|搞笑|魔幻',3.17,'http://m.u17.com/c/1374.html',"99",99),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_06.jpg','血族:圣魔虚像篇', '爱欧','少年|魔幻',2.81,'http://m.u17.com/c/53231.html',"100", 100),
(NULL,'http://127.0.0.1:3000/img/Popular/p_12.jpg','无视者', '壁水羽','少年|动作|科幻',2.62,'http://m.u17.com/c/64715.html',"101",101),
(NULL,'http://127.0.0.1:3000/img/Popular/p4_05.jpg','大汉夜郎歌', '左亲','少女|魔幻|恋爱',2.08,'http://m.u17.com/c/30889.html',"102", 102),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_07.jpg','E学院', '芝士面包','少女|魔幻|纯爱',1.88,'http://m.u17.com/c/55337.html',"103", 103),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_08.jpg','白象的军备大茶几', '左手王ZSW','少年|同人',1.74,'http://m.u17.com/c/44773.html',"104",104),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_09.jpg','末日流浪', '疯·马·圈','少年|科幻',1.72,'http://m.u17.com/c/23126.html',"105",105),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_10.jpg','生存日', '前进高棉','少年|动作|战争',1.58,'http://m.u17.com/c/40863.html',"106",106),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_11.jpg','非人哉', '一汪空气','少女|搞笑',1.54,'http://m.u17.com/c/120003.html',"107",107),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_12.jpg','崩坏3rd', '崩坏学园','少年|动作|科幻',1.43,'http://m.u17.com/c/99679.html',"108",108),
(NULL,'http://127.0.0.1:3000/img/Popular/p_15.jpg','邪君宠-貂蝉', '王曼','少年|魔幻|恋爱',1.36,'http://m.u17.com/c/98063.html',"109",109),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_03.jpg','越界·双生', '黑麦','少年|搞笑|魔幻|纯爱',1.35,'http://m.u17.com/c/6453.html',"110", 110),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_13.jpg','西行纪', '马赛克工作室','少年|魔幻|动作',1.29,'http://m.u17.com/c/120824.html',"111", 111),
(NULL,'http://127.0.0.1:3000/img/Popular/p2_10.jpg','斩龙', '魅丽动漫馆','少年|魔幻',1139,'http://m.u17.com/c/76308.html',"112",112),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_14.jpg','魔王日记', '阿悚','少年|纯爱|搞笑|魔幻',1.25,'http://m.u17.com/c/41524.html',"113",113),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_15.jpg','南烟斋笔录', '壳小杀','少女|魔幻',1.24,'http://m.u17.com/c/31871.html',"114",114),
(NULL,'http://127.0.0.1:3000/img/Popular/p5_16.jpg','作弊艺术', 'Gemini星罗','少年|生活|动作',1.18,'http://m.u17.com/c/60118.html',"115",115);
