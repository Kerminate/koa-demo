create table if not exists `user` (
  `id` int(11) not null auto_increment,
  `email` varchar(255) default null,
  `password` varchar(255) default null,
  `name` varchar(255) default null,
  `nick` varchar(255) default null,
  `detail_info` json default null,
  `create_time` varchar(20) default null,
  `modified_time` varchar(20) default null,
  `level` int(11) default null,
  primary key(`id`)
) engine=innodb default charset=utf8;

insert into `user` set email='1@example.com', password='123456';
insert into `user` set email='2@example.com', password='123456';
insert into `user` set email='3@example.com', password='123456';
