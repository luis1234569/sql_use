/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     31/8/2022 10:32:23                           */
/*==============================================================*/


alter table UZMTOPTION
   drop constraint FK_UZMTOPTI_FK_UZMTOP_UZNTSYST;

drop index FK_UZMTOPTION_SYSTEM_ID_FK;

drop table UZMTOPTION cascade constraints;

drop table UZNTSYSTEM cascade constraints;

/*==============================================================*/
/* Table: UZMTOPTION                                            */
/*==============================================================*/
create table UZMTOPTION 
(
   UZMTOPTION_ID        INTEGER              not null,
   UZNTSYSTEM_ID        INTEGER,
   UZMTOPTION_CODE      CHAR(200),
   UZMTOPTION_NAME      CHAR(200),
   UZMTOPTION_SYSTEM_ID INTEGER,
   UZMTOPTION_ACTIVE    SMALLINT,
   UZMTOPTION_CREATION_DATE TIMESTAMP,
   UZMTOPTION_USER_CREATION CHAR(200),
   UZMTOPTION_CHANGE_DATE TIMESTAMP,
   UZMTOPTION_USER_CHANGE CHAR(200),
   constraint PK_UZMTOPTION primary key (UZMTOPTION_ID)
);

/*==============================================================*/
/* Index: FK_UZMTOPTION_SYSTEM_ID_FK                            */
/*==============================================================*/
create index FK_UZMTOPTION_SYSTEM_ID_FK on UZMTOPTION (
   UZNTSYSTEM_ID ASC
);

/*==============================================================*/
/* Table: UZNTSYSTEM                                            */
/*==============================================================*/
create table UZNTSYSTEM 
(
   UZNTSYSTEM_ID        INTEGER              not null,
   UZMTSYSTEM_CODE      CHAR(200),
   UZMTSYSTEM_NAME      CHAR(256),
   UZMTSYSTEM_ACTIVE    SMALLINT,
   UZMTSYSTEM_CREATION_DATE TIMESTAMP,
   UZMTSYSTEM_USER_CREATION CHAR(200),
   UZMTSYSTEM_CHANGE_DATE TIMESTAMP,
   UZMTSYSTEM_USER_CHANGE CHAR(200),
   constraint PK_UZNTSYSTEM primary key (UZNTSYSTEM_ID)
);

alter table UZMTOPTION
   add constraint FK_UZMTOPTI_FK_UZMTOP_UZNTSYST foreign key (UZNTSYSTEM_ID)
      references UZNTSYSTEM (UZNTSYSTEM_ID);

