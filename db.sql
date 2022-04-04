create table GradeRange(            #江苏省高考分数排名表
    grade int,                      #成绩
    srange int                      #排名
);

create table User(                  #用户表
    id varchar(10) primary key,     #用户id
    grade int,                      #用户成绩  
    passwords varchar(10),          #密码
    Major varchar(20),              #意向专业
    notes varchar(50)               #备注
);

create table School(
    SchoolNum varchar(10) primary key,          #院校编号
    SchoolName varchar(20)                     #名称
);

create table SchoolRangeCS(         #计算机院校排名表
    SchoolNum varchar(10),          #院校编号
    SchoolName varchar(20),                     #名称
    SchoolRange int,                #排名
    primary key(SchoolNum)
);

create table SchoolRangeES(         #电信院校排名表
    SchoolNum varchar(10),          #院校编号
    SchoolName varchar(20),                     #名称
    SchoolRange int,                #排名
    primary key(SchoolNum)
);

create table HistorySchoolDataCS(   #计算机院校历史录取数据表
    HSrange int,                    #用户最高排名
    LSrange int,                    #用户最低排名
    Syear int,                      #年份  建立索引index
    SchoolNum varchar(10),                  #院校编码
    SchoolName varchar(20),         #院校名称
    primary key(SchoolNum,Syear),
    foreign key(SchoolNum) references SchoolRangeCS(SchoolNum)
);

create table HistorySchoolDataES(   #电信院校历史录取数据表
    srange int,                     #用户排名
    HSrange int,                    #用户最高排名
    LSrange int,                    #用户最低排名
    Syear int,                      #年份
    SchoolNum varchar(10),                  #院校编码
    SchoolName varchar(20),         #院校名称
    primary key(SchoolNum,Syear),
    foreign key(SchoolNum) references SchoolRangeES(SchoolNum)
);



