drop table if exists user;
drop table if exists post;
drop table if exists comment;

CREATE TABLE user (
	username varchar(20) not null,
        first_name varchar(15) not null,
        last_name varchar(15) not null,
        email varchar(30) not null,
        password varchar(15) not null,
        phone_number varchar(10) not null,
        primary key (username)
);

CREATE TABLE post (
	post_id int not null auto_increment,
        username varchar(20) not null,
        post_characters varchar(200) not null,
        post_time datetime not null default current_timestamp,
        primary key (post_id),
        foreign key (username) references user (username)
);

CREATE TABLE comment (
	comment_id int not null auto_increment,
		username varchar(20) not null,
        post_id int not null,
        comment_characters varchar(150) not null,
        comment_time datetime not null default current_timestamp,
        primary key (comment_id),
        foreign key (username) references user (username),
        foreign key (post_id) references post (post_id)
)