alter table UTIC.UZMTMESSAGE
   drop constraint FK_UZMTMESSAGE_UZMTNOTIFICATIONTYPE;

alter table UTIC.UZMTNOTIFICATION
   drop constraint FK_UZMTNOTIFICATION_UZMTMESSAGE;

alter table UTIC.UZMTNOTIFICATION
   drop constraint FK_UZMTNOTIFICATION_UZMTOPTION;

alter table UTIC.UZMTOPTION
   drop constraint FK_UZMTOPTION_UZSTSISTEMA;

drop table UTIC.UZMTGROUP cascade constraints;

drop table UTIC.UZMTMESSAGE cascade constraints;

drop table UTIC.UZMTNOTIFICATION cascade constraints;

drop table UTIC.UZMTNOTIFICATIONTYPE cascade constraints;

drop table UTIC.UZMTOPTION cascade constraints;

drop table UTIC.UZSTSISTEMA cascade constraints;

drop sequence UTIC.UZMSGROUP_ID;

drop sequence UTIC.UZMSMESSAGE_ID;

drop sequence UTIC.UZMSNOTIFICATION_ID;

drop sequence UTIC.UZMSNOTIFICATIONTYPE_ID;

drop sequence UTIC.UZMSOPTION_ID;

drop sequence UTIC.SEQ_UZSTSISTEMA;

drop user UTIC;

/*==============================================================*/
/* User: UTIC                                                   */
/*==============================================================*/
create user UTIC 
  identified by "";

create sequence UTIC.UZMSGROUP_ID
increment by 1
start with 1;

create sequence UTIC.UZMSMESSAGE_ID
increment by 1
start with 1;

create sequence UTIC.UZMSNOTIFICATION_ID
increment by 1
start with 1;

create sequence UTIC.UZMSNOTIFICATIONTYPE_ID
increment by 1
start with 1;

create sequence UTIC.UZMSOPTION_ID
increment by 1
start with 1;

create sequence UTIC.SEQ_UZSTSISTEMA
increment by 1
start with 1;

/*==============================================================*/
/* Table: UZMTGROUP                                             */
/*==============================================================*/
create table UTIC.UZMTGROUP (
   UZMTGROUP_ID         NUMBER               not null,
   UZMTGROUP_NAME       VARCHAR2(60)  not null,
   UZMTGROUP_DESCRIPTION VARCHAR2(200) ,
   UZMTGROUP_SCRIPT     VARCHAR2(200) not null,
   UZMTGROUP_PARAMETRO  NUMBER(1,0) not null,
   UZMTGROUP_ACTIVE     NUMBER(1,0)  not null,
   UZMTGROUP_FECHA_CREA DATE,
   UZMTGROUP_USUA_CREA  NUMBER(8),
   UZMTGROUP_FECHA_MODIF DATE,
   UZMTGROUP_USUA_MODIF NUMBER(8),
   constraint PK_UZMTGROUP primary key (UZMTGROUP_ID)
);

comment on table UTIC.UZMTGROUP is
'tabla donde se especificara el ingreso el rango en grupo ';

comment on column UTIC.UZMTGROUP.UZMTGROUP_ID is
'identificado de la fila de grupos';

comment on column UTIC.UZMTGROUP.UZMTGROUP_NAME is
'asignacion del nombre del grupo';

comment on column UTIC.UZMTGROUP.UZMTGROUP_DESCRIPTION is
'respectiva descripcion del grupo designado';

comment on column UTIC.UZMTGROUP.UZMTGROUP_SCRIPT is
'SQL de la consulta en la base de datos';

comment on column UTIC.UZMTGROUP.UZMTGROUP_PARAMETRO is
'indicar si el sql tiene parametros o no';

comment on column UTIC.UZMTGROUP.UZMTGROUP_ACTIVE is
'indica si el grupo esta en constancia o no';

comment on column UTIC.UZMTGROUP.UZMTGROUP_FECHA_CREA is
'es la fecha de creacion del grupo';

comment on column UTIC.UZMTGROUP.UZMTGROUP_USUA_CREA is
'el usuario que creo el grupo';

comment on column UTIC.UZMTGROUP.UZMTGROUP_FECHA_MODIF is
'la fecha cuando fua actualizado el grupo';

comment on column UTIC.UZMTGROUP.UZMTGROUP_USUA_MODIF is
'el usuario que actualizo el registro del grupo';

/*==============================================================*/
/* Table: UZMTMESSAGE                                           */
/*==============================================================*/
create table UTIC.UZMTMESSAGE (
   UZMTMESSAGE_ID       NUMBER               not null,
   UZMTNOTIFICATIONTYPE_ID NUMBER   not null,
   UZMTMESSAGE_HEADER   VARCHAR2(200)  not null,
   UZMTMESSAGE_BODY     BLOB  not null,
   UZMTMESSAGE_ACTIVE   NUMBER(1,0)   not null,
   UZMTMESSAGE_USUA_CREA NUMBER(8),
   UZMTMESSAGE_FECHA_CREA DATE,
   UZMTMESSAGE_USUA_UPDATE NUMBER(8),
   UZMTMESSAGE_FECHA_UPDATE DATE,
   constraint PK_UZMTMESSAGE primary key (UZMTMESSAGE_ID)
);

comment on table UTIC.UZMTMESSAGE is
'TABLA DE MENSAJES';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_ID is
'identificador de la fila del mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTNOTIFICATIONTYPE_ID is
'llave foranea en relacion con el tipo de notificacion';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_HEADER is
'el tema del mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_BODY is
'contenido del mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_USUA_CREA is
'el usuario quien creo el mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_FECHA_CREA is
'fecha cuando se creo el mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_USUA_UPDATE is
'el usuario quien actualizo el mensaje';

comment on column UTIC.UZMTMESSAGE.UZMTMESSAGE_FECHA_UPDATE is
'fecha cuando se actualizo el mensaje';

/*==============================================================*/
/* Table: UZMTNOTIFICATION                                      */
/*==============================================================*/
create table UTIC.UZMTNOTIFICATION (
   UZMTNOTIFICATION_ID  NUMBER               not null,
   UZMTOPTION_ID NUMBER  not null,
   UZMTMESSAGE_ID       NUMBER  not null,
   UZMTNOTIFICATION_PIDM_RECEIVER NUMBER(8)  not null,
   UZMTNOTIFICATION_ACTIVE NUMBER(1,0)  not null,
   UZMTNOTIFICATION_READ NUMBER(1,0),
   UZMTNOTIFICATION_READ_DATE DATE,
   UZMTNOTIFICATION_FECHA_CREA DATE,
   UZMTNOTIFICATION_USUA_CREA NUMBER(8),
   UZMTNOTIFICATION_FECHA_MODIF DATE,
   UZMTNOTIFICATION_USUA_MODIF NUMBER(8),
   constraint PK_UZMTNOTIFICATION primary key (UZMTNOTIFICATION_ID)
);

comment on table UTIC.UZMTNOTIFICATION is
'tabla donde se especificara el ingreso de toda la informacion de notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_ID is
'identificador de la fila de la notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTOPTION_ID is
'relacion que existe en la tabla notificacion con la opcion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_PIDM_RECEIVER is
'a quien va dirijido la notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_ACTIVE is
'se muestra si la notificacion esta activa o no';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_READ is
'muestra si la notificacion fue leida o no';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_READ_DATE is
'la fecha y la hora en la que se ha leido la notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_FECHA_CREA is
'fecha en la que se creo este registro';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_USUA_CREA is
'el usuario que creo la notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_FECHA_MODIF is
'la fecha cuando fua actualizado la notificacion';

comment on column UTIC.UZMTNOTIFICATION.UZMTNOTIFICATION_USUA_MODIF is
'el usuario que actualizo el registro de la notificacion';

/*==============================================================*/
/* Table: UZMTNOTIFICATIONTYPE                                 */
/*==============================================================*/
create table UTIC.UZMTNOTIFICATIONTYPE (
   UZMTNOTIFICATIONTYPE_ID NUMBER               not null,
   UZMTNOTIFICATIONTYPE_NAME VARCHAR2(60)  not null,
   UZMTNOTIFICATIONTYPE_ACTIVE NUMBER(1,0),
   UZMTNOTIFICATIONTYPE_USUA_CREA NUMBER(8),
   UZMTNOTIFICATIONTYPE_FECHA_CREA DATE,
   UZMTNOTIFICATIONTYPE_USUA_MODIF NUMBER(8),
   UZMTNOTIFICATIONTYPE_FECHA_MODIF DATE,
   constraint PK_UZMTNOTIFICATIONTYPE primary key (UZMTNOTIFICATIONTYPE_ID)
);

comment on table UTIC.UZMTNOTIFICATIONTYPE is
'tabla donde se especificara el ingreso del tipo de notificdacion  al que pertenece la notifacion';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_ID is
'identificador de la fila dl tipo de notificaciones';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_NAME is
'nombre del tipo de notificacion asignada a la misma';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_ACTIVE is
'indicar si el tipo de notificacion esta activo';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_USUA_CREA is
'el usuario que creo el tipo de notificacion';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_FECHA_CREA is
'es la fecha de creacion del tipo de notificacion';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_USUA_MODIF is
'el usuario que actualizo el registro del tipo de notificacion';

comment on column UTIC.UZMTNOTIFICATIONTYPE.UZMTNOTIFICATIONTYPE_FECHA_MODIF is
'la fecha cuando fue actualizado el tipo de notificacion';

/*==============================================================*/
/* Table: UZMTOPTION                                            */
/*==============================================================*/
create table UTIC.UZMTOPTION (
   UZMTOPTION_ID        NUMBER               not null,
   UZSTSISTEMA_ID NUMBER  not null,
   UZMTOPTION_NAME  VARCHAR2(60)      not null,
   UZMTOPTION_DESCRIPTION  VARCHAR2(100)      ,
   UZMTOPTION_CODE VARCHAR2(30)  ,
   UZMTOPTION_ACTIVE    NUMBER(1,0)    not null,
   UZMTOPTION_FECHA_CREA DATE,
   UZMTOPTION_USUA_CREA NUMBER(8),
   UZMTOPTION_FECHA_MODIF DATE,
   UZMTOPTION_USUA_MODIF NUMBER(8),
   constraint PK_UZMTOPTION primary key (UZMTOPTION_ID)
);

comment on table UTIC.UZMTOPTION is
'tabla donde se especificara el ingreso de la opcion al que pertenece la notifacion';

comment on column UTIC.UZMTOPTION.UZMTOPTION_ID is
'identificador de la fila de opciones';

comment on column UTIC.UZMTOPTION.STSISTEMA_ID is
'llave foranea en relacion con la tabla sistem';

comment on column UTIC.UZMTOPTION.UZMTOPTION_NAME is
'nombre de la opcion a seleccionar';

comment on column UTIC.UZMTOPTION.UZMTOPTION_DESCRIPTION is
'Descripcion de la opcion a seleccionar';

comment on column UTIC.UZMTOPTION.UZMTOPTION_CODE is
'codigo de la opcion a seleccionar';

comment on column UTIC.UZMTOPTION.UZMTOPTION_ACTIVE is
'indicador si la option esta activa o no';

comment on column UTIC.UZMTOPTION.UZMTOPTION_FECHA_CREA is
'es la fecha de creacion de la opcion';

comment on column UTIC.UZMTOPTION.UZMTOPTION_USUA_CREA is
'el usuario que creo la opcion''';

comment on column UTIC.UZMTOPTION.UZMTOPTION_FECHA_MODIF is
'la fecha cuando fua actualizado la opcion';

comment on column UTIC.UZMTOPTION.UZMTOPTION_USUA_MODIF is
'el usuario que actualizo el registro de la opcion';

/*==============================================================*/
/* Table: UZSTSISTEMA                                            */
/*==============================================================*/
-- create table UTIC.UZSTSISTEMA (
--    UZSTSISTEMA_ID        NUMBER               not null,
--    UZSTSISTEMA_NAME      VARCHAR2(300),
--    UZSTSISTEMA_ACTIVE    NUMBER(1,0),
--    UZSTSISTEMA_FECHA_CREA DATE,
--    UZSTSISTEMA_USUA_CREA NUMBER(8),
--    UZSTSISTEMA_FECHA_MODIF DATE,
--    UZSTSISTEMA_USUA_MODIF NUMBER(8),
--    constraint PK_UZSTSISTEMA primary key (UZSTSISTEMA_ID)
-- );

create table UTIC.UZSTSISTEMA
(
    UZSTSISTEMA_ID     NUMBER                                 not null,
    UZSTSISTEMA_NOMBRE VARCHAR2(60)                           not null,
    UZSTSISTEMA_URL    VARCHAR2(255),
    UZSTSISTEMA_ESTADO NUMBER,
    UZSTSISTEMA_CODIGO VARCHAR2(30) default 'espeseguridades' not null,
    constraint PK_UZSTSISTEMA primary key (UZSTSISTEMA_ID)
)

create unique index UTIC.INDX_UZSTSISTEMA_001
    on UTIC.UZSTSISTEMA (UZSTSISTEMA_ID);

-- comment on table UTIC.UZSTSISTEMA is
-- 'tabla donde se especificara el ingreso del sistema al que pertenece la notifacion';

-- comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_ID is
-- 'identificador de la fila de sistemas';

-- comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_NOMBRE is
-- 'Nombre asignado para el sistema';

-- comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_URL is
-- 'indicar la url del sistema';

-- comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_ESTADO is
-- 'muestra si esta activo o desactivo el sistema';

-- comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_CODIGO is
-- 'indicar el codigo del sistem';



comment on table UTIC.UZSTSISTEMA is 
'TABLA QUE GUARDA LOS DATOS DE LOS SISTEMAS DEL SNNA';


comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_ID is 
'CODIGO SECUENCIAL DE LA TABLA, ESTE DATO SERA GENERADO AUTOMATICAMENTE  MEDIANTE LA UTILIZACION DE UN TRIGGER.';


comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_NOMBRE is 
'DESCRIPCION DEL SISTEMA';


comment on column UTIC.UZSTSISTEMA.UZSTSISTEMA_URL is 
'URL DEL INICIACION DEL SISTEMA';


alter table UTIC.UZMTMESSAGE
   add constraint FK_UZMTMESSAGE_UZMTNOTIFICATIONTYPE foreign key (UZMTNOTIFICATIONTYPE_ID)
      references UTIC.UZMTNOTIFICATIONTYPE (UZMTNOTIFICATIONTYPE_ID);

alter table UTIC.UZMTNOTIFICATION
   add constraint FK_UZMTNOTIFICATION_UZMTMESSAGE foreign key (UZMTMESSAGE_ID)
      references UTIC.UZMTMESSAGE (UZMTMESSAGE_ID);

alter table UTIC.UZMTNOTIFICATION
   add constraint FK_UZMTNOTIFICATION_UZMTOPTION foreign key (UZMTOPTION_ID)
      references UTIC.UZMTOPTION (UZMTOPTION_ID);

alter table UTIC.UZMTOPTION
   add constraint FK_UZMTOPTION_UZSTSISTEMA foreign key (UZSTSISTEMA_ID)
      references UTIC.UZSTSISTEMA (UZSTSISTEMA_ID);



-- INSERT INTO UTIC.UZMTGROUP(
-- 	 UZMTGROUP_NAME, 
--     UZMTGROUP_DESCRIPTION, 
--     UZMTGROUP_SCRIPT, 
--     UZMTGROUP_PARAMETRO, 
--     UZMTGROUP_ACTIVE, 
--     UZMTGROUP_FECHA_CREA, 
--     UZMTGROUP_USUA_CREA, 
--     UZMTGROUP_FECHA_MODIF, 
--     UZMTGROUP_USUA_MODIF)
-- 	VALUES (
-- 	 'UZMTGROUP_NAME', 
--     'UZMTGROUP_DESCRIPTION', 
--     'UZMTGROUP_SCRIPT', 
--     1, 
--     1, 
--     SYSDATE(), 
--     123789, 
--     SYSDATE(), 
--     123789);

-- INSERT INTO UTIC.UZSTSISTEMA(
-- 	 UZSTSISTEMA_NOMBRE, 
--     UZSTSISTEMA_ESTADO, 
--     UZSTSISTEMA_URL, 
--     UZSTSISTEMA_CODIGO)
-- 	VALUES (
-- 	 'UZSTSISTEMA_NOMBRE', 
--     1, 
--     'UZSTSISTEMA_URL', 
--     'UZSTSISTEMA_CODIGO');

-- INSERT INTO UTIC.UZMTNOTIFICATIONTYPE(
-- 	 UZMTNOTIFICATIONTYPE_NAME, 
--     UZMTNOTIFICATIONTYPE_ACTIVE, 
--     UZMTNOTIFICATIONTYPE_USUA_CREA, 
--     UZMTNOTIFICATIONTYPE_FECHA_CREA, 
--     UZMTNOTIFICATIONTYPE_USUA_MODIF, 
--     UZMTNOTIFICATIONTYPE_FECHA_MODIF)
-- 	VALUES (
-- 	 'UZMTNOTIFICATIONTYPE_NAME', 
--     1, 
--     123789, 
--     SYSDATE(), 
--     123789, 
--     SYSDATE());

-- INSERT INTO UTIC.UZMTOPTION(
-- 	 UZSTSISTEMA_ID, 
--     UZMTOPTION_NAME, 
--     UZMTOPTION_ACTIVE, 
--     UZMTOPTION_CODE,
--     UZMTOPTION_FECHA_CREA, 
--     UZMTOPTION_USUA_CREA, 
--     UZMTOPTION_FECHA_MODIF, 
--     UZMTOPTION_USUA_MODIF)
-- 	VALUES (
-- 	 1, 
--     'UZMTOPTION_NAME', 
--     1, 
--     "UZMTOPTION_CODE",
--     SYSDATE(), 
--     123789, 
--     SYSDATE(), 
--     123789);

-- INSERT INTO UTIC.UZMTMESSAGE(
-- 	 UZMTNOTIFICATIONTYPE_ID, 
--     UZMTMESSAGE_HEADER, 
--     UZMTMESSAGE_BODY, 
--     UZMTMESSAGE_ACTIVE, 
--     UZMTMESSAGE_USUA_CREA, 
--     UZMTMESSAGE_FECHA_CREA, 
--     UZMTMESSAGE_USUA_MODIF, 
--     UZMTMESSAGE_FECHA_MODIF)
-- 	VALUES (
-- 	 1, 
--     'UZMTMESSAGE_HEADER', 
--     'UZMTMESSAGE_BODY', 
--     1, 
--     123789, 
--     SYSDATE(), 
--     123789, 
--     SYSDATE());

-- INSERT INTO UTIC.UZMTNOTIFICATION(
-- 	 UZMTOPTION_ID, 
--     UZMTMESSAGE_ID, 
--     UZMTNOTIFICATION_PIDM_RECEIVER, 
--     UZMTNOTIFICATION_ACTIVE, 
--     UZMTNOTIFICATION_READ, 
--     UZMTNOTIFICATION_READ_DATE, 
--     UZMTNOTIFICATION_FECHA_CREA, 
--     UZMTNOTIFICATION_USUA_CREA, 
--     UZMTNOTIFICATION_FECHA_MODIF, 
--     UZMTNOTIFICATION_USUA_MODIF)
-- 	VALUES (
-- 	 1, 
--     1, 
--     123789, 
--     1, 
--     1, 
--     SYSDATE(), 
--     SYSDATE(), 
--     123789, 
--     SYSDATE(), 
--     123789);
