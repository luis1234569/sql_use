/*==============================================================*/
/* dbms name:      postgresql 8                                 */
/* created on:     6/9/2022 9:37:12                             */
/*==============================================================*/

-- drop table utic.uzmtgroup;

-- drop table utic.uzmtmessage;

-- drop table utic.uzmtnotification;

-- drop table utic.uzmtnotificationtype;

-- drop table utic.uzmtoption;

-- drop table utic.uzstsistema;

-- drop sequence utic.uzmsgroup_id;

-- drop sequence utic.uzmsmessage_id;

-- drop sequence utic.uzmsnotification_id;

-- drop sequence utic.uzmsnotificationtype_id;

-- drop sequence utic.uzmsoption_id;

-- drop sequence utic.seq_uzstsistema;

-- drop user utic;

/*==============================================================*/
/* user: utic                                                   */
/*==============================================================*/
-- create user utic;

-- create sequence sec_numerosocios
--   start with 1
--   increment by 1
--   cycle;

create sequence utic.uzmsgroup_id
start with 1
  increment by 1
  cycle;

create sequence utic.uzmsmessage_id
start with 1
  increment by 1
  cycle;

create sequence utic.uzmsnotification_id
start with 1
  increment by 1
  cycle;

create sequence utic.uzmsnotificationtype_id
start with 1
  increment by 1
  cycle;

create sequence utic.uzmsoption_id
start with 1
  increment by 1
  cycle;

create sequence utic.seq_uzstsistema
start with 1
  increment by 1
  cycle;

/*==============================================================*/
/* table: uzmtgroup                                             */
/*==============================================================*/
create table utic.uzmtgroup (
   uzmtgroup_id    integer     default nextval('utic.uzmsgroup_id') not null,
   uzmtgroup_name       varchar(200)         null,
   uzmtgroup_description varchar(200)         null,
   uzmtgroup_script     varchar(200)         null,
   uzmtgroup_parametro  numeric(1)           null,
   uzmtgroup_active     numeric(1)           null,
   uzmtgroup_fecha_crea date                 null,
   uzmtgroup_usua_crea  varchar(200)         null,
   uzmtgroup_fecha_modif date                 null,
   uzmtgroup_usua_modif varchar(200)         null,
   constraint pk_uzmtgroup primary key (uzmtgroup_id)
);

comment on table utic.uzmtgroup is
'tabla donde se especificara el ingreso el rango en grupo ';

comment on column utic.uzmtgroup.uzmtgroup_id is
'identificado de la fila de grupos';

comment on column utic.uzmtgroup.uzmtgroup_name is
'asignacion del nombre del grupo';

comment on column utic.uzmtgroup.uzmtgroup_description is
'respectiva descripcion del grupo designado';

comment on column utic.uzmtgroup.uzmtgroup_script is
'sql de la consulta en la base de datos';

comment on column utic.uzmtgroup.uzmtgroup_parametro is
'indicar si el sql tiene parametros o no';

comment on column utic.uzmtgroup.uzmtgroup_active is
'indica si el grupo esta en constancia o no';

comment on column utic.uzmtgroup.uzmtgroup_fecha_crea is
'es la fecha de creacion del grupo';

comment on column utic.uzmtgroup.uzmtgroup_usua_crea is
'el usuario que creo el grupo';

comment on column utic.uzmtgroup.uzmtgroup_fecha_modif is
'la fecha cuando fua actualizado el grupo';

comment on column utic.uzmtgroup.uzmtgroup_usua_modif is
'el usuario que actualizo el registro del grupo';

-- set table ownership
-- alter table utic.uzmtgroup owner to utic
-- ;
/*==============================================================*/
/* table: uzmtmessage                                           */
/*==============================================================*/
create table utic.uzmtmessage (
   uzmtmessage_id    integer   default nextval('utic.uzmsmessage_id') not null,
   uzmtnotificationtype_id int4                 null,
   uzmtmessage_header   varchar(200)         null,
   uzmtmessage_body     char                 null,
   uzmtmessage_active   numeric(1)           null,
   uzmtmessage_usua_crea numeric(8)           null,
   uzmtmessage_fecha_crea date                 null,
   uzmtmessage_usua_update numeric(8)           null,
   uzmtmessage_fecha_update date                 null,
   constraint pk_uzmtmessage primary key (uzmtmessage_id)
);

comment on table utic.uzmtmessage is
'tabla de mensajes';

comment on column utic.uzmtmessage.uzmtmessage_id is
'identificador de la fila del mensaje';

comment on column utic.uzmtmessage.uzmtnotificationtype_id is
'llave foranea en relacion con el tipo de notificacion';

comment on column utic.uzmtmessage.uzmtmessage_header is
'el tema del mensaje';

comment on column utic.uzmtmessage.uzmtmessage_body is
'contenido del mensaje';

comment on column utic.uzmtmessage.uzmtmessage_usua_crea is
'el usuario quien creo el mensaje';

comment on column utic.uzmtmessage.uzmtmessage_fecha_crea is
'fecha cuando se creo el mensaje';

comment on column utic.uzmtmessage.uzmtmessage_usua_update is
'el usuario quien actualizo el mensaje';

comment on column utic.uzmtmessage.uzmtmessage_fecha_update is
'fecha cuando se actualizo el mensaje';

-- set table ownership
-- alter table utic.uzmtmessage owner to utic
-- ;
/*==============================================================*/
/* table: uzmtnotification                                      */
/*==============================================================*/
create table utic.uzmtnotification (
   uzmtnotification_id  integer     default nextval('utic.uzmsnotification_id') not null,
   uzmtoption_id int4                 null,
   uzmtmessage_id       int4                 null,
   uzmtnotification_pidm_receiver varchar(200)         null,
   uzmtnotification_active numeric(1)           null,
   uzmtnotification_read numeric(1)           null,
   uzmtnotification_read_date date                 null,
   uzmtnotification_fecha_crea date                 null,
   uzmtnotification_usua_crea varchar(200)         null,
   uzmtnotification_fecha_modif date                 null,
   uzmtnotification_usua_modif varchar(200)         null,
   constraint pk_uzmtnotification primary key (uzmtnotification_id)
);

comment on table utic.uzmtnotification is
'tabla donde se especificara el ingreso de toda la informacion de noptificacion';

comment on column utic.uzmtnotification.uzmtnotification_id is
'identificador de la fila de la notificacion';

comment on column utic.uzmtnotification.uzmtnotification_option_id is
'relacion que existe en la tabla notificacion con la opcion';

comment on column utic.uzmtnotification.uzmtnotification_receiver is
'a quien va dirijido la notificacion';

comment on column utic.uzmtnotification.uzmtnotification_active is
'se muestra si la notificacion esta activa o no';

comment on column utic.uzmtnotification.uzmtnotification_read is
'muestra si la notificacion fue leida o no';

comment on column utic.uzmtnotification.uzmtnotification_read_date is
'la fecha y la hora en la que se ha leido la notificacion';

comment on column utic.uzmtnotification.uzmtnotification_fecha_crea is
'fecha en la que se creo este registro';

comment on column utic.uzmtnotification.uzmtnotification_usua_crea is
'el usuario que creo la notificacion';

comment on column utic.uzmtnotification.uzmtnotification_fecha_modif is
'la fecha cuando fua actualizado la notificacion';

comment on column utic.uzmtnotification.uzmtnotification_usua_modif is
'el usuario que actualizo el registro de la notificacion';

-- set table ownership
-- alter table utic.uzmtnotification owner to utic
-- ;
/*==============================================================*/
/* table: uzmtnotificationtype                                 */
/*==============================================================*/
create table utic.uzmtnotificationtype (
   uzmtnotificationtype_id integer     default nextval('utic.uzmsnotificationtype_id') not null,
   uzmtnotificationtype_name varchar(200)         null,
   uzmtnotificationtype_active numeric(1)           null,
   uzmtnotificationtype_usua_crea varchar(200)         null,
   uzmtnotificationtype_fecha_crea date                 null,
   uzmtnotificationtype_usua_modif varchar(200)         null,
   uzmtnotificationtype_fecha_modif date                 null,
   constraint pk_uzmtnotificationtype primary key (uzmtnotificationtype_id)
);

comment on table utic.uzmtnotificationtype is
'tabla donde se especificara el ingreso del tipo de notificdacion  al que pertenece la notifacion';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_id is
'identificador de la fila dl tipo de notificaciones';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_name is
'nombre del tipo de notificacion asignada a la misma';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_active is
'indicar si el tipo de notificacion esta activo';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_usua_crea is
'es la fecha de creacion del tipo de notificacion';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_fecha_crea is
'el usuario que creo el tipo de notificacion';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_usua_modif is
'la fecha cuando fua actualizado el tipo de notificacion';

comment on column utic.uzmtnotificationtype.uzmtnotificationtype_fecha_modif is
'el usuario que actualizo el registro del tipo de notificacion';

-- set table ownership
-- alter table utic.uzmtnotificationtype owner to utic
-- ;
/*==============================================================*/
/* table: uzmtoption                                            */
/*==============================================================*/
create table utic.uzmtoption (
   uzmtoption_id        integer     default nextval('utic.uzmsoption_id')                 not null,
   uzmtoption_system_id integer                 null,
   uzmtoption_name      varchar(200)         null,
   uzmtoption_active    numeric(1)           null,
   uzmtoption_fecha_crea date                 null,
   uzmtoption_usua_crea varchar(200)         null,
   uzmtoption_fecha_modif date                 null,
   uzmtoption_usua_modif varchar(200)         null,
   constraint pk_uzmtoption primary key (uzmtoption_id)
);

comment on table utic.uzmtoption is
'tabla donde se especificara el ingreso de la opcion al que pertenece la notifacion';

comment on column utic.uzmtoption.uzmtoption_id is
'identificador de la fila de opciones';

comment on column utic.uzmtoption.uzmtoption_system_id is
'llave foranea en relacion con la tabla sistem';

comment on column utic.uzmtoption.uzmtoption_name is
'nombre de la opcion a seleccionar';

comment on column utic.uzmtoption.uzmtoption_active is
'indicador si la option esta activa o no';

comment on column utic.uzmtoption.uzmtoption_fecha_crea is
'es la fecha de creacion de la opcion';

comment on column utic.uzmtoption.uzmtoption_usua_crea is
'el usuario que creo la opcion''';

comment on column utic.uzmtoption.uzmtoption_fecha_modif is
'la fecha cuando fua actualizado la opcion';

comment on column utic.uzmtoption.uzmtoption_usua_modif is
'el usuario que actualizo el registro de la opcion';

-- set table ownership
-- alter table utic.uzmtoption owner to utic
-- ;
/*==============================================================*/
/* table: uzstsistema                                            */
/*==============================================================*/
create table utic.uzstsistema (
   uzstsistema_id        integer     default nextval('utic.seq_uzstsistema')                 not null,
   uzstsistema_nombre     varchar(300)         null,
   uzstsistema_url varchar(300)         null,
   uzstsistema_estado   numeric(1)           null,
   uzstsistema_codigo varchar(200)     default 'espeseguridades'    null,
   constraint pk_uzstsistema primary key (uzstsistema_id)
);

comment on table utic.uzstsistema is
'tabla donde se especificara el ingreso del sistema al que pertenece la notifacion';

comment on column utic.uzstsistema.uzstsistema_id is
'identificador de la fila de sistemas';

comment on column utic.uzstsistema.uzstsistema_name is
'nombre asignado para el sistema';

comment on column utic.uzstsistema.uzstsistema_active is
'muestra si esta activo o desactivo el sistema';

comment on column utic.uzstsistema.uzstsistema_fecha_crea is
'es la fecha de creacion del sistema';

comment on column utic.uzstsistema.uzstsistema_usua_crea is
'el usuario que creo el sistema';

comment on column utic.uzstsistema.uzstsistema_fecha_modif is
'la fecha cuando fua actualizado el sistema';

comment on column utic.uzstsistema.uzstsistema_usua_modif is
'el usuario que actualizo el registro del sistema';

-- set table ownership
-- alter table utic.uzstsistema owner to utic
-- ;
alter table utic.uzmtmessage
   add constraint fk_uzmtmess_fk_uzmtno_uzmtnoti foreign key (uzmtnotificationtype_id)
      references utic.uzmtnotificationtype (uzmtnotificationtype_id)
      on delete restrict on update restrict;

alter table utic.uzmtnotification
   add constraint fk_uzmtnoti_fk_uzmtme_uzmtmess foreign key (uzmtmessage_id)
      references utic.uzmtmessage (uzmtmessage_id)
      on delete restrict on update restrict;

alter table utic.uzmtnotification
   add constraint fk_uzmtnoti_fk_uzmtno_uzmtopti foreign key (uzmtnotification_option_id)
      references utic.uzmtoption (uzmtoption_id)
      on delete restrict on update restrict;

alter table utic.uzmtoption
   add constraint fk_uzmtopti_fk_uzmtop_uzmtsyst foreign key (uzmtoption_system_id)
      references utic.uzstsistema (uzstsistema_id)
      on delete restrict on update restrict;


