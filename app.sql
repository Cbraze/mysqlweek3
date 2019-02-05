Create database if not exists app;

use app;

drop table if exists posts;
drop table if exists users;
drop table if exists comments;

create table users(
user_id int(20) not null auto_increment primary key,
username varchar(20) not null,
password varchar(20) not null,
email varchar(25) not null,
street varchar(30) null,
city char(15) not null,
zip char(5) not null,
state varchar(2) not null
	
);

create table posts(
post_id int(20) not null auto_increment primary key,
foreign key (user_id) refrences users(user_id),
created_at timestamp default current_timestamp not null,
post_content varchar(200) not null

);

create table comments(
comment_id int(20) not null auto_increment primary key,
foreign key (post_id) refrences posts(post_id),
foreign key (user_id) refrences users(user_id),
post_content varchar(200) not null,
comment_content varchar(200) not null,
created_at timestamp default current_timestamp not null



);