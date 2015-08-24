CREATE TABLE `account` (
   `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
   `USER_LOGIN` varchar(45) DEFAULT NULL,
   `EMAIL` varchar(100) DEFAULT NULL,
   `PASSWORD` varchar(45) DEFAULT NULL,
   `FIRST_NAME` varchar(100) DEFAULT NULL,
   `LAST_NAME` varchar(100) DEFAULT NULL,
   `CITY` varchar(45) DEFAULT NULL,
   `STATE` varchar(45) DEFAULT NULL,
   `ZIP` varchar(45) DEFAULT NULL,
   `PHONE_NUMBER` varchar(45) DEFAULT NULL,
   `COUNTRY` varchar(45) DEFAULT NULL,
   `ADDRESS` varchar(1000) DEFAULT NULL,
   `ADDRESS2` varchar(1000) DEFAULT NULL,
   `ENABLED` tinyint(1) DEFAULT NULL,
   PRIMARY KEY (`ACCOUNT_ID`)
 ) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
 
CREATE TABLE `cart` (
   `CART_ID` int(11) NOT NULL AUTO_INCREMENT,
   `ACCOUNT_ID` int(11) DEFAULT NULL,
   `INVENTORY_ID` int(11) DEFAULT NULL,
   `QUANTITY` int(11) DEFAULT NULL,
   `PRICE_PER_ITEM` varchar(45) DEFAULT NULL,
   `SHIPPING_COST` varchar(45) DEFAULT NULL,
   `TAX` varchar(45) DEFAULT NULL,
   PRIMARY KEY (`CART_ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
CREATE TABLE `employees` (
   `username` varchar(20) NOT NULL DEFAULT '',
   `password` varchar(20) NOT NULL DEFAULT '',
   `enabled` tinyint(1) NOT NULL DEFAULT '1',
   PRIMARY KEY (`username`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
CREATE TABLE `inventory` (
   `INVENTORY_ID` int(11) NOT NULL,
   `INVENTORY_TYPE_CD` int(11) DEFAULT NULL,
   `INVENTORY_TXT` varchar(45) DEFAULT NULL,
   `INVENTORY_DESCRIPTION` varchar(5000) DEFAULT NULL,
   `INVENTORY_CARE` varchar(5000) DEFAULT NULL,
   `INVENTORY_SIZE_DESC` varchar(5000) DEFAULT NULL,
   `BRAND` varchar(45) DEFAULT NULL,
   `PRODUCT_CODE` varchar(45) DEFAULT NULL,
   `STOCK_QUANTITY` int(11) DEFAULT NULL,
   `SIZE` varchar(10) DEFAULT NULL,
   `COLOR` varchar(45) DEFAULT NULL,
   `PRICE_USD` varchar(10) DEFAULT NULL,
   `THUMBNAIL` varchar(500) DEFAULT NULL,
   PRIMARY KEY (`INVENTORY_ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
CREATE TABLE `inventory_type_code` (
   `inventory_type_cd` int(11) NOT NULL,
   `inventory_type_txt` varchar(45) DEFAULT NULL,
   `inventory_type_description` varchar(5000) DEFAULT NULL,
   PRIMARY KEY (`inventory_type_cd`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
 
CREATE TABLE `person` (
   `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
   `name` varchar(20) NOT NULL DEFAULT '',
   `country` varchar(20) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `roles` (
   `USER_LOGIN` varchar(20) NOT NULL DEFAULT '',
   `ROLE` varchar(20) NOT NULL DEFAULT '',
   PRIMARY KEY (`USER_LOGIN`,`ROLE`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sizing` (
   `SIZING_ID` int(11) NOT NULL,
   `INVENTORY_ID` int(11) DEFAULT NULL,
   `BUST` int(11) DEFAULT NULL,
   `WAIST` int(11) DEFAULT NULL,
   `HIP` int(11) DEFAULT NULL,
   `SHOULDER_WIDTH` int(11) DEFAULT NULL,
   `FRONT_BODY_LENGTH` int(11) DEFAULT NULL,
   PRIMARY KEY (`SIZING_ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `transaction` (
   `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
   `ACCOUNT_ID` int(11) DEFAULT NULL,
   `ORDER_QUANTITY` varchar(45) DEFAULT NULL,
   `SHIP_NAME` varchar(200) DEFAULT NULL,
   `SHIP_ADDRESS` varchar(1000) DEFAULT NULL,
   `SHIP_ADDRESS2` varchar(1000) DEFAULT NULL,
   `CITY` varchar(45) DEFAULT NULL,
   `STATE` varchar(45) DEFAULT NULL,
   `ZIP` varchar(20) DEFAULT NULL,
   `COUNTRY` varchar(45) DEFAULT NULL,
   `PHONE` varchar(20) DEFAULT NULL,
   `SHIPPING_COST` varchar(45) DEFAULT NULL,
   `TAX` varchar(45) DEFAULT NULL,
   `ORDER_EMAIL` varchar(45) DEFAULT NULL,
   `DATE` timestamp NULL DEFAULT NULL,
   `SHIPPED` tinyint(4) DEFAULT NULL,
   `TRACKING_NUMBER` varchar(100) DEFAULT NULL,
   `INVENTORY_ID` int(11) DEFAULT NULL,
   `ORDER_COST` varchar(45) DEFAULT NULL,
   PRIMARY KEY (`TRANSACTION_ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

 