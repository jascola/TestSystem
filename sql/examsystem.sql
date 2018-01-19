/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : examsystem

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-01-18 18:33:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for choice
-- ----------------------------
DROP TABLE IF EXISTS `choice`;
CREATE TABLE `choice` (
  `ChoiceId` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectId` int(11) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `IsMulti` int(11) NOT NULL,
  PRIMARY KEY (`ChoiceId`),
  KEY `SubjectId` (`SubjectId`),
  CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choice
-- ----------------------------
INSERT INTO `choice` VALUES ('1', '1', '下列各句中划线词语使用正确的一项是（    ）', '0');
INSERT INTO `choice` VALUES ('2', '1', '下列描述有误的一项是（      ）', '0');
INSERT INTO `choice` VALUES ('3', '1', '下列选项中对课文理解不当的一项是（　　）', '0');
INSERT INTO `choice` VALUES ('4', '1', '下列句子中不该用问号的一项是（             ）', '0');
INSERT INTO `choice` VALUES ('5', '1', '下列句子中有语病的一项', '0');
INSERT INTO `choice` VALUES ('6', '1', '下列词语没有错别字的一项是（   ）', '0');
INSERT INTO `choice` VALUES ('7', '1', '下列各句中没有语病的一项是（   ）', '0');
INSERT INTO `choice` VALUES ('8', '1', '下列各项关于文学常识的表述，有错误的一项是（   ）', '0');
INSERT INTO `choice` VALUES ('9', '1', '下列句子没有语病的一句是（    ）', '0');
INSERT INTO `choice` VALUES ('10', '1', '没有语病的一项是：', '0');
INSERT INTO `choice` VALUES ('11', '1', '下列句子中的标点符号使用都正确的一项是（     ）', '0');
INSERT INTO `choice` VALUES ('12', '1', '下列句子中没有语病的一项是', '0');
INSERT INTO `choice` VALUES ('13', '1', '下列说法正确的一项是', '0');
INSERT INTO `choice` VALUES ('14', '1', '下面中国古典四大名著中的人物和情节搭配不正确的一项是(    ) ', '0');
INSERT INTO `choice` VALUES ('15', '1', '下列句子顺序排列正确的一项是           ①大学毕业后，他进入保守党某部门任职，2001年当选国会议员 ②2005年他以出色的演讲口才最终当选保守党领袖 ③直到进入牛津大学，他依然与政治活动很少沾边，但学业极为出色 ④2010年5月，卡梅伦被任命为新一轮英国首相 ⑤幼时的卡梅伦丝毫没有显示出政治人物的天赋 ⑥小学时不仅成绩在班里倒数第一，而且极为害羞', '0');
INSERT INTO `choice` VALUES ('16', '1', '在下面语段的空白处，补上最恰当的句子是 \r\n六月，并不是好时候，没有春光，没有雪，没有秋意。那几天有的是满湖烟雨，山光水色俱是一片迷蒙。西湖，仿佛半睡半醒。空气中，弥散着经了雨的桅子花的甜香，使我记起了 ____________\r\n', '0');
INSERT INTO `choice` VALUES ('17', '1', '下列各句中，没有语病的一句是', '0');
INSERT INTO `choice` VALUES ('18', '1', '下面句中标点符号使用完全正确的一项是', '0');
INSERT INTO `choice` VALUES ('19', '1', '下列各句标点符号使用正确的一项是', '0');
INSERT INTO `choice` VALUES ('20', '1', '提取下面句子的主要信息，正确的一项是   年老的母亲欣慰地看到使人陶醉的绚丽灿烂的秋色和令人兴奋的欣欣向荣的景象让很久没有回家的儿子忍不住哼起了那久违的家乡小调。', '0');
INSERT INTO `choice` VALUES ('21', '1', '下列句中“其”字指代对象相同的是（   ）和（   ）。', '1');
INSERT INTO `choice` VALUES ('22', '1', '下列人物曾获若贝尔奖的有（     ）。', '1');
INSERT INTO `choice` VALUES ('23', '1', '下列句子不是比喻句的是（   ）', '1');
INSERT INTO `choice` VALUES ('24', '1', '《天上的街市》作者用“朵”来修饰流星，其用意是（　　）。', '1');
INSERT INTO `choice` VALUES ('25', '1', '《蚊子和狮子》中写狮子与蚊子的“战斗”时主要运用了________和________的描写手法。', '1');
INSERT INTO `choice` VALUES ('26', '1', '李斯在《谏逐客书》中用事实（    ）论证逐客是错误的。', '1');
INSERT INTO `choice` VALUES ('27', '1', '《吊古战场文》描写古战场萧杀的句子有（    ）。', '1');
INSERT INTO `choice` VALUES ('28', '1', '下列句子出自《吊古战场文》的是（   ）。', '1');
INSERT INTO `choice` VALUES ('29', '1', '《吊古战场文》中属于作者想象的句子是（    ）。', '1');
INSERT INTO `choice` VALUES ('30', '1', '季羡林是我国著名的（    ）。', '1');
INSERT INTO `choice` VALUES ('31', '1', '《二月兰》中作者提到的女性有（    ）。', '1');
INSERT INTO `choice` VALUES ('32', '1', '余光中主要的诗集有（    ）。', '1');
INSERT INTO `choice` VALUES ('33', '1', '《听听那冷雨》一 文，“冷”字的含义（   ）。', '1');
INSERT INTO `choice` VALUES ('34', '1', '下列以“„„居士”为别号的人物，属于唐代的有（    ）。', '1');
INSERT INTO `choice` VALUES ('35', '1', '下列《长恨歌》中的诗句，属于融情入景的有（    ）。', '1');
INSERT INTO `choice` VALUES ('36', '1', '下列诗歌中构成对偶的有（   ）。', '1');
INSERT INTO `choice` VALUES ('37', '1', '《长恨歌》中对“汉皇”语带抨击的有（    ）。 ', '1');
INSERT INTO `choice` VALUES ('38', '1', '.与陆游并称“南宋四大家”的有（    ）。', '1');
INSERT INTO `choice` VALUES ('39', '1', '《哭小弟》运用了（   ）手法。', '1');
INSERT INTO `choice` VALUES ('40', '1', '《蒹葭》中的“伊人”可以理解为（   ）。', '1');
INSERT INTO `choice` VALUES ('41', '2', '分封制是西周实行的主要政治制度，下列表述正确的是', '0');
INSERT INTO `choice` VALUES ('42', '2', '下列关于西周宗法制的表述，错误的是', '0');
INSERT INTO `choice` VALUES ('43', '2', '中央集权制度开始确立于秦朝，下列表述错误的是', '0');
INSERT INTO `choice` VALUES ('44', '2', '专制主义中央集权制度的确立对中国古代政治制度发展影响最为深远的是', '0');
INSERT INTO `choice` VALUES ('45', '2', '中国古代中央政治制度的演变过程，就是不断削弱相权，强化皇权的过程，下列历史现象不能说明此过程的是', '0');
INSERT INTO `choice` VALUES ('46', '2', '中国古代多有专门的机构或官员掌管军事，下列并非仅专职军事的是', '0');
INSERT INTO `choice` VALUES ('47', '2', '下列关于地方行政区划的表述，正确的是', '0');
INSERT INTO `choice` VALUES ('48', '2', '明清君主专制制度加强的措施不包括', '0');
INSERT INTO `choice` VALUES ('49', '2', '明清强化君主专制的影响不包括', '0');
INSERT INTO `choice` VALUES ('50', '2', '下列事件，标志着中国近代史开端的是', '0');
INSERT INTO `choice` VALUES ('51', '2', '1915年兴起的新文化运动的内容包括（  ）', '1');
INSERT INTO `choice` VALUES ('52', '2', '五四时期，研究和宣传马克思主义的社团有（  ）', '1');
INSERT INTO `choice` VALUES ('53', '2', '1926年3月，蒋介石制造的旨在打击共产党和工农革命力量的事件是', '1');
INSERT INTO `choice` VALUES ('54', '2', '毛泽东提出的“工农武装割据”的基本内容是(  )', '1');
INSERT INTO `choice` VALUES ('55', '2', '世界反法西斯战争胜利后，人民民主力量明显增长的主要表现是( )', '1');
INSERT INTO `choice` VALUES ('56', '2', '全国解放战争时期，在国民党统治区爆发的爱国学生运动有(  ) ', '1');
INSERT INTO `choice` VALUES ('57', '2', '毛泽东在《论人民民主专政》一文中指出，构成人民民主专政主要联盟的阶级是', '1');
INSERT INTO `choice` VALUES ('58', '2', '我国对个体农业实行社会主义改造的过渡性经济形式包括', '1');
INSERT INTO `choice` VALUES ('59', '2', '新中国在发展国民经济第一个五年计划期间着重建设的三大钢铁基地是', '1');
INSERT INTO `choice` VALUES ('60', '2', '毛泽东在《论十大关系》中提出的处理共产党和民主党派关系的方针是', '1');

-- ----------------------------
-- Table structure for completion
-- ----------------------------
DROP TABLE IF EXISTS `completion`;
CREATE TABLE `completion` (
  `CompletionId` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectId` int(11) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Answer` varchar(20) NOT NULL,
  PRIMARY KEY (`CompletionId`),
  KEY `SubjectId` (`SubjectId`),
  CONSTRAINT `completion_ibfk_1` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of completion
-- ----------------------------
INSERT INTO `completion` VALUES ('1', '1', '__________，思而不学则殆。', '学而不思则惘');
INSERT INTO `completion` VALUES ('2', '1', '_____________， 奉命于危难之间。', '受任于败军之际');
INSERT INTO `completion` VALUES ('3', '1', '_____________，大庇天下寒士俱欢颜。', '安得广厦千万间');
INSERT INTO `completion` VALUES ('4', '1', '浊酒一杯家万里，_______________。', '燕然未勒归无计');
INSERT INTO `completion` VALUES ('5', '1', '一鼓作气， ______，三而竭。', '再而衰');
INSERT INTO `completion` VALUES ('6', '1', '入则无法家拂士  ，_____________，国恒亡', '出则无敌国外患者');
INSERT INTO `completion` VALUES ('7', '1', '月明星稀，______，此非曹孟德之诗乎?', '乌鹊南飞');
INSERT INTO `completion` VALUES ('8', '1', '飘飘乎如遗世独立，____________.', '羽化而登仙');
INSERT INTO `completion` VALUES ('9', '1', '哀吾生之须臾，___________.', '羡长江之无穷');
INSERT INTO `completion` VALUES ('10', '1', '醉翁之意不在酒，_____________。', '在乎山水之间也');
INSERT INTO `completion` VALUES ('11', '1', '半亩方塘一鉴开，______________。', '天光云影共徘徊');
INSERT INTO `completion` VALUES ('12', '1', '国破山河在，___________.', '城春草木深');
INSERT INTO `completion` VALUES ('13', '1', '居庙堂之高则忧其民；________________。', '处江湖之远则忧其君');
INSERT INTO `completion` VALUES ('14', '1', '_____________，潭影空人心.', '山光悦鸟性');
INSERT INTO `completion` VALUES ('15', '1', '曲径通幽处，____________.', '禅房花木深');
INSERT INTO `completion` VALUES ('16', '1', '___________，凭轩涕泗流.', '戎马关山北');
INSERT INTO `completion` VALUES ('17', '1', '天街小雨润如酥,_______________。', '草色遥看近却无');
INSERT INTO `completion` VALUES ('18', '1', '_____________, 引无数英雄竞折腰。', '江山如此多娇');
INSERT INTO `completion` VALUES ('19', '1', '了却君王天下事,_____________。', '赢得生前身后名');
INSERT INTO `completion` VALUES ('20', '1', '角声满天秋色里，______________.', '塞上燕脂凝夜紫');
INSERT INTO `completion` VALUES ('21', '2', '_______ 时期出现了老子、孔子、孙子等为代表的学派', '春秋');
INSERT INTO `completion` VALUES ('22', '2', '清初时期，经过康熙、雍正、乾隆三代的恢复发展，社会安定、国势强盛，史称 ____________', '康乾盛世');
INSERT INTO `completion` VALUES ('23', '2', '青铜器时代指我国 _______时期', '夏商周');
INSERT INTO `completion` VALUES ('24', '2', '秦汉时期包括秦、西汉和 ______。', '东汉');
INSERT INTO `completion` VALUES ('25', '2', '________时期形成了墨家、儒家、道家、法家等学派的“百家争鸣”。', '战国 ');
INSERT INTO `completion` VALUES ('26', '2', '汉武帝时开始用_________思想作为统治国家的指导思想，形成大一统 政治格局。', '儒家');
INSERT INTO `completion` VALUES ('27', '2', '我们今天的文字就是从_________ 发展过来的。', '甲骨文');
INSERT INTO `completion` VALUES ('28', '2', '为了确立周王的权威，扩大周王朝的区域，巩固周政权，周代实行 ______。', '分封制');
INSERT INTO `completion` VALUES ('29', '2', '13世纪初统一蒙古的铁木真建立政权，他被称为“________”。', '成吉思汗');
INSERT INTO `completion` VALUES ('30', '2', '西汉史学家 ______撰写的《史记》，是我国历史上第一部纪传体通史。   ', '司马迁');

-- ----------------------------
-- Table structure for optionz
-- ----------------------------
DROP TABLE IF EXISTS `optionz`;
CREATE TABLE `optionz` (
  `OptionzId` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) NOT NULL,
  `ChoiceId` int(11) NOT NULL,
  `IsRight` int(11) NOT NULL,
  PRIMARY KEY (`OptionzId`),
  KEY `ChoiceId` (`ChoiceId`),
  CONSTRAINT `optionz_ibfk_1` FOREIGN KEY (`ChoiceId`) REFERENCES `choice` (`ChoiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of optionz
-- ----------------------------
INSERT INTO `optionz` VALUES ('1', 'A．这部小说情节跌宕起伏，抑扬顿挫，具有很强的感染力。', '1', '0');
INSERT INTO `optionz` VALUES ('2', 'B．毕业前夕，同学们欢聚一堂，载歌载舞各展风采，尽情地享受天伦之乐。', '1', '0');
INSERT INTO `optionz` VALUES ('3', 'C．人类的智慧与大自然的智慧相比实在是相形见绌。', '1', '1');
INSERT INTO `optionz` VALUES ('4', 'D．犯罪分子气焰嚣张锐不可当，但在我公安机关的严厉打击下，被彻底消灭。', '1', '0');
INSERT INTO `optionz` VALUES ('5', 'A.《走一步，再走一步》一文的主旨是：青少年应远离危险的处所，学会自我保护。', '2', '0');
INSERT INTO `optionz` VALUES ('6', 'B.《紫藤萝瀑布》中，宗璞面对茂盛的紫藤萝，感受到人应该像紫藤萝花一样坚强面对生活中的不幸。', '2', '0');
INSERT INTO `optionz` VALUES ('7', 'C.张晓风在《行道树》中塑造了一组坚守职责、默默奉献的英雄形象。', '2', '0');
INSERT INTO `optionz` VALUES ('8', 'D．周国平在《落难的王子》中告诉我们：不管是否情愿，生活都会使我们变得坚强', '2', '1');
INSERT INTO `optionz` VALUES ('9', 'A．《紫藤萝瀑布》为了告诉我们花和人一样总是要遭受不幸，你无法改变。', '3', '0');
INSERT INTO `optionz` VALUES ('10', 'B．《在山的那边》一文中所说的“用信念凝成的海”，这里的“海”指的是理想的境界。', '3', '0');
INSERT INTO `optionz` VALUES ('11', 'C．《童趣》一文的主旨是写作者儿时的“物外之趣”。作者通过自己的联想和想象，将眼前的事物放大了千万倍，从而享受到一种独有的乐趣。', '3', '0');
INSERT INTO `optionz` VALUES ('12', 'D．《走一步，再走一步》告诉人一个哲理：大困难是由小困难组成的，只要一步步战胜小困难最后一定能够战胜巨大的困难。', '3', '1');
INSERT INTO `optionz` VALUES ('13', 'A．为什么我的眼里常含泪水？因为我对这土地爱得深沉……', '4', '0');
INSERT INTO `optionz` VALUES ('14', 'B．难道你认为一场考试的失误就意味着输掉了整个人生吗？', '4', '0');
INSERT INTO `optionz` VALUES ('15', 'C．生活因有音乐而变得更美好，不是吗？', '4', '0');
INSERT INTO `optionz` VALUES ('16', 'D．我们要思考怎样才能做一个对社会有用的人？', '4', '1');
INSERT INTO `optionz` VALUES ('17', 'A．虽然奥斯卡总缺少中国的电影，但是绝对不缺少中国的面孔，从吃的到演的，从评委到嘉宾，处处都有中国元素的出现。', '5', '1');
INSERT INTO `optionz` VALUES ('18', 'B．通过学雷锋活动，要培育文明新风，促进新型人际关系的发展，促进良好社会风气的形成。', '5', '0');
INSERT INTO `optionz` VALUES ('19', 'C．从4月1日起，上海市将分别提高劳动者最低工资标准以及城乡居民最低生活保障标准。', '5', '0');
INSERT INTO `optionz` VALUES ('20', 'D．近日，湖南省益阳市岳家桥镇岳家桥、黄板桥等村发生大面积的岩溶塌陷地质灾害，上千当地村民的生产生活受到影响。', '5', '0');
INSERT INTO `optionz` VALUES ('21', 'A．决择变幻莫测心清如水相依相偎', '6', '1');
INSERT INTO `optionz` VALUES ('22', 'B．烂漫相辅相承红装素裹万籁俱寂', '6', '0');
INSERT INTO `optionz` VALUES ('23', 'C．潦草轻妆淡抹黄金搭档展露头角', '6', '0');
INSERT INTO `optionz` VALUES ('24', 'D．坐落相得益彰别具匠心熔于一炉', '6', '0');
INSERT INTO `optionz` VALUES ('25', 'A．他的足迹和作品可以说遍及世界各大城市，是当之无愧的的世界著名建筑大师。', '7', '0');
INSERT INTO `optionz` VALUES ('26', 'B．他那悲哀的声音和神情总是萦绕耳边，从此我再也不去破坏他和他无所不能的爸爸在一起的这种境界了。', '7', '0');
INSERT INTO `optionz` VALUES ('27', 'C．今天想来，她对我的爱好文学和接近文学，是有着多么有益的影响！', '7', '1');
INSERT INTO `optionz` VALUES ('28', 'D．我心里烦躁极了，就在桌子底下捣鬼，每每被那个尖眼睛的女老师发现，狠狠地批评一顿。', '7', '0');
INSERT INTO `optionz` VALUES ('29', 'A．《童年》《在人间》《我的大学》是苏联作家高尔基的自传体小说三部曲。外祖母是《童年》中最光辉、最富人性的形象，她对阿廖沙的影响最深刻。', '8', '1');
INSERT INTO `optionz` VALUES ('30', 'B．《宋史》是二十四史中篇帙浩繁的一部纪传体史书，由元代丞相脱脱等人主持修撰的。长篇抒情诗《木兰诗》是北朝一首民歌，选自宋朝郭茂倩编的《乐府诗集》。', '8', '0');
INSERT INTO `optionz` VALUES ('31', 'C．杜甫，字子美，是我国唐代著名诗人，被后人尊为“诗圣”，其作品主要反映社会动乱和人民疾苦，因而他的诗被称为“诗史”。', '8', '0');
INSERT INTO `optionz` VALUES ('32', 'D．词是兴于唐，流行于宋的一种文学体裁。词基本分为婉约派、豪放派两大类。李清照、柳永等是婉约派的代表人物，辛弃疾、苏轼等是豪放派的代表人物。', '8', '0');
INSERT INTO `optionz` VALUES ('33', 'A．通过大家群策群力的讨论，使一（3）班逐步走向班级管理的科学化。', '9', '0');
INSERT INTO `optionz` VALUES ('34', 'B．我们要与自然和谐相处，保护好属于我们人类自己的家园——地球。', '9', '1');
INSERT INTO `optionz` VALUES ('35', 'C．三门的春天简直就是一座美丽的大花园。', '9', '0');
INSERT INTO `optionz` VALUES ('36', 'D．切实减轻中小学生过重的课业负担，是能否实施素质教育的关键', '9', '0');
INSERT INTO `optionz` VALUES ('37', 'A．利比亚危机发生后，中国政府进行了迄今为止最大规模的对外救援行动。', '10', '1');
INSERT INTO `optionz` VALUES ('38', 'B．今天老师又在班会上表扬了自己，但是我觉得还需要继续努力。', '10', '0');
INSERT INTO `optionz` VALUES ('39', 'C.市教委要求，各学校学生公寓的生活用品和床上用品由学生自主选购，不得统一配备。', '10', '0');
INSERT INTO `optionz` VALUES ('40', 'D.能否贯彻落实科学发展观，对构建和谐社会，促进经济可持续发展无疑具有重大的意义。', '10', '0');
INSERT INTO `optionz` VALUES ('41', 'A．目前大学毕业生就业存在一种奇怪的现象：一方面很多学生毕业后找不到工作，一方面很多民营以及西部边远地区招不到需要的工作人员，出现这种现象的原因之一在于大学毕业生没有树立正确的择业观。', '11', '0');
INSERT INTO `optionz` VALUES ('42', 'B．这个经济协作区，具有大量的信息，较强的工业基础，巨大的生活资料，生产资料市场，较丰富的动植物、矿产、海洋、旅游等资源。', '11', '0');
INSERT INTO `optionz` VALUES ('43', 'C．我想养只鸽子，让它生鸽蛋给小孩儿玩。可是目前严重的问题是，有没有壁虎，假定有了，会不会偷鸽蛋？', '11', '1');
INSERT INTO `optionz` VALUES ('44', 'D．德国联邦司法部长表示：“连接德国和中国的不仅是经济合作，政治、文化方面我们在不断靠近。‘德中法制对话’活动有助于达到这一目的。”', '11', '0');
INSERT INTO `optionz` VALUES ('45', 'A．面对西方文化的全面冲击，自觉传承华夏文明就成了每一个中国人义不容辞的责任。', '12', '1');
INSERT INTO `optionz` VALUES ('46', 'B．2010年，在我国南方抗旱救灾中，涌现出了一大批感人至深，令人敬仰的英雄事迹。', '12', '0');
INSERT INTO `optionz` VALUES ('47', 'C．一个卫生城市的标志不仅在于环境的洁净，更是在于广大市民卫生素养、文明意识。', '12', '0');
INSERT INTO `optionz` VALUES ('48', 'D．是否选择对社会对未来负责的低碳生活方式，是衡量现代人良好文明素质的重要标准。', '12', '0');
INSERT INTO `optionz` VALUES ('49', 'A.《威尼斯商人》是英国剧作家莎士比亚的早期作品，与《哈姆雷特》《罗密欧与朱丽叶》《奥赛罗》一起号称“四大悲剧”。', '13', '0');
INSERT INTO `optionz` VALUES ('50', 'B．被鲁迅誉为“史家之绝唱，无韵之离骚”的《史记》是我国第一部编年体通史，以写人为主，《陈涉世家》就选自其中。', '13', '1');
INSERT INTO `optionz` VALUES ('51', 'C．《骆驼祥子》通过祥子由老实、健壮、坚韧变得麻木、潦倒、自暴自弃的经历，折射出不让好人有出路的社会现实。 ', '13', '0');
INSERT INTO `optionz` VALUES ('52', 'D．《钢铁是怎杨炼成的》以奥斯特洛夫斯基的生活经历为线索，展现了苏俄广阔的历史画面和人民艰苦卓绝的斗争生活。', '13', '0');
INSERT INTO `optionz` VALUES ('53', 'A．宋江一—智取生辰纲', '14', '1');
INSERT INTO `optionz` VALUES ('54', 'B．孙悟空——大战牛魔王', '14', '0');
INSERT INTO `optionz` VALUES ('55', 'C．诸葛亮——挥泪斩马谡', '14', '0');
INSERT INTO `optionz` VALUES ('56', 'D．林黛玉——焚稿断痴情', '14', '0');
INSERT INTO `optionz` VALUES ('57', 'A．④⑤⑥②③①', '15', '0');
INSERT INTO `optionz` VALUES ('58', 'B．⑤⑥①③②④', '15', '1');
INSERT INTO `optionz` VALUES ('59', 'C．⑤⑥③①②④', '15', '0');
INSERT INTO `optionz` VALUES ('60', 'D．④⑥⑤③①②', '15', '0');
INSERT INTO `optionz` VALUES ('61', 'A．白居易的诗句：“日出江花红胜火，春来江水绿如蓝。”', '16', '0');
INSERT INTO `optionz` VALUES ('62', 'B．苏东坡的诗句：“水光潋滟晴方好，山色空蒙雨亦奇。”', '16', '1');
INSERT INTO `optionz` VALUES ('63', 'C．林升的诗句：“山外青山楼外楼，西湖歌舞几时休。”', '16', '0');
INSERT INTO `optionz` VALUES ('64', 'D．杜牧的诗句：“南朝四百八十寺，多少楼台烟雨中。”', '16', '0');
INSERT INTO `optionz` VALUES ('65', 'A．对于是否应该援助受灾的日本这一问题，大多数网民主张赞成，也有网民主张反对。', '17', '1');
INSERT INTO `optionz` VALUES ('66', 'B．“六一”期间隆重上映的动漫电影《功夫熊猫2》，使无数小朋友带来了欢乐。', '17', '0');
INSERT INTO `optionz` VALUES ('67', 'C．本届深圳大运会安保人员的心理素质是过硬的，不会发生面临突发事件而无所适从。', '17', '0');
INSERT INTO `optionz` VALUES ('68', 'D．美国的基础教育重视培养学生的观察、思考和创造能力，这是值得我们学习的。', '17', '0');
INSERT INTO `optionz` VALUES ('69', 'A．亲爱的宝贝已在腹中8个月了，是个美丽的姑娘呢？还是个漂亮的小伙？', '18', '0');
INSERT INTO `optionz` VALUES ('70', 'B．“没有老师来批评我的。”他微微一笑，又说，“只有这些树叶、小草，还有那朵紫豆角花，好像在批评我，说我以前太粗心大意，太不了解它们了。”', '18', '1');
INSERT INTO `optionz` VALUES ('71', 'C．在这横跨中国南部的“户外采风”中，东方遭遇了意想不到的困难：酷暑、严寒、狂风、暴雨、沙尘等……越向西就越是人烟稀少。东方不得不经常风餐露宿。', '18', '0');
INSERT INTO `optionz` VALUES ('72', 'D．种菜是我在狱中少有的能自主管理的事情。播下种子、观察生长、悉心照料、然后收获。成为这一方天地主人的感觉让我体会到一丝自由的滋味。', '18', '0');
INSERT INTO `optionz` VALUES ('73', 'A.“好像大乱子了，长官”!巡警说。', '19', '0');
INSERT INTO `optionz` VALUES ('74', 'B.这本“读者”是最新的，你不妨读一下。', '19', '0');
INSERT INTO `optionz` VALUES ('75', 'C我应该是看书呢？还是去上网？', '19', '1');
INSERT INTO `optionz` VALUES ('76', 'D“差不多先生”是一个高度概括化了的形象，不是指某一个具体的人。', '19', '0');
INSERT INTO `optionz` VALUES ('77', 'A．灿烂的秋色和欣欣向荣的景象让儿子哼起了久违的家乡小调。 ', '20', '0');
INSERT INTO `optionz` VALUES ('78', 'B．母亲看到灿烂的秋色和欣欣向荣的景象。', '20', '1');
INSERT INTO `optionz` VALUES ('79', 'C．秋色和景象让儿子哼起了久违的家乡小调。', '20', '0');
INSERT INTO `optionz` VALUES ('80', 'D．母亲看到儿子哼起了久违的家乡小调。 ', '20', '0');
INSERT INTO `optionz` VALUES ('81', 'A .恐前后受其敌', '21', '1');
INSERT INTO `optionz` VALUES ('82', 'B .意将隧入以攻其后也', '21', '0');
INSERT INTO `optionz` VALUES ('83', 'C .屠乃奔倚其下', '21', '1');
INSERT INTO `optionz` VALUES ('84', 'D .屠自后断其股', '21', '0');
INSERT INTO `optionz` VALUES ('85', 'A.阿尔伯特·爱因斯坦 ', '22', '1');
INSERT INTO `optionz` VALUES ('86', 'B.林肯', '22', '0');
INSERT INTO `optionz` VALUES ('87', 'C.马丁·路德·金', '22', '1');
INSERT INTO `optionz` VALUES ('88', 'D.奥巴马', '22', '1');
INSERT INTO `optionz` VALUES ('89', 'A .她现在很听我的话，好像我小时侯很听她的话一样。', '23', '1');
INSERT INTO `optionz` VALUES ('90', 'B .山这边，梯田里的庄稼，像绿海里卷来的一道道浪头。', '23', '0');
INSERT INTO `optionz` VALUES ('91', 'C .像这样的事情还很多。', '23', '0');
INSERT INTO `optionz` VALUES ('92', 'D .好像我背上的同他背上的加起来，就是整个世界。', '23', '1');
INSERT INTO `optionz` VALUES ('93', 'A .“朵”常用花的量词，这里是暗把流星比作花朵，用了比喻的手法。', '24', '1');
INSERT INTO `optionz` VALUES ('94', 'B .“朵”作流星的量词，不同一般，引发人们思考。', '24', '0');
INSERT INTO `optionz` VALUES ('95', 'C .“朵”使流星给人留下美的回味，让读者越发觉得天上的街市神奇美妙，无限向往。', '24', '1');
INSERT INTO `optionz` VALUES ('96', 'D .“朵”增添了流星灿烂的光芒，使人们眼前不禁一亮。', '24', '0');
INSERT INTO `optionz` VALUES ('97', 'A .对话描写', '25', '1');
INSERT INTO `optionz` VALUES ('98', 'B .语言描写', '25', '1');
INSERT INTO `optionz` VALUES ('99', 'C .动作描写', '25', '1');
INSERT INTO `optionz` VALUES ('100', 'D .神态描写', '25', '0');
INSERT INTO `optionz` VALUES ('101', 'A.穆公求士———广纳人才——遂霸西戎', '26', '1');
INSERT INTO `optionz` VALUES ('102', 'B.孝公用商鞅——变法治国——民盛国强', '26', '1');
INSERT INTO `optionz` VALUES ('103', 'C.惠王用张仪——四面扩张——以横破纵', '26', '1');
INSERT INTO `optionz` VALUES ('104', 'D.昭王得范雎——打击豪门——强化集权', '26', '1');
INSERT INTO `optionz` VALUES ('105', 'A.尸填巨港之岸', '27', '1');
INSERT INTO `optionz` VALUES ('106', 'B.利镞穿骨，惊沙入面', '27', '1');
INSERT INTO `optionz` VALUES ('107', 'C.苍苍蒸民，谁无父母 ', '27', '1');
INSERT INTO `optionz` VALUES ('108', 'D.河水萦带，群山纠纷 ', '27', '1');
INSERT INTO `optionz` VALUES ('109', 'A.齐魏徭戌，荆韩招募', '28', '1');
INSERT INTO `optionz` VALUES ('110', 'B.声折江河，势崩雷电', '28', '1');
INSERT INTO `optionz` VALUES ('111', 'C.野竖旄旗，川回组练', '28', '1');
INSERT INTO `optionz` VALUES ('112', 'D.开地千里，遁逃匈奴 ', '28', '1');
INSERT INTO `optionz` VALUES ('113', 'A.北风振漠，胡兵伺便', '29', '1');
INSERT INTO `optionz` VALUES ('114', 'B.野竖旄旗，川回组练', '29', '1');
INSERT INTO `optionz` VALUES ('115', 'C.利镞穿骨，惊沙入面', '29', '1');
INSERT INTO `optionz` VALUES ('116', 'D.都尉新降，将军复覆没', '29', '1');
INSERT INTO `optionz` VALUES ('117', 'A.东方学家', '30', '1');
INSERT INTO `optionz` VALUES ('118', 'B.历史学家', '30', '1');
INSERT INTO `optionz` VALUES ('119', 'C.作家', '30', '1');
INSERT INTO `optionz` VALUES ('120', 'D.翻译家', '30', '1');
INSERT INTO `optionz` VALUES ('121', 'A.老祖 ', '31', '1');
INSERT INTO `optionz` VALUES ('122', 'B.婉如 ', '31', '1');
INSERT INTO `optionz` VALUES ('123', 'C.杨莹', '31', '1');
INSERT INTO `optionz` VALUES ('124', 'D.延宗', '31', '1');
INSERT INTO `optionz` VALUES ('125', 'A.《舟子的悲歌》', '32', '1');
INSERT INTO `optionz` VALUES ('126', 'B.《兰色的羽毛》', '32', '1');
INSERT INTO `optionz` VALUES ('127', 'C.《左手的缪斯》', '32', '0');
INSERT INTO `optionz` VALUES ('128', 'D.《钟乳石》', '32', '1');
INSERT INTO `optionz` VALUES ('129', 'A.冰冷的雨水', '33', '1');
INSERT INTO `optionz` VALUES ('130', 'B.春寒料峭里的雨给人外在的真实感受', '33', '1');
INSERT INTO `optionz` VALUES ('131', 'C.表现作者远离大陆内心产生的凄凉', '33', '1');
INSERT INTO `optionz` VALUES ('132', 'D.是热的反义词', '33', '0');
INSERT INTO `optionz` VALUES ('133', 'A．青莲居士', '34', '1');
INSERT INTO `optionz` VALUES ('134', 'B．六一居士 ', '34', '0');
INSERT INTO `optionz` VALUES ('135', 'C 香山居士', '34', '1');
INSERT INTO `optionz` VALUES ('136', 'D．东坡居士', '34', '0');
INSERT INTO `optionz` VALUES ('137', 'A．夜雨闻铃肠断声', '35', '1');
INSERT INTO `optionz` VALUES ('138', 'B．耿耿星河欲曙天 ', '35', '1');
INSERT INTO `optionz` VALUES ('139', 'C．秋雨梧桐叶落时', '35', '0');
INSERT INTO `optionz` VALUES ('140', 'D．春风桃李花开日', '35', '1');
INSERT INTO `optionz` VALUES ('141', 'A.停杯投箸不能食，拔剑四顾心茫然', '36', '1');
INSERT INTO `optionz` VALUES ('142', 'B.春风桃李花开日，秋雨梧桐叶落时', '36', '0');
INSERT INTO `optionz` VALUES ('143', 'C.杨家有女初长成，养在深闺人未识', '36', '1');
INSERT INTO `optionz` VALUES ('144', 'D.须知胡骑纷纷在，岂逐春风一一回', '36', '0');
INSERT INTO `optionz` VALUES ('145', 'A.春宵苦短日高起，从此君王不早朝', '37', '1');
INSERT INTO `optionz` VALUES ('146', 'B.姊妹弟兄皆列土，可怜光彩生门户', '37', '1');
INSERT INTO `optionz` VALUES ('147', 'C.缓歌慢舞凝丝竹，尽日君王看不足', '37', '1');
INSERT INTO `optionz` VALUES ('148', 'D.君臣相顾尽沾衣，东望都门信马归', '37', '0');
INSERT INTO `optionz` VALUES ('149', 'A尤袤', '38', '1');
INSERT INTO `optionz` VALUES ('150', 'B杨万里', '38', '1');
INSERT INTO `optionz` VALUES ('151', 'C张孝祥', '38', '0');
INSERT INTO `optionz` VALUES ('152', 'D范成大 ', '38', '0');
INSERT INTO `optionz` VALUES ('153', 'A.抒情', '39', '1');
INSERT INTO `optionz` VALUES ('154', 'B.写景', '39', '1');
INSERT INTO `optionz` VALUES ('155', 'C.叙事', '39', '1');
INSERT INTO `optionz` VALUES ('156', 'D.议论', '39', '0');
INSERT INTO `optionz` VALUES ('157', 'A.恋人', '40', '1');
INSERT INTO `optionz` VALUES ('158', 'B.贤人', '40', '1');
INSERT INTO `optionz` VALUES ('159', 'C.理想', '40', '1');
INSERT INTO `optionz` VALUES ('160', 'D.福地', '40', '1');
INSERT INTO `optionz` VALUES ('161', 'A、周王拥有一定的土地和人民是分封制实行的前提', '41', '1');
INSERT INTO `optionz` VALUES ('162', 'B、分封对象仅限于同姓王', '41', '0');
INSERT INTO `optionz` VALUES ('163', 'C、被封诸侯唯天子之命是从，完全没有独立性', '41', '0');
INSERT INTO `optionz` VALUES ('164', 'D、楚王问鼎标志着分封制彻底崩溃', '41', '0');
INSERT INTO `optionz` VALUES ('165', 'A、源于原始社会的父系家长制', '42', '1');
INSERT INTO `optionz` VALUES ('166', 'B、最大特点是长子继承制', '42', '0');
INSERT INTO `optionz` VALUES ('167', 'C、根本目的是为了维护奴隶主贵族统治', '42', '0');
INSERT INTO `optionz` VALUES ('168', 'D、层层分封，等级森严', '42', '0');
INSERT INTO `optionz` VALUES ('169', 'A、皇帝拥有至高无上的权力', '43', '0');
INSERT INTO `optionz` VALUES ('170', 'B、全面推行郡县制', '43', '0');
INSERT INTO `optionz` VALUES ('171', 'C、采用三公九卿制，推行较为完备的中央官制', '43', '0');
INSERT INTO `optionz` VALUES ('172', 'D、中央到地方官员均为考核产生', '43', '1');
INSERT INTO `optionz` VALUES ('173', 'A、利于国家统一', '44', '1');
INSERT INTO `optionz` VALUES ('174', 'B、利于中华民族的形成', '44', '0');
INSERT INTO `optionz` VALUES ('175', 'C、奠定两千多年政治制度的基本格局', '44', '0');
INSERT INTO `optionz` VALUES ('176', 'D、利于秦朝的强大及经济文化交流的加强', '44', '0');
INSERT INTO `optionz` VALUES ('177', 'A、汉朝的中外朝制', '45', '0');
INSERT INTO `optionz` VALUES ('178', 'B、隋唐的三省六部制', '45', '1');
INSERT INTO `optionz` VALUES ('179', 'C、宋朝的二府三司制', '45', '0');
INSERT INTO `optionz` VALUES ('180', 'D、元朝的行省制度', '45', '0');
INSERT INTO `optionz` VALUES ('181', 'A、秦朝的太蔚', '46', '0');
INSERT INTO `optionz` VALUES ('182', 'B、唐朝的兵部', '46', '0');
INSERT INTO `optionz` VALUES ('183', 'C、宋元的枢密院', '46', '1');
INSERT INTO `optionz` VALUES ('184', 'D、清朝的军机处', '46', '0');
INSERT INTO `optionz` VALUES ('185', 'A、汉初实行郡国并用制 ', '47', '0');
INSERT INTO `optionz` VALUES ('186', 'B汉武帝时增加州作为地方行政区', '47', '0');
INSERT INTO `optionz` VALUES ('187', 'C、宋时将唐朝的“路”改为“道”，在州县之上', '47', '1');
INSERT INTO `optionz` VALUES ('188', 'D、宋朝以后，所有地方官皆为文臣', '47', '0');
INSERT INTO `optionz` VALUES ('189', 'A、废丞相，设内阁', '48', '0');
INSERT INTO `optionz` VALUES ('190', 'B、南书房的设立', '48', '0');
INSERT INTO `optionz` VALUES ('191', 'C、军机处的设立', '48', '0');
INSERT INTO `optionz` VALUES ('192', 'D、设行中书省', '48', '1');
INSERT INTO `optionz` VALUES ('193', 'A、为资本主义工业化开辟道路', '49', '0');
INSERT INTO `optionz` VALUES ('194', 'B、个人独断易出现失误', '49', '0');
INSERT INTO `optionz` VALUES ('195', 'C、官僚主义、贪污腐化之风盛行', '49', '0');
INSERT INTO `optionz` VALUES ('196', 'D、阻碍资本主义萌芽的发展', '49', '1');
INSERT INTO `optionz` VALUES ('197', 'A. 提倡民主和科学', '51', '1');
INSERT INTO `optionz` VALUES ('198', 'B. 提倡白话文', '51', '1');
INSERT INTO `optionz` VALUES ('199', 'C. 提倡新文学', '51', '1');
INSERT INTO `optionz` VALUES ('200', 'D. 宣传男女平等和个性解放', '51', '1');
INSERT INTO `optionz` VALUES ('201', 'A. 马克思主义研究会', '52', '1');
INSERT INTO `optionz` VALUES ('202', 'B. 马克思学说研究会', '52', '1');
INSERT INTO `optionz` VALUES ('203', 'C. 新民学会', '52', '1');
INSERT INTO `optionz` VALUES ('204', 'D. 工读互助团', '52', '0');
INSERT INTO `optionz` VALUES ('205', 'A. 商团叛乱', '53', '0');
INSERT INTO `optionz` VALUES ('206', 'B. 暗杀廖仲恺', '53', '0');
INSERT INTO `optionz` VALUES ('207', 'C. 中山舰事件', '53', '1');
INSERT INTO `optionz` VALUES ('208', 'D. 整理党务案', '53', '1');
INSERT INTO `optionz` VALUES ('209', 'A. 统一战线 ', '54', '0');
INSERT INTO `optionz` VALUES ('210', 'B. 土地革命', '54', '1');
INSERT INTO `optionz` VALUES ('211', 'C. 武装斗争', '54', '1');
INSERT INTO `optionz` VALUES ('212', 'D. 农村根据地建设', '54', '1');
INSERT INTO `optionz` VALUES ('213', 'A. 社会主义苏联的力量得到较快地恢复和巩固', '55', '1');
INSERT INTO `optionz` VALUES ('214', 'B. 人民民主和社会主义制度在多国建立', '55', '1');
INSERT INTO `optionz` VALUES ('215', 'C. 民族解放运动在亚洲、非洲、拉丁美洲蓬勃兴起', '55', '1');
INSERT INTO `optionz` VALUES ('216', 'D. 资本主义国家中共产党的影响显著增长，工人运动有了新的发展', '55', '1');
INSERT INTO `optionz` VALUES ('217', 'A. 一二·九运动', '56', '0');
INSERT INTO `optionz` VALUES ('218', 'B. 一二·一运动', '56', '1');
INSERT INTO `optionz` VALUES ('219', 'C. 一二·三○运动', '56', '1');
INSERT INTO `optionz` VALUES ('220', 'D. 五·二○运动', '56', '1');
INSERT INTO `optionz` VALUES ('221', 'A. 工人阶级', '57', '1');
INSERT INTO `optionz` VALUES ('222', 'B. 农民阶级', '57', '1');
INSERT INTO `optionz` VALUES ('223', 'C. 城市小资产阶级', '57', '0');
INSERT INTO `optionz` VALUES ('224', 'D. 民族资产阶级', '57', '0');
INSERT INTO `optionz` VALUES ('225', 'A. 互助组', '58', '1');
INSERT INTO `optionz` VALUES ('226', 'B. 初级农业生产合作社', '58', '1');
INSERT INTO `optionz` VALUES ('227', 'C. 高级农业生产合作社', '58', '1');
INSERT INTO `optionz` VALUES ('228', 'D. 人民公社', '58', '0');
INSERT INTO `optionz` VALUES ('229', 'A. 鞍山', '59', '1');
INSERT INTO `optionz` VALUES ('230', 'B. 包头', '59', '1');
INSERT INTO `optionz` VALUES ('231', 'C. 上海', '59', '0');
INSERT INTO `optionz` VALUES ('232', 'D. 武汉', '59', '1');
INSERT INTO `optionz` VALUES ('233', 'A. 长期共存', '60', '1');
INSERT INTO `optionz` VALUES ('234', 'B. 肝胆相照', '60', '0');
INSERT INTO `optionz` VALUES ('235', ' C.荣辱与共', '60', '1');
INSERT INTO `optionz` VALUES ('236', 'D.百家争鸣', '60', '0');

-- ----------------------------
-- Table structure for recogniz
-- ----------------------------
DROP TABLE IF EXISTS `recogniz`;
CREATE TABLE `recogniz` (
  `RecognizId` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectId` int(11) NOT NULL,
  `Content` varchar(255) NOT NULL,
  `Answer` varchar(4) NOT NULL,
  PRIMARY KEY (`RecognizId`),
  KEY `SubjectId` (`SubjectId`),
  CONSTRAINT `recogniz_ibfk_1` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recogniz
-- ----------------------------
INSERT INTO `recogniz` VALUES ('1', '1', '《陌上桑》中的女主人公是刘兰芝。', '0');
INSERT INTO `recogniz` VALUES ('2', '1', '汉字标准化要求就是定量、定形、定音、定序。', '1');
INSERT INTO `recogniz` VALUES ('3', '1', '被尊为\"唐宋八大家\"之首的是韩愈。', '1');
INSERT INTO `recogniz` VALUES ('4', '1', '\"随感型\"是日记的一种类型。', '1');
INSERT INTO `recogniz` VALUES ('5', '1', '文书、公文和文件是同一个概念。', '0');
INSERT INTO `recogniz` VALUES ('6', '1', '散文《拣麦穗》主要描写了农村的艰苦生活。', '0');
INSERT INTO `recogniz` VALUES ('7', '1', '田汉主持的戏剧社团是爱美剧社。', '0');
INSERT INTO `recogniz` VALUES ('8', '1', '《诗经》中的\"风\"指的是诗歌的风格。', '0');
INSERT INTO `recogniz` VALUES ('9', '1', '刘向是西汉著名的经学家、目录学家和文学家。', '1');
INSERT INTO `recogniz` VALUES ('10', '1', '从宋代至清代，小说、诸宫调、北杂剧、南戏都曾被人称为\"传奇\"。（ ）', '1');
INSERT INTO `recogniz` VALUES ('11', '1', '《月下小景》写主人公微妙的心理灵动时采用了写实的方法。', '0');
INSERT INTO `recogniz` VALUES ('12', '1', '苏轼的弟子中，以词名家的人物是秦观。', '1');
INSERT INTO `recogniz` VALUES ('13', '1', '与柳宗元并称\"韦柳\"的诗人是韦庄。', '0');
INSERT INTO `recogniz` VALUES ('14', '1', '《战国策》的思想价值在于它反映了战国时代\"士\"阶层的崛起，反映出士人精神的张扬。', '1');
INSERT INTO `recogniz` VALUES ('15', '1', '现存清代拟话本小说约有30多种。', '1');
INSERT INTO `recogniz` VALUES ('16', '1', '《青春之歌》属于工业题材小说。', '0');
INSERT INTO `recogniz` VALUES ('17', '1', '《回延安》是郭小川的代表诗作。', '0');
INSERT INTO `recogniz` VALUES ('18', '1', '《六国论》是苏洵的代表作。', '1');
INSERT INTO `recogniz` VALUES ('19', '1', '王勃与孟浩然齐名，并称\"王孟\"。', '0');
INSERT INTO `recogniz` VALUES ('20', '1', '\"易安体\"指的是李清照词的风格。', '1');
INSERT INTO `recogniz` VALUES ('21', '2', '20世纪初，清政府已经完全变成帝国主义统治中国的工具，最能说明这一点的是严禁中国人民反帝 ', '0');
INSERT INTO `recogniz` VALUES ('22', '2', '成立于1898年的京师大学堂是清华大学的前身。', '0');
INSERT INTO `recogniz` VALUES ('23', '2', '1894年，孙中山在檀香山创立了中国第一个资产阶级革命团体同盟会。', '0');
INSERT INTO `recogniz` VALUES ('24', '2', '同盟会成立后，资产阶级革命派发动了一系列武装起义，其中影响最大的是七女湖起义。', '0');
INSERT INTO `recogniz` VALUES ('25', '2', '三民主义是指民族主义、民权主义、民生主义。', '1');
INSERT INTO `recogniz` VALUES ('26', '2', '1915年，蔡锷等在云南组织“护国军”，宣布独立，很快形成席卷半个中国的护国运动。', '1');
INSERT INTO `recogniz` VALUES ('27', '2', '《天演论》的作者是严复。', '0');
INSERT INTO `recogniz` VALUES ('28', '2', '新文化运动在宣传民主、科学的同时，提出必须反对封建的伦理道德。', '1');
INSERT INTO `recogniz` VALUES ('29', '2', '中国最早接受和宣传马克思主义的先进分子是毛泽东。', '0');
INSERT INTO `recogniz` VALUES ('30', '2', '五四运动的直接导火线是北洋军阀政府的黑暗统治', '0');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `ScoreId` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Score` double NOT NULL,
  PRIMARY KEY (`ScoreId`),
  KEY `SubjectId` (`SubjectId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`SubjectId`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `SubjectId` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(20) NOT NULL,
  PRIMARY KEY (`SubjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '语文');
INSERT INTO `subject` VALUES ('2', '历史');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Identity` int(11) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '周骏', '0123', '1');
INSERT INTO `user` VALUES ('2', '冯越', '123', '0');
INSERT INTO `user` VALUES ('3', '张善强', '123', '0');
INSERT INTO `user` VALUES ('4', '蔡雪松', '123', '0');
