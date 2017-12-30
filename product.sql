SET NAMES UTF8;
DROP DATABASE IF EXISTS gaoLuHome;
CREATE DATABASE gaoLuHome CHARSET=UTF8;
USE gaoLuHome;

CREATE TABLE banner(
	bannerid int PRIMARY key AUTO_INCREMENT,
	banner_location VARCHAR(20),
	banner_text VARCHAR(2500)
	);
	INSERT INTO banner VALUES
	(NULL,'indexBanner','images/indexBanner1.png#indexBanner2.png#indexBanner3.png'),
	(NULL,'productBanner','images/productBanner.png'),
	(null,'contactBanner','images/contactBanner.png#400-9920-919#images/QR_code.png'),
	(NULL,'binessBanner','images/binessBanner.png'),
	(NULL,'processBanner','images/processBanner.png'),
	(NULL,'processHtml','<h2 class="h2 describeh2">双轮发酵描述</h2><i class="line linedescribe"></i>
			<div class="describe">所谓双轮发酵，是将经过一次发酵后的酒醅不经过蒸馏，混入新料再进行发酵，由于经过两次发酵，
			发酵时间长，各种微生物生化反应增强，所以此酒香味尤为浓郁、酸、酯含量高。</div>
			<h2 class="h2">原料处理</h2><i class="line"></i>
			<p class="describe">浓香型白酒生产所使用的原料主要是高粱，但也有少数酒厂使用多种谷物原料 
			 浓香型白酒混合酿酒的。以糯高粱为好，要求高粱籽粒饱满、成熟、干净、
			 淀粉含量高。原料高粱要先进行粉碎。目的是使颗粒淀粉暴露出来，增加原料表面
			 积，有利于淀粉颗粒的吸水膨胀和蒸煮糊化，糖化时增加与酶的接触，为糖化发酵
			 创造良好的条件。但原料粉碎要适中，粉碎过粗，蒸煮糊化不易透彻，影响出酒；
			 原料粉碎过细，酒醅容易发腻或起疙瘩，蒸馏时容易压汽，必然会加大填充料用量，影响酒的质量。</p>
			<h2 class="h2 describeh2">糟·出窖</h2><i class="line describeh2"></i>
			<P class="describe">酒厂把酒醅及酒糟统称为糟。浓香型酒厂均采用经多次循环发酵的酒醅(母糟、老糟)进行配料，人们把这种糟称为“万年糟”。
			“千年老窖万年糟”这句话，充分说明浓香型白酒的质量与窖、糟有着密切关系。</P>
			<h2 class="h2 describeh2">配料·拌和</h2><i class="line describeh2"></i>
			<p class="describe">配料在固态白酒生产中是一个重要的操作环节。配料时主要控制粮醅比和粮  浓香型白酒糠比，
			蒸料后要控制粮曲比。配料首先要以甑和窖的容积为依据，同时要根据季节变化适当进行调整。　
			配料要做到“稳、准、细、净”。对原料用量、配醅加糠的数量比例等要严格控制，并根据原料性质、
			气候条件进行必要的调节，尽量保证发酵的稳定。酿制浓香型酒，除了以高粱为主要原料外，
			也可添加其他的粮谷原料同时发酵。多种原料混合使用，充分利用了各种粮食资源，
			而且能给微生物提供全面的营养成分，原料中的有用成分经过微生物发酵代谢，产生多种副产物，
			使酒的香味、口味更为协调丰满。“高粱香、玉米甜、大米净、大麦冲”是人们长期实践的总结。 　
			　</p>
			<h2 class="h2 describeh2">蒸酒蒸粮</h2><i class="line describeh2"></i>
			<p class="describe">“生香靠发酵，提香靠蒸馏”，说明白酒蒸馏相当重要。蒸馏之目的，一方面要使成熟酒醅中的酒精成分、
			香味物质等挥发、浓缩、提取出来；同时，通过蒸馏把杂质排除出去，得到所需的成品酒。</p>
			<h2 class="h2 describeh2">粮糟入窖</h2><i class="line describeh2"></i>
			<p class="describe">粮糟入窖前，先在窖底撒上l~1.5kg大曲粉，以促进生香。第一甑料入窖温度可以略高，
			每入完一甑料，就要踩紧踩平，造成厌氧条件。粮糟入窖完毕，撒上一层稻壳，再入面糟，
			扒平踩紧，即可封窖发酵。入窖时，注意窖内粮糟不得高出地面，
			加入面糟后，也不得高出地面50cm以上，并要严格控制入窖条件，包括入窖温度、酸度、
			水分和淀粉浓度。</p>
			<h2 class="h2 describeh2">封窖发酵</h2><i class="line describeh2"></i>
			<p class="describe">封窖 粮糟、面糟入窖踩紧后，可在面糟表面覆盖4~6cm的封窖泥。
			封窖泥是用优质黄泥和它的窖皮泥踩柔和熟而成的。将泥抹平、抹光，以后每天清窖一次，
			因发酵酒醅下沉而使封窖泥出现裂缝，应及时抹严，直到定型不裂为止，再在泥上盖层塑料薄膜．
			膜上覆盖泥沙，以便隔  浓香型白酒热保温，并防止窖泥干裂。 　　
			</p>
			<h2 class="h2 describeh2">贮存与勾兑</h2><i class="line describeh2"></i>
			<p class="describe">贮存与勾兑是白酒生产中的重要工艺环节，是提高酒质的必要技术手段。
			常见的白酒贮存容器有陶质容器、金属容器、塑料容器、血料容器、水泥池容器等。
			白酒贮存重点是利用贮存容器对原浆酒的净化、对不同等级的酒进行老熟。
			勾兑主要是对不同的基酒进行组合和根据不同基酒选择调味酒,以及勾兑用水的净化处理。
			白酒（主要指固态发酵白酒）的生产工艺是由制曲、酿造、勾调三大技术构成，
			而勾调技术是酿酒技术人员在长期的实践中积累、总结和发展起来的白酒生产主要工艺，
			勾调技术在白酒生产中起着改善酒质，稳定产品质量、提高产品档次、突出产品风格、
			提高优质品率、创造更大的经济效益的重要作用。尽管在各个酒厂，
			勾兑和调味工艺的具体内容，工艺要求和操作方法不尽相同，但一般说来，
			勾兑和调味主要是由半成品酒勾兑和基础酒调味两部分组成。
			如上所述，勾兑调味工序是白酒生产中的重要一环。</p>
		'),

	(NULL,'binessHtml','
		<div class=binessTitle>
			<h1><span>高炉家酒<i>|</i>blast home wine</span></h1>	
			<img src=images/logo_title.png alt="logo_title.png"/>
			<p>
				高炉家酒，产自于安徽省涡阳县的双轮集团。
				是安徽省最大的酿酒基地，被冠以“徽酒文化第一家”美名、有55年酿造历史的高炉家酒就产自这里。
				有酒就有文化。“徽酒”与”家文化”是高炉家酒品牌建设的两张主打牌。作为一个重视文化内涵的品牌，
				高炉家酒有着良好的市场表现。早在2004年，该酒仅在安徽的销售额就有近6亿元。
				并连续4年蝉联安徽省白酒销售第一，2010年6月，高炉家酒被评为“中国优质产品 ”
			</p>
			<div class="binessDl">
				<dl>
					<dt>中文名:	高炉家酒</dt>
					<dt>地  点:安徽省涡阳县</dt>
				</dl>
				<dl>
					<dt>隶属于:安徽双轮酒业有限责任公司</dt>
					<dt>荣 誉 :中国优质产品</dt>
				</dl>
			</div>
		</div>
		<div class="binessBody">
			<ul class="binessNav">
				<li id="profile" class="binessActive">特产简介</li><li id="history">追溯历史</li><li id="brand">品牌塑造</li><li id="GLHome">高炉家酒</li>
			</ul>
			<div class="binessText"></div>
		</div>'),
	(NULL,'profile','
		<p>	  高炉家酒产于安徽双轮酒业有限责任公司（其前身安徽高炉酒厂始建于1949年9月）
		坐落在老子故里安徽省涡阳县高炉镇，是安徽的著名商品。高炉家酒产品主要有“高炉”、“高炉家”、
		“和谐年份”等三大系列，高、中、低档9个品种。高炉家酒以世代相守的祖传工艺而酿制，其“浓香入口，
		酱香回味”的和谐口感，“浓酱相融，中庸和谐”的和谐品质，“偏高温制曲，原生态酿造”的和谐工艺，
		被白酒界专家和国家质量检测中心的领导称赞为“浓头酱尾”特点突出，口感和谐，品质一流。
		广大消费者也普遍反映该酒“入口绵、回味甜，感觉舒服”。</p>
		<p> “汉三杰闻香下马，高炉酒十里飘香”，千年古镇高炉自古就以“酒乡”著称。高炉的酿酒，
		早在春秋时期，道教鼻祖老子曾沿涡河顺流而下，行至高炉，见此处土肥水美，民风淳朴，
		于是欣然驻足，开坊烧酒，诚招天下文人骚客，把酒临风，共叙人生、宇宙，
		而“老子家酒”的美誉也随着多情的涡河水广为流传。新世纪的2001年，在徽酒系的主要源头，
		中国名酒古井贡的故乡，位邻淮河水系涡阳的高炉古镇，安徽酒业大户、
		中国第五大酿酒基地的安徽双轮集团推出了第一款以徽派家文化为背景的高炉家酒，
		成为了国内继孔府家酒之后的第二个以“家”文化为内涵的白酒品牌。</p>
		<p>简单的梭形陶土瓶加上一个纸制外盒，无一点奢华。而就这么一支单品价格50元左右的酒，
		至2004年，连续四年占据安徽白酒销售第一，且2004年的销量达6亿之多，
		创造了安徽酒界的一个奇迹，并在白酒界中产生了“高炉家现象”。成为了华东区域的强势品牌，
		并通过华南以广东为核心的市场建设而正在成为一个全国品牌的后起新秀。
		</p>
		<p>从2001年上市起，高炉家酒每到一处终端，
		都在终端门面四周悬挂展示中国传统文化中喜庆吉祥如意的大红灯笼，
		上面一个大大的家字足以给予终端和消费者心理一个消费的最佳理由。</p>
		'),
	(NULL,'history','
		<p>相传三国枭雄曹操击退袁绍之后,曾屯兵高炉镇.开坊烧酒,犒赏将士.
		从此古老的酿酒工艺便在高炉代代相传.每当粮丰谷满时,家家都用世代相守的家传工艺
		酿出自家美酒以求来年风调雨顺.出酒之日，户户都张灯结彩，用上好的陶罐将自家酿造的美酒封
		存起来,贴上红纸,写上自家姓氏.旦逢往来商贾远游乡人,便将这独特的家酒带到四方.
		高炉家酒也因其醇厚地道的品质而美名远扬.末代皇帝溥仪曾御笔钦书“汉三杰闻香下马,
		高炉酒十里飘香”。
		</p>
		<p>“高炉家酒”为消费者喜爱的白酒,　安徽拥有众多的白酒品牌,市场竞争十分激烈。
		安徽双轮集团近期推出的“高炉家酒”,在众多品牌中脱颖而出,销售势头十分“火爆”。
		为了详实地了解其热销的原因及消费者对“高炉家酒”的认可度,
		安徽省消费者协会专门对安徽双轮集团的“高炉家酒”进行了一次消费评价调查。</p>
		<p>	 本次评价调查历时23天,主要通过上门走访、函寄问卷及网上调查三种方式进行。
		调查范围主要是亳州市,上门走访并函寄了300份调查表。</p>
		<p> 被调查人群对“高炉家酒”喜爱程度较高,消费者对“高炉家酒”口感认可度较高;
		消费者认为“高炉家酒”的包装风格独特,文化气息浓郁、具有亲和力。</p>
		<p>省消费者协会依据悄费者反馈情况,根据《消费者权益保护法》有关条例,
		决定郑重推荐“高炉家酒”为消费者喜爱的白酒。</p>
		'),
	(NULL,'brand','
		<p> 一、整体上布局的品牌规划双轮上安家：“成家”之初双轮集团的产品都是以“双轮”为核心，
		专注于酒的工艺内涵品牌的树造。且产品线规划都是以低端为主，如双轮池、双轮王、五味双轮王等酒，
		在安徽及周边市场中占有很高的市场份额。有着“双轮走天下，好酒是一家”之势。
		经过多方的市场调研和讨论，最终创意的火花果断跳出，离开“双轮”的低端阴影，
		选定以“家”为核心概念做文章，才有了今天的高炉家酒的系列品牌。
		应该说高炉家酒是企业整体品牌规划的产物。</p>
		<P>二、产品力方面：对于产品的包装没有花费太多的精力，只是突显出徽文化之家的概念而已，
		而是把最主要的关注放在了产品的品质上。通过在度数、酒味、香度、口感等方面的充分调研和调试，
		取得了消费者的满意认可。如把度数从安徽当时主流的46度至50度，
		调整为略低而又不失酒的口感的43度，使得很多消费者感到酒量上升了。</P>
		<P>此外，为维护主力产品的市场地位，充分科学地应用品牌线的延伸应对竞争。
		为应对高端强促销的打压之势，立刻开发出相应的“高炉家传世经典”系列而对竞争，
		有效地维护了市场的稳定和占有率。而对于低端掠夺，则以价位相当的“老高炉”驻起了低端的“防火墙”。
		如此做法，有效地保护了主力价位空间的高炉家主品牌的市场地位稳定。</P>
		<P>“在家的时候，总是想着朋友；和朋友在一起，又总是牵挂着家。其实，家和朋友的距离，
		有时仅仅是一杯酒”万变不离其宗，“高炉家”在保证产品优等质量的基础上，秉承“和商、诚信、
		共赢”的经营理念，在金融风暴中临危不惧，开发资源，诚信营销，知恩图报，
		占据消费者的心，为其畅销迎来不可多得的机遇。</P>
		'),
	(NULL,'GLHome','
		<div>
			<P>高炉家和谐年份酒 是安徽双轮酒业新推出的一款追究卓越品质与时代相容的中高端新品，
			首先它出自具有百年窖池的酿造车间，历史久远的木质大梁，纯人工操作的酿酒工艺，百年历史的窖池，
			保证了高炉家·和谐年份酒的酒体香味和谐，绵柔悠长，也充分领略了双轮发酵，双重窖藏的白酒酿造工艺</P>
			<p>高端品质是高炉家·和谐年份酒的极致追究，高炉家和谐年份酒（30年）
			在上海世博会国际信息发展网馆的展示中，被由联合国经济及社会理事会授权永久1类咨商地位
			和联合国计划开发署WINNER&TIPS项目执行结构——国际信息发展组织冠予“千年优秀奖”荣誉称号。</p>
			<img src="images/binessImg.png" alt="binessImg.png" />
		</div>
		
		<p>定位于“中国和谐型高端年份酒”高炉家和谐年份系列产品是凝聚高炉酿酒人拳拳匠心的产品，
		也是高炉酒厂60年磨一剑的一个系列产品。高炉家和谐年份系列产品，以“双轮发酵，双重窖藏”
		为核心工艺支撑。其中双轮发酵是高炉家独有的酿造工艺，它以140天明清老窖超长“窖育”，
		通过两轮同法不同料续渣混蒸发酵，以不可言传的绝密工艺流程，一轮塑酒体清晰，二轮提醇香馥郁。
		双重窖藏即原酿窖藏和原度窖藏。通过分级摘酒摘得上等原酿，以传统封藏工艺封坛，
		送入常年恒温的地下酒窖，开始第一重“原酿窖藏”，保证原酿美酒口感醇厚、陈香突出。
		老熟的原酿美酒经国家级酿酒大师虔心调味，再经第二重“原度窖藏”，使得美酒口感更加和谐柔顺。</p>
		'),
	
	(NULL,'news','买酒请认准纯粮固态发酵'),
	(NULL,'news','白酒收藏首先就要看酒本身的品质'),
	(NULL,'news','合肥公务接待用酒要用徽酒'),
	(NULL,'news','吃货的喜讯，酒鬼的佳音'),
	
	(NULL,'brief','安徽双轮酒业有限责任公司坐落在“老子故里”安徽省涡阳县的高炉镇， 高炉酒厂建于1949年9月，与共和国同龄。安徽高炉酒厂系全国浓香型白酒第二协作会副会长厂，
		其生产基地是全国浓香型大曲酒最好的生产基地之一。现有大曲发酵池近20000条，其中具有百年历史的老窖池5000条，年产各类优质白酒6万多吨。拥有员工2000多人，各类技术人员680多人，土地面积近1000亩。
		双轮酒业拥有注册商标306个，其中：中国驰名商标2个、安徽省著名商标4个、安徽省名牌产品2个。<button>显示更多</button><span>拥有国家各类技术专利30多项，是中国白酒业拥有商标、专利最多的企业之一。现主要经营高炉家品牌系列酒与高炉双轮封坛品牌系列酒，
		企业的两大战略品牌分别聚焦于中高档、中档、中低档白酒主流消费价格带。定位于“中国和谐型高端年份酒”的高炉家和谐年份系列、高炉封坛酒列产品，以“双轮发酵，双重窖藏”为核心工艺支撑，发展真年份，更健康等款产品，前瞻性的覆盖白酒市场政商务消费主流群体。
		目前，双轮酒业按照现代企业制度的要求，逐步建立了产权明晰、管理科学、责权分明的内部经营管理体制，确立了“客户至上、坦诚、合作无间、主人思维、理想”的企业价值观，明晰了“酿制美酒，酿造欢乐” 的企业使命,树立了“努力建设一家162年的企业”的企业理想。
		未来的双轮酒业将通过明晰战略方向、强化内部管理、提升产品品质、创新营销策略等一系列保障措施，实现销售收入和盈利能力持续快速增长。为了迅速将“双轮池纯粮系列”酒推向全国市场，本着“塑造品牌、诚信经营、长期合作、互惠双赢”的营销理念和发展思路，现面向全国部分省、市诚招经销商。</span>'),
	
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#108#images/newProduct1.0.png#images/newProduct1.1.png
		#images/newProduct1.2.png#images/newProduct1.3.png#460ML#40℃'),
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#98#images/newProduct2.0.png#images/newProduct2.1.png
		#images/newProduct2.2.png#images/newProduct2.3.png#450ML#45℃'),
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#165#images/newProduct3.0.png#images/newProduct3.1.png
		#images/newProduct3.2.png#images/newProduct3.3.png#500ML#42℃'),
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#135#images/newProduct4.0.png#images/newProduct4.1.png
		#images/newProduct4.2.png#images/newProduct4.3.png#500ML#52℃'),
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#118#images/newProduct5.0.png#images/newProduct4.1.png
		#images/newProduct5.2.png#images/newProduct5.3.png#500ML#46℃'),
	(null,'newProduct','高炉家酒#高炉家和谐年份5年#126#images/newProduct6.0.png#images/newProduct5.1.png
		#images/newProduct6.2.png#images/newProduct6.3.png#500ML#43℃');

CREATE TABLE news(
	newsId INT PRIMARY KEY AUTO_INCREMENT,
	newsTitle VARCHAR(20),
	newsTex VARCHAR(1800));
	INSERT INTO news VALUES
	(null,'买酒请认准纯粮固态发酵','
			<p>纯粮固态发酵是一种白酒酿酒工艺，纯粮固态发酵白酒是采用完全传统的酿酒工艺，
				以粮食为原料，经粉碎后加入曲料，在泥池或陶缸中自然发酵一定时间，经高温蒸馏后生产出来的白酒。
				制作过程中，对选料、生产用水、制曲过程、窖池数量、入窖固态发酵、蒸馏、贮藏、勾兑、
				灌装等现代化的理化分析程序都有一定的要求。
			</p><p>
			纯粮固态发酵白酒按糖化发酵剂可分为大、小、麸曲酒及其混合曲发酵白酒等。
				按香型可分为浓香型白酒、清香型白酒、酱香型白酒、米香型白酒、兼香型白酒、芝麻香型白酒、特香型白酒、
				凤香型白酒、药香型白酒等</p>
			<h3>白酒生产工艺的具体要求</h3>
			<h4>原料要求</h4>
			<p>生产纯粮固态发酵白酒的主要原料要求符合相关标准，必须是高梁、玉米、小麦、大米、糯米、大麦、荞麦、
				青稞等粮食和豆类等（不包括薯类与果蔬类），颗粒均匀饱满、新鲜、无虫蛀、无霉变、干燥适宜、无泥沙、
				无异杂味、无其它杂物。
			</p>
			<h4>生产条件的要求</h4>
			<p>纯粮固态发酵白酒的生产必须具备良好的环境条件，生产企业必须具备齐全的纯粮固态发酵白酒生产装备及必要检测手段，
				建议采用ISO9000质量保证体系、ISO14000环境保证体系和HACCP食品安全保证体系及完善的产品质量检测系统生产出纯
				粮固态发酵白酒。使用纯粮固态发酵白酒标志的产品必须要有足够的生产能力（如窖池数量等）相匹配。
			</p>
			<h4>工艺要求</h4>
			<p>根据不同类型白酒的特点按照其传统的工艺要求，用曲经固态糖化、固态发酵、固态蒸馏后贮存、勾兑制得的白酒产品。
			</p>
			<p>从配料、蒸粮、糖化、发酵、蒸酒等生产过程中都采用固体状态流转而酿制的白酒，才能称为固态发酵白酒。鼓励采用合理的生物技术提高酒醅的质量。 ⑷蒸馏：主要采用甑桶作容器（半固态法出外）进行缓慢蒸馏，量质摘酒，分批入库，还可采取将黄水、酒尾倒入锅底进行蒸馏等措施。
			</p>
			<h4>贮藏</h4><p>
			贮酒容器最好是在放在陶坛中，更大的贮存容器可用不锈钢等作材质，尽量不采用金属铝质容器。贮酒应采用自然老熟，禁止用催化剂等化学方法催陈。
			</p><h4>勾兑</h4><p>
			允许用不同轮次和不同等级的酒及各种调味酒进行勾调，绝不允许配加混合香酯和非白酒发酵的香味物质。</p>
			<p>灌装：成品酒经过检验合格后，方可灌瓶贴标。标签上标注的内容要符合GB7718-2004 预包装食品标签通则、GB10344饮料酒标签标准及《全国白酒行业纯粮固态发酵白酒行业规范》等的规定。
			</p>'),
	(null,'吃货的喜讯，酒鬼的佳音','
		<p>吃货的喜讯，酒鬼的佳音,喝“柔和美酒”精彩不断，恭喜以下20名幸运粉丝获赠幸运直通券一张，凭此券到指定酒店消费，即可获赠一道特色菜及248ML柔和种子酒1瓶。第七波中奖名单出炉了： 张国盛、我怀恋得、福临门、随随Ruya 、满满、美洁、今日 复明日 、老钱 、小飞、刘龙龙，会宾楼、不言盛景 、睿王宣辰、天天出太阳、 糊糊、裕隆、陈涛、大灰狼、合肥百兴小朱 、我爱向阳花、合肥论坛蚂蚱 。 
		请以上20名幸运粉丝尽快发送您的姓名和联系方式到“合肥金种子商贸”官方微信，我们将派专人派发幸运直通券。</p>'),
	(null,'白酒收藏首先就要看酒本身的品质','
        <p>中国品牌战略学会首席专家杨清山先生说，中国的高端白酒收藏这个概念最近几年才朦胧出现，
        中国的顶级白酒收藏正在由萌芽阶段向有意识、有目的的购买阶段发展。杨清山先生认为，
        只有具备以下5个条件的白酒才有收藏价值：具备重大纪念意义；具有较长历史；
        具有独特品牌文化价值；具有稀缺性和储值价值。</p><p>

        面对众多美酒，哪些是最具有收藏投资价值的呢？白酒收藏首先就要看酒本身的品质，只有本身品质优良的酒才具有收藏价值。在此基础上，
        历史文化内涵深厚、艺术价值高、具有品牌价值或者考古发掘出来的酒更具有收藏价值。</p>

        <h3>第一，选择历史文化内涵深厚的酒进行收藏；</h3><h3>

        第二，选择艺术价值高的酒进行收藏；</h3><h3>

        第三，选择具有品牌价值的酒；</h3><h3>

        第四，白酒的存放时间也很重要，时间会令美酒更加醇厚、更具有价值，10年、20年和50年的名酒一般都具有收藏价值。</h3><h3>

        <p>以真正的现代收藏观念衡量，恐怕只有泸州老窖公司出品的国窖1573和号称“中国白酒第一坊”的水井坊，
        因为包装上做出的创新，具备一定的鉴赏价值，至于这两个品牌的产品在收藏之后具有多大的升值空间，
        那还真不好说，毕竟酒厂投放到市场上的量比较大，是不是会升值，要看市场对存量的消化速度了。
        据说，酿造国窖1573的国宝窖池始建于明朝万历年间（公元1573年），是我国建造最早、保存最完好、
        连续使用至今的酿酒窖池群，至今已历430余载。</p><p>

        白酒收藏由来已久，中国人一直有藏酒的习惯。
        老酒收藏最初大多是因为其市场价值，更多关注的是升值潜力，但随着时间的推移，
        这些投资者和收藏家开始对酒所体现出的文化价值以及通过实物对中国近现代酒文化演变的探寻成为关注的目标，
        培养出一批关注白酒收藏的收藏者和投资者。</p><p>

        白酒收藏与其他收藏品一样，关键在于藏品背后承载的文化，白酒具有悠久的酒文化，越是珍品荟萃、独具特色的品类，
        其文化底蕴越厚重，价值也不菲。对于那些具有历史、在当代也发展较好的高端白酒而言，只要保存妥善，发行量越少，
        保存时间越久，利润空间也就越大。高端白酒收藏市场需求量从未下降，
        一位收藏爱好者表示，如今年份老酒的投资收藏属于价值洼地，此时“建仓”时机最佳。</p><p>

        在白酒收藏与投资市场中，茅台、泸州老窖等顶级白酒品牌是其中较受欢迎的品牌。
        此外，像在20世纪不同时期曾被评选为首届中国“四大名酒”、“八大名酒”等的知名白酒品牌也深受收藏爱好者欢迎。
        在最近几年白酒收藏热的推动下，茅台、泸州老窖、汾酒、西凤酒等知名白酒品牌，也开始发力白酒收藏市场，
        纷纷推出高端收藏酒，不仅注重产品的口感和品质，更注重收藏级白酒的包装和设计。</p><p>

        关注白酒后面的白酒文化是白酒收藏的最终价值所在，白酒文化是我国特有的文化形态，
        高端白酒收藏的火爆得益于白酒文化的推广普及，地方政府、知名酒企在白酒产业园、白酒鉴赏会、
        白酒收藏展等多方面的付出已经收到部分成效，
        白酒文化并没有随着传统文化的淡薄而消退，反而使得普通消费者更加注重和珍惜白酒文化。
        加之当前我国理财方式较少，能够保本增值的渠道明显不够，消费者需要借助收藏市场来实现财富最大化，
        从这个意义上来讲，高端白酒收藏已经成为中产人群重要的理财工具。</p>'),
	(null,'合肥公务接待用酒要用徽酒','
　　<p>接待对象需用餐的，接待单位应安排自助餐或工作简餐，餐费每天不超过90元/人,不含早餐。原则上不安排宴请，
	确需宴请的，须经本单位负责人批准，不得超过一次，宴请标准应低于100元/人，接待酒水应当选用安徽本省产品。
	陪餐人员原则上不得超过接待对象人数。</p><p>接待对象需要安排住宿的，住宿费原则上由接待对象支付。接待经费不得包含娱乐、
	健身以及纪念品、土特产、礼金、有价证券等支出。</p>');
	
-- 留言表		-- 
CREATE TABLE message(
	messageId INT PRIMARY KEY AUTO_INCREMENT,
	messageType VARCHAR(20),
	messageName VARCHAR(50),
	messageContact VARCHAR(35),
	messageText VARCHAR(500));
-- 产品表
CREATE TABLE product(
	productId INT PRIMARY KEY AUTO_INCREMENT,
	chuchang varchar(64),
	name varchar(64),
	price float(7,2),
	pic_A varchar(64),
	pic_B varchar(64),
	pic_C varchar(64),
	pic_D varchar(64),
	rongliang varchar(64),
	du varchar(64)
	);
	insert into  product values
	(null,'高炉家酒','高炉家和谐年份5年','109','images/1.0.png','images/1.1.png','images/1.2.png','images/1.3.png','420ML','40.6℃'),
	(null,'高炉家酒','高炉家和谐年份6年','115','images/2.0.png','images/2.1.png','images/2.2.png','images/2.3.png','420ML','40.6℃'),
	(null,'高炉家酒','高炉家和谐年份8年','139','images/3.0.png','images/3.1.png','images/3.2.png','images/3.3.png','500ML','40.8℃'),
	(null,'高炉家酒','高炉家和谐年份10年','288','images/4.0.png','images/4.1.png','images/4.2.png','images/4.3.png','420ML','42.6℃'),
	(null,'高炉家酒','高炉家和谐年份15年','388','images/5.0.png','images/5.1.png','images/5.2.png','images/5.3.png','460ML','43℃'),
	(null,'高炉家酒','高炉家和谐年份20年','688','images/6.0.png','images/6.1.png','images/6.2.png','images/6.3.png','500ML','43℃'),
	(null,'高炉家酒','高炉家和谐年份30年','888','images/7.0.png','images/7.1.png','images/7.2.png','images/7.3.png','500ML','52℃'),
	(null,'高炉家酒','高炉家传世经典(新红家) ','128','images/8.0.png','images/8.1.png','images/8.2.png','images/8.3.png','500ML','42℃'),
	(null,'高炉家酒','高炉家 五谷老高炉','99','images/9.0.png','images/9.1.png','images/9.2.png','images/9.3.png','500ML','42℃'),
	(null,'高炉家酒','精品水晶高炉家 ','99','images/10.0.png','images/10.1.png','images/10.2.png','images/10.3.png','450ML','41℃'),
	(null,'高炉家酒','高炉家 普家','88','images/11.0.png','images/11.1.png','images/11.2.png','images/11.3.png','500ML','52℃'),
	(null,'高炉家酒','高炉家瓷瓶装','98','images/12.0.png','images/12.1.png','images/12.2.png','images/12.3.png','500ML','52℃'),
	(null,'高炉家酒','高炉家-和谐家浓香型白酒','168','images/13.0.png','images/13.1.png','images/13.2.png','images/13.3.png','420ML','42℃'),
	(null,'高炉家酒','高炉家和谐家酒','108','images/14.0.png','images/14.1.png','images/14.2.png','images/14.3.png','420ML','42℃'),
	(null,'高炉家酒','高炉家酒-水晶新品','118','images/15.0.png','images/15.1.png','images/15.2.png','images/15.3.png','500ML','41℃'),
	(null,'高炉家酒','高炉家酒-迎客松酒浓香型','288','images/16.0.png','images/16.1.png','images/16.2.png','images/16.3.png','500ML','41℃'),
	(null,'高炉家酒','高炉家-上善若水','320','images/17.0.png','images/17.1.png','images/17.2.png','images/17.3.png','500ML','38℃'),
	(null,'高炉家酒','高炉家-老糟坊小酒','158','images/18.0.png','images/18.1.png','images/18.2.png','images/18.3.png','500ML','52℃'),
	(null,'高炉家酒','高炉家-原浆浓香小酒','140','images/19.0.png','images/19.1.png','images/19.2.png','images/19.3.png','500ML','45℃'),
	(null,'高炉家酒','高炉家-老字号5年浓香白酒','98','images/20.0.png','images/20.1.png','images/20.2.png','images/20.3.png','450ML','40℃'),
	(null,'高炉家酒','高炉家-浓香型白酒原浆5年','99','images/21.0.png','images/21.1.png','images/21.2.png','images/21.3.png','450ML','40℃'),
	(null,'高炉家酒','高炉家-双轮池红富贵','60','images/22.0.png','images/22.1.png','images/22.2.png','images/22.3.png','500ML','45℃'),
	(null,'高炉家酒','高炉家-迎客松酒浓香型100年','188','images/23.0.png','images/23.1.png','images/23.2.png','images/23.3.png','500ML','41℃'),

	(null,'高炉家酒','高炉家-和谐家浓香型白酒','158','images/13.0.png','images/13.1.png','images/13.2.png','images/13.3.png','420ML','42℃'),
	(null,'高炉家酒','高炉家和谐家酒','118','images/14.0.png','images/14.1.png','images/14.2.png','images/14.3.png','420ML','42℃'),
	(null,'高炉家酒','高炉家酒-水晶新品','108','images/15.0.png','images/15.1.png','images/15.2.png','images/15.3.png','500ML','41℃'),
	(null,'高炉家酒','高炉家酒-迎客松酒浓香型','268','images/16.0.png','images/16.1.png','images/16.2.png','images/16.3.png','500ML','41℃'),
	(null,'高炉家酒','高炉家-上善若水','320','images/17.0.png','images/17.1.png','images/17.2.png','images/17.3.png','500ML','38℃'),
	(null,'高炉家酒','高炉家-老糟坊小酒','158','images/18.0.png','images/18.1.png','images/18.2.png','images/18.3.png','500ML','52℃'),
	(null,'高炉家酒','高炉家-原浆酒浓香收藏型','138','images/19.0.png','images/19.1.png','images/19.2.png','images/19.3.png','500ML','45℃'),
	(null,'高炉家酒','高炉家-老字号5年','99','images/20.0.png','images/20.1.png','images/20.2.png','images/20.3.png','450ML','40℃'),
	(null,'高炉家酒','高炉家-浓香型白酒原浆5年','99','images/21.0.png','images/21.1.png','images/21.2.png','images/21.3.png','450ML','40℃'),
	(null,'高炉家酒','高炉家-双轮池红富贵','66','images/22.0.png','images/22.1.png','images/22.2.png','images/22.3.png','500ML','45℃'),
	(null,'高炉家酒','高炉家-迎客松酒浓香型100年','198','images/23.0.png','images/23.1.png','images/23.2.png','images/23.3.png','500ML','41℃');

-- 用户表
CREATE TABLE user(
	useId int PRIMARY key AUTO_INCREMENT,
	uname varchar(64),
	upwd varchar(64),
	actualName VARCHAR(10),
	uphone VARCHAR(11),
	city VARCHAR(100)
	);
	-- INSERT INTO user values
	-- (null,'jsj188508','jsj228'),
	-- (null,'188508jsj','jsj228'),
	-- (null,'jsj','jsj228');
-- 购物车表
CREATE TABLE ugou(
	ptId int PRIMARY key AUTO_INCREMENT,
	uname varchar(10),
	productName varchar(20),
	cj varchar(20),
	productImg varchar(35),
	price VARCHAR(5),
	du VARCHAR(5),
	rongliang VARCHAR(5),
	num VARCHAR(3),
	sumPrice float(10,2)
	);
-- 市表
CREATE TABLE freight_city(
	city_id INT PRIMARY KEY AUTO_INCREMENT,
	city VARCHAR(10),
	cits VARCHAR(100)
	);
	INSERT INTO freight_city values
	(null,'北京',''),
	(null,'天津',''),
	(null,'上海',''),
	(null,'重庆',''),
	(null,'河北','石家庄市唐山市秦皇岛市邯郸市邢台市保定市张家口市承德市沧州市廊坊市衡水'),
	(null,'山西','太原市大同市阳泉市长治市晋城市朔州市晋中市运城市忻州市临汾市吕梁'),
	(null,'内蒙古','呼和浩特市包头市乌海市赤峰市通辽市鄂尔多斯市巴彦淖尔市乌兰察布市锡盟'),
	(null,'辽宁','沈阳市大连市鞍山市抚顺市本溪市丹东市锦州市营口市阜新市辽阳市盘锦市铁岭市朝阳市葫芦岛'),
	(null,'吉林','长春市吉林市四平市辽源市通化市白山市松原市白城市延边'),
	(null,'黑龙江','哈尔滨市齐齐哈尔市鸡西市鹤岗市双鸭山市大庆市佳木斯市七台河市牡丹江市绥化市'),
	(null,'江苏','南京市无锡市徐州市常州市苏州市南通市淮安市盐城市扬州市镇江市泰州市宿迁市连云港'),
	(null,'浙江','杭州市宁波市温州市嘉兴市湖州市绍兴市金华市衢州市舟山市台州市丽水'),
	(null,'安徽','合肥市芜湖市蚌埠市淮南市马鞍山市淮北市铜陵市安庆市黄山市滁州市阜阳市宿州市六安市亳州市池州市宣城'),
	(null,'福建','福州市厦门市莆田市三明市泉州市漳州市南平市龙岩市宁德'),
	(null,'江西','南昌市景德镇市萍乡市九江市新余市鹰潭市赣州市吉安市宜春市抚州市上饶'),
	(null,'山东','济南市青岛市淄博市枣庄市东营市烟台市潍坊市济宁市泰安市威海市日照市莱芜市临沂市德州市聊城市滨州市菏泽'),
	(null,'河南','郑州市开封市洛阳市平顶山市安阳市鹤壁市新乡市焦作市济源市濮阳市许昌市漯河市三门峡市南阳商丘市信阳市周口市驻马店'),
	(null,'湖北','武汉市黄石市十堰市宜昌市襄阳市鄂州市荆门市孝感市荆州市黄冈市咸宁市随州市恩施市仙桃市潜江市天门市神农架'),
	(null,'湖南','长沙市株洲市湘潭市衡阳市邵阳市岳阳市常德市张家界市益阳市郴州市永州市怀化市娄底市湘西'),
	(null,'广东','广州市韶关市深圳市珠海市汕头市佛山市江门市湛江市茂名市肇庆市惠州市梅州市汕尾市河源市阳江市清远市东莞市中山市东沙市潮州市揭阳市云浮'),
	(null,'广西','南宁市柳州市桂林市梧州市北海市防城港市钦州市贵港市玉林市百色市贺州市河池市来宾市崇左'),
	(null,'海南','海口市三亚市三沙市五指山市琼海市儋州市文昌市万宁市东方市定安县#市屯昌县#市澄迈县#市临高县#市白沙县#市昌江县#市乐东县#市陵水县#市保亭县#市琼中县#市西沙群岛市南沙群岛市中沙群岛'),
	(null,'四川','成都市自贡市攀枝花市泸州市德阳市绵阳市广元市遂宁市内江市乐山市南充市眉山市宜宾市广安市达州市雅安市巴中市资阳市阿坝市甘孜市凉山'),
	(null,'贵州','贵阳市六盘水市遵义市安顺市铜仁市黔西南市毕节市黔东南市黔南'),
	(null,'云南','昆明市曲靖市玉溪市保山市昭通市丽江市普洱市临沧市楚雄市红河市文山市西双版纳市大理市德宏市怒江市迪庆'),
	(null,'西藏','拉萨市昌都市山南市日喀则市那曲市阿里市林芝'),
	(null,'陕西','西安市铜川市宝鸡市咸阳市渭南市延安市汉中市榆林市安康市商洛'),
	(null,'甘肃','兰州市嘉峪关市金昌市白银市天水市武威市张掖市平凉市酒泉市庆阳市定西市陇南市临夏市甘南'),
	(null,'青海','西宁市海东市海北市黄南市海南市果洛市玉树市海西'),
	(null,'宁夏','银川市石嘴山市吴忠市固原市中卫'),
	(null,'新疆','乌鲁木齐市克拉玛依市吐鲁番市哈密市昌吉市博尔塔拉市巴音郭楞市阿克苏市克孜勒苏市喀什市和田市伊犁市塔城市阿勒泰市可克达拉市石河子市阿拉尔市图木舒克市五家渠');
-- 县/区表
CREATE TABLE county(
	county_id INT PRIMARY KEY AUTO_INCREMENT,
	city VARCHAR(5),
	counts VARCHAR(200)
	);
	INSERT INTO county VALUES
	(null,'北京','东城区#西城区#崇文区#宣武区#朝阳区#丰台区#石景山区#海淀区#门头沟区#房山区#通州区#顺义区#昌平区#大兴区#怀柔区#平谷区#密云县#延庆县'),
	(null,'天津','和平区#河东区#河西区#南开区#河北区#红桥区#塘沽区#汉沽区#大港区#东丽区#西青区#津南区#北辰区#武清区#宝坻区#滨海新区#宁河县#静海县#蓟县'),
	(null,'上海','黄浦区#卢湾区#徐汇区#长宁区#静安区#普陀区#闸北区#虹口区#杨浦区#闵行区#宝山区#嘉定区#浦东新区#金山区#松江区#青浦区#南汇区#奉贤区#川沙区#崇明县'),
	(null,'重庆','万州区#涪陵区#渝中区#大渡口区#江北区#沙坪坝区#九龙坡区#南岸区#北碚区#万盛区#双桥区#渝北区#巴南区#黔江区#长寿区#綦江区#潼南县#铜梁区#大足区#荣昌县#璧山区#梁平县#城口县#丰都县#垫江县#武隆县#忠县#开县#云阳县#奉节县#巫山县#巫溪县#石柱县#秀山县#酉阳县#彭水县#江津区#合川区#永川区#南川区'),
	-- 河北
	(null,'石家庄','长安区#桥东区#桥西区#新华区#井陉矿区#裕华区#井陉县#正定县#栾城区#行唐县#灵寿县#高邑县#深泽县#赞皇县#无极县#平山县#元氏县#赵县#辛集#藁城区#晋州#新乐#鹿泉区'),
	(null,'唐山','路南区#路北区#古冶区#开平区#丰南区#丰润区#滦县#滦南县#乐亭县#迁西县#玉田县#曹妃甸区#遵化#迁安'),
	(null,'秦皇岛','海港区#山海关区#北戴河区#青龙县#昌黎县#抚宁县#卢龙县#开发区'),
	(null,'邯郸','邯山区#丛台区#复兴区#峰峰矿区#邯郸县#临漳县#成安县#大名县#涉县#磁县#肥乡县#永年县#邱县#鸡泽县#广平县#馆陶县#魏县#曲周县#武安'),
	(null,'邢台','桥东区#桥西区#邢台县#临城县#内丘县#柏乡县#隆尧县#任县#南和县#宁晋县#巨鹿县#新河县#广宗县#平乡县#威县#清河县#临西县'),
	(null,'保定','新市区#北市区#南市区#满城县#清苑县#涞水县#阜平县#徐水县#定兴县#唐县#高阳县#容城县#涞源县#望都县#安新县#易县#曲阳县#蠡县#顺平县#博野县#雄县#涿州#定州#安国#高碑店#高开区'),
	(null,'张家口','桥东区#桥西区#宣化区#下花园区#宣化县#张北县#康保县#沽源县#尚义县#蔚县#阳原县#怀安县#万全县#怀来县#涿鹿县#赤城县#崇礼县'),
	(null,'承德','双桥区#双滦区#鹰手营子承德县#兴隆县#平泉县#滦平县#隆化县#丰宁#宽城#围场县'),
	(null,'沧州','新华区#运河区#沧县#青县#东光县#海兴县#盐山县#肃宁县#南皮县#吴桥县#献县#孟村县'),
	(null,'廊坊','安次区#广阳区#固安县#永清县#香河县#大城县#文安县#大厂县#开发区#燕郊#霸州#三河'),
	(null,'衡水','桃城区#枣强县#武邑县#武强县#饶阳县#安平县#故城县#景县#阜城县#冀州#深州'),
	-- 山西
	(null,'太原','小店区#迎泽区#杏花岭区#尖草坪区#万柏林区#晋源区#清徐县#阳曲县#娄烦县#古交'),
	(null,'大同','城区#矿区#南郊区#新荣区#阳高县#天镇县#广灵县#灵丘县#浑源县#左云县#大同县'),
	(null,'阳泉','城区#矿区#郊区#平定县#盂县'),
	(null,'长治','长治县#襄垣县#屯留县#平顺县#黎城县#壶关县#长子县#武乡县#沁县#沁源县#潞城城区#郊区#高新区'),
	(null,'晋城','城区#沁水县#阳城县#陵川县#泽州县#高平'),
	(null,'朔州','朔城区#平鲁区#山阴县#应县#右玉县#怀仁县'),
	(null,'晋中','榆次区#榆社县#左权县#和顺县#昔阳县#寿阳县#太谷县#祁县#平遥县#灵石县#介休'),
	(null,'运城','盐湖区#临猗县#万荣县#闻喜县#稷山县#新绛县#绛县#垣曲县#夏县#平陆县#芮城县#永济#河津'),
	(null,'忻州','忻府区#定襄县#五台县#代县#繁峙县#宁武县#静乐县#神池县#五寨县#岢岚县#河曲县#保德县#偏关县#原平'),
	(null,'临汾','尧都区#曲沃县#翼城县#襄汾县#洪洞县#古县#安泽县#浮山县#吉县#乡宁县#大宁县#隰县#永和县#蒲县#汾西县#侯马#霍州'),
	(null,'吕梁','离石区#文水县#交城县#兴县#临县#柳林县#石楼县#岚县#方山县#中阳县#交口县#孝义#汾阳'),
	-- 内蒙
	(null,'呼和浩特','新城区#回民区#玉泉区#赛罕区#土左旗#托克托县#和林格尔清水河县#武川县'),
	(null,'包头','东河区#昆都仑区#青山区#石拐区#白云鄂博#九原区#土右旗#固阳县#达茂旗'),
	(null,'乌海','海勃湾区#海南区#乌达区'),
	(null,'赤峰','红山区#元宝山区#松山区#阿旗#巴林左旗#巴林右旗#林西县#克什克腾#翁牛特旗#喀喇沁旗#宁城县#敖汉旗'),
	(null,'通辽','科尔沁区#科左中旗#科左后旗#开鲁县#库伦旗#奈曼旗#扎鲁特旗#霍林郭勒'),
	(null,'鄂尔多斯','东胜区#达拉特旗#准格尔旗#鄂前旗#鄂托克旗#杭锦旗#乌审旗#伊金霍洛'),
	(null,'巴彦淖尔','临河区#五原县#磴口县#乌前旗#乌中旗#乌后旗#杭锦后旗'),
	(null,'乌兰察布','集宁区#卓资县#化德县#商都县#兴和县#凉城县#察右前旗#察右中旗#察右后旗#四子王旗#丰镇'),
	(null,'锡盟','二连浩特#锡林浩特#阿巴嘎旗#苏左旗#苏右旗#东乌旗#西乌旗#太仆寺旗#镶黄旗#正镶白旗#正蓝旗#多伦县'),
	-- 辽宁
	(null,'沈阳','和平区#沈河区#大东区#皇姑区#铁西区#苏家屯区#浑南区#新城子区#于洪区#辽中县#康平县#法库县#新民#浑南新区#张士#沈北新区'),
	(null,'大连','中山区#西岗区#沙河口区#甘井子区#旅顺口区#金州区#长海县#开发区#瓦房店#普兰店#庄河#岭前区'),
	(null,'鞍山','铁东区#铁西区#立山区#千山区#台安县#岫岩县#高新区#海城'),
	(null,'抚顺','新抚区#东洲区#望花区#顺城区#抚顺县#新宾县#清原县'),
	(null,'本溪','平山区#溪湖区#明山区#南芬区#本溪县#桓仁县'),
	(null,'丹东','元宝区#振兴区#振安区#宽甸县#东港#凤城'),
	(null,'锦州','古塔区#凌河区#太和区#黑山县#义县#凌海#北镇'),
	(null,'营口','站前区#西市区#鲅鱼圈区#老边区#盖州#大石桥'),
	(null,'阜新','海州区#新邱区#太平区#清河门区#细河区#阜新县#彰武县'),
	(null,'辽阳','白塔区#文圣区#宏伟区#弓长岭区#太子河区#辽阳县#灯塔'),
	(null,'盘锦','双台子区#兴隆台区#大洼县#盘山县'),
	(null,'铁岭','银州区#清河区#铁岭县#西丰县#昌图县#调兵山#开原'),
	(null,'朝阳','双塔区#龙城区#朝阳县#建平县#喀左县#北票#凌源'),
	(null,'葫芦岛','连山区#龙港区#南票区#绥中县#建昌县#兴城'),
	-- 吉林
	(null,'长春','南关区#宽城区#朝阳区#二道区#绿园区#双阳区#农安县#九台区#榆树#德惠#高新区#汽车产业区#开发区#净月区'),
	(null,'吉林','昌邑区#龙潭区#船营区#丰满区#永吉县#蛟河#桦甸#舒兰#磐石'),
	(null,'四平','铁西区#铁东区#梨树县#伊通县#公主岭#双辽'),
	(null,'辽源','龙山区#西安区#东丰县#东辽县'),
	(null,'通化','东昌区#二道江区#通化县#辉南县#柳河县#梅河口#集安'),
	(null,'白山','浑江区#抚松县#靖宇县#长白县#江源区#临江'),
	(null,'松原','宁江区#前郭县#长岭县#乾安县#扶余'),
	(null,'白城','洮北区#镇赉县#通榆县#洮南#大安'),
	(null,'延边','延吉#图们#敦化#珲春#龙井#和龙#汪清县#安图县'),
	-- 黑龙江
	(null,'哈尔滨','道里区#南岗区#道外区#香坊区#动力区#平房区#松北区#呼兰区#依兰县#方正县#宾县#巴彦县#木兰县#通河县#延寿县#阿城区#双城区#尚志#五常#阿城'),
	(null,'齐齐哈尔','龙沙区#建华区#铁锋区#昂昂溪区#梅里斯区#甘南县#富裕县#富拉尔基'),
	(null,'鸡西','鸡冠区#恒山区#滴道区#城子河区#虎林#密山'),
	(null,'鹤岗','向阳区#工农区#南山区#兴安区#东山区#兴山区'),
	(null,'双鸭山','尖山区#岭东区#四方台区'),
	(null,'大庆','萨尔图区#龙凤区#让胡路区#红岗区#大同区#肇州县#肇源县#林甸县'),
	(null,'佳木斯','永红区#向阳区#前进区#东风区#郊区#桦川县'),
	-- 江苏
	(null,'南京','玄武区#白下区#秦淮区#建邺区#鼓楼区#下关区#浦口区#栖霞区#雨花台区#江宁区#六合区#溧水区#高淳区'),
	(null,'无锡','崇安区#南长区#北塘区#锡山区#惠山区#滨湖区#梁溪区#新吴区#江阴#新区#宜兴'),
	(null,'徐州','鼓楼区#云龙区#九里区#贾汪区#泉山区#丰县#沛县#铜山区#睢宁县#新沂#邳州'),
	(null,'常州','天宁区#钟楼区#戚墅堰区#新北区#武进区#溧阳#金坛'),
	(null,'苏州','沧浪区#平江区#金阊区#虎丘区#吴中区#相城区#姑苏区#常熟#张家港#昆山#吴江区#太仓#新区#园区'),
	(null,'南通','崇川区#港闸区#通州区#海安县#如东县#启东#如皋#通州#海门#开发区'),
	(null,'连云港','连云区#新浦区#海州区#赣榆区#东海县#灌云县#灌南县'),
	(null,'淮安','清河区#淮安区#淮阴区#清浦区#涟水县#洪泽县#盱眙县#金湖县'),
	(null,'盐城','亭湖区#盐都区#响水县#滨海县#阜宁县#射阳县#建湖县#东台#大丰'),
	(null,'扬州','广陵区#邗江区#维扬区#宝应县#仪征#江都区#开发区#高邮'),
	(null,'镇江','京口区#润州区#丹徒区#丹阳#扬中#句容'),
	(null,'泰州','海陵区#高港区#兴化#靖江#泰兴#姜堰区'),
	(null,'宿迁','宿城区#宿豫区#沭阳县#泗阳县#泗洪县'),
	-- 浙江
	(null,'杭州','上城区#下城区#江干区#拱墅区#西湖区#滨江区#萧山区#余杭区#桐庐县#淳安县#建德#富阳区#临安'),
	(null,'宁波','海曙区#江东区#江北区#北仑区#镇海区#鄞州区#象山县#宁海县#余姚#慈溪#奉化'),
	(null,'温州','鹿城区#龙湾区#瓯海区#洞头县#永嘉县#平阳县#苍南县#文成县#泰顺县#瑞安#乐清'),
	(null,'嘉兴','南湖区#秀洲区#嘉善县#海盐县#海宁#平湖#桐乡'),
	(null,'湖州','吴兴区#南浔区#德清县#长兴县#安吉县'),
	(null,'绍兴','越城区#柯桥区#新昌县#诸暨#上虞区#嵊州'),
	(null,'金华','婺城区#金东区#武义县#浦江县#磐安县#兰溪#义乌#东阳#永康'),
	(null,'衢州','柯城区#衢江区#常山县#开化县#龙游县#江山'),
	(null,'舟山','定海区#普陀区#岱山县#嵊泗县'),
	(null,'台州','椒江区#黄岩区#路桥区#玉环县#三门县#天台县#仙居县#温岭#临海'),
	(null,'丽水','莲都区#青田县#缙云县#遂昌县#松阳县#云和县#庆元县#景宁县#龙泉'),
	-- 安徽
	(null,'合肥','瑶海区#庐阳区#蜀山区#包河区#长丰县#肥东县#肥西县#高新区#中区#巢湖#居巢区#庐江县'),
	(null,'芜湖','镜湖区#弋江区#鸠江区#三山区#芜湖县#繁昌县#南陵县'),
	(null,'蚌埠','龙子湖区#蚌山区#禹会区#淮上区#怀远县#五河县#固镇县'),
	(null,'淮南','大通区#田家庵区#谢家集区#八公山区#潘集区#凤台县#寿县'),
	(null,'马鞍山','金家庄区#花山区#雨山区#博望区#当涂县#含山县'),
	(null,'淮北','杜集区#相山区#烈山区#濉溪县'),
	(null,'铜陵','铜官山区#狮子山区#铜官区#郊区#铜陵县'),
	(null,'安庆','迎江区#大观区#宜秀区#怀宁县#枞阳县#潜山县#太湖县#宿松县#望江县#岳西县#桐城'),
	(null,'黄山','屯溪区#黄山区#徽州区#歙县#休宁县#黟县#祁门县'),
	(null,'滁州','琅琊区#南谯区#来安县#全椒县#定远县#凤阳县#天长#明光'),
	(null,'阜阳','颍州区#颍东区#颍泉区#临泉县#太和县#阜南县#颍上县#界首'),
	(null,'宿州','埇桥区#砀山县#萧县#灵璧县#泗县'),
	(null,'六安','金安区#裕安区#叶集区#寿县#霍邱县#舒城县#金寨县#霍山县'),
	(null,'亳州','谯城区#涡阳县#蒙城县#利辛县'),
	(null,'池州','贵池区#东至县#石台县#青阳县'),
	-- 福建
	(null,'福州','鼓楼区#台江区#仓山区#马尾区#晋安区#闽侯县#连江县#罗源县#闽清县#永泰县#平潭县#福清#长乐'),
	(null,'厦门','思明区#海沧区#湖里区#集美区#同安区#翔安区'),
	(null,'莆田','城厢区#涵江区#荔城区#秀屿区#仙游县'),
	(null,'三明','梅列区#三元区#明溪县#清流县#宁化县#大田县#尤溪县#沙县#将乐县#泰宁县#建宁县#永安'),
	(null,'泉州','鲤城区#丰泽区#洛江区#泉港区#惠安县#安溪县#永春县#德化县#金门县#石狮#晋江#南安'),
	(null,'漳州','芗城区#龙文区#云霄县#漳浦县#诏安县#长泰县#东山县#南靖县#平和县#华安县#龙海'),
	(null,'南平','延平区#顺昌县#浦城县#光泽县#松溪县#政和县#建阳区#邵武#武夷山#建瓯'),
	(null,'龙岩','新罗区#长汀县#永定区#上杭县#武平县#连城县#漳平'),
	(null,'宁德','蕉城区#霞浦县#古田县#屏南县#寿宁县#周宁县#柘荣县#福安#福鼎'),
	-- 江西
	(null,'南昌','东湖区#西湖区#青云谱区#湾里区#青山湖区#南昌县#新建县#安义县#进贤县#红谷滩#开发区#昌北区'),
	(null,'景德镇','昌江区#珠山区#浮梁县#乐平'),
	(null,'萍乡','安源区#湘东区#莲花县#上栗县#芦溪县'),
	(null,'九江','庐山区#浔阳区#九江县#武宁县#修水县#永修县#德安县#星子县#都昌县#湖口县#彭泽县#瑞昌#共青城'),
	(null,'新余','渝水区#分宜县'),
	(null,'鹰潭','月湖区#余江县#贵溪'),
	(null,'赣州','章贡区#赣县#信丰县#大余县#上犹县#崇义县#安远县#龙南县#定南县#全南县#宁都县#于都县#兴国县#会昌县#寻乌县#石城县#黄金区#瑞金南康区'),
	(null,'吉安','吉州区#青原区#吉安县#吉水县#峡江县#新干县#永丰县#泰和县#遂川县#万安县#安福县#永新县#井冈山'),
	(null,'宜春','袁州区#奉新县#万载县#上高县#宜丰县#靖安县#铜鼓县#丰城#樟树#高安'),
	(null,'抚州','临川区#南城县#黎川县#南丰县#崇仁县#乐安县#宜黄县#金溪县#资溪县#东乡县#广昌县'),
	(null,'上饶','信州区#上饶县#广丰区#玉山县#铅山县#横峰县#弋阳县#余干县#鄱阳县#万年县#婺源县#德兴'),
	-- 山东
	(null,'济南','历下区#市中区#槐荫区#天桥区#历城区#长清区#平阴县#济阳县#商河县#章丘'),
	(null,'青岛','市南区#市北区#四方区#黄岛区#崂山区#李沧区#城阳区#开发区#胶州#即墨#平度#胶南#莱西'),
	(null,'淄博','淄川区#张店区#博山区#临淄区#周村区#桓台县#高青县#沂源县'),
	(null,'枣庄','市中区#薛城区#峄城区#台儿庄区#山亭区#滕州'),
	(null,'东营','东营区#河口区#垦利县#利津县#广饶县#西城区#东城区'),
	(null,'烟台','芝罘区#福山区#牟平区#莱山区#长岛县#龙口#莱阳#莱州#蓬莱#招远#栖霞#海阳'),
	(null,'潍坊','潍城区#寒亭区#坊子区#奎文区#临朐县#昌乐县#开发区#青州#诸城#寿光#安丘#高密#昌邑'),
	(null,'济宁','市中区#任城区#微山县#鱼台县#金乡县#嘉祥县#汶上县#泗水县#梁山县#曲阜#兖州区#邹城'),
	(null,'泰安','泰山区#岱岳区#宁阳县#东平县#新泰#肥城'),
	(null,'威海','环翠区#文登区#荣成#乳山'),
	(null,'日照','东港区#岚山区#五莲县#莒县'),
	(null,'莱芜','莱城区#钢城区'),
	(null,'临沂','兰山区#罗庄区#河东区#沂南县#郯城县#沂水县#兰陵县#费县#平邑县#莒南县#蒙阴县#临沭县'),
	(null,'德州','德城区#陵城区#宁津县#庆云县#临邑县#齐河县#平原县#夏津县#武城县#开发区#乐陵#禹城'),
	(null,'聊城','东昌府区#阳谷县#莘县#茌平县#东阿县#冠县#高唐县#临清'),
	(null,'滨州','滨城区#惠民县#阳信县#无棣县#沾化区#博兴县#邹平县'),
	(null,'菏泽','牡丹区#曹县#单县#成武县#巨野县#郓城县#鄄城县#定陶县#东明县'),
	-- 河南
	(null,'郑州','中原区#二七区#管城区#金水区#上街区#惠济区#中牟县#巩义#荥阳#新密#新郑#登封#郑东新区#高新区'),
	(null,'开封','龙亭区#顺河区#鼓楼区#禹王台区#金明区#杞县#通许县#尉氏县#祥符区#兰考县'),
	(null,'洛阳','老城区#西工区#瀍河区#涧西区#吉利区#洛龙区#孟津县#新安县#栾川县#嵩县#汝阳县#宜阳县#洛宁县#伊川县#偃师#高新区'),
	(null,'平顶山','新华区#卫东区#石龙区#湛河区#宝丰县#叶县#鲁山县#郏县#舞钢#汝州'),
	(null,'安阳','文峰区#北关区#殷都区#龙安区#安阳县#汤阴县#滑县#内黄县#林州'),
	(null,'鹤壁','鹤山区#山城区#淇滨区#浚县#淇县'),
	(null,'新乡','红旗区#卫滨区#凤泉区#牧野区#新乡县#获嘉县#原阳县#延津县#封丘县#长垣县#卫辉#辉县'),
	(null,'焦作','解放区#中站区#马村区#山阳区#修武县#博爱县#武陟县#温县#沁阳#孟州'),
	(null,'濮阳','华龙区#清丰县#南乐县#范县#台前县#濮阳县'),
	(null,'济源','济源'),
	(null,'许昌','魏都区#许昌县#鄢陵县#襄城县#禹州#长葛'),
	(null,'漯河','源汇区#郾城区#召陵区#舞阳县#临颍县'),
	(null,'南阳','宛城区#卧龙区#南召县#方城县#西峡县#镇平县#内乡县#淅川县#社旗县#唐河县#新野县#桐柏县#邓州'),
	(null,'商丘','梁园区#睢阳区#民权县#睢县#宁陵县#柘城县#虞城县#夏邑县#永城'),
	(null,'信阳','浉河区#平桥区#罗山县#光山县#新县#商城县#固始县#潢川县#淮滨县#息县'),
	(null,'周口','川汇区#扶沟县#西华县#商水县#沈丘县#郸城县#淮阳县#太康县#鹿邑县#项城'),
	(null,'驻马店','驿城区#西平县#上蔡县#平舆县#正阳县#确山县#泌阳县#汝南县#遂平县#新蔡县'),
	-- 四川
	(null,'成都','锦江区#青羊区#金牛区#武侯区#成华区#龙泉驿区#青白江区#新都区#温江区#金堂县#双流县#郫县#大邑县#蒲江县#新津县#都江堰#彭州#邛崃#崇州'),
	(null,'自贡','自流井区#贡井区#大安区#沿滩区#荣县#富顺县'),
	(null,'攀枝花','东区#西区#仁和区#米易县#盐边县'),
	(null,'泸州','江阳区#纳溪区#龙马潭区#泸县#合江县#叙永县#古蔺县'),
	(null,'德阳','旌阳区#中江县#罗江县#广汉#什邡#绵竹'),
	(null,'锦阳','涪城区#游仙区#三台县#盐亭县#安县#梓潼县#北川县#平武县#高新区#江油'),
	(null,'广元','利州区#昭化区#朝天区#旺苍县#青川县#剑阁县#苍溪县'),
	(null,'遂宁','船山区#安居区#蓬溪县#射洪县#大英县'),
	(null,'内江','市中区#东兴区#威远县#资中县#隆昌县'),
	(null,'乐山','市中区#沙湾区#五通桥区#金口河区#犍为县#井研县#夹江县#沐川县#峨边县#马边县#峨眉山'),
	(null,'南充','顺庆区#高坪区#嘉陵区#南部县#营山县#蓬安县#仪陇县#西充县#阆中'),
	(null,'眉山','东坡区#仁寿县#彭山区#洪雅县#丹棱县#青神县'),
	(null,'宜宾','翠屏区#宜宾县#南溪区#江安县#长宁县#高县#珙县#筠连县#兴文县#屏山县'),
	(null,'广安','广安区#前锋区#岳池县#武胜县#邻水县#市辖区#华蓥'),
	(null,'达州','通川区#达川区#宣汉县#开江县#大竹县'),
	(null,'巴中','巴州区#恩阳区#通江县#南江县#平昌县'),
	(null,'资阳','雁江区#安岳县#乐至县#简阳'),
	(null,'阿坝','汶川县#理县#茂县#松潘县#九寨沟县#金川县#小金县#黑水县#马尔康县#壤塘县#阿坝县#若尔盖县#红原县'),
	(null,'甘孜','康定#泸定县#丹巴县#九龙县#雅江县#道孚县#炉霍县#甘孜县#新龙县#德格县#白玉县#石渠县#色达县#理塘县#巴塘县#乡城县#稻城县#得荣县'),
	(null,'凉山','西昌#木里县#盐源县#德昌县#会理县#会东县#宁南县#普格县#布拖县#金阳县#昭觉县#喜德县#冕宁县#越西县#甘洛县#美姑县#雷波县'),
		-- 青海
	(null,'西宁','城东区#城中区#城西区#城北区#大通县#湟中县#湟源县'),
	(null,'东海','平安区#民和县#乐都区#互助县#化隆县#循化县'),
	-- 宁夏
	(null,'银川','兴庆区#西夏区#金凤区#永宁县#贺兰县#灵武'),
	(null,'石嘴山','大武口区#惠农区#平罗县'),
	(null,'吴忠','利通区#红寺堡区#盐池县#同心县#青铜峡'),
	(null,'固原','原州区#西吉县#隆德县#泾源县#彭阳县'),
	(null,'中卫','沙坡头区'),
	-- 新疆
	(null,'乌鲁木齐','天山区#沙依巴克新市区#水磨沟区#头屯河区#达坂城区#东山区#米东区#乌鲁木齐'),
	(null,'克拉玛依','独山子区#克拉玛依白碱滩区#乌尔禾区'),
	(null,'吐鲁番','高昌区#鄯善县#托克逊县'),
	(null,'石河子','石河子');
