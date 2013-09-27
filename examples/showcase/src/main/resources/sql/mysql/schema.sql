    drop table if exists ss_user_role;

    drop table if exists ss_role;

    drop table if exists ss_user;
    
    drop table if exists ss_team;

    create table ss_role (
        id MEDIUMINT NOT NULL AUTO_INCREMENT,
    	name varchar(255) not null,
    	permissions varchar(255),
        primary key (id)
    );

    create table ss_user (
       	id MEDIUMINT NOT NULL AUTO_INCREMENT,
        login_name varchar(255) not null,
        name varchar(64),
        password varchar(255),
        salt varchar(64),
        email varchar(128),
        status varchar(32),
        team_id bigint,
        primary key (id)
    );

    create table ss_user_role (
        user_id bigint not null,
        role_id bigint not null,
        primary key (user_id, role_id)
    );
    
   	create table ss_team (
       	id MEDIUMINT NOT NULL AUTO_INCREMENT,
    	name varchar(255) not null,
    	master_id bigint,
        primary key (id)
    );