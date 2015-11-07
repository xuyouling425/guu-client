/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2015/11/7 12:32:59                           */
/*==============================================================*/


drop table if exists guu_cms_about;

drop table if exists guu_cms_business;

drop table if exists guu_cms_message;

drop table if exists guu_cms_project;

drop table if exists guu_config;

drop table if exists guu_sys_access;

drop table if exists guu_sys_authority;

drop table if exists guu_sys_authority_resources;

drop table if exists guu_sys_resources;

drop table if exists guu_sys_role;

drop table if exists guu_sys_role_access;

drop table if exists guu_sys_role_authority;

drop table if exists guu_sys_user;

drop table if exists guu_sys_user_role;

drop table if exists guu_template;

/*==============================================================*/
/* Table: guu_cms_about                                         */
/*==============================================================*/
create table guu_cms_about
(
   about_id             varchar(32) not null,
   company_name         varchar(100),
   company_en           varchar(100),
   company_address      varchar(300),
   image_path           varchar(100),
   contact_person       varchar(20),
   company_email        varchar(60),
   company_fax          varchar(20),
   company_phone        varchar(60),
   company_desc         varchar(500),
   primary key (about_id)
);

/*==============================================================*/
/* Table: guu_cms_business                                      */
/*==============================================================*/
create table guu_cms_business
(
   id                   varchar(32) not null,
   name                 varchar(60),
   description          varchar(300),
   image                varchar(100),
   content              text,
   primary key (id)
);

/*==============================================================*/
/* Table: guu_cms_message                                       */
/*==============================================================*/
create table guu_cms_message
(
   pid                  varchar(32) not null,
   type                 int,
   status               int,
   title                varchar(100),
   image                varchar(100),
   description          varchar(300),
   content              text,
   user_id              varchar(32),
   user_name            varchar(32),
   user_phone           varchar(32),
   user_email           varchar(60),
   creat_time           datetime,
   sequence             int,
   primary key (pid)
);

/*==============================================================*/
/* Table: guu_cms_project                                       */
/*==============================================================*/
create table guu_cms_project
(
   pid                  varchar(32) not null,
   title                varchar(60),
   description          varchar(300),
   image                varchar(100),
   content              text,
   project_url          varchar(100),
   status               int(4),
   primary key (pid)
);

/*==============================================================*/
/* Table: guu_config                                            */
/*==============================================================*/
create table guu_config
(
   config_id            varchar(32) not null,
   config_name          varchar(500),
   config_value         varchar(1000),
   express              varchar(300),
   status               int,
   description          varchar(500),
   default_value        varchar(1000),
   template_id          varchar(32),
   primary key (config_id)
);

/*==============================================================*/
/* Table: guu_sys_access                                        */
/*==============================================================*/
create table guu_sys_access
(
   access_id            varchar(32) not null,
   access_name          varchar(32),
   access_url           varchar(300),
   deep                 int,
   parent_id            varchar(32),
   access_status        int,
   remark               varchar(100),
   primary key (access_id)
);

/*==============================================================*/
/* Table: guu_sys_authority                                     */
/*==============================================================*/
create table guu_sys_authority
(
   authority_id         varchar(32) not null,
   authority_code       varchar(32),
   authority_name       varchar(32),
   authority_desc       varchar(50),
   module               varchar(32),
   authority_status     int,
   issys                int,
   primary key (authority_id)
);

/*==============================================================*/
/* Table: guu_sys_authority_resources                           */
/*==============================================================*/
create table guu_sys_authority_resources
(
   authority_res_id     varchar(32) not null,
   authority_id         varchar(32),
   resources_id         varchar(32),
   ar_status            int,
   primary key (authority_res_id)
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
/* Table: guu_sys_role_access                                   */
/*==============================================================*/
create table guu_sys_role_access
(
   role_access_id       varchar(32) not null,
   role_id              varchar(32),
   access_id            varchar(32),
   ua_status            int,
   primary key (role_access_id)
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
   email                varchar(60),
   photo                varchar(100),
   phone                varchar(20),
   telphone             varchar(20),
   creat_time           datetime,
   creat_user           varchar(32),
   user_type            varchar(20),
   role_id              varchar(32),
   role_code            varchar(32),
   user_status          int,
   issys                int,
   user_desc            varchar(300),
   content              text,
   remark               varchar(100),
   primary key (user_id)
);

/*==============================================================*/
/* Table: guu_sys_user_role                                     */
/*==============================================================*/
create table guu_sys_user_role
(
   user_role_id         varchar(32) not null,
   user_id              varchar(32),
   role_id              varchar(32),
   ur_status            int,
   primary key (user_role_id)
);

/*==============================================================*/
/* Table: guu_template                                          */
/*==============================================================*/
create table guu_template
(
   template_id          varchar(32) not null,
   template_name        varchar(32),
   user_id              varchar(32),
   user_name            varchar(32),
   create_time          datetime,
   status               int,
   local_addr           varchar(150),
   template_index       varchar(150),
   template_img         varchar(300),
   template_desc        varchar(300),
   type                 int,
   primary key (template_id)
);

