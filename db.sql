create table GradeRange(            #江苏省高考分数排名表
    grade int,                      #成绩
    srange int                      #排名
);

create table User(                  #用户表
    id varchar(10) primary key,     #用户id
    grade int,                      #用户成绩  
    passwords varchar(10),          #密码
    Major varchar(10),              #意向专业
    notes varchar(50)               #备注
);

create table School(
    SchoolNum varchar(10) primary key,          #院校编号
    SchoolName varchar(10)                     #名称
);

create table SchoolRangeCS(         #计算机院校排名表
    SchoolNum varchar(10),          #院校编号
    SchoolName varchar(20),                     #名称
    SchoolRange int,                #排名
    primary key(SchoolNum,Major)
);

create table SchoolRangeES(         #电信院校排名表
    SchoolNum varchar(10),          #院校编号
    SchoolName varchar(20),                     #名称
    SchoolRange int,                #排名
    primary key(SchoolNum,Major)
);

create table HistorySchoolDataCS(   #计算机院校历史录取数据表
    HSrange int,                    #用户最高排名
    LSrange int,                    #用户最低排名
    Syear int,                      #年份  建立索引index
    SchoolNum int,                  #院校编码
    SchoolName varchar(10),         #院校名称
    primary key(id,SchoolNum),
    foreign key(id) references User(id),
    foreign key(SchoolNum) references SchoolRange(SchoolNum)
);

create table HistorySchoolDataES(   #电信院校历史录取数据表
    srange int,                     #用户排名
    HSrange int,                    #用户最高排名
    LSrange int,                    #用户最低排名
    Syear int,                      #年份
    SchoolNum int,                  #院校编码
    SchoolName varchar(10),         #院校名称
    primary key(id,SchoolNum),
    foreign key(id) references User(id),
    foreign key(SchoolNum) references SchoolRange(SchoolNum)
);



Insert into GradeRange(grade,srange) values (718,1),(712,2),(712,3),(711,4),(710,5),(710,6),(708,7),(706,8),(706,9),(703,10),(703,11),(703,12),(702,13),(700,14),(696,15),(692,16),(692,17),(691,18),(690,19),(690,20),(690,21),(687,22),(686,23),(686,24),(684,25),(681,26),(680,27),(680,28),(679,29),(679,30),(678,31),(677,32),(675,33),(673,34),(673,35),(672,36),(670,37),(670,38),(669,39),(668,40),(668,41),(668,42),(666,43),(664,44),(664,45),(664,46),(662,47),(660,48),(658,49),(658,50),(657,51),(655,52),(654,53),(653,54),(653,55),(652,56),(652,57),(648,58),(646,59),(641,60),(641,61),(639,62),(638,63),(635,64),(634,65),(632,66),(630,67),(630,68),(628,69),(625,70),(625,71),(624,72),(622,73),(617,74),(617,75),(616,76),(615,77),(615,78),(614,79),(614,80),(612,81),(610,82),(606,83),(605,84),(604,85),(603,86),(603,87),(602,88),(601,89),(598,90),(598,91),(597,92),(597,93),(595,94),(589,95),(580,96),(577,97),(576,98),(575,99),(575,100),(574,101),(573,102),(573,103),(571,104),(571,105),(570,106),(569,107),(569,108),(567,109),(567,110),(562,111),(560,112),(559,113),(559,114),(558,115),(558,116),(557,117),(554,118),(552,119),(552,120),(551,121),(551,122),(547,123),(547,124),(547,125),(546,126),(544,127),(544,128),(539,129),(537,130),(536,131),(535,132),(533,133),(529,134),(525,135),(525,136),(522,137),(522,138),(522,139),(521,140),(517,141),(517,142),(514,143),(514,144),(513,145),(511,146),(511,147),(508,148),(507,149),(507,150),(506,151),(505,152),(504,153),(499,154),(499,155),(498,156),(498,157),(495,158),(493,159),(492,160),(492,161),(491,162),(488,163),(487,164),(485,165),(483,166),(482,167),(480,168),(480,169),(480,170),(479,171),(472,172),(471,173),(467,174),(466,175),(466,176),(464,177),(464,178),(463,179),(462,180),(457,181),(454,182),(453,183),(453,184),(452,185),(450,186),(449,187),(448,188),(442,189),(441,190),(441,191),(441,192),(441,193),(437,194),(437,195),(437,196),(435,197),(435,198),(433,199),(432,200),(429,201),(427,202),(426,203),(421,204),(421,205),(418,206),(417,207),(417,208),(417,209),(416,210),(415,211),(413,212),(412,213),(412,214),(412,215),(411,216),(411,217),(410,218),(408,219),(404,220),(403,221),(403,222),(401,223),(401,224),(400,225),(399,226),(397,227),(397,228),(397,229),(397,230),(397,231),(396,232),(394,233),(388,234),(387,235),(386,236),(386,237),(385,238),(383,239),(381,240),(378,241),(376,242),(375,243),(374,244),(371,245),(370,246),(367,247),(365,248),(365,249),(365,250),(364,251),(363,252),(361,253),(360,254),(360,255),(359,256),(357,257),(356,258),(355,259),(355,260),(353,261),(348,262),(348,263),(347,264),(346,265),(343,266),(342,267),(339,268),(338,269),(334,270),(334,271),(332,272),(332,273),(331,274),(329,275),(327,276),(326,277),(325,278),(325,279),(323,280),(322,281),(317,282),(317,283),(315,284),(315,285),(313,286),(313,287),(312,288),(312,289),(309,290),(309,291),(307,292),(306,293),(305,294),(304,295),(304,296),(303,297),(302,298),(302,299),(301,300),(298,301),(298,302),(298,303),(297,304),(297,305),(296,306),(295,307),(293,308),(293,309),(292,310),(290,311),(290,312),(289,313),(289,314),(288,315),(288,316),(286,317),(283,318),(277,319),(277,320),(275,321),(274,322),(273,323),(272,324),(272,325),(271,326),(270,327),(269,328),(268,329),(267,330),(266,331),(266,332),(264,333),(263,334),(258,335),(258,336),(256,337),(254,338),(248,339),(248,340),(246,341),(245,342),(245,343),(241,344),(238,345),(238,346),(237,347),(236,348),(234,349),(234,350),(231,351),(230,352),(228,353),(227,354),(227,355),(222,356),(222,357),(222,358),(221,359),(220,360),(218,361),(218,362),(215,363),(214,364),(211,365),(211,366),(206,367),(205,368),(204,369),(202,370),(197,371),(197,372),(196,373),(193,374),(192,375),(191,376),(191,377),(190,378),(189,379),(186,380),(186,381),(186,382),(185,383),(184,384),(182,385),(182,386),(182,387),(181,388),(180,389),(179,390),(178,391),(178,392),(176,393),(175,394),(174,395),(173,396),(170,397),(169,398),(169,399),(168,400),(165,401),(164,402),(164,403),(163,404),(162,405),(162,406),(160,407),(159,408),(157,409),(156,410),(154,411),(154,412),(153,413),(153,414),(152,415),(152,416),(151,417),(150,418),(150,419),(150,420),(149,421),(149,422),(146,423),(139,424),(139,425),(138,426),(138,427),(132,428),(131,429),(131,430),(130,431),(128,432),(126,433),(124,434),(123,435),(121,436),(119,437),(119,438),(119,439),(119,440),(119,441),(117,442),(117,443),(117,444),(116,445),(115,446),(115,447),(114,448),(114,449),(113,450),(113,451),(112,452),(111,453),(106,454),(106,455),(101,456),(98,457),(97,458),(96,459),(95,460),(95,461),(91,462),(90,463),(90,464),(87,465),(87,466),(85,467),(85,468),(85,469),(83,470),(83,471),(82,472),(82,473),(82,474),(79,475),(77,476),(76,477),(76,478),(75,479),(74,480),(74,481),(74,482),(69,483),(68,484),(68,485),(67,486),(66,487),(65,488),(65,489),(64,490),(62,491),(61,492),(60,493),(59,494),(59,495),(58,496),(58,497),(56,498),(54,499),(50,500)

Insert into SchoolRangeCS(SchoolNum,SchoolName,SchoolRange,Major) values ('js01','南京大学',1),('js02','东南大学',2),('js03','江南大学',3),('js04','河海大学',4),('js05','南京工业大学',5),('js06','南京信息工程大学',6),('js07','南京邮电大学',7),('js08','苏州大学',8),('js09','南京航空航天大学',9),('js10','南京理工大学',10),('js11','南京农业大学',11),('js12','南京医科大学',12),('js13','南京师范大学',13),('js14','中国矿业大学',14),('js15','西交利物浦大学',15),('js16','江苏大学',16),('js17','扬州大学',17),('js18','江苏师范大学',18),('js19','徐州医科大学',19),('js20','南京林业大学',20),('js21','南京中医药大学',21),('js22','南通大学',22),('js23','南京财经大学',23),('js24','常州大学',24),('js25','江苏科技大学',25),('js26','南京审计大学',26),('js27','苏州科技大学',27),('js28','南京工程学院',28),('js29','淮阴师范学院',29),('js30','江苏理工学院',30),('js31','南京晓庄学院',31),('js32','江苏海洋大学',32),('js33','盐城师范学院',33),('js34','常熟理工学院',34),('js35','淮阴工学院',35),('js36','常州学院',36),('js37','江苏第二师范学院',37),('js38','徐州工程学院学院',38),('js39','泰州学院',39),('js40','南京特殊教育师范学院',40),('js41','江苏警官学院',41),('js42','南京大学金陵学院',42),('js43','江苏城市职业学院',43),('js44','东南大学成贤学院',44),('js45','无锡太湖学院学院',45),('js46','南京师范大学泰州学院',46),('js47','南通理工学院',47),('js48','江苏大学京江学院',48),('js49','南京理工大学泰州科技学院',49),('js50','南京邮电大学通达学院',50),('js51','扬州大学广陵学院学院',51),('js52','南京师范大学中北学院',52),('js53','南京工业大学浦江学院',53),('js54','南京医科大学康达学院',54),('js55','南通大学杏林学院',55),('js56','无锡学院',56),('js57','江苏科技大学苏州理工学院',57),('js58','无锡商业职业技术学院',58),('js59','中国人民解放军陆军工程学院',59),('js60','泰州职业技术学院',60),('js61','无锡科技职业学院',61),('js62','苏州科技大学天平学院',62),('js63','江阴职业技术学院',63),('js64','扬州环境资源职业技术学院',64),('js65','三江学院',65),('js66','苏州城市学院',66),('js67','中国矿业大学徐海学院',67),('js68','南京航空航天大学金城学院',68),('js69','常州大学怀德学院',69),('js70','南京传媒学院',70),('js71','南京理工大学紫金学院',71),('js72','宿迁学院',72),('js73','江苏师范大学科文学院',73),('js74','苏州工艺美术职业技术学院',74),('js75','南京审计大学金审学院',75),('js76','苏州大学应用技术学院',76),('js77','徐州幼儿师范高等专科学院',77);

Insert into SchoolRangeES(SchoolNum,SchoolName,SchoolRange,Major) values ('js02','东南大学',1),('js07','南京邮电大学',2),('js10','南京理工大学',3),('js01','南京大学',4),('js08','苏州大学',5),('js12','南京医科大学',6),('js04','河海大学',7),('js15','西交利物浦大学',8),('js06','南京信息工程大学',9),('js22','南通大学',10),('js24','常州大学',11),('js32','江苏海洋大学',12),('js34','常熟理工学院',13),('js78','盐城工学院',14),('js35','淮阴工学院',15),('js79','常州工学院',16),('js38','徐州工程学院',17),('js44','东南大学成贤学院',18),('js50','南京邮电大学通达学院',19),('js56','无锡学院',20),('js60','泰州职业技术学院',21),('js69','常州大学怀德学院',22),('js65','三江学院',23),('js66','苏州城市学院',24),('js71','南京理工大学紫金学院',25),('js67','中国矿业大学徐海学院',26),('js68','南京航空航天大学金城学院',27);
