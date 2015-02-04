CREATE TABLE categories (
	id		SMALLINT(4) NOT NULL auto_increment,
	name	VARCHAR(20),
	PRIMARY KEY (id)
);

CREATE TABLE entries (
	id		SMALLINT(4) NOT NULL auto_increment,
	cat_id	SMALLINT(4),
	title	VARCHAR(100),
	content	VARCHAR(1000),
	ts_c 	TIMESTAMP NULL DEFAULT 0,
	ts_m 	TIMESTAMP NULL DEFAULT 0,  
	PRIMARY KEY (id)
);

CREATE TABLE comments (
	id		SMALLINT(4) NOT NULL auto_increment,
	ent_id	SMALLINT(4),
	title	VARCHAR(100),
	content	VARCHAR(1000),
	ts_c 	TIMESTAMP NULL DEFAULT 0,
	ts_m 	TIMESTAMP NULL DEFAULT 0,  
	PRIMARY KEY (id)
);

CREATE TABLE logins (
	id		SMALLINT(4) NOT NULL auto_increment,
	name	VARCHAR(20),
	pass	VARCHAR(40),
	PRIMARY KEY (id)
);

ALTER TABLE entries ADD CONSTRAINT FK_entry_category foreign key entries(cat_id) references categories(id);
ALTER TABLE comments ADD CONSTRAINT FK_comment_entry foreign key comments(ent_id) references entries(id);


