/*
Navicat MySQL Data Transfer

Source Server         : 公司
Source Server Version : 50173
Source Host           : 47.104.12.196:3306
Source Database       : huida

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-02-28 11:39:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `time` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '7fef6171469e80d32c0559f88b377245', '123');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT '分类id',
  `title` varchar(255) DEFAULT NULL COMMENT '描述',
  `description` varchar(2555) DEFAULT NULL,
  `intro` varchar(2555) DEFAULT NULL COMMENT '简介',
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `recommend` tinyint(1) DEFAULT '0' COMMENT '1推荐 0不推荐',
  `beizhu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('10', '1518238839', '122', 'PHP', '搭建环境、PHP基础、MySQL数据库、表单传值、MySQL扩展、HTTP协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、Smarty、MVC设计模式、博客项目', '搭建环境、PHP基础、MySQL数据库、表单传值、MySQL扩展、HTTP协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、Smarty、MVC设计模式、博客项目', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h4>搭建环境、PHP基础、MySQL数据库、表单传值、MySQL扩展、HTTP协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、Smarty、MVC设计模式、博客项目</h4><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p>', 'uploads/20180210/3a3298f90d792bf3da12dbae513f3cc3.png', '1', null);
INSERT INTO `article` VALUES ('11', '1518239687', '124', '全栈工程师', '搭建环境、PHP基础、MySQL数据库、核心编程（表单传值、Mysql扩展、Http协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、）、Smarty、MVC设计模式、JavaScript基础、网站优化 （Mysql优化）、VueJS实战项目。', '搭建环境、PHP基础、MySQL数据库、核心编程（表单传值、Mysql扩展、Http协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、）、Smarty、MVC设计模式、JavaScript基础、网站优化 （Mysql优化）、VueJS实战项目。', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><h4>搭建环境、PHP基础、MySQL数据库、核心编程（表单传值、Mysql扩展、Http协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、）、Smarty、MVC设计模式、JavaScript基础、网站优化\r\n（Mysql优化）、VueJS实战项目。</h4><p>&nbsp; &nbsp; &nbsp;<br/></p>', 'uploads/20180210/ea5c23c5b05a1f1742049d18b91a09be.png', '1', null);
INSERT INTO `article` VALUES ('26', '1519716886', '122', '11111', '111', '11111111111111111111', '111111111111111111<p>\r\n					</p>', null, '1', null);
INSERT INTO `article` VALUES ('27', '1519716950', '122', '222', '22', '22', '2222<p>\r\n					</p>', null, '1', null);
INSERT INTO `article` VALUES ('28', '1519721027', '122', '2222', '33', '33', '<p>333</p><p>\r\n					</p><p>					</p><p>					</p><p>					</p><p>					</p><p>					</p><p>					</p>', 'uploads/20180227/cc122d23beda1060dc8fae3bd6a23801.png', '1', '11');
INSERT INTO `article` VALUES ('29', '1519717051', '139', '资讯动态1', '资讯动态1', '资讯动态1', '<p>资讯动态1					</p>', null, '1', null);
INSERT INTO `article` VALUES ('13', '1518239322', '123', 'web前端开发', '掌握WEB页面开发的基础知识，能独立开发简单页面，为Html5/Web就业班打下基础。掌握web页面开发的高级知识，掌握第三方库的使用，能实现各种炫酷的页面效果。', '掌握WEB页面开发的基础知识，能独立开发简单页面，为Html5/Web就业班打下基础。掌握web页面开发的高级知识，掌握第三方库的使用，能实现各种炫酷的页面效果。', '<h4>掌握WEB页面开发的基础知识，能独立开发简单页面，为Html5/Web就业班打下基础。掌握web页面开发的高级知识，掌握第三方库的使用，能实现各种炫酷的页面效果。</h4><p><br/></p>', 'uploads/20180210/0acf0cf8432b55ba1b892406a6c73ab6.png', '1', null);
INSERT INTO `article` VALUES ('14', '1518238461', '125', 'jvav大数据开发', '', '环境搭建（包括Windows下和、Linux下的Java环境搭建）、Java语言基础、Java流程控制、Java常用类。异常处理、I/0、JavaBean、反射、递归、多线程、网络编程、泛型/Java集合类', '<h4>环境搭建（包括Windows下和、Linux下的Java环境搭建）、Java语言基础、Java流程控制、Java常用类。异常处理、I/0、JavaBean、反射、递归、多线程、网络编程、泛型/Java集合类</h4><p><br/></p>', 'uploads/20180210/e9cb4345faca6f98b9cef574062c2fe1.png', '1', null);
INSERT INTO `article` VALUES ('23', '1518239571', '128', 'IT技术对企业的发展起到重要作用', 'IT投资对企业建设的重要性，IDC也在较早前调查显示，中国企业在2009年对IT投资并没预期差，也就是说虽然在经济不景气的情况下，广大企业并没减少对IT技术的投入。大家都清楚，IT技术对企业的促进作用，在未来将扮演着越来越重要的角色', 'IT投资对企业建设的重要性，IDC也在较早前调查显示，中国企业在2009年对IT投资并没预期差，也就是说虽然在经济不景气的情况下，广大企业并没减少对IT技术的投入。大家都清楚，IT技术对企业的促进作用，在未来将扮演着越来越重要的角色', '<p>IT投资对企业建设的重要性，IDC也在较早前调查显示，中国企业在2009年对IT投资并没预期差，也就是说虽然在经济不景气的情况下，广大企业并没减少对IT技术的投入。大家都清楚，IT技术对企业的促进作用，在未来将扮演着越来越重要的角色。</p><p>　　在全球软件和信息服务交易会上，中国国际贸易促进委员会副会长于平表示，在所有的贸易便利化措施当中，基于IT技术的各种措施，具有更为广阔和直接的效益。</p><p>　　于平肯定了IT技术对贸易的促进作用，他表示，运用IT技术，实现贸易单证简化、标准化和电子报关、通关，降低贸易成本和海关监管成本，提高效率;降低物流成本，加速商品流通，提高企业竞争力，帮助企业<a href=\"http://undefined\">更快</a>地融入到国际贸易体系之中;建立跨部门的兼容的无缝网络，为企业构建统一的电子贸易平台。</p><p>　　今年，IT技术对贸易起到的作用更为显著。不但提高了企业日常办公的工作效率，而且降<a href=\"http://undefined\">低成本</a>，提高竞争力，使得国际贸易越来越便利，在未来，IT技术将<a href=\"http://undefined\">深入</a>到各个行业领域，同时，分工也越来越细。</p><p>　　IBM大中华区董事长周伟焜在日前现身广州，预言IT技术将进入15年为周期的新一轮革命，IT技术在这个过程中所扮演的角色也在<a href=\"http://undefined\">转变</a>，并将成为智慧企业的灵魂。他表示，借着互联网和物联网(硬件设备联结而成的网络)融合、传统和社会基础设施智慧化的趋势，IBM正大举抢夺交通、医疗、卫生、教育、电力等公共领域市场。</p><p>　　显而易见，IT技术不再是互联网领域，而是将IT技术发挥到各个领域的兼容。也就是周伟焜认为利用IT技术使得社会坚持设施变得更“智慧”，当然也包括企业。因此，笔者最为担心的是中小企业在信息化建设上停滞不前，电子商务上仍然落后。</p><p>　　虽然靠阿里巴巴为企业搭建的贸易平台，增加他们贸易机会，在全球经济增长缓慢的情况下，确实帮到一些企业，<a href=\"http://undefined\">但是</a>以后的发展，贸易效率和成本考虑，是否应该设想提高企业内部IT技术设备、实现信息化呢?</p><p>　　作为一直对外贸企业保持密切关注的中国诺网。其市场调研人士表示，虽然某些中小企业<a href=\"http://undefined\">借助</a>阿里巴巴等贸易平台带来了一些收益，但仍然大多传统企业不看中<a href=\"http://undefined\">电子商务平台</a>。一方面是<a href=\"http://undefined\">认识</a>偏差，知识水平跟不上时代，依然保留着传统方式就是<a href=\"http://undefined\">最好</a>的观念。另一方面，资金短缺，不知从何下手对电子商务，IT技术建设进行投资。</p><p>　　因此，中国诺网认为，中小企业要进行全面的IT技术建设，需要改变知识结构，对知识进行普及，再进行资金整合，谋求发展空间。同时，IT技术的投资，也会渐渐地看到效果，企业也会有更好的发展。</p><p><br/></p>', 'uploads/20180210/91c2b3349670bebc2a846e349ab13ccb.jpg', '1', null);
INSERT INTO `article` VALUES ('24', '1518239556', '128', 'IT技术发展的趋势，那将会颠覆你的日常生活', '互联网已拓展到企业资产和汽车、电视等消费品领域。现在的问题是，大多数企业和技术供应商对于互联网延伸仍处于探索之中，在实际运营和组织架构方面尚未做好准备。目前对互联网的四个基本应用模型分别为管理、货币化、操作和扩展。这些模型可以应用于任何人、物、信息和场所，因此，“物联网”终将会被“万物互联”所取代。', '1、移动设备的多样性和管理2、万物互联3、混合云和IT成为服务经纪人4、云客户端架构5、个人云时代6、智能机器', '<p>1、移动设备的多样性和管理</p><p>直到2018年，自发形成的“自带设备”办公(BYOD)引发种类繁多的移动设备层出不穷，不同的用户环境和交互模式将导致“任一设备、任一地点”的战略无法实现。据估算，自带设备计划可能会招致意想不到的后果。届时，信息技术和金融机构的移动员工的数量可能会是现在的两倍或三倍，从而引发的新问题便是企业如何针对自带设备制定新的政策，以便平衡好灵活性与保密和隐私需求。</p><div class=\"img-container\"><br/></div><p>2、万物互联</p><p>互联网已拓展到企业资产和汽车、电视等消费品领域。现在的问题是，大多数企业和技术供应商对于互联网延伸仍处于探索之中，在实际运营和组织架构方面尚未做好准备。目前对互联网的四个基本应用模型分别为管理、货币化、操作和扩展。这些模型可以应用于任何人、物、信息和场所，因此，“物联网”终将会被“万物互联”所取代。</p><p>3、混合云和IT成为服务经纪人</p><p>个人云和外部私有云服务整合势在必行。企业在设计私有云服务时需要考虑到未来的混合云趋势，并确保未来集成互操作性的可行性。早期的混合云服务可能更倾向于静态、工程组合方面的发展。随着云服务代理的发展，会有更多云部署组合出现。</p><div class=\"img-container\"></div><p>4、云客户端架构</p><p>移动设备在功率和性能方面的日益发展提升了对网络的需求，网络成本增加，并需要管理带宽使用，需要“在某些情况下，建立激励机制以使得云应用程序计算和存储空间最小化，并利用好客户端设备的资讯和存储功能”。移动用户对移动技术需求愈发复杂也将驱动服务器段计算和存储能力不断提升。</p><p>5、个人云时代</p><p>个人云技术的发展将导致设备向服务转移。在此情况下，设备的特性将不再重要，个人云数据可以在多种设备上访问，并将会取代传统设备所具有的部分功能。</p><div class=\"img-container\"><br/></div><p>6、智能机器</p><p>智能机器时代将成为IT史上最具颠覆性的时代。智能机器涵盖范围极广，不仅包括环境感知的各种设备、智能个人助理、智能顾问，在先进的全球工业系统和无人驾驶汽车领域也将迅速发展。预计在企业着手投资这一领域后，智能机器消费化的力量会更加强劲。</p><p><br/></p>', 'uploads/20180210/7b67bef5e52e18c4a3ba823404e9e8c2.JPEG', '1', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `list_order` int(10) DEFAULT '10000',
  `description` varchar(255) DEFAULT NULL COMMENT '分类描述',
  `name` varchar(100) DEFAULT NULL,
  `beizhu` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text COMMENT '详情',
  `time` int(11) DEFAULT NULL COMMENT '添加时间',
  `isdel` tinyint(1) DEFAULT '0',
  `cls` tinyint(1) DEFAULT '0' COMMENT '0单片文章，1文章集合',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11116 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('122', '1', '10000', 'php后台开发', 'php后台开发', '叫你如何玩转微信小程序，从此化身技术大牛', 'uploads/20180117/f128e358024a4143ede6ef2b30419fc6.png', '<h5>PHP课程</h5><p>\r\n				</p><h4>搭建环境、PHP基础、MySQL数据库、表单传值、MySQL扩展、HTTP协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、Smarty、MVC设计模式、博客项目</h4><p>						</p><p>						</p><p>						</p><p>						</p>', '1518237602', '1', null);
INSERT INTO `category` VALUES ('123', '1', '10000', 'web前端开发', 'web前端开发', 'web前端开发', 'uploads/20180117/15f0127ec2c77bc4feafa33275fe8075.jpg', '<div class=\"col-md-3 serv4\"><h5>web前端课程</h5>\r\n				<h4>掌握WEB页面开发的基础知识，能独立开发简单页面，为Html5/Web就业班打下基础。掌握web页面开发的高级知识，掌握第三方库的使用，能实现各种炫酷的页面效果。</h4>\r\n			</div><p>\r\n			</p><div class=\"clearfix\"></div><p><br/></p>', '1518237733', '1', null);
INSERT INTO `category` VALUES ('124', '1', '1', '全栈开发', '全栈开发', '全栈开发', 'uploads/20180117/5d18f13861b023c7042e55d31c7ec4f4.png', '<h5>全栈工程师课程</h5><p>	\r\n				</p><h4>搭建环境、PHP基础、MySQL数据库、核心编程（表单传值、Mysql扩展、Http协议、文件编程、会话技术、GD图像处理、面向对象、PDO扩展、）、Smarty、MVC设计模式、JavaScript基础、网站优化\r\n（Mysql优化）、VueJS实战项目。</h4><p>						</p><p>						</p><p>						</p><p>						</p>', '1518237579', '1', null);
INSERT INTO `category` VALUES ('125', '1', '10000', 'java课程', 'java', 'jvav', null, '<h5>JAVA课程</h5><p>\r\n				</p><h4>环境搭建（包括Windows下和、Linux下的Java环境搭建）、Java语言基础、Java流程控制、Java常用类。异常处理、I/0、JavaBean、反射、递归、多线程、网络编程、泛型/Java集合类</h4><p>						</p><p>						</p>', '1519435531', '1', null);
INSERT INTO `category` VALUES ('130', '0', '10000', '公司介绍', '公司介绍', '公司介绍', 'uploads/20180108/2a313587d577ce4e69f873ce96d28067.png', '<p><img src=\"https://www.qitmx.com/shop/tp8/public/static/admin/editor/php/upload/20180108/15154126563686.png\"/></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">辉达IT教育是北京辉达时代网络技术有限公司投资设立的一所专业的IT培训机构，</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">为本企业和社会其他企业培育最优秀的全栈型技术人才。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们最大的优势在于我们是IT技术服务型培训机构。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们拥有自己的软件开发技术团队，承接各类客户的开发项目。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们接触掌握市场最前沿的技术革新和变化，能了解企业最急需的技术人才标准。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们的学员，在掌握基础知识后，深入学习阶段时，便可以进入到客户订单的实战中，</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">并将实操的结果，与公司技术团队以及客户的要求对比，从而达到培训及实战、实战及培训，</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">在实战中练就真功夫，使学员在培训毕业后，真正能达到与用人单位“0”过渡对接，从而大大缩短学员就业期限。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　 我们保证每一位学员都能学到过硬的专业技术，因为只有最牛的技术才是高薪就业的有力保障。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们组建精锐高效的技术就业保障团队</span>，</p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\">团队中的每一位老师都拥有5年以上开发经验和过硬的项目管理实操经验的大牛级人物。</p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\">保证学员在就业单位工作中，能及时解决所遇到的难题。</p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\">从而增强学员在用人单位有一颗傲娇的心和一个领导受重视的高薪职位！</p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">　　我们秉承：“为莘莘学子指路明灯,让人人都有理想前程”的教育理念。</span></p><p style=\"text-align: left; margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:16px\">为圆每一位家长望子成龙，望女成凤的心愿而不懈努力！</span></p><p>						</p><p>						</p><p>						</p><p>						</p><p>					</p><p>					</p><p>					</p><p>					</p>', '1519722316', '1', null);
INSERT INTO `category` VALUES ('1', '0', '10000', '课程列表', '课程列表', '课程列表', null, '课程列表', '1515412816', '1', null);
INSERT INTO `category` VALUES ('128', '0', '10000', '资讯动态资讯动态', '资讯动态', '资讯动态', 'uploads/20180108/1ecc2c7e5b4898f330d55013df446043.jpg', '<p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">全面屏和人工智能可以说是当前智能手机两大亮点。前者带来外形工艺改变，让用户拥有更好的视觉体验，2017年以席卷之势，快速成为主流品牌旗舰机标配；后者将带来交互体验改变，随着人工智能概念一起火起来，目前整个手机产业在芯片、系统、传感器、算法等不同层面探索，更多是巨头的游戏。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">全面屏需要新的解锁方式，人工智能也需要更多的生物信息输入和触发交互。于是全方位的生物识别技术成为两大亮点的交叉点。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102); min-height: 33px;\"><span style=\"font-size:18px\"><img src=\"https://www.qitmx.com/shop/tp8/public/static/admin/editor/php/upload/20180108/15154127467094.png\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102); min-height: 33px;\"><span style=\"font-size:18px\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK Semibold&quot;;\"><span style=\"font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;;\"><strong><span style=\"font-size:18px\">智能手机新趋势：走进感官控制时代</span></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102); min-height: 33px;\"><span style=\"font-size:18px\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">生物识别技术带来人与手机的交互方式的变革</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">生物识别技术中相对重要的有四种；指纹识别、虹膜识别、人脸识别、声纹识别，在智能手机上的应用越来越多。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">2013年苹果iPhone 5s推出时，率先使用<span style=\"font-stretch: normal; line-height: normal; font-family: &quot;PingFang SC&quot;;\">杀</span>手级应用Touch ID，掀起了指纹识别的大潮。全面普及仅用两年多时间，指纹识别模块位置在正面、背面、侧面因机而异。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">今年，人脸识别火了。不过虽然还是苹果带火了人脸识别，它却不是首家应用该技术的。今年7月底，国内手机厂商国美手机就发布了主打人脸识别技术的GOME S1。在功能上，GOME S1不但能通过人脸识别快速解锁，还实现了加密应用、Face-Me和专属空间等功能。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">相比人脸识别的大热，虹膜识别低调很多，玩家主要是三星和LG。2016年三星S8和Note 8引入虹膜识别技术，成为高端旗舰机的亮点，近期LG新机曝光，预计也将采用虹膜识别技术。国内厂商方面，国美手机也曾在年初发布了一款主打虹膜识别的K1。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\"><img src=\"https://www.qitmx.com/shop/tp8/public/static/admin/editor/php/upload/20180108/15154127718338.png\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">可以预见，以上提到的生物识别技术将会逐渐普及，实现广泛应用，这是技术迭代与消费升级共同驱动的。随之而来的，将是人机交互方式的变革。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">十年前，首款iPhone手机发布标志着从键控时代进入触控时代，多点触控屏技术取代了键盘输入，这是手机领域人机交互最具革命性的一次变革，也让键控代表摩托罗拉和诺基亚从巨头走向衰落。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">随着生物识别技术和传感器的广泛应用，感官控制逐步升温，或有成为新一代交互方式的趋势。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">感官控制时代的关键要素和技术储备</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">感官控制作为人机交互的一种方式，已经具备落地基础，其关键要素体现在两个层面，对于手机而言，有被动和主动之分。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">用户通过生物识别技术及声音等非接触手段实现手机解锁屏及需求指令发出，这是感官控制的第一个层面，相对于键控、触控、只不过是控制机器的手段改变了而已，改变在于“形”。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">第二个层面是手机根据用户的位置、场景等信息变化，感知用户潜在需求并提供相应服务，主动服务是感官控制的高级阶段，改变在于“神”。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">“形”与“神”的共同变化意味着感官控制的到来。这并不是遥<span style=\"font-stretch: normal; line-height: normal; font-family: &quot;PingFang SC&quot;;\">远</span>的未来，当前已经在路上。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; font-stretch: normal; line-height: normal; font-family: &quot;PingFang HK&quot;; color: rgb(102, 102, 102);\"><span style=\"font-size:18px\">作为感官控制交互的技术储备，操作系统研发支持、传感器及生物识别技术整合、人工智能技术应用都逐步成熟。</span></p><p>						</p><p>						</p><p>						</p>', '1515412816', '1', null);
INSERT INTO `category` VALUES ('132', '0', '10000', '首页4个导航菜单', '首页导航菜单', '首页4个导航菜单', null, '<p>首页4个导航菜单						</p><p>					</p>', '1519787724', '1', null);
INSERT INTO `category` VALUES ('133', '132', '10000', '', '教育培训', '教育培训', 'uploads/20180117/a48918bbd8146bda25acdafcd184cbff.png', '', '1516153038', '1', null);
INSERT INTO `category` VALUES ('134', '132', '10000', '', '师资团队', '师资团队', 'uploads/20180117/6011b71600173e7f8f64c248349cd7c0.png', '', '1516153024', '1', null);
INSERT INTO `category` VALUES ('135', '132', '10000', '', '资讯动态', '资讯动态', 'uploads/20180117/bda1b39f9a24fdbd2a70a7b0a7efaf29.png', '', '1516153125', '1', null);
INSERT INTO `category` VALUES ('137', '132', '10000', '', '一键导航', '一键导航', 'uploads/20180117/0c78ec5026775b41a287cca052d5019e.png', '', '1516153238', '1', null);
INSERT INTO `category` VALUES ('138', '130', '10000', '', '公司介绍', null, null, null, '1519711720', '1', null);
INSERT INTO `category` VALUES ('139', '128', '0', '资讯动态', '资讯动态', '资讯动态1', 'uploads/20180227/4e6898ae36d5291773d9e62b1f340f09.png', '<p>资讯动态					</p><p>					</p>', '1519714458', '1', null);

-- ----------------------------
-- Table structure for imgc
-- ----------------------------
DROP TABLE IF EXISTS `imgc`;
CREATE TABLE `imgc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `isdel` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgc
-- ----------------------------
INSERT INTO `imgc` VALUES ('1', '首页轮播', '轮播', '1515375430', '1');
INSERT INTO `imgc` VALUES ('4', '新闻资讯banner', '新闻资讯新闻资讯新闻资讯', '1515375430', '1');
INSERT INTO `imgc` VALUES ('5', '首页轮播图下面图片', '首页轮播图下面图片', '1516152425', '1');

-- ----------------------------
-- Table structure for imgl
-- ----------------------------
DROP TABLE IF EXISTS `imgl`;
CREATE TABLE `imgl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(20) DEFAULT NULL,
  `description` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgl
-- ----------------------------
INSERT INTO `imgl` VALUES ('19', '5', 'uploads/20180227/7ed4b41d6d3a69520f03c219c77160e3.jpg', '1111', '1519698310', '111');
INSERT INTO `imgl` VALUES ('20', '4', 'uploads/20180227/c6b575244f260c759a1f15e02d8b0331.png', '11', '1519698964', '11');
INSERT INTO `imgl` VALUES ('17', '4', 'uploads/20180227/56d69c64100661f480b97b6de1db0829.jpg', '1111', '1519697365', '11');
INSERT INTO `imgl` VALUES ('18', '4', 'uploads/20180227/ac385d0fd79ca9d777011db6f46e79d8.png', 'ww', '1519698035', 'ww');
INSERT INTO `imgl` VALUES ('21', '5', 'uploads/20180227/a1ddfe824d9675660ad2b7f533a861d4.png', '222', '1519782313', '11111');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `message` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '15203208727', '没意见');
INSERT INTO `message` VALUES ('2', '15203208727', '123');
INSERT INTO `message` VALUES ('3', '15203208727', 'meishier');
INSERT INTO `message` VALUES ('4', '15203208727', '没事儿');
INSERT INTO `message` VALUES ('5', '13522710954', '没意见');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickName` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `avatarUrl` varchar(500) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `gender` varchar(3) DEFAULT NULL,
  `openid` varchar(200) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=772 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('745', '雨荷', 'Guyuan', 'Ningxia', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJVLaXB7WWacjSia0v08YuuzXsrdBA0nWrWKmxwLcgx1IuDVXmFw4sO8HRScZFIJTKAcbxhxLDGJ7Q/0', '001vFda12awJkX0gnH912gvta12vFdaY', '2', 'oyZok0QO9uZV_7DewP_hGK2PaiyY', 'zh_CN');
INSERT INTO `user` VALUES ('746', 'A豪', '', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/NMpZnVsFBt0Gsaib7WwdicwicLUiaicb9bP1ataJXsmk8iakRjgcUcPehhlKR48PErqaYicAmiaUDMVXC0jtc51gia0Kvog/0', '0136j8Bw0I0Xmi1NTwDw0D5fBw06j8Bp', '1', 'oyZok0SqnM_MNqibcW49fip3qoNc', 'zh_CN');
INSERT INTO `user` VALUES ('747', '对方正在输入中……', 'Handan', 'Hebei', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKib2aTepaicFCDfD6MlZnIzaAicTCBLwK6jpv9X2QlkmVBbFyu7rPdiajBsgv7O6VkU7Mzy2UficQfzsg/0', '001oyRBx1CIneg0dYvDx1W33Cx1oyRBc', '1', 'oyZok0X27WVImEVrTIPP23uj5gOk', 'zh_CN');
INSERT INTO `user` VALUES ('748', '咚咚咚', 'Dalian', 'Liaoning', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/icfVMbP9Xawnj3fBJzryb0AqvOd6PtpM7vyVxOb1ehPl8e0CibruXZicgLPgjYzibt3db2PdPaaRGvzyMe1weKAopw/0', '003of6bj2H9UjF0BZf8j2qknbj2of6b0', '1', 'oyZok0VXje_vxYC_BbxJdZCK6IQg', 'zh_CN');
INSERT INTO `user` VALUES ('749', 'L', 'Hengyang', 'Hunan', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erLMAwHLEDeiaHeUfqfFm3qnPsibZZhZXgcJEqk89aYlDkial0T3Z9eMtTicDpRiaYE6TLSAusPiaypMH5g/0', '011d8kKO0O9CTa2F2fLO0yZZJO0d8kKZ', '1', 'oyZok0XXXeDVyU0rBKcURUHofT60', 'zh_CN');
INSERT INTO `user` VALUES ('750', '问心无愧', '', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIpuibzKNmhugyeMSLXpIQ0NkMcEiboAeqVcibJyl6EskfwRJHZDoUWZCeOCHS5FSN31ichboHhhh05Eg/0', '011hgzdU0D50CY1fzAfU0hVjdU0hgzdP', '1', 'oyZok0ZkHWEwL5u7R_jpXgUf04pE', 'zh_CN');
INSERT INTO `user` VALUES ('751', '刘金定', '', '', 'Andorra', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJTOSoicsDOjLI5SMiaiawN8Z939ol2IwsFPEq79SrpyT7XuwLZ0pZ6RefFk70ANhSPpRL8kIlNe3n6Q/0', '021xUrlZ1KnVh01i8FoZ1WCNlZ1xUrl0', '1', 'oyZok0XlETLPt9sjLsorDjFnUEyE', 'zh_CN');
INSERT INTO `user` VALUES ('752', '扩散云 小龙，开通直播权限', 'Guyuan', 'Ningxia', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83erbego46El1J6AzRq2HbAtQDgKYWWzoOrUjSIIr95wb8FKV8Syw6VGHtOqiagDXKnsibyVjI7jDn71A/0', '0714rxES0SghLW1MpdGS0RBRES04rxEJ', '1', 'oyZok0cGRlnUw7OrnWG8ngtJypak', 'zh_CN');
INSERT INTO `user` VALUES ('753', '张青松', 'Shijiazhuang', 'Hebei', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/cmDPyewtVyMlZMxm50gel8ibOxvicRC0OuHUKOS878oR3YwnAbf4kBKPjZymD6tIUdic8ywSrsXulcX1iaq5bXxXCg/0', '0139pBM71CcbZS1OrEL71lDQM719pBMH', '1', 'oyZok0QmqK_2GRPcVD_FbqzDnoKc', 'zh_CN');
INSERT INTO `user` VALUES ('754', '定做橱柜衣柜隔断百宝阁酒柜', '', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/ONfF1PecAqCjoKqolBEKeU5qV0vndbvp9GEFfrglhNWlxemwybgiae39cF2Vicib9aSaVA1pBPqjUG9uGxoiaXejlQ/0', '0131fhPh2GnqOH0xJMPh2AJlPh21fhPE', '1', 'oyZok0XB1caeLhlQppIsylPXjJSo', 'zh_CN');
INSERT INTO `user` VALUES ('755', '嘎呔丹杰', 'Haidian', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTID6xcHMMQdvTZWJNSv8V6MrPzcfr3PwalnUNNoUpftlJMxKqlEawII2IkjBeYIGicMQUEWAtmIHeg/0', '01152FLM1TwM361ifBJM1UyyLM152FLc', '1', 'oyZok0c-Dr5J8db6q0CfgRrMzlKg', 'zh_CN');
INSERT INTO `user` VALUES ('756', '杨汐', 'Chaoyang', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIx5tCSwpU4ia7A48bclHT2VgJ9vF4S0oqkBL0pcRKQ0ypuJfyrZ6ssWy02YT25usKIA9dzn1OEtUw/0', '021GxeSL0FZTx32eCzRL0xrgSL0GxeSu', '2', 'oyZok0XDYh5jkq2AltSQaSLfMPFE', 'zh_CN');
INSERT INTO `user` VALUES ('757', '彩彩', 'Chaoyang', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eq71PP5ibXRBgQYflwejakGBLWlpIAr9iaRXDczqGomLmNCianmBC8UQp6icGZXS6cvIWF8zAWmU1jXew/0', '011jafIl0oMijl1I5RFl0S9PHl0jafIC', '2', 'oyZok0SbIX04i2UzIwKhws8OSw0U', 'zh_CN');
INSERT INTO `user` VALUES ('758', '呀哒', '', '', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKDcoEVMdBF4GC1BDiaHc8oZXfoxiay4ic2jxJHBoCtoKfFtDAF8aaZ0hXYQpq5mYLELJmib0DEITTtOA/0', '013LDkef1wRzBy0v54gf1Qzhef1LDkeY', '2', 'oyZok0fZbs8WXBEyxy_ldJ0M86eQ', 'zh_CN');
INSERT INTO `user` VALUES ('759', '山雨', '', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epFb4QhxgVlcricBtwW81YPpO9qBALRZWf5ibSCwCIdnoLduOQibf15twVOVYrX4vtECRx9m5knQu6Mg/0', '001lIwVz1bElUd0gksTz1kTuVz1lIwVP', '1', 'oyZok0fiePIeRXDjl4d63dOjG4Ww', 'zh_CN');
INSERT INTO `user` VALUES ('760', '麒麟', 'Langfang', 'Hebei', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIgjTgs4yvvKk8Zpb924tgyp2ib5RlIAtzfV4HvH3sfvkSv4VvLmib1zWwA9IZHpEel5OfKibTkKnodg/0', '001V1kWE0KD0zj2G3OTE0xodWE0V1kWK', '1', 'oyZok0RvLFYngdK5iqP5Tv6WvjsU', 'zh_CN');
INSERT INTO `user` VALUES ('761', '泛海伟业设计工作室：张发科', 'Chaoyang', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eqUeOmCzmW5tchxLiaK6cJPBbD615QHrx3LxkmvIJrd8VgafMoibUhf4FXGmicfdcfRtAtqwjJN6iaKVg/0', '071lgmVt1TlMXb08GETt1jiyVt1lgmVv', '1', 'oyZok0Qe5VGcWgeSlVrTNqggNwG8', 'zh_CN');
INSERT INTO `user` VALUES ('762', '厨师王运太《拼博》15232801229', 'East', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/TtbLZL3QB99AfRwLRqbZVsiafeWyN6Lt0RThySnmm50zPOmzic2PKhaPL2dyKicx1kwbuEtQf4m2VicmvbfKv7ia1icA/0', '003y7VdF1zU7t00g0beF1TeVdF1y7VdU', '1', 'oyZok0f8AA61G5TrCQpXYxJ6CLVw', 'zh_CN');
INSERT INTO `user` VALUES ('763', '刘代瑞', 'Chaoyang', 'Beijing', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epicGfAPbo0k7cEUkfqp9mibBb24srDHWbDLUlrlwNuyrM6kXfcrMAlX1JFtjsia2j3QConmjTOeGZnA/0', '021Xqj7C0H6IJf2MWEaC0dmB7C0Xqj7U', '1', 'oyZok0YIjE8ciZg599Vzob8LXWsk', 'zh_CN');
INSERT INTO `user` VALUES ('764', '佐佑', 'Langfang', 'Hebei', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Sz38XREvkdUEqBdwpMjP1R9Em8LQhYib75VMQwNHcYMpuiaq9Nuus7QHNiaUwMQWu38B2pIza9gctLVb21eUMAbcA/0', '003cD4so1JuQHp04P3vo1p01so1cD4sR', '1', 'oyZok0aBVHCjaHsrGuZy-adG0kc0', 'zh_CN');
INSERT INTO `user` VALUES ('765', '～范～', 'Yuncheng', 'Shanxi', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83eroKFqyQcZbOlRkRejq66qTTibHIDmCTTjZaCFuqLYeiclBz6pq0Xq4IfddWPQxUvpUKalibhfGa03aw/0', '011OhPJf0MWXbB1jwiIf0uRIJf0OhPJe', '1', 'oyZok0YcGy9-ItUXgAJiuL8aHj0E', 'zh_CN');
INSERT INTO `user` VALUES ('766', '星雨星愿', '', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/qMujW15aRVIPTEib3ibkHAETEr9RjgYzHVDOmFLCZSqd16rw9SYlziboFaRuq5TmJ4hCPguu6dDHzFdQr37epEetw/0', '003HrnnQ1eKcF81cbZlQ1NktnQ1HrnnF', '0', 'oyZok0bt03tE1zOVm1GYJxMquZpo', 'zh_CN');
INSERT INTO `user` VALUES ('767', '我爱我家', '', '', '', 'https://wx.qlogo.cn/mmopen/vi_32/sC1UMQrzS1Ribr1xUG4zlic0C5U8vicGpicRp47E1hZ2T4ImKSrVJWfLIcJRzbEEnEfcJUxEsNRIlPiaVrWaSUyengQ/0', '0038N8wC0wNO8g2CbptC0Hv7wC08N8w0', '1', 'oyZok0SKrQna47MT64h2Y0pmlzPE', 'zh_CN');
INSERT INTO `user` VALUES ('768', '王垚', 'Philadephia', 'Pennsylvania', 'United States', 'https://wx.qlogo.cn/mmopen/vi_32/ibS6tghwztzGALictZMSH23PsickEb69ibqgrr04WZNiclyHiaCe6uK6HnbZoo5AYX24apKj2uLLMYNox8wXSIJLTRyQ/0', '003JJLcb1JUDCu0KCIdb1zaKcb1JJLcv', '1', 'oyZok0SsHP-q9JLEtF8D-Z2tOE1Q', 'zh_CN');
INSERT INTO `user` VALUES ('770', 'C盼望Z', '', 'Addu Atoll', 'Maldives', 'https://wx.qlogo.cn/mmopen/vi_32/v6854UPxEI48WLnL6Ge1icZgYYKuJiaiaR5PgqNjNFIDqQMN7anA1HiaE5IPmpQIwunuHicLfIFZgobqTQ3MgJcuksQ/0', '003moeHM0FjCD32JNKGM0Zu0HM0moeHy', '1', 'oyZok0RGZmZdWn3CKKPgzSFl6ndQ', 'zh_CN');
INSERT INTO `user` VALUES ('771', '王伟', 'Changsha', 'Hunan', 'China', 'https://wx.qlogo.cn/mmopen/vi_32/Bmgic9OWstr2h0pQ4lgwyibMAv1LT8icP6yJx01rgicRmaqD0gunRwpAtSica3PiaXrtb2N8A9FX01yyedmxWEbqsCWg/0', '013LTGqg0oT5py1puYog0FxZqg0LTGqL', '1', 'oyZok0eVyNbYCGKMR68T8F1CtM4g', 'zh_CN');

-- ----------------------------
-- Table structure for wxset
-- ----------------------------
DROP TABLE IF EXISTS `wxset`;
CREATE TABLE `wxset` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `mch_id` varchar(255) DEFAULT NULL,
  `notify_url` varchar(255) DEFAULT NULL,
  `wxkey` varchar(255) DEFAULT NULL,
  `baiduak` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxset
-- ----------------------------
INSERT INTO `wxset` VALUES ('1', 'wx57133acd96904e04', 'd102dbd538b7d756c6c7c231c748d36e', '1252484701', 'https://mp.huidait.cn/education', 'am36cotthedgmv102uei7wwyz8fl6fbk', 'UjB9AYDaPtGM5gxaShsefPGGhMWg3e2v');
INSERT INTO `wxset` VALUES ('2', '北京辉达it', '4000-678512', '湖南衡阳岳屏公园', '116.40390583019587', 'uploads/20180227/a966e6e80f8750d2666fc81f28b60ccf.jpg', '39.91517546');
