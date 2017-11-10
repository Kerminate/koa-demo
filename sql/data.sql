create table if not exists `data` (
  `id` int(11) not null auto_increment,
  `data_info` json default null,
  `create_time` varchar(20) default null,
  `modified_time` varchar(20) default null,
  `level` int(11) default null,
  primary key(`id`)
) engine=innodb default charset=utf8
