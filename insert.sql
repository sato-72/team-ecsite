/* 外部キー制約を有効にする */
SET foreign_key_checks=1;

USE grapesdb;

INSERT INTO mst_user(user_name,password,family_name,first_name,family_name_kana,first_name_kana,gender) VALUES ("yamada@gmail.com","123456","山田","太郎","やまだ","たろう",0);

INSERT INTO mst_category (category_name,category_description)VALUES("犬","犬のカテゴリーです");
INSERT INTO mst_category (category_name,category_description)VALUES("猫","猫のカテゴリーです");
INSERT INTO mst_category (category_name,category_description)VALUES("小動物","小動物のカテゴリーです");
INSERT INTO mst_category (category_name,category_description)VALUES("爬虫類","爬虫類のカテゴリーです");
INSERT INTO mst_category (category_name,category_description)VALUES("鳥","鳥のカテゴリーです");

INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("柴犬","しばいぬ","性別：男の子　性格：賢く、勇敢",1,350000,"/img/picture01.jpg","2020/07/13","ペットショップA店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("トイプードル","といぷーどる","性別：女の子　性格：聡明で、甘えん坊",1,600000,"/img/picture02.jpg","2020/07/16","ペットショップB店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("ゴールデンレトリバー","ごーるでんれとりばー","性別：男の子　性格：おおらかで、友好的",1,250000,"/img/picture03.jpg","2020/07/14","ペットショップC店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("アメリカンショートヘア","あめりかんしょーとへあ","性別：女の子　性格：温厚で、物怖じしない",2,300000,"/img/picture04.jpg","2020/07/20","ペットショップD店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("マンチカン","まんちかん","性別：男の子　性格：甘えん坊で、人懐っこい",2,500000,"/img/picture05.jpg","2020/07/21","ペットショップE店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("ロシアンブルー","ろしあんぶるー","性別：女の子　性格：賢く、めったに鳴かない",2,350000,"/img/picture06.jpg","2020/07/15","ペットショップF店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("ハムスター","はむすたー","性別：男の子　性格：綺麗好きで、少し臆病",3,1000,"/img/picture07.jpg","2020/07/17","ペットショップG店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("ハリネズミ","はりねずみ","性別：女の子　性格：おとなしく、少し臆病",3,10000,"/img/picture08.jpg","2020/07/25","ペットショップH店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("ウサギ","うさぎ","性別：男の子　性格：好奇心旺盛",3,20000,"/img/picture09.jpg","2020/07/12","ペットショップI店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("トカゲ","とかげ","性別：女の子　性格：おとなしく、温厚",4,10000,"/img/picture10.jpg","2020/07/19","ペットショップJ店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("カエル","かえる","性別：男の子　性格：食欲旺盛",4,10000,"/img/picture11.jpg","2020/07/20","ペットショップK店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("カメ","かめ","性別：女の子　性格：温厚で、少し臆病",4,5000,"/img/picture12.jpg","2020/07/27","ペットショップL店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("インコ","いんこ","性別：男の子　性格：おしゃべりする",5,7000,"/img/picture13.jpg","2020/07/23","ペットショップM店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("オウム","おうむ","性別：女の子　性格：元気で、人懐っこい",5,10000,"/img/picture14.jpg","2020/07/22","ペットショップN店");
INSERT INTO mst_product(product_name,product_name_kana,product_description,category_id,price,image_full_path,release_date,release_company) VALUES ("フクロウ","ふくろう","性別：男の子　性格：温厚で、甘えん坊",5,250000,"/img/picture15.jpg","2020/07/26","ペットショップO店");