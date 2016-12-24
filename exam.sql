create database qkg;
  use qgk;
create table Board(                                     --总吧表
  ID int auto_increment primary key,
  Name varchar(64) not null,
  Creation_date date not null,
  Description varchar(255) not null
);
create table Forum(                                     --论坛表
  FID int auto_increment primary key,
  Forum_Name varchar(64) not null,
  BBS_described varchar(255) not null
);
create table Article(                                   --帖子
  AID int auto_increment primary key,
  Theme varchar(64),
  Posting_time timestamp not null,

  View_count int,
  Content text not null,
  UID int not null,
  LastReplyDate timestamp not null,
  LastReplyUID int not null
);
create table Reply(                                     --回复表
  Reply_time timestamp primary key not null,
  Content varchar(255),
  Title
  UID int not null,
  ReplyDate date not null,
);
create table Moderator(                                 --版主表
  FID int not null,
  UID int not null,
  OperUID int,
  OperDate date not null,
  foreign key(FID,UID),
  primary key(FID,UID)
);
create table User(                                    --用户表
  UID int auto_increment primary key,
  UserName varchar(64) not null,
  Password varchar(16) not null
);
create table Role(                                    --角色表
  RoleID int auto_increment primary key,
  RoleName varchar(16)
);
create table jurisdiction(                           --权限
  RID int auto_increment primary key,
  RightName varchar(32)
);
create table Entity7(                                --关系表1
  UID int not null,
  RoleID int not null,
  primary key(UID,RoleID),
  foreign key(UID,RoleID)
);
create table Entity9(                                --关系表2
  RID int,
  RoleID int,
  primary key(RID,RoleID),
  foreign key(RID,RoleID)
);
create table UserDesc(                              --用户信息表
  UID int
  Deescl varchar(255) not null,
  Name varchar(16) not null,
  Sex varchar(8) not null,
  Brithday date not null,
  foreign key(UID),
  primary key(UID)
);

insert Board values(null,'百度贴吧',curdate(),'此处可以随意自由的言论,可以谈天说地,可以聊天、游戏、学习。不论你喜爱如何,你的心归属哪里,都可以在这里发帖,玩乐,寻找和你一样的朋友');

insert Forum values(null,'游戏吧','用心玩好每个角色');
insert Forum values(null,'学习吧','好好学习，天天向上')；

insert Article values(null,'如何学好java',now(),100000,'要用心取学，关在小黑屋里面待2年',1,sysdate(),1,);
