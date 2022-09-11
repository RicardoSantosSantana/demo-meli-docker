use dbmeli;

CREATE TABLE IF NOT EXISTS tokens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    access_token  VARCHAR(255) NOT NULL,
	token_type    CHAR(7)      NOT NULL,
	expires_in    CHAR(7)      NOT NULL,
	scope         CHAR(50)     NOT NULL,
	user_id       CHAR(20)     NOT NULL,
	refresh_token VARCHAR(255) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS log (
   id INT AUTO_INCREMENT PRIMARY KEY,
   message VARCHAR(200),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
   updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS products (
    id 					VARCHAR(25) 	PRIMARY KEY,    
	title    			VARCHAR(250)    NOT NULL,
	site_id				VARCHAR(3)		NULL,
	subtitle    		VARCHAR(250)   	NULL,
	seller_id			INT(11)			NULL,
	category_id			VARCHAR(50)   	NULL,
	official_store_id	VARCHAR(250)   	NULL,
	price				DECIMAL(10,2)	NOT NULL,
	base_price			DECIMAL(10,2)	NOT NULL,
	original_price		DECIMAL(10,2)	NULL,
	currency_id			VARCHAR(5)   	NULL,
	initial_quantity	INT(11)		   	NULL,
	available_quantity	INT(11)		   	NULL,
	sold_quantity		INT(11)		   	NULL,
	sale_terms 			JSON,
	buying_mode			VARCHAR(50)   	NULL,
	listing_type_id		VARCHAR(50)   	NULL,
	start_time			VARCHAR(50)   	NULL,
	stop_time			VARCHAR(50)   	NULL,
	`condition`			VARCHAR(30)   	NULL,
	permalink			VARCHAR(300)	NOT NULL,
	thumbnail_id		VARCHAR(100)   	NULL,
	thumbnail			VARCHAR(250)	NULL,
	secure_thumbnail	VARCHAR(250)   	NULL,
	`status`			VARCHAR(10)   	NULL,
	warranty			VARCHAR(50)   	NULL,
	catalog_product_id	VARCHAR(50)   	NULL,
	domain_id			VARCHAR(50)   	NULL,
	health				DECIMAL(10,2)  	NULL,
	pictures 			json	,
    `description` 		json	,
    created_at 			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP ,
    updated_at 			DATETIME 		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS users (
	id 				INT AUTO_INCREMENT PRIMARY KEY,
	id_social 		VARCHAR(50)		NULL,
	`provider` 		VARCHAR(50)		NULL,
	nickname 		VARCHAR(50)		NULL,
	`name` 			VARCHAR(100)	NOT NULL,
	email 			VARCHAR(100)	UNIQUE NOT NULL,
	avatar_url 		VARCHAR(200)	NULL,
	`password` 		VARCHAR(100)	NULL,
	client_id 		VARCHAR(100)	NULL,
	client_secret 	VARCHAR(100)	NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ,
   	updated_at DATETIME DEFAULT  CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=INNODB;