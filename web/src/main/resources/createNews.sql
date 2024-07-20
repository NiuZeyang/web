create table if not exists `user`
(
    id int auto_increment primary key ,
    name varchar(20) not null,
    update_time datetime not null default current_timestamp on update current_timestamp
);
SET @auto_id = 0;

alter table user add content varchar(200) not null;
ALTER TABLE `user` AUTO_INCREMENT = 1;
