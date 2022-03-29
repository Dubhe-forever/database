create table GradeRange(            #江苏省高考分数排名表
    grade int primary key,          #成绩
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
