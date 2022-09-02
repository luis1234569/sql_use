alter table UZMTNOTIFICATION
   drop constraint FK_UZMTNOTI_FK_UZMTNO_UZMTOPTI;

alter table UZMTNOTIFICATION
   drop constraint FK_UZMTNOTI_FK_UZMTNO_UZMTNOTI;

alter table UZMTOPTION
   drop constraint FK_UZMTOPTI_FK_UZMTOP_UZNTSYST;

drop table UZMTGROUP cascade constraints;

drop index FK_UZMTNOTIFICATION_TYPE_ID_FK;

drop index FK_UZMTNOTIFICATION_OPTION_ID_;

drop table UZMTNOTIFICATION cascade constraints;

drop table UZMTNOTIFICATIONS_TYPE cascade constraints;

drop index FK_UZMTOPTION_SYSTEM_ID_FK;

drop table UZMTOPTION cascade constraints;

drop table UTIC.UZNTSYSTEM cascade constraints;

drop user UTIC;

/*==============================================================*/
/* User: UTIC                                                   */
/*==============================================================*/
create user UTIC 
  identified by "";

/*==============================================================*/
/* Table: UZMTGROUP                                             */
/*==============================================================*/
create table UZMTGROUP (
   UZMTGROUP_ID         INTEGER               not null,
   UZMTGROUP_NAME       CHAR(200),
   UZMTGROUP_DESCRIPCION CHAR(200),
   UZMTGROUP_SCRIPT     CHAR(200),
   UZMTGROUP_PARAMETRO  SMALLINT,
   UZMTGROUP_ACTIVE     SMALLINT,
   UZMTGROUP_CREATION_DATE TIMESTAMP,
   UZMTGROUP_USER_CREATION CHAR(200),
   UZMTGROUP_CHANGE_DATE TIMESTAMP,
   UZMTGROUP_USER_CHANGE CHAR(200),
   constraint PK_UZMTGROUP primary key (UZMTGROUP_ID)
);

/*==============================================================*/
/* Table: UZMTNOTIFICATION                                      */
/*==============================================================*/
create table UZMTNOTIFICATION (
   UZMTNOTIFICATION_ID  INTEGER               not null,
   UZMTOPTION_ID        INTEGER,
   UZMTNOTIFICATION_TYPE_ID INTEGER,
   UZMTNOTIFICATION_MESSAGE CHAR(200),
   UZMTNOTIFICATION_RECEIVER CHAR(200),
   UZMTNOTIFICATION_ACTIVE SMALLINT,
   UZMTNOTIFICATION_READ SMALLINT,
   UZMTNOTIFICATION_READ_DATE TIMESTAMP,
   UZMTNOTIFICATION_IP  CHAR(200),
   UZMTNOTIFICATION_AGENTE CHAR(200),
   UZMTNOTIFICATION_CREATION_DATE TIMESTAMP,
   UZMTNOTIFICATION_USER_CREATION CHAR(200),
   UZMTNOTIFICATION_CHANGE_DATE TIMESTAMP,
   UZMTNOTIFICATION_USER_CHANGE CHAR(200),
   constraint PK_UZMTNOTIFICATION primary key (UZMTNOTIFICATION_ID)
);

/*==============================================================*/
/* Index: FK_UZMTNOTIFICATION_OPTION_ID_                        */
/*==============================================================*/
create index FK_UZMTNOTIFICATION_OPTION_ID_ on UZMTNOTIFICATION (
   UZMTOPTION_ID ASC
);

/*==============================================================*/
/* Index: FK_UZMTNOTIFICATION_TYPE_ID_FK                        */
/*==============================================================*/
create index FK_UZMTNOTIFICATION_TYPE_ID_FK on UZMTNOTIFICATION (
   UZMTNOTIFICATION_TYPE_ID ASC
);

/*==============================================================*/
/* Table: UZMTNOTIFICATIONS_TYPE                                */
/*==============================================================*/
create table UZMTNOTIFICATIONS_TYPE (
   UZMTNOTIFICATION_TYPE_ID INTEGER               not null,
   UZMTNOTIFICATION_TYPE_NAME CHAR(200),
   UZMTNOTIFICATION_TYPE_ACTIVE SMALLINT,
   UZMTNOTIFICATION_TYPE_CREATION TIMESTAMP,
   UZMTNOTIFICATION_TYPE_USER_CRE CHAR(200),
   UZMTNOTIFICATION_TYPE_CHANGE_D TIMESTAMP,
   UZMTNOTIFICATION_TYPE_USER_CHA CHAR(200),
   constraint PK_UZMTNOTIFICATIONS_TYPE primary key (UZMTNOTIFICATION_TYPE_ID)
);

/*==============================================================*/
/* Table: UZMTOPTION                                            */
/*==============================================================*/
create table UZMTOPTION (
   UZMTOPTION_ID        INTEGER               not null,
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
create table UTIC.UZNTSYSTEM (
   UZNTSYSTEM_ID        INTEGER               not null,
   UZMTSYSTEM_CODE      CHAR(200),
   UZMTSYSTEM_NAME      CHAR(256),
   UZMTSYSTEM_ACTIVE    SMALLINT,
   UZMTSYSTEM_CREATION_DATE TIMESTAMP,
   UZMTSYSTEM_USER_CREATION CHAR(200),
   UZMTSYSTEM_CHANGE_DATE TIMESTAMP,
   UZMTSYSTEM_USER_CHANGE CHAR(200),
   constraint PK_UZNTSYSTEM primary key (UZNTSYSTEM_ID)
);

comment on table UTIC.UZNTSYSTEM is
'TABLA DE SISTEMAS';

alter table UZMTNOTIFICATION
   add constraint FK_UZMTNOTI_FK_UZMTNO_UZMTOPTI foreign key (UZMTOPTION_ID)
      references UZMTOPTION (UZMTOPTION_ID);

alter table UZMTNOTIFICATION
   add constraint FK_UZMTNOTI_FK_UZMTNO_UZMTNOTI foreign key (UZMTNOTIFICATION_TYPE_ID)
      references UZMTNOTIFICATIONS_TYPE (UZMTNOTIFICATION_TYPE_ID);

alter table UZMTOPTION
   add constraint FK_UZMTOPTI_FK_UZMTOP_UZNTSYST foreign key (UZNTSYSTEM_ID)
      references UTIC.UZNTSYSTEM (UZNTSYSTEM_ID);