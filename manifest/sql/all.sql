# gen code
# gf gen dao -l "pgsql:root:@tcp(localhost:26257)/test1" -t "users"


/*CREATE TABLE IF NOT EXISTS users
(
id VARCHAR(40)  PRIMARY KEY,
user_type SMALLINT DEFAULT 0,
phone VARCHAR(20),
email VARCHAR(60),
apple_uid VARCHAR(255),
password VARCHAR(255),
salt VARCHAR(32),
realname VARCHAR(255),
avatar VARCHAR(255),
status VARCHAR(20),
created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
invited_by VARCHAR(40),
invite_code VARCHAR(20),
prefer_signin_method VARCHAR(10)
);*/

CREATE TABLE IF NOT EXISTS dialog
(
    id VARCHAR(40) PRIMARY KEY,
    uid VARCHAR(40),
    org_id VARCHAR(40),
    title VARCHAR(255),
    describe VARCHAR(512),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

#create table message

CREATE TABLE IF NOT EXISTS message
(
    id VARCHAR(40) PRIMARY KEY,
    uid VARCHAR(40),
    org_id VARCHAR(40),
    sid VARCHAR(40),
    t int,
    r int,
    content text,
    url VARCHAR(512),
    width bigint,
    height bigint,
    md5 VARCHAR(40),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

alter table message add column url varchar(512);
alter table message add column md5 varchar(40);
alter table message add column width bigint;
alter table message add column height bigint;
alter table message drop column t;
alter table message add column t int;


CREATE TABLE IF NOT EXISTS tool
(
    id VARCHAR(40) PRIMARY KEY,
    type VARCHAR(40),
    org_id VARCHAR(40),
    uid VARCHAR(40),
    name VARCHAR(40),
    des VARCHAR(512),
    tags VARCHAR(40) [],
    shared VARCHAR(40) [],
    code text,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS uprofile  
(
    id VARCHAR(40) PRIMARY KEY,
    org_id VARCHAR(40),
    uid VARCHAR(40),
    avatar VARCHAR(255),
    nickname VARCHAR(255),
    status VARCHAR(40),
    des VARCHAR(512),
    home_page VARCHAR(255),
    theme_mode VARCHAR(10),
    theme_color bigint,
    locale VARCHAR(10),
    timezone VARCHAR(10),
    use_stream boolean,
    selected_bot VARCHAR(40),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS cost_detail 
(
    id VARCHAR(40) PRIMARY KEY,
    group_id VARCHAR(40) [],
    org_id VARCHAR(40),
    uid VARCHAR(40),
    tid VARCHAR(40),
    sid VARCHAR(40),
    msg_id VARCHAR(40),
    cost bigint,
    tokens bigint,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS account  
(
    id VARCHAR(40) PRIMARY KEY,
    group_id VARCHAR(40) [],
    org_id VARCHAR(40),
    uid VARCHAR(40),
    status VARCHAR(40),
    balance bigint,
    cost bigint,
    cost_tokens int,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);



