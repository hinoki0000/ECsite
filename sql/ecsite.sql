drop database if exists ecsite;

create database if not exists ecsite;
use ecsite;

drop table if exists login_user_transaction;

create table login_user_transaction(
id int not null primary key auto_increment,
user_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
insert_date datetime,
updated_date datetime
);

drop table if exists cart_info;

create table cart_info(
id int not null primary key auto_increment,
user_id varchar(32),
item_id int,
item_name varchar(255),
count int,
total_price int,
purchase_flg smallint default 0,
insert_date datetime,
update_date datetime
);

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_id int,
item_name varchar(30),
item_price int,
item_stock int,
total_count int,
total_price int,
image_file_path varchar(50),
image_file_name varchar(50),
insert_date datetime,
update_date datetime
);

drop table if exists user_buy_item_transaction;

create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);


INSERT INTO item_info_transaction(id,item_name, item_price, item_stock,image_file_path,image_file_name) VALUES(1,"カメラ", 3000, 20,"images/camera.jpg","camera.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(2,"キャンドル",500,30,"images/candle.jpg","candle.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(3,"天井扇",8000,15,"images/ceilingfan.jpg","ceilingfan.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(4,"コーヒーミル",1000,47,"images/coffeemill.jpg","coffeemill.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(5,"モダン風照明",3000,25,"images/illumination.jpg","illumination.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(6,"ビー玉",200,50,"images/marble.jpg","marble.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(7,"お香",1500,40,"images/perfume.jpg","perfume.jpg");
INSERT INTO item_info_transaction(id,item_name,item_price,item_stock,image_file_path,image_file_name) VALUES(8,"スタンド",3500,30,"images/stank.jpg","stand.jpg");


INSERT INTO login_user_transaction(id,user_id, login_pass, user_name) VALUES(1,"a", "a","a");