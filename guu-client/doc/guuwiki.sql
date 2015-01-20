/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014/7/22 23:36:35                           */
/*==============================================================*/


drop table if exists guu_sys_access;

drop table if exists guu_sys_access_resources;

drop table if exists guu_sys_authority;

drop table if exists guu_sys_authority_resources;

drop table if exists guu_sys_resources;

drop table if exists guu_sys_role;

drop table if exists guu_sys_role_authority;

drop table if exists guu_sys_user;

drop table if exists guu_sys_user_access;

drop table if exists guu_sys_user_role;

/*==============================================================*/
/* Table: guu_sys_access                                        */
/*==============================================================*/
create table guu_sys_access
(
   access_id            varchar(32) not null,
   access_name          varchar(32),
   access_code          varchar(32),
   creat_time           datetime,
   module               varchar(20),
   access_status        int,
   issys                int,
   remark               varchar(100),
   primary key (access_id)
);

/*==============================================================*/
/* Table: guu_sys_access_resources                              */
/*==============================================================*/
create table guu_sys_access_resources
(
   access_resources_id  varchar(32) not null,
   access_id            varchar(32),
   resources_id         varchar(32),
   ar_status            int,
   primary key (access_resources_id)
);

/*==============================================================*/
/* Table: guu_sys_authority                                     */
/*==============================================================*/
create table guu_sys_authority
(
   authority_id         varchar(32) not null,
   authority_name       varchar(32),
   authority_desc       varchar(100),
   authority_type       varchar(20),
   parent_id            varchar(32),
   creat_time           datetime,
   module               varchar(20),
   authority_status     int,
   issys                int,
   remark               varchar(100),
   primary key (authority_id)
);

/*==============================================================*/
/* Table: guu_sys_authority_resources                           */
/*==============================================================*/
create table guu_sys_authority_resources
(
   authority_resources_id varchar(32) not null,
   authority_id         varchar(32),
   resources_id         varchar(32),
   ar_status            int,
   primary key (authority_resources_id)
);

/*==============================================================*/
/* Table: guu_sys_resources                                     */
/*==============================================================*/
create table guu_sys_resources
(
   resources_id         varchar(32) not null,
   resources_code       varchar(32),
   resources_name       varchar(32),
   resources_url        varchar(300),
   resources_type       varchar(20),
   creat_time           datetime,
   parent_id            varchar(32),
   resources_desc       varchar(100),
   res_status           int,
   issys                int,
   remark               varchar(100),
   primary key (resources_id)
);

/*==============================================================*/
/* Table: guu_sys_role                                          */
/*==============================================================*/
create table guu_sys_role
(
   role_id              varchar(32) not null,
   role_name            varchar(32),
   role_code            varchar(32),
   creat_user           varchar(32),
   creat_time           datetime,
   role_status          int,
   issys                int,
   remark               varchar(100),
   primary key (role_id)
);

/*==============================================================*/
/* Table: guu_sys_role_authority                                */
/*==============================================================*/
create table guu_sys_role_authority
(
   role_authority_id    varchar(32) not null,
   role_id              varchar(32),
   authority_id         varchar(32),
   ra_status            int,
   primary key (role_authority_id)
);

/*==============================================================*/
/* Table: guu_sys_user                                          */
/*==============================================================*/
create table guu_sys_user
(
   user_id              varchar(32) not null,
   user_name            varchar(32),
   login_name           varchar(32),
   login_password       varchar(64),
   email                varchar(32),
   telphone             varchar(20),
   creat_time           datetime,
   creat_user           varchar(32),
   user_type            varchar(20),
   user_status          int,
   issys                int,
   user_desc            varchar(100),
   remark               varchar(100),
   primary key (user_id)
);

/*==============================================================*/
/* Table: guu_sys_user_access                                   */
/*==============================================================*/
create table guu_sys_user_access
(
   user_access_id       varchar(32) not null,
   user_id              varchar(32),
   access_id            varchar(32),
   ua_status            int,
   primary key (user_access_id)
);

/*==============================================================*/
/* Table: guu_sys_user_role                                     */
/*==============================================================*/
create table guu_sys_user_role
(
   user_role_id         varchar(32) not null,
   user_id              varchar(32),
   role_name            varchar(32),
   ur_status            int,
   primary key (user_role_id)
);

