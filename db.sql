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
create table SchoolRange(           #院校排名表
    SchoolNum int primary key,      #院校编号
    SchoolName varchar(10),         #名称
    SchoolRange int,                #排名
    Major varchar(10)               #专业
);
create table HistorySchoolData(     #院校历史录取数据表
    id varchar(10),                 #历史用户id
    srange int,                     #用户排名
    Syear int,                      #年份
    SchoolNum int,                  #院校编码
    SchoolName varchar(10),         #院校名称
    primary key(id,SchoolNum),
    foreign key(id) references User(id),
    foreign key(SchoolNum) references SchoolRange(SchoolNum)
);


Insert into GradeRange(grade,srange) values (715,1),(713,2),(709,3),(707,4),(703,5),(694,6),(693,7),(690,8),(689,9),(688,10),(686,11),(684,12),(671,13),(669,14),(668,15),(668,16),(667,17),(666,18),(666,19),(663,20),(659,21),(652,22),(643,23),(639,24),(634,25),(634,26),(627,27),(625,28),(623,29),(621,30),(618,31),(616,32),(614,33),(610,34),(606,35),(599,36),(595,37),(594,38),(592,39),(591,40),(589,41),(589,42),(578,43),(578,44),(573,45),(572,46),(571,47),(558,48),(558,49),(556,50),(551,51),(545,52),(540,53),(538,54),(533,55),(532,56),(531,57),(530,58),(514,59),(513,60),(512,61),(510,62),(510,63),(509,64),(509,65),(499,66),(492,67),(492,68),(485,69),(480,70),(480,71),(476,72),(476,73),(471,74),(469,75),(465,76),(461,77),(461,78),(450,79),(448,80),(448,81),(446,82),(444,83),(443,84),(442,85),(442,86),(433,87),(433,88),(430,89),(428,90),(425,91),(422,92),(416,93),(409,94),(406,95),(399,96),(397,97),(395,98),(389,99),(382,100),(379,101),(374,102),(373,103),(373,104),(371,105),(370,106),(370,107),(370,108),(346,109),(346,110),(344,111),(335,112),(333,113),(332,114),(327,115),(324,116),(322,117),(316,118),(313,119),(313,120),(312,121),(306,122),(304,123),(299,124),(293,125),(290,126),(286,127),(286,128),(281,129),(277,130),(273,131),(270,132),(262,133),(258,134),(258,135),(257,136),(253,137),(250,138),(249,139),(248,140),(239,141),(235,142),(231,143),(228,144),(226,145),(226,146),(208,147),(208,148),(203,149),(203,150),(189,151),(188,152),(185,153),(180,154),(178,155),(174,156),(173,157),(173,158),(171,159),(169,160),(169,161),(167,162),(163,163),(163,164),(160,165),(159,166),(159,167),(156,168),(152,169),(148,170),(145,171),(140,172),(134,173),(131,174),(128,175),(128,176),(125,177),(121,178),(118,179),(118,180),(117,181),(115,182),(106,183),(105,184),(105,185),(103,186),(100,187),(93,188),(92,189),(89,190),(85,191),(84,192),(81,193),(74,194),(71,195),(65,196),(56,197),(53,198),(52,199),(50,200)