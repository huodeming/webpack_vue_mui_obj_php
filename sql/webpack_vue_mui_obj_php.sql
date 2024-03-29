CREATE TABLE IF NOT EXISTS news(
id INT PRIMARY KEY AUTO_INCREMENT COMMENT '标识,主键',
title VARCHAR(300) NOT NULL COMMENT '标题',
add_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
edit_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
zhaiyao VARCHAR(500) COMMENT '摘要',
count INT DEFAULT 0 COMMENT '点击数',
img_url VARCHAR(500) COMMENT '图片地址',
content Text COMMENT '内容',
remarks VARCHAR(500) COMMENT '备注,备用字段'
)ENGINE MyISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '新闻表';

INSERT INTO news(title,zhaiyao,img_url,content) VALUE('西施','天生丽质，五官端正，粉面桃花，相貌过人。','img/news/001.jpg','<p>西施浣纱西施，名夷光，春秋战国时期出生于浙江诸暨苎萝村。天生丽质，五官端正，粉面桃花，相貌过人。时越国称臣於吴国，越王勾践卧薪尝胆，谋复国。在国难当头之际，西施忍辱负重，以身许国，与郑旦一起由越王勾践献给吴王夫差，成为吴王最宠爱的妃子。把吴王迷惑得众叛亲离，无心国事，为勾践的东山再起起了掩护的作用。表现了一个爱国女子的高尚思想情操。后吴国终被勾践所灭。吴被灭后，越王勾践班师回朝，携西施以归。越王勾践的夫人潜使人引出，负以大石沉于江中，曰：“此亡国之物，留之何用？”后人不知其事，讹传与范蠡泛舟五湖，不知所终。遂有“载去西施岂无意？恐留倾国误君王”之句。又有言范蠡恐越王复迷其色，乃以计沉于江中，此是错误的说法。</p><p>西施是个浣纱的女子，她在河边浣纱时，清彻的河水映照她俊俏的身影，使他显得更加美丽，这时，鱼儿看见她的倒影，忘记了游水，渐渐地沉到河底。从此，西施这个“沉鱼”的代称流传开来。中国历史中西施是美的化身和代名词，因此她排第一毫无疑问。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('貂蝉','闭月,是东汉末年司徒王允的歌女，国色天香，有倾国倾城之貌。','img/news/002.jpg','<p>貂蝉画像貂蝉，在关汉卿的剧本里记载此女名为任红昌，山西并州(今忻州)人。是东汉末年司徒王允的歌女，国色天香，有倾国倾城之貌。见东汉王朝被奸臣董卓所操纵，於月下焚香祷告上天，愿为主人担忧。王允眼看董卓将篡夺东汉王朝，设下连环计。王允先把貂蝉暗地里许给吕布，在明把貂蝉献给董卓。吕布英雄年少，董卓老奸巨猾。为了拉拢吕布，董卓收吕布为义子。二人都是好色之人。从此以后，貂蝉周旋於此二人之间，送吕布於秋波，报董卓於妩媚，把二人撩拨得神魂颠倒。吕布自董卓收貂蝉入府为姬之后，心怀不满。王允便说服吕布，铲除了董卓，而貂蝉也跟随了吕布。吕布死后貂蝉不知所踪，罗贯中在《三国演义》里只有两个人物没有记载去向，其中就有貂蝉。而根据我对三国的研究，我认为貂蝉最终是跟随了曹操，而关羽之所以后来又反叛曹操投奔刘备，就和貂蝉有关。</p><p>相传貂蝉在后花园拜月时，忽然轻风吹来，一块浮云将那皎洁的明月遮住。这时正好王允瞧见。王允为宣扬他的女儿长得如何漂亮，逢人就说，我的女儿和月亮比美，月亮比不过，赶紧躲在云彩后面，因此，貂蝉也就被人们称为“闭月”了。历史上有很多关于貂蝉的传说，而我看过的就不下十余种版本，其中更是有传说曹操、诸葛亮和关羽等人都被其吸引，可见其美。位居第二，实至名归。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('王昭君','昭君亦有风华绝代之容，倾国倾城之貌，光明汉宫，顾影徘徊，竦动右。','img/news/003.jpg','<p>昭君画像王嫱，号昭君，南郡秭归（今湖北省兴山县）人。汉元帝时以“良家子”入选掖庭的。时，呼韩邪来朝，帝敕以五女赐之。王昭君入宫数年，不得见御，积悲怨，乃请掖庭令求行。呼韩邪临辞大会，帝召五女以示之。昭君亦有风华绝代之容，倾国倾城之貌，光明汉宫，顾影徘徊，竦动左右。帝见大惊，意欲留之，而难于失信，遂与匈奴。昭君出塞后，汉匈两族团结和睦，国泰民安。公元前31年，呼韩邪单于亡故，留下一子，名伊屠智伢师，后为匈奴右日逐王。时，王昭君以大局为重，忍受极大委屈，按照匈奴“父死，妻其后母”的风俗，嫁给呼韩邪的长子复株累单于雕陶莫皋。王昭君的历史功绩，不仅仅是她主动出塞和亲，更主要的是她出塞之后，使汉朝与匈奴和好，边塞的烽烟熄灭了50年，增强了汉族与匈奴民族之间的民族团结，是符合汉族和匈奴族人民的利益的。她与她的子女后孙以及姻亲们对胡汉两族人民和睦亲善与团结做出了巨大贡献，因此，她得到历史的好评。元代诗人赵介认为王昭君的功劳，不亚于汉朝名将霍去病。昭君的故事，成为我国历史上流传不衰的民族团结的佳话。红颜薄命，昭君年仅33岁就香消玉损，离开人世。</p><p>昭君在一个秋高气爽的日子里告别了故土，登程北去。一路上，马嘶雁鸣，撕裂她的心肝；悲切之感，使她心绪难平。她在坐骑之上，拨动琴弦，奏起悲壮的离别之曲。南飞的大雁听到这悦耳的琴声，看到骑在马上的这个绝世倾城的美丽女子，忘记摆动翅膀，跌落地下。从此，昭君就得来“落雁”的代称。以其美貌与贡献，探花一位非她莫属。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('杨贵妃','休花,通晓音律，能歌善舞。','img/news/004.jpg','<p>杨贵妃画像杨贵妃，原名杨玉环，唐代蒲州永乐人(山西永济人)。通晓音律，能歌善舞。最初为唐玄宗的第十八子寿王的王妃，唐玄宗见杨玉环的姿色后，欲纳入宫中为女道士，号太真。天宝四年入宫，得唐玄宗宠幸，封为贵妃父兄均因此而得以势倾天下。贵妃每次乘马，都有大宦官高力士亲至执鞭，贵妃的织绣工就有七百人，更有争献珍玩者。岭南经略史张九章，广陵长史王翼，因所献精美，二人均被升官。于是，百官竟相仿效。杨贵妃喜爱岭南荔枝，就有人千方百计急运新鲜荔枝到长安。后安史之乱，唐玄宗逃离长安，途至马嵬坡，六军不肯前行，说是因为杨国忠(贵妃之堂兄)通于胡人，而致有安禄山之反，玄宗为息军心，乃杀杨国忠。六军又不肯前行，谓杨国忠为贵妃堂兄，堂兄有罪，堂妹亦难免，贵妃亦被缢死于路祠。安史之乱与杨贵妃无关，她成了唐玄宗的替罪羔羊。</p><p>当年杨玉环进宫后，思念家乡。一天，她到花园赏花散心，看见盛开的牡丹、月季……想自己被关在宫内，虚度青春，不胜叹息，对着盛开的花说：“花呀，花呀！你年年岁岁还有盛开之时，我什么时候才有出头之日？”声泪俱下。她刚一摸花，花瓣立即收缩，绿叶卷起低下。哪想到，她摸的是含羞草。这时，被一宫娥看见。宫娥到处说，杨玉环和花比美，花儿都含羞低下了头。因此也就有了羞花的典故。历史记载杨贵妃体态丰腴，很多人理解成胖。可是一个胖女人怎能成为帝王崇爱？我猜想因为当初没有一个词，所以文人不知如何描写，那个词就是“性感”。能与前三位并称中国古代四大美人，说明她有足够的资本，排名第四没有问题。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('冯小怜','天生的尤物，肌肤吹弹可破，吐气如兰。','img/news/005.jpg','<p>冯小怜可说是北齐王妃中最著名的女性了，是中国历史上著名的美人儿，名字紧紧跟在古代四大美女之后。冯小怜是时代北齐后主高纬的淑妃，原是皇后穆黄花身边的侍女，是后来才跃上枝头作凤凰，集三千宠爱于一身。她的娇媚与荒唐，使北齐帝国遭到覆亡的命运。</p><p>据《北史》记载：冯小怜“慧黠，能弹琴，工歌舞”。是一位聪明、漂亮，又有才情的女子。</p><p>据有的野史笔记记载，冯小怜是一个天生的尤物，肌肤吹弹可破，吐气如兰。玉体达到了最佳的黄金分割比例，曲线玲珑，凹凸有致，增一分则肥，减一分则瘦。在冬天软如一团棉花，暖似一团烈火，怀抱就是叫人欲死欲仙的温柔乡；而夏天则润滑如玉，凉若冰块。内挟淫技，宛若处子。与之交接承欢，无不曲尽其妙。使高纬这个久历风月的人，也感到了一种新鲜无比的奇趣与快乐。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('苏妲己','美若天仙、能歌善舞、国色天香的美人。','img/news/006.jpg','<p>妲己，为中国商朝最后一位君主商纣王的宠妃，人称：一代妖姬。传说姓苏，不过有关苏的来源有不同说法：一种说法认为其父亲乃是诸侯苏护；另外一种说法是，妲己来自一个叫苏的部落。</p><p>根据《史记》的记载，妲己是有苏氏诸侯之女，乃一个美若天仙、能歌善舞、国色天香的美人，在商纣王徵伐苏部落时被好酒贪色的纣王掳入宫中，尊为贵妃，极尽荒淫之能事，酒池肉林等乃是纣王为博她欢颜而创，并为了讨好她发明炮烙之刑。后被周武王所杀。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('赵飞燕','能歌善舞，体态纤美，轻盈如燕，相传其能在掌中起舞，故称“飞燕”。','img/news/007.jpg','<p>赵飞燕，原名宜主，江都人（今扬州），赵临的女儿，汉成帝刘骜的皇后，能歌善舞，体态纤美，轻盈如燕，相传其能在掌中起舞，故称“飞燕”。成帝时入宫，为婕妤，后立为皇后。平帝即位后，被废为庶人，自杀而亡。唐代大诗人李白在应玄宗之诏创制“清平调三章”歌颂杨贵妃的艳美时，其中有“借问汉宫谁得似，可怜飞燕倚新妆。”之绝句。可见她的美，在李白心中，占有绝对的席位。在中国，她与晋代绿珠、唐代杨贵妃并称为“古代中国三大杰出女舞蹈家”。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('郑旦','郑旦好剑，性格刚烈。','img/news/008.jpg','<p>影视作品里塑造的“郑旦”郑旦是历史上一位与西施齐名且同样具有爱国情怀的刚烈女子。郑旦好剑，性格刚烈。但多年来，西施是广为人知的“古代四大美女之首”，而郑旦呢，倒是默默无闻，不为人知。</p><p>据说郑旦和西施隔江相住，平时很少见面。郑旦平时听老人们讲西施长得如何如何美，心里就暗自琢磨：自己已经长得很美了，这西施如此受人夸奖，说不定长得比自己还美，何不抽空去看看她，比比看到底谁美。之后郑旦和西施比美的结果人们无从知道，只是传说中，那天，姐妹两个手拉手来到村外的四眼井前，坐在井台上一边说话，一边照影。只见水中两对明眸，4只凤眼，含笑顾盼，相映生辉，把黑洞洞的井底都照亮。从这个故事中，我们可以看出，郑旦的美貌与西施不相上下。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('褒姒','幽王为烽燧大鼓，有寇至则举烽火。','img/news/009.jpg','<p>周幽王和褒姒，西周幽王的宠妃，生卒年不详。褒姒原是一名弃婴，被一对做小买卖的夫妻收养，在褒国（今陕西省汉中西北）长大，公元前七七九年（周幽王三年），周幽王征伐有褒国，褒人献出美女褒姒乞降，幽王爱如掌上明珠，立为妃，宠冠周王宫，翌年，褒姒生子伯服（一作伯般），幽王对她更加宠爱，竟废去王后申氏和太子宜臼，册立褒姒为王后，立伯服为太子，周太史伯阳叹气道：“周王室已面临大祸，这是不可避免的了。”</p><p>果然不出伯阳所预料，原来褒姒因为过不惯宫中生活，加之养父被太子宜臼所杀，心中忧恨，平时很少露出笑容，偶露笑容，更加艳丽迷人，周幽王发出重赏，谁能诱发褒姒一笑，赏以千金，虢国石父献出“烽火戏诸侯”的奇计，周幽王同褒后并驾游骊山，燃起烽火，擂鼓报警诸侯一队队兵马闻警来救，至时发现平安无事，又退兵回去，褒姒看见一队队兵马，像走马灯一样来来往往，不觉启唇而笑，幽王大喜，终回此失信于诸侯，公元前七七一年，犬戎兵至，幽王再燃烽火，诸侯不再出兵救援，幽王被杀，褒姒被掳，（一说被杀），司马迁说：“褒姒不好笑，幽王欲其笑，万方故不知，”（《史记·周本纪》）意思是说，褒姒不喜笑，周幽王为了她一人的笑，天下百姓再也笑不起来了。西周遂亡。</p><p>《史记·周本纪》：褒姒不好笑，幽王欲其笑万方，故不笑。幽王为烽燧大鼓，有寇至则举烽火。诸侯悉至，至而无寇，褒姒乃大笑。幽王说之，为数举烽火。其後不信，诸侯益亦不至。</p>');
INSERT INTO news(title,zhaiyao,img_url,content) VALUE('甄宓','千古留芳的《洛神赋》,为她而写。','img/news/010.jpg','<p>蔡少芬饰演甄宓——电视剧《洛神赋》甄宓，中山无极人，汉太保甄邯的后人，父亲官至上蔡令。三岁时失去父亲，九岁能文识礼，看懂过去的成败得失。建安年，袁绍为次子袁熙取她为妻。后来曹操与袁绍宣战，袁熙被外调出去守幽州，甄氏独自留在冀州。袁绍兵败，曹军将冀州踏平，曹丕趁乱取她为妻，很是宠爱，之后她为丕生下魏明帝及东乡公主。延康元年正月，文帝称帝，封她为文昭皇后。汉亡之后不久，因曹丕得了新宠郭后、阴贵人，甄宓从此失意，有怨言。文帝曹丕得知大怒，二年六月，派遣内使赐死她，葬于邺。曹植为了纪念她，写了千古留芳的《洛神赋》。甄皇后不仅贤德,而且文才出众,留有《甄皇后诗选》，其中的《塘上行》堪称乐府诗歌的典范，脍炙人口，流传至今。她创造发明的“拧旋式”发型很美丽。据载：她初入魏宫，宫中有一绿蛇，她每日梳妆时，此蛇则盘缠成形，她仿效而梳成发型，每天皆同蛇形变化而梳发不同，取名为“灵蛇髻”。</p><p>曹植《洛神赋》中认为甄宓就是水中洛神，以曹子建的智慧能如此赞赏，可见其美艳程度必然要进前十。</p>');
-- INSERT INTO news(title,zhaiyao,img_url,content) VALUE('','','','');
-- show create table news;

-- ==========================================================================================
CREATE TABLE IF NOT EXISTS comment(
	id INT PRIMARY KEY AUTO_INCREMENT COMMENT '标识,主键'
	,cid INT NOT NULL
	,mid INT NOT NULL COMMENT '模块ID,比如1新闻,2图片,3视频'
	,uid INT COMMENT '用户ID,匿名用户为NULL'
	,c_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '留言时间'
	,content VARCHAR(120)
)ENGINE=MYISAM DEFAULT CHARSET=UTF8 COMMENT '留言表';

-- INSERT INTO comment(cid,mid,content) VALUE('1','1','2.4配置访问权限:允许所有，拒绝个别ip（类似黑名单）<RequireAll> Require all granted  Require not ip 192.168.8.106 192.168.8.105 </RequireAll>');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','拒绝所有，允许个别ip（类似白名单） Require all denied  Require ip 192.168.8.107 192.168.8.105');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','根目录（document root）的描述写在httpd.conf里，写在httpd-vhosts.conf无效。');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第4条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第5条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第6条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第7条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第8条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第9条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第10条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第11条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第12条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第13条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第14条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第15条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第16条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第17条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第18条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第19条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第20条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第21条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第22条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第23条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第24条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第25条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第26条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第27条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第28条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第29条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第30条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第31条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第32条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第33条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第34条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第35条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','第36条评论');
-- INSERT INTO comment(cid,mid,content) VALUE('1','1','');

-- ==========================================================================================
CREATE TABLE IF NOT EXISTS img_group(
gid INT PRIMARY KEY AUTO_INCREMENT
,gname VARCHAR(20)
,status TINYINT(1) DEFAULT 1
);
-- INSERT INTO img_group(gname) VALUES('性感美女'),('自然风景'),('美食吃货'),('汽车组图'),('家装家居'),('桌面壁纸'),('动物萌宠');

-- ==========================================================================================
CREATE TABLE IF NOT EXISTS img_main(
id INT PRIMARY KEY AUTO_INCREMENT
,title VARCHAR(50)
,uid INT
,c_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
,m_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
,count INT DEFAULT 0
,remarks VARCHAR(500)
);
INSERT INTO img_main(title,uid,remarks) VALUE('回眸一笑百媚生','1','上次爸妈吵架，吵得不可开交的，我和我七岁的弟弟在旁边看也不敢劝，他们两个你一句我一句地骂，突然老妈词穷了一时语塞，我弟看着老妈说：妈妈，快点，该你啦！');
INSERT INTO img_main(title,uid,remarks) VALUE('六宫粉黛无颜色','1',' 一天，一个小伙子到一家小餐馆吃饭，看到一位漂亮的女孩子坐在那里让他怦然心动，小伙子鼓起勇气走上前跟女孩子搭讪：“你好，你叫什么？”女孩头也不抬地说：“牛肉面，快一点！”');
INSERT INTO img_main(title,uid,remarks) VALUE('去年今日此门中','1','有一次给我妈吵架呢，我妈没吵过我，把我打了。正好我爸回来了，我就冲我爸说：“你小情人被你媳妇打了，你还管不管？”我爸一脸苍白对我说：“你怎么不拉住你妈呀！”');
INSERT INTO img_main(title,uid,remarks) VALUE('人面桃花相映红','1','闺女上幼儿园，总不爱写作业，每次都是监督着才写。早上送她去上学，路上跟她开玩笑说：不如今天别上学了，回家玩吧。没想到她说：你昨天晚上怎么不说？不去上学作业不是白写了！');
INSERT INTO img_main(title,uid,remarks) VALUE('北方有佳人，绝世而独立','1','晚上忙着做饭，两岁的小侄子把门打开要出去玩，我喊他回来他不听，我只能吓唬他说：“快回来，外面有狗。”等我跑过去拉他抬头一看，对门的小姐姐一脸哀怨的看着我！');
INSERT INTO img_main(title,uid,remarks) VALUE('一顾倾人城，再顾倾人国','1',' 昨天买西瓜，旁边大哥掏钱时掉出五十块钱，还没等大哥弯腰去捡，我家二哈跑过去一屁股蹲在钱上，怎么叫都不动，，没办法我只能从包里拿出五十块钱递给大哥。。大哥刚转身准备离开，我家傻狗站起来叼起地上的五十块钱跑去旁边的炸鸡店…');
INSERT INTO img_main(title,uid,remarks) VALUE('待到山花烂漫时','1','前两天，哥几个聚会，我给他们说：“每次媳妇让我买菜，我都虚报价格，然后给自己买两盒好烟，你们有这脑子吗？这叫智慧 ，你们呢？”他们说，他们自己有钱，都....自己买。');
INSERT INTO img_main(title,uid,remarks) VALUE('她在丛中笑','1','第一次去见女友父母，吃饭的时候她妈问：“现在消费那么高，小伙子每个月能挣多少钱呀？”我叹了口气：“唉，没多少，跟要饭的差不多。”她妈一听，高兴地说：“那岂不是每个月赚好几万？不错啊！”我...');
INSERT INTO img_main(title,uid,remarks) VALUE('银烛秋光冷画屏','1','去家门口米线店吃早餐，付完钱我拿了号牌就出顺屁股坐到旁边的位置上，突然我看到地上有五十元钱。我立马站起来一脚踩上去，装做系鞋带，悄悄把钱拿到手心里，从容的站起来。这时候吧台里面传出来老板娘的话：小伙子，别那么紧张。那是你自己掉的。');
INSERT INTO img_main(title,uid,remarks) VALUE('轻罗小扇扑流萤','1','“小珍，你能说出你爸爸今年多大了吗？”幼儿园的老师问。“爸爸今年五岁了。”小珍答道。老师笑了：“小珍，再想一想，难道你爸爸和你一样大？”“是的，我爸爸亲口对我说过，他是从我出生那天开始当爸爸的。”');
INSERT INTO img_main(title,uid,remarks) VALUE('蛾儿雪柳黄金缕','1','某地干旱五月，一农夫遂去问一江湖术士何时有雨，片刻江湖术士递给农夫一折叠好的纸条，并语：因为天机不可泄漏，只有等到下雨那天才能打开看。不久下雨了，农夫遂把纸条打开一看，只见上面写着—今日有雨，农夫感叹，真准。');

INSERT INTO img_main(title,uid,remarks) VALUE('笑语盈盈暗香去','1','女人的世界真心搞不懂啊！昨晚媳妇儿正看电视剧，10点半我让她上床，她不情愿地关了电视.....后来我们就吵架了，到最后搞明白，原因是她关了电视我没夸她真听话。');
INSERT INTO img_main(title,uid,remarks) VALUE('纤腰婉约步金莲','1','客户给我转账，本来应该6000多结果到账87万多，我都震惊了，连忙打电话过去，原来是不小心把验证码当输成金额了。真是贫穷限制了我的想象。。。');
INSERT INTO img_main(title,uid,remarks) VALUE('妖君倾国，犹自至今传','1','和老公看电视，一男的对一女的说：你别那么凶，知道吗温柔是女人最漂亮的衣服。听完这句话，老公看着我幽幽的说道：媳妇，你连条裤衩都没有啊！我。。。');
INSERT INTO img_main(title,uid,remarks) VALUE('妆成不整金钿','1','前段时间，一妹子的签名这样写：我爱你，不是因为你开兰博基尼，住海边别墅，而是那天阳光正好，你穿着一件我喜欢的白衬衫，对，爱情就这么简单。今天她又更新了签名，这样写的：我离开你不是因为你的别墅是租的，兰博基尼是借的，是那天你穿了一双绿袜子，那不是我喜欢的颜色，对，爱情就这么简单。');
INSERT INTO img_main(title,uid,remarks) VALUE('含羞待月秋千','1','昨晚在家里，跟老婆打闹，失手，不小心把老婆打疼了，老婆含着眼泪问我，想怎么死？我回答：用钱砸死我吧！然后，她把儿子的两个大存钱罐拿了过来。。。');
INSERT INTO img_main(title,uid,remarks) VALUE('鲛绡雾縠笼香雪','1','我小时候曾经干过一件很残忍的事：跟邻家女孩过家家拜堂成亲，结婚嘛，就要办酒席吧。于是把婶婶家刚出窝的一群小鸡12只杀个精光，办了一桌全鸡宴。据说那天全村都听到了我的嚎叫声……');
-- INSERT INTO img_main(title,uid,remarks) VALUE('','1','');
-- ==========================================================================================

CREATE TABLE IF NOT EXISTS img_list(
	id INT PRIMARY KEY AUTO_INCREMENT COMMENT '标识,主键'
	,cid INT COMMENT '图片文章(主题),图片来自于哪个文章发表...'
	,gid INT COMMENT '图片分类'
	,title VARCHAR(200) COMMENT '标题'
	,img_url VARCHAR(500) COMMENT '路径'
	,img_url_min VARCHAR(500) COMMENT '缩略图路径'
	,zhaiyao VARCHAR(200) COMMENT '图片简短说明(摘要)'
);
-- 刚开始没有注意这个主题.....加一列上去
-- ALTER TABLE img_list ADD cid INT COMMENT '图片文章(主题),图片来自于哪个文章发表...'  AFTER id;
-- ALTER TABLE img_list ADD img_url_min VARCHAR(500) AFTER img_url;






