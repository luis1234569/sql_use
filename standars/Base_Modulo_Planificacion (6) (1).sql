--secuencia para tabla actividades
create sequence UTIC.activities_id
start with 1 increment by 1;
--secuencia para tabla grados
create sequence UTIC.degress_id
start with 1 increment by 1;
--secuencia para tabla capítulo de libros
create sequence UTIC.uzisbookchapters_id
start with 1 increment by 1;
--secuencia para tabla libros
create sequence UTIC.uzisbooks_id
start with 1 increment by 1;
--secuencia para tabla congreso
create sequence UTIC.uziscongress_id
start with 1 increment by 1;
--secuencia para tabla tipo de artículo de congreso
create sequence UTIC.uziscontypart_id
start with 1 increment by 1;
--secuencia para tabla tipo de congreso
create sequence UTIC.uziscontype_id
start with 1 increment by 1;
--secuencia para tabla código IS
create sequence UTIC.uziscosis_id
start with 1 increment by 1;
--secuencia para tabla base de datos indexadas
create sequence UTIC.uzisindbast_id
start with 1 increment by 1;
--secuencia para tabla otras actividades
create sequence UTIC.uzisotheractivities_id
start with 1 increment by 1;
--secuencia para tabla participación
create sequence UTIC.uzispartic_id
start with 1 increment by 1;
--secuencia para tabla planificación
create sequence UTIC.uzisplanning_id
start with 1 increment by 1;
--secuencia para tabla publicaciones
create sequence UTIC.uzispublications_id
start with 1 increment by 1;
--secuencia para tabla estado de publicaciones
create sequence UTIC.uzispubstatus_id
start with 1 increment by 1;
--secuencia para tabla tipo de artículo para publicaciones
create sequence UTIC.uzispubtypart_id
start with 1 increment by 1;
--secuencia para tabla tipo de publicaciones
create sequence UTIC.uzispubtype_id
start with 1 increment by 1;
--secuencia para tabla cuartil
create sequence UTIC.uzisquartil_id
start with 1 increment by 1;
--secuencia para tabla coautor
create sequence UTIC.uzitcoauth_id
start with 1 increment by 1;
/*Crear la tabla Actividades*/
create table  UTIC.uzitactivities
        (
                uzitactivities_id     number(19,0) not null,--código de actividades
                uzitactivities_datcre date                 ,--fecha de creación
                uzitactivities_datupd date                 ,--fecha de modificación
                uzitactivities_degree varchar2(255 char)   ,--calificación
                uzitactivities_durati number(19,0)         ,--duración
                uzitactivities_maxdur number(19,0)         ,--duración máxima
                uzitactivities_name   varchar2(255 char)   ,--nombre de la actividad
                uzitactivities_remove number(1,0)          ,--registro eliminado
                uzitactivities_usecre varchar2(255 char)   ,--usuario de creación
                uzitactivities_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitactivities_id)
        )
;
comment on table  UTIC.UZITACTIVITIES is
'Tabla Actividades';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_ID is
'codigo de actividades';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_DEGREE is
'Calificación';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_DURATI is
'Duración';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_MAXDUR is
'Duración máxima';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_NAME is
'Nombre de la actividad';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_REMOVE is
'Registro eliminado
';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_USECRE is
'Usuario de creación';

comment on column UTIC.UZITACTIVITIES.UZITACTIVITIES_USEUPD is
'Usuario de modificación';
/*Crear la tabla Caítulo de libro*/
create table  UTIC.uzitbookchapters
        (
                uzitbookchapters_id       number(19,0) not null,--código de capítulo de libro
                uzitbookchapters_aproba   varchar2(255 char)   ,--aprobación
                uzitbookchapters_bootit   varchar2(255 char)   ,--título del libro
                uzitbookchapters_captit   varchar2(255 char)   ,--título del capítulo
                uzitbookchapters_chacod   varchar2(255 char)   ,--código del capítulo del libro
                uzitbookchapters_cloadv   number(19,0)         ,--avance de cierre
                uzitbookchapters_codies   varchar2(255 char)   ,--código IES
                uzitbookchapters_codisb   varchar2(255 char)   ,--código ISBN
                uzitbookchapters_codpub   varchar2(255 char)   ,--código publicación
                uzitbookchapters_comple   number(1,0)          ,--capítulo de libros completado
                uzitbookchapters_datcre   date                 ,--fecha de creación
                uzitbookchapters_datupd   date                ,--fecha de modificación
                uzitbookchapters_devadv   number(19,0)         ,--avance de entregables
                uzitbookchapters_durati   number(19,0)         ,--duración
                uzitbookchapters_editor   varchar2(255 char)   ,--editor
                uzitbookchapters_filmat   varchar2(255 char)   ,--archivo matriz
                uzitbookchapters_filmin   varchar2(255 char)   ,--archivo de acta/pub
                uzitbookchapters_filphy   varchar2(255 char)   ,--archivo físico
                uzitbookchapters_filpro   varchar2(255 char)   ,--archivo perfil
                uzitbookchapters_filrec   varchar2(255 char)   ,--archivo de acta DEP
                uzitbookchapters_filrep   varchar2(255 char)   ,--archivo informe de seguimiento
                uzitbookchapters_filtec   varchar2(255 char)   ,--archivo técnico
                uzitbookchapters_uuidma   varchar2(255 char)   ,--identificador uuid de la matriz
                uzitbookchapters_uuidmi   varchar2(255 char)   ,--identificador uuid de actaPub
                uzitbookchapters_uuidph   varchar2(255 char)   ,--identificador uuid fisico
                uzitbookchapters_uuidpr   varchar2(255 char)   ,--identificador uuid de perfil del proyecto
                uzitbookchapters_uuidre   varchar2(255 char)   ,--identificador uuid de acta DEP
                uzitbookchapters_uuidrp   varchar2(255 char)   ,--identificador uuid de informe de seguimiento
                uzitbookchapters_uuidte   varchar2(255 char)   ,--identificador uuid de técnico
                uzitbookchapters_filiat   number(1,0)          ,--filiación
                uzitbookchapters_follow   varchar2(255 char)   ,--seguimiento
                uzitbookchapters_fuladv   number(19,0)         ,--avance total
                uzitbookchapters_numpag   number(19,0)         ,--número de páginas
                uzitbookchapters_observ   varchar2(255 char)   ,--observaciones
                uzitbookchapters_profol   number(19,0)         ,--progreso del seguimiento
                uzitbookchapters_pub_date date                 ,--fecha de publicación
                uzitbookchapters_tippub   varchar2(255 char)   ,--tipo de publicación
                uzitbookchapters_remove   number(1,0)          ,--registro eliminado
                uzitbookchapters_usecre     varchar2(255 char)   ,--usuario de creación
                uzitbookchapters_useupd     varchar2(255 char)   ,--usuario de modificación
                uzitbookchapters_codis    number(19,0)         ,--código ISBN
                uzitbookchapters_compett  number(19,0)         ,--participación
                uzitdetaakno_code         number(19,0)         ,--código campo detallado
                uzitplanning_id           number(19,0)         ,--clave foránea planificación
				uzitprojec_code           number(19,0)         ,--código del proyecto asociado
                primary key (uzitbookchapters_id)
        )
;
comment on table  UTIC.UZITBOOKCHAPTERS is
'Tabla Capítulo de Libro';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_ID is
'Código de capítulo de libro';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_APROBA is
'Aprobación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_BOOTIT is
'Título del libro
';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CAPTIT is
'Título del capítulo del libro';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CHACOD is
'Código del capítulo del libro';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CLOADV is
'Avance de cierre
';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CODIES is
'Código IES';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CODISB is
'Código ISBN';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CODPUB is
'Código de publicación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_COMPLE is
'Capítulo de libros completado';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_DATCRE is
'Fecha de creación ';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_DATUPD is
'Fecha de publicación ';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_DEVADV is
'Avance de entregables';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_DURATI is
'Duración';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_EDITOR is
'Editor';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILMAT is
'Archivo Matriz
';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILMIN is
'Archivo de acta/pub';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILPHY is
'Archivo físico';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILPRO is
'Archivo perfil';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILREC is
'Archivo de acta DEP';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILREP is
'Archivo informe de seguimiento';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILTEC is
'Archivo técnico';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDMA is
'identificador uuid de la matriz';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDMI is
'Identificador uuid de actaPub';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDPH is
'Identificador uuid fisico';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDPR is
'Identificador uuid de perfil del proyecto';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDRE is
'Identificador uuid de acta DEP';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDRP is
'Identificador uuid de informe de seguimiento';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_UUIDTE is
'Identificador uuid de técnico';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FILIAT is
'Filiación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FOLLOW is
'Seguimiento';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_FULADV is
'Avance total';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_NUMPAG is
'Número de páginas';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_OBSERV is
'Observaciones';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_PROFOL is
'Progreso del seguimiento';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_PUB_DATE is
'Fecha de publicación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_TIPPUB is
'Tipo de publicación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_CODIS is
'Código ISBN';

comment on column UTIC.UZITBOOKCHAPTERS.UZITBOOKCHAPTERS_COMPETT is
'Participación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITDETAAKNO_CODE is
'Código campo detallado';

comment on column UTIC.UZITBOOKCHAPTERS.UZITPLANNING_ID is
'Clave foránea planificación';

comment on column UTIC.UZITBOOKCHAPTERS.UZITPROJEC_CODE is
'Código del proyecto asociado';

/*Crear la tabla Libro*/
create table  UTIC.uzitbooks
        (
                uzitbooks_id          number(19,0) not null,--código libro
                uzitbooks_aproba      varchar2(255 char)   ,--aprobación
                uzitbooks_bootit      varchar2(255 char)   ,--título de libro
                uzitbooks_cloadv      number(19,0)         ,--avance de cierre
                uzitbooks_codies      varchar2(255 char)   ,--código IES
                uzitbooks_codisb      varchar2(255 char)   ,--código ISBN
                uzitbooks_codpub      varchar2(255 char)   ,--código publicación
                uzitbooks_comple      number(1,0)          ,--libro completo 
                uzitbooks_datcre date                      ,--fecha de creación
                uzitbooks_datupd date                      ,--fecha de modificación
                uzitbooks_devadv      number(19,0)         ,--avance de entregables
                uzitbooks_durati      number(19,0)         ,--duración
                uzitbooks_filmat      varchar2(255 char)   ,--archivo matriz
                uzitbooks_filmin      varchar2(255 char)   ,--archivo de acta/pub
                uzitbooks_filphy      varchar2(255 char)   ,--archivo físico
                uzitbooks_filpro      varchar2(255 char)   ,--archivo perfil
                uzitbooks_filrec      varchar2(255 char)   ,--archivo de acta DEP
                uzitbooks_filrep      varchar2(255 char)   ,--archivo informe de seguimiento
                uzitbooks_filtec      varchar2(255 char)   ,--archivo técnico
                uzitbooks_uuidma      varchar2(255 char)   ,--identificador uuid de la matriz
                uzitbooks_uuidmi      varchar2(255 char)   ,--identificador uuid de actaPub
                uzitbooks_uuidph      varchar2(255 char)   ,--identificador uuid fisico
                uzitbooks_uuidpr      varchar2(255 char)   ,--identificador uuid de perfil del proyecto
                uzitbooks_uuidre      varchar2(255 char)   ,--identificador uuid de ACTA DEP
                uzitbooks_uuidrp      varchar2(255 char)   ,--identificador uuid de informe de seguimiento 
                uzitbooks_uuidte      varchar2(255 char)   ,--identificador uuid del informe técnico
                uzitbooks_filiat      number(1,0)          ,--filiación
                uzitbooks_follow      varchar2(255 char)   ,--seguimiento
                uzitbooks_fuladv      number(19,0)         ,--avance total
                uzitbooks_observ      varchar2(255 char)   ,--observaciones
                uzitbooks_peerev      varchar2(255 char)   ,--revisión por pares
                uzitbooks_profol      number(19,0)         ,--progreso del seguimiento
                uzitbooks_pub_date    date                 ,--fecha de publicación
                uzitbooks_tippub      varchar2(255 char)   ,--tipo de publicación
                uzitbooks_remove      number(1,0)          ,--registro eliminado
                uzitbooks_usecre varchar2(255 char)   ,--usuario de creación
                uzitbooks_useupd varchar2(255 char)   ,--usuario de modificación
                uzitbooks_codis       number(19,0)         ,--código ISBN
                uzitbooks_compett     number(19,0)         ,--participación
                uzitdetaakno_code     number(19,0)         ,--código campo detallado
                uzitplanning_id       number(19,0)         ,--clave foránea planificación
				uzitprojec_code       number(19,0)         ,--código del proyecto
                primary key (uzitbooks_id)
        )
;
comment on table  UTIC.UZITBOOKS is
'Tabla de Libro';

comment on column UTIC.UZITBOOKS.UZITBOOKS_ID is
'Código libro';

comment on column UTIC.UZITBOOKS.UZITBOOKS_APROBA is
'Aprobación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_BOOTIT is
'Título de libro';

comment on column UTIC.UZITBOOKS.UZITBOOKS_CLOADV is
'Avance de cierre';

comment on column UTIC.UZITBOOKS.UZITBOOKS_CODIES is
'Código IES';

comment on column UTIC.UZITBOOKS.UZITBOOKS_CODISB is
'Código ISBN';

comment on column UTIC.UZITBOOKS.UZITBOOKS_CODPUB is
'Código publicación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_COMPLE is
'Libro completo';

comment on column UTIC.UZITBOOKS.UZITBOOKS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_DEVADV is
'Avance de entregables';

comment on column UTIC.UZITBOOKS.UZITBOOKS_DURATI is
'Duración';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILMAT is
'Archivo matriz';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILMIN is
'Archivo de acta/pub';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILPHY is
'Archivo físico';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILPRO is
'Archivo perfil';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILREC is
'Archivo de acta DEP';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILREP is
'Archivo informe de seguimiento';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILTEC is
'Archivo técnico';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDMA is
'Identificador uuid de la matriz';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDMI is
'Identificador uuid de acta/Pub';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDPH is
'Identificador uuid fisico';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDPR is
'Identificador uuid de perfil del proyecto';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDRE is
'Identificador uuid de acta/dep';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDRP is
'Identificador uuid de informe de seguimiento ';

comment on column UTIC.UZITBOOKS.UZITBOOKS_UUIDTE is
'Identificador uuid del informe técnico';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FILIAT is
'Filiación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FOLLOW is
'Seguimiento';

comment on column UTIC.UZITBOOKS.UZITBOOKS_FULADV is
'Avance total';

comment on column UTIC.UZITBOOKS.UZITBOOKS_OBSERV is
'Observaciones';

comment on column UTIC.UZITBOOKS.UZITBOOKS_PEEREV is
'Revisión por pares';

comment on column UTIC.UZITBOOKS.UZITBOOKS_PROFOL is
'Progreso del seguimiento';

comment on column UTIC.UZITBOOKS.UZITBOOKS_PUB_DATE is
'Fecha de publicación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_TIPPUB is
'Tipo de publicación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITBOOKS.UZITBOOKS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITBOOKS.UZITBOOKS_CODIS is
'Código ISBN';

comment on column UTIC.UZITBOOKS.UZITBOOKS_COMPETT is
'Participación';

comment on column UTIC.UZITBOOKS.UZITDETAAKNO_CODE is
'Código campo detallado';

comment on column UTIC.UZITBOOKS.UZITPLANNING_ID is
'Código tabla planificación';

comment on column UTIC.UZITBOOKS.UZITPROJEC_CODE is
'Código de proyecto';

/*Crear la tabla Coautor*/
create table  UTIC.uzitcoauth
        (
                uzitcoauth_id         number(19,0) not null,--código de coautor
                uzitcoauth_campus     varchar2(255 char)   ,--sede
                uzitcoauth_code       varchar2(255 char)   ,--identificación de coautor
                uzitcoauth_datcre date                 	   ,--fecha de creación
                uzitcoauth_datupd date                 	   ,--fecha de modificación
                uzitcoauth_depart     varchar2(255 char)   ,--departamento
                uzitcoauth_name       varchar2(255 char)   ,--comnre de coautor
                uzitcoauth_remove     number(1,0)          ,--registro eliminado
                uzitcoauth_usecre varchar2(255 char)   ,--usuario de creación
                uzitcoauth_useupd varchar2(255 char)   ,--usuario de modificación
                uzitbookchapters_id   number(19,0)         ,--clave foránea código de capítulo de libro
                uzitbooks_id          number(19,0)         ,--clave foráneacódigo libro
                uzitcoauth_compett    number(19,0)         ,--participación
                uzitcongress_id       number(19,0)         ,--clave foránea código del congreso
                primary key (uzitcoauth_id)
        )
;
comment on table  UTIC.UZITCOAUTH is
'Tabla Coautor';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_ID is
'Código de coautor';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_CAMPUS is
'Sede';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_CODE is
'Identificación de coautor';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_DEPART is
'Departamento';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_NAME is
'Nombre de coautor';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_USECRE is
'Usuario de creación';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITCOAUTH.UZITBOOKCHAPTERS_ID is
'Clave foránea código de capítulo de libro';

comment on column UTIC.UZITCOAUTH.UZITBOOKS_ID is
'Clave fóranea código de libro
';

comment on column UTIC.UZITCOAUTH.UZITCOAUTH_COMPETT is
'Participación';

comment on column UTIC.UZITCOAUTH.UZITCONGRESS_ID is
'Clave foránea código del congreso';
/*Crear la tabla Código ISBN*/
create table  UTIC.uzitcodis
        (
                uzitcodis_id          number(19,0) not null,--código del código IS
                uzitcodis_datcre date                      ,--fecha de creación
                uzitcodis_datupd date                      ,--fecha de modificación
                uzitcodis_name        varchar2(255 char)   ,--nombre del código
                uzitcodis_remove      number(1,0)          ,--registro eliminado
                uzitcodis_usecre varchar2(255 char)   ,--usuario de creación
                uzitcodis_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitcodis_id)
        )
;
comment on table  UTIC.UZITCODIS is
'Tabla código ISBN';

comment on column UTIC.UZITCODIS.UZITCODIS_ID is
'código del identificador ISBN';

comment on column UTIC.UZITCODIS.UZITCODIS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITCODIS.UZITCODIS_DATUPD is
'Fecha de publicación';

comment on column UTIC.UZITCODIS.UZITCODIS_NAME is
'Nombre del código';

comment on column UTIC.UZITCODIS.UZITCODIS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITCODIS.UZITCODIS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITCODIS.UZITCODIS_USEUPD is
'Usuario de modificación';

/*Crear la tabla Congreso*/
create table  UTIC.uzitcongress
        (
                uzitcongress_id       number(19,0) not null,--código del congreso
                uzitcongress_aproba   varchar2(255 char)   ,--aprobación
                uzitcongress_city     varchar2(255 char)   ,--ciudad
                uzitcongress_cloadv   number(19,0)         ,--avance de cierre
                uzitcongress_codies   varchar2(255 char)   ,--código IES
                uzitcongress_codpub   varchar2(255 char)   ,--código publicación
                uzitcongress_comple   number(1,0)          ,--congreso completo
                uzitcongress_countr   varchar2(255 char)   ,--país
                uzitcongress_datcre date                   ,--fecha de creación
                uzitcongress_datupd date                   ,--fecha de modificación
                uzitcongress_devadv   number(19,0)         ,--avance de entregables
                uzitcongress_durati   number(19,0)         ,--duración
                uzitcongress_eveedi   number(19,0)         ,--edición del evento
                uzitcongress_evenam   varchar2(255 char)   ,--nombre del evento
                uzitcongress_eveorg   varchar2(255 char)   ,--organizador del evento
                uzitcongress_filmat   varchar2(255 char)   ,--archivo matriz
                uzitcongress_filmin   varchar2(255 char)   ,--archivo de acta/pub
                uzitcongress_filphy   varchar2(255 char)   ,--archivo físico
                uzitcongress_filpro   varchar2(255 char)   ,--archivo perfil
                uzitcongress_filrec   varchar2(255 char)   ,--archivo de acta DEP
                uzitcongress_filrep   varchar2(255 char)   ,--archivo informe de seguimiento
                uzitcongress_filtec   varchar2(255 char)   ,--archivo técnico
                uzitcongress_uuidma   varchar2(255 char)   ,--identificador uuid de la matriz
                uzitcongress_uuidmi   varchar2(255 char)   ,--identificador uuid de actaPub
                uzitcongress_uuidph   varchar2(255 char)   ,--identificador uuid fisico
                uzitcongress_uuidpr   varchar2(255 char)   ,--identificador uuid de perfil del proyecto
                uzitcongress_uuidre   varchar2(255 char)   ,--identificador uuid de ACTA DEP
                uzitcongress_uuidrp   varchar2(255 char)   ,--identificador uuid de informe de seguimiento
                uzitcongress_uuidte   varchar2(255 char)   ,--identificador uuid de técnico
                uzitcongress_follow   varchar2(255 char)   ,--seguimiento
                uzitcongress_fuladv   number(19,0)         ,--avance total
                uzitcongress_observ   varchar2(255 char)   ,--observaciones
                uzitcongress_orgcom   varchar2(255 char)   ,--comité organizador
                uzitcongress_othtyp   varchar2(255 char)   ,--otro tipo 
                uzitcongress_prenam   varchar2(255 char)   ,--nombre de presentación
                uzitcongress_profol   number(19,0)         ,--progreso del seguimiento
                uzitcongress_pubdat   date                 ,--fecha de publicación
                uzitcongress_remove   number(1,0)          ,--registro eliminado
                uzitcongress_usecre varchar2(255 char)   ,--usuario de creación
                uzitcongress_useupd varchar2(255 char)   ,--usuario de modificación
                uzitcongress_typart   number(19,0)         ,--tipo de participación
                uzitcongress_compett  number(19,0)         ,--participación
                uzitdetaakno_code     number(19,0)         ,--código campo detallado
                uzitplanning_id       number(19,0)         ,--clave foránea planificación
				uzitprojec_code       number(19,0)         ,--código del proyecto asociado
                uzitcongress_type     number(19,0)         ,--tipo de congreso
                primary key (uzitcongress_id)
        )
;
comment on table  UTIC.UZITCONGRESS is
'Tabla Congreo';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_ID is
'Código del congreso';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_APROBA is
'Aprobación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_CITY is
'Ciudad';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_CLOADV is
'Avance de cierre';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_CODIES is
'Código IES';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_CODPUB is
'Código publicación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_COMPLE is
'Congreso completo';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_COUNTR is
'País';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_DEVADV is
'Avance de entregables';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_DURATI is
'Duración';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_EVEEDI is
'Edición del evento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_EVENAM is
'Nombre del evento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_EVEORG is
'Organizador del evento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILMAT is
'Archivo matriz';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILMIN is
'Archivo de acta/pub';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILPHY is
'Archivo físico';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILPRO is
'Archivo perfil';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILREC is
'Archivo de acta DEP';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILREP is
'Archivo informe de seguimiento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FILTEC is
'Archivo técnico';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDMA is
'Identificador uuid de la matriz';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDMI is
'Identificador uuid de actaPub';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDPH is
'Identificador uuid fisico';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDPR is
'Identificador uuid de perfil del proyecto';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDRE is
'Identificador uuid de ACTA DEP';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDRP is
'Identificador uuid de informe de seguimiento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_UUIDTE is
'Identificador uuid de técnico';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FOLLOW is
'Seguimiento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_FULADV is
'Avance total';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_OBSERV is
'Observaciones';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_ORGCOM is
'Comité organizador';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_OTHTYP is
'Otro tipo ';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_PRENAM is
'Nombre de presentación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_PROFOL is
'Progreso del seguimiento';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_PUBDAT is
'Fecha de publicación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_TYPART is
'Tipo de participación';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_COMPETT is
'Participación';

comment on column UTIC.UZITCONGRESS.UZITDETAAKNO_CODE is
'Código campo detallado';

comment on column UTIC.UZITCONGRESS.UZITPLANNING_ID is
'Clave foránea planificación';

comment on column UTIC.UZITCONGRESS.UZITPROJEC_CODE is
'Código del proyecto asociado';

comment on column UTIC.UZITCONGRESS.UZITCONGRESS_TYPE is
'Tipo de congreso';

/*Crear la tabla  Tipo de Artículo de Congreso*/
create table  UTIC.uzitcontypart
        (
                uzitcontypart_id      number(19,0) not null,--código Tipo de Artículo de Congreso
                uzitcontypart_datcre date                  ,--fecha de creación
                uzitcontypart_datupd date                  ,--fecha de modificación
                uzitcontypart_name    varchar2(255 char)   ,--nombre Tipo de Artículo de Congreso
                uzitcontypart_remove  number(1,0)          ,--registro eliminado
                uzitcontypart_usecre varchar2(255 char)   ,--usuario de creación
                uzitcontypart_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitcontypart_id)
        )
;
comment on table  UTIC.UZITCONTYPART is
'Tabla Tipo Artículo Congreso';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_ID is
'Código Tipo de Artículo de Congreso';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_NAME is
'Nombre Tipo de Artículo de Congreso';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_USECRE is
'Usuario de creación';

comment on column UTIC.UZITCONTYPART.UZITCONTYPART_USEUPD is
'Usuario de modificación';
/*Crear la tabla Tipo de Congreso*/
create table  UTIC.uzitcontype
        (
                uzitcontype_id        number(19,0) not null,--código del tipo de congreso
                uzitcontype_datcre date                    ,--fecha de creación
                uzitcontype_datupd date                    ,--fecha de modificación
                uzitcontype_name      varchar2(255 char)   ,--nombre del tipo de congreso
                uzitcontype_remove    number(1,0)          ,--registro eliminado
                uzitcontype_usecre varchar2(255 char)   ,--usuario de creación
                uzitcontype_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitcontype_id)
        )
;
comment on table  UTIC.UZITCONTYPE is
'Tabla Tipo de Congreso';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_ID is
'Código del tipo de congreso';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_NAME is
'Nombre del tipo de congreso';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_USECRE is
'Usuario de creación';

comment on column UTIC.UZITCONTYPE.UZITCONTYPE_USEUPD is
'Usuario de modificación';
/*Crear la tabla Grados*/
create table  UTIC.uzitdegrees
        (
                uzitdegrees_id        number(19,0) not null,--código del grado
                uzitdegrees_datcre date                    ,--fecha de creación
                uzitdegrees_datupd date                    ,--fecha de modificación
                uzitdegrees_name      varchar2(255 char)   ,--nombre del grado
                uzitdegrees_remove    number(1,0)          ,--registro eliminado
                uzitdegrees_usecre varchar2(255 char)   ,--usuario de creación
                uzitdegrees_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitdegrees_id)
        )
;
comment on table  UTIC.UZITDEGREES is
'Tabla Grados';

comment on column UTIC.UZITDEGREES.UZITDEGREES_ID is
'Código del grado';

comment on column UTIC.UZITDEGREES.UZITDEGREES_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITDEGREES.UZITDEGREES_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITDEGREES.UZITDEGREES_NAME is
'Nombre del grado';

comment on column UTIC.UZITDEGREES.UZITDEGREES_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITDEGREES.UZITDEGREES_USECRE is
'Usuario de creación';

comment on column UTIC.UZITDEGREES.UZITDEGREES_USEUPD is
'Usuario de modificación';
/*Crear la tabla Base de Datos Indexada*/
create table  UTIC.uzitindbas
        (
                uzitindbas_id         number(19,0) not null,--código de base de datos indexada
                uzitindbas_datcre date                     ,--fecha de creación
                uzitindbas_datupd date                     ,--fecha de modificación
                uzitindbas_name       varchar2(255 char)   ,--nombre base de datos indexada
                uzitindbas_remove     number(1,0)          ,--registro eliminado
                uzitindbas_usecre varchar2(255 char)   ,--usuario de creación
                uzitindbas_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitindbas_id)
        )
;
comment on table  UTIC.UZITINDBAS is
'Tabla Base de Datos Indexada';

comment on column UTIC.UZITINDBAS.UZITINDBAS_ID is
'Código de base de datos indexada';

comment on column UTIC.UZITINDBAS.UZITINDBAS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITINDBAS.UZITINDBAS_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITINDBAS.UZITINDBAS_NAME is
'Nombre base de datos indexada';

comment on column UTIC.UZITINDBAS.UZITINDBAS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITINDBAS.UZITINDBAS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITINDBAS.UZITINDBAS_USEUPD is
'Usuario de modificación';
/*Crear la tabla  otras actividades*/
create table  UTIC.uzitotheractivities
        (
                uzitotheractivities_id     number(19,0) not null,--código de otras actividades
                uzitotheractivities_aproba varchar2(255 char)   ,--aprobación
                uzitotheractivities_cloadv number(19,0)         ,--avance de cierre
                uzitotheractivities_comple number(1,0)          ,--otras actividades completadas
                uzitotheractivities_datcre      date            ,--fecha de creación
                uzitotheractivities_datupd      date            ,--fecha de modificación
                uzitotheractivities_devadv number(19,0)         ,--avance de entregables
                uzitotheractivities_durati number(19,0)         ,--duración
                uzitotheractivities_filmat varchar2(255 char)   ,--archivo matriz
                uzitotheractivities_filmin varchar2(255 char)   ,--archivo de acta/pub
                uzitotheractivities_filnam varchar2(255 char)   ,--nombre del archivo
                uzitotheractivities_filphy varchar2(255 char)   ,--archivo físico
                uzitotheractivities_filpro varchar2(255 char)   ,--archivo perfil
                uzitotheractivities_filrec varchar2(255 char)   ,--archivo de acta DEP
                uzitotheractivities_filrep varchar2(255 char)   ,--archivo informe de seguimiento
                uzitotheractivities_filtec varchar2(255 char)   ,--archivo técnico
                uzitotheractivities_uuid   varchar2(255 char)   ,--identificador uuid
                uzitotheractivities_uuidma varchar2(255 char)   ,--identificador uuid de la matriz
                uzitotheractivities_uuidmi varchar2(255 char)   ,--identificador uuid de actaPub
                uzitotheractivities_uuidph varchar2(255 char)   ,--identificador uuid fisico
                uzitotheractivities_uuidpr varchar2(255 char)   ,--identificador uuid de perfil del proyecto
                uzitotheractivities_uuidre varchar2(255 char)   ,--identificador uuid de ACTA DEP
                uzitotheractivities_uuidrp varchar2(255 char)   ,--identificador uuid de informe de seguimiento
                uzitotheractivities_uuidte varchar2(255 char)   ,--identificador uuid de técnico
                uzitotheractivities_follow varchar2(255 char)   ,--seguimiento
                uzitotheractivities_fuladv number(19,0)         ,--avance total
                uzitotheractivities_name   varchar2(255 char)   ,--nombre de otras actividades
                uzitotheractivities_observ varchar2(255 char)   ,--observaciones
                uzitotheractivities_profol number(19,0)         ,--progreso del seguimiento
                uzitotheractivities_remove number(1,0)          ,--registro eliminado
                uzitotheractivities_usecre      varchar2(255 char)   ,--usuario de creación
                uzitotheractivities_useupd      varchar2(255 char)   ,--usuario de modificación
                uzitplanning_id            number(19,0)         ,--clave foránea planificación
				uzitprojec_code            number(19,0)         ,--código del proyecto asociado
                primary key (uzitotheractivities_id)
        )
;
comment on table  UTIC.UZITOTHERACTIVITIES is
'Tabla  otras actividades';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_ID is
'Código de otras actividades';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_APROBA is
'Aprobación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_CLOADV is
'Avance de cierre';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_COMPLE is
'Otras actividades completadas';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_DEVADV is
'Avance de entregables';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_DURATI is
'Duración';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILMAT is
'Archivo matriz';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILMIN is
'Archivo de acta/pub';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILNAM is
'Nombre del archivo';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILPHY is
'Archivo físico';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILPRO is
'Archivo perfil';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILREC is
'Archivo de acta DEP';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILREP is
'Archivo informe de seguimiento';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FILTEC is
'Archivo técnico';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUID is
'Identificador uuid';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDMA is
'Identificador uuid de la matriz';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDMI is
'Identificador uuid de actaPub';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDPH is
'Identificador uuid fisico';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDPR is
'Identificador uuid de perfil del proyecto';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDRE is
'Identificador uuid de ACTA DEP';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDRP is
'Identificador uuid de informe de seguimiento';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_UUIDTE is
'Identificador uuid de técnico';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FOLLOW is
'Seguimiento';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_FULADV is
'Avance total';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_NAME is
'Nombre de otras actividades';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_OBSERV is
'Observaciones';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_PROFOL is
'Progreso del seguimiento';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_USECRE is
'Usuario de creación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITOTHERACTIVITIES_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITPLANNING_ID is
'Clave foránea planificación';

comment on column UTIC.UZITOTHERACTIVITIES.UZITPROJEC_CODE is
'Código del proyecto asociado';

/*Crear la tabla de Participación*/
create table  UTIC.uzitpartic
        (
                uzitpartic_id         number(19,0) not null,--código de participación
                uzitpartic_datcre date                     ,--fecha de creación
                uzitpartic_datupd date                     ,--fecha de modificación
                uzitpartic_name       varchar2(255 char)   ,--nombre de participación
                uzitpartic_remove     number(1,0)          ,--registro eliminado
                uzitpartic_usecre varchar2(255 char)   ,--usuario de creación
                uzitpartic_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitpartic_id)
        )
;
comment on table  UTIC.UZITPARTIC is
'Tabla de Participación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_ID is
'Código de participación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_NAME is
'Nombre de participación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPARTIC.UZITPARTIC_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPARTIC.UZITPARTIC_USEUPD is
'Usuario de modificación';
/*Crear la tabla planificación*/
create table  UTIC.uzitplanning
        (
                uzitplanning_id      number(19,0) not null,--código de planificación
                uzitplanning_period  varchar2(255 char)   ,--periodo de planificación
                uzitplanning_aproba  number(1,0)          ,--aprobación
                uzitplanning_comple  number(1,0)          ,--planificación completada
                uzitplanning_datcre  date                 ,--fecha de creación
                uzitplanning_datupd  date                 ,--fecha de modificación
                uzitplanning_depart   varchar2(255 char)  ,--departamento
                uzitplanning_dircid   varchar2(255 char)  ,--identificación del director 
                uzitplanning_dirnam   varchar2(255 char)  ,--nombre del director
                uzitplanning_evalid   varchar2(255 char)  ,--id del evaluador
                uzitplanning_evalnam  varchar2(255 char)  ,--nombre del evaluador 
                uzitplanning_maxdur   number(19,0)        ,--máxima duración
                uzitplanning_observ   varchar2(255 char)  ,--observaciones
                uzitplanning_regdat   date not null       ,--fecha de registro
                uzitplanning_remove   number(1,0)         ,--registro eliminado
                uzitplanning_respid   varchar2(255 char)  ,--identificación de responsable
                uzitplanning_respnam  varchar2(255 char)  ,--nombre del responsable
                uzitplanning_usecre varchar2(255 char)  ,--usuario de creación
                uzitplanning_useupd varchar2(255 char)  ,--usuario de modificación
				uzitdegrees_id       number(19,0)         ,--id de grado
                primary key (uzitplanning_id)
        )
;
comment on table  UTIC.UZITPLANNING is
'Tabla planificacion';

comment on column UTIC.UZITPLANNING.UZITPLANNING_ID is
'Còdigo planificacion';

comment on column UTIC.UZITPLANNING.UZITPLANNING_PERIOD is
'Periodo planificacion';

comment on column UTIC.UZITPLANNING.UZITPLANNING_APROBA is
'Aprobación';

comment on column UTIC.UZITPLANNING.UZITPLANNING_COMPLE is
'Planificación completada';

comment on column UTIC.UZITPLANNING.UZITPLANNING_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPLANNING.UZITPLANNING_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPLANNING.UZITPLANNING_DEPART is
'Departamento';

comment on column UTIC.UZITPLANNING.UZITPLANNING_DIRCID is
'Identificación del director ';

comment on column UTIC.UZITPLANNING.UZITPLANNING_DIRNAM is
'Nombre del director';

comment on column UTIC.UZITPLANNING.UZITPLANNING_EVALID is
'Identificador del evaluador';

comment on column UTIC.UZITPLANNING.UZITPLANNING_EVALNAM is
'Nombre del evaluador';

comment on column UTIC.UZITPLANNING.UZITPLANNING_MAXDUR is
'Máxima duración';

comment on column UTIC.UZITPLANNING.UZITPLANNING_OBSERV is
'Observaciones';

comment on column UTIC.UZITPLANNING.UZITPLANNING_REGDAT is
'Fecha de registro';

comment on column UTIC.UZITPLANNING.UZITPLANNING_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPLANNING.UZITPLANNING_RESPID is
'Identificación de responsable';

comment on column UTIC.UZITPLANNING.UZITPLANNING_RESPNAM is
'Nombre del responsable';

comment on column UTIC.UZITPLANNING.UZITPLANNING_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPLANNING.UZITPLANNING_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITPLANNING.UZITDEGREES_ID is
'Còdigo de grado';

/*Crear la tabla publicaciones*/
create table  UTIC.uzitpublications
        (
                uzitpublications_id      number(19,0) not null,--código de la publicación
                uzitpublications_aproba  varchar2(255 char)   ,--aprobación
                uzitpublications_campus  varchar2(255 char)   ,--sede
                uzitpublications_cloadv  number(19,0)         ,--avance de cierre
                uzitpublications_codjies varchar2(255 char)   ,--código IES
                uzitpublications_codpub  varchar2(255 char)   ,--código de publicación
                uzitpublications_codeiss varchar2(255 char)   ,--código ISS 
                uzitpublications_comple  number(1,0)          ,--otras actividades completo
                uzitpublications_datcre    date               ,--fecha de creación
                uzitpublications_datupd    date               ,--fecha de modificación
                uzitpublications_devadv  number(19,0)         ,--avance de entregables
                uzitpublications_depart  varchar2(255 char)   ,--departamento
                uzitpublications_durati  number(19,0)         ,--duración
                uzitpublications_filmat  varchar2(255 char)   ,--archivo matriz
                uzitpublications_filmin  varchar2(255 char)   ,--archivo de acta/pub
                uzitpublications_filphy  varchar2(255 char)   ,--archivo físico
                uzitpublications_filpro  varchar2(255 char)   ,--archivo perfil
                uzitpublications_filrec  varchar2(255 char)   ,--archivo de acta DEP
                uzitpublications_filrep  varchar2(255 char)   ,--archivo informe de seguimiento
                uzitpublications_filtec  varchar2(255 char)   ,--archivo técnico
                uzitpublications_uuidma  varchar2(255 char)   ,--identificador uuid de la matriz
                uzitpublications_uuidmi  varchar2(255 char)   ,--identificador uuid de actaPub
                uzitpublications_uuidph  varchar2(255 char)   ,--identificador uuid fisico
                uzitpublications_uuidpr  varchar2(255 char)   ,--identificador uuid de perfil del proyecto
                uzitpublications_uuidre  varchar2(255 char)   ,--identificador uuid de ACTA DEP
                uzitpublications_uuidrp  varchar2(255 char)   ,--identificador uuid de informe de seguimiento
                uzitpublications_uuidte  varchar2(255 char)   ,--identificador uuid de técnico
                uzitpublications_filiat  number(1,0)          ,--filiación
                uzitpublications_follow  varchar2(255 char)   ,--seguimiento
                uzitpublications_fuladv  number(19,0)         ,--avance total
                uzitpublications_maglin  varchar2(255 char)   ,--link de revista
                uzitpublications_magname varchar2(255 char)   ,--nombre de revista
                uzitpublications_magnum  varchar2(255 char)   ,--número de revista
                uzitpublications_observ  varchar2(255 char)   ,--observaciones de publicación
                uzitpublications_obsert  varchar2(255 char)   ,--observaciones del evaluador
                uzitpublications_otypart varchar2(255 char)   ,--otro tipo de artículo
                uzitpublications_othind  varchar2(255 char)   ,--otra base de datos indexada
                uzitpublications_othqua  varchar2(255 char)   ,--otro cuartil
                uzitpublications_othtyp  varchar2(255 char)   ,--otro tipo de publicación
                uzitpublications_profol  number(19,0)         ,--progreso del seguimiento
                uzitpublications_pubdat  date                 ,--fecha de la publicación
                uzitpublications_publin  varchar2(255 char)   ,--link de la publicación
                uzitpublications_remove  number(1,0)          ,--registro eliminado
                uzitpublications_sjr     varchar2(255 char)   ,--srj
                uzitpublications_title   varchar2(255 char)   ,--título de la publicación
                uzitpublications_usecre    varchar2(255 char)   ,--usuario de creación
                uzitpublications_useupd    varchar2(255 char)   ,--usuario de modificación
                uzitpublications_typar   number(19,0)         ,--tipo de artículo
                uzitpublications_compett number(19,0)         ,--participación
                uzitpublications_condit  number(19,0)         ,--condición
                uzitdetaakno_code        number(19,0)         ,--código campo detallado
                uzitpublications_indbas  number(19,0)         ,--base de datos indexada
                uzitplanning_id          number(19,0)         ,--clave foránea planificación
				uzitprojec_code          number(19,0)         ,--código de proyecto asociado
                uzitpublications_quarti  number(19,0)         ,--cuartil
                uzitpublications_type    number(19,0)         ,--tipo de publicación
                primary key (uzitpublications_id)
        )
;
comment on table  UTIC.UZITPUBLICATIONS is
'Tabla publicaciones';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_ID is
'Código de la publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_APROBA is
'Aprobación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CAMPUS is
'Sede';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CLOADV is
'Avance de cierre';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CODJIES is
'Código IES';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CODPUB is
'Código de publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CODEISS is
'Código ISS';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_COMPLE is
'Otras actividades completo';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_DEVADV is
'Avance de entregables';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_DEPART is
'Departamento';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_DURATI is
'Duración';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILMAT is
'Archivo matriz';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILMIN is
'Archivo de acta/pub';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILPHY is
'Archivo físico';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILPRO is
'Archivo perfil';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILREC is
'Archivo de acta DEP';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILREP is
'Archivo informe de seguimiento';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILTEC is
'Archivo técnico';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDMA is
'Identificador uuid de la matriz';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDMI is
'Identificador uuid de actaPub';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDPH is
'Identificador uuid fisico';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDPR is
'Identificador uuid de perfil del proyecto';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDRE is
'Identificador uuid de ACTA DEP';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDRP is
'Identificador uuid de informe de seguimiento';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_UUIDTE is
'Identificador uuid de técnico';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FILIAT is
'Filiación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FOLLOW is
'Seguimiento';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_FULADV is
'Avance total';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_MAGLIN is
'Link de revista';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_MAGNAME is
'Nombre de revista';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_MAGNUM is
'Número de revista';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OBSERV is
'Observaciones de publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OBSERT is
'Observaciones del evaluador';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OTYPART is
'Otro tipo de artículo';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OTHIND is
'Otra base de datos indexada';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OTHQUA is
'Otro cuartil';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_OTHTYP is
'Otro tipo de publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_PROFOL is
'Progreso del seguimiento';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_PUBDAT is
'fecha de la publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_PUBLIN is
'Link de la publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_SJR is
'Srj';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_TITLE is
'Título de la publicación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_USEUPD is
'Usuario de modificación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_TYPAR is
'Tipo de artículo';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_COMPETT is
'Participación';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_CONDIT is
'Condición';

comment on column UTIC.UZITPUBLICATIONS.UZITDETAAKNO_CODE is
'Cdigo campo detallado';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_INDBAS is
'Base de datos indexada';

comment on column UTIC.UZITPUBLICATIONS.UZITPLANNING_ID is
'Clave foránea planificación';

comment on column UTIC.UZITPUBLICATIONS.UZITPROJEC_CODE is
'Código de proyecto asociado';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_QUARTI is
'Cuartil';

comment on column UTIC.UZITPUBLICATIONS.UZITPUBLICATIONS_TYPE is
'Tipo de publicación';

/*Crear la tabla Estado publicaciones*/
create table  UTIC.uzitpubstatus
        (
                uzitpubstatus_id      number(19,0) not null,--código de estado de publicaciones
                uzitpubstatus_datcre date                  ,--fecha de creación
                uzitpubstatus_datupd date                  ,--fecha de modificación
                uzitpubstatus_name    varchar2(255 char)   ,--nombre de estado de publicaciones
                uzitpubstatus_remove  number(1,0)          ,--registro eliminado
                uzitpubstatus_usecre varchar2(255 char)   ,--usuario de creación
                uzitpubstatus_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitpubstatus_id)
        )
;
comment on table  UTIC.UZITPUBSTATUS is
'Tabla Tipo de artículo para publicaciones';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_ID is
'Código de tipo de artículo de publicaciones';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_NAME is
'Nombre de tipo de artículo de publicaciones';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPUBSTATUS.UZITPUBSTATUS_USEUPD is
'Usuario de modificación';

/*Crear la tabla Tipo de artículo para publicaciones*/
create table  UTIC.uzitpubtypart
        (
                uzitpubtypart_id      number(19,0) not null,--código de tipo de artículo de publicaciones
                uzitpubtypart_datcre date                  ,--fecha de creación
                uzitpubtypart_datupd date                  ,--fecha de modificación
                uzitpubtypart_name    varchar2(255 char)   ,--nombre de tipo de artículo de publicaciones
                uzitpubtypart_remove  number(1,0)          ,--registro eliminado
                uzitpubtypart_usecre varchar2(255 char)   ,--usuario de creación
                uzitpubtypart_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitpubtypart_id)
        )
;
comment on table  UTIC.UZITPUBTYPART is
' Tabla tipo de artículo para publicaciones';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_ID is
'Código de tipo de artículo de publicaciones';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_NAME is
'Nombre tipo de artículo de publicaciones';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPUBTYPART.UZITPUBTYPART_USEUPD is
'Usuario de modificación';
/*Crear la tabla tipo de publicaciones*/
create table  UTIC.uzitpubtype
        (
                uzitpubtype_id        number(19,0) not null,--código de tipo de publicación
                uzitpubtypart_datcre date                  ,--fecha de creación
                uzitpubtypart_datupd date                  ,--fecha de modificación
                uzitpubtype_name      varchar2(255 char)   ,--nombre de tipo de publicación
                uzitpubtype_remove    number(1,0)          ,--registro eliminado
                uzitpubtypart_usecre varchar2(255 char)   ,--usuario de creación
                uzitpubtypart_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitpubtype_id)
        )
;
comment on table  UTIC.UZITPUBTYPE is
'Tabla tipo de publicaciones';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPE_ID is
'Código de tipo de publicación';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPART_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPART_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPE_NAME is
'Nombre de tipo de publicación';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPE_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPART_USECRE is
'Usuario de creación';

comment on column UTIC.UZITPUBTYPE.UZITPUBTYPART_USEUPD is
'Usuario de modificación';

/*Crear la tabla cuartil*/
create table  UTIC.uzitquartil
        (
                uzitquartil_id        number(19,0) not null,--código del cuartil
                uzitquartil_datcre date                    ,--fecha de creación
                uzitquartil_datupd date                    ,--fecha de modificación
                uzitquartil_name      varchar2(255 char)   ,--nombre del cuartil
                uzitquartil_remove    number(1,0)          ,--registro eliminado
                uzitquartil_usecre varchar2(255 char)   ,--usuario de creación
                uzitquartil_useupd varchar2(255 char)   ,--usuario de modificación
                primary key (uzitquartil_id)
        )
;	
comment on table  UTIC.UZITQUARTIL is
'Tabla cuartil';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_ID is
'Código del cuartil';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_DATCRE is
'Fecha de creación';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_DATUPD is
'Fecha de modificación';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_NAME is
'Nombre del cuartil';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_REMOVE is
'Registro eliminado';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_USECRE is
'Usuario de creación';

comment on column UTIC.UZITQUARTIL.UZITQUARTIL_USEUPD is
'Usuario de modificación';
alter table  UTIC.uzitbookchapters
        add constraint FK_UZITBOOKCHAPTERS_UZITCODIS foreign key
                (
                        uzitbookchapters_codis
                )
        references UTIC.uzitcodis;

alter table  UTIC.uzitbookchapters
        add constraint FK_UZITBOOKCHAPT_UZITPARTIC foreign key
                (
                        uzitbookchapters_compett
                )
        references UTIC.uzitpartic;

alter table  UTIC.uzitbookchapters
        add constraint FK_UZITBOOKCHAP_UZITDETAAKNO foreign key
                (
                        uzitdetaakno_code
                )
        references UTIC.uzitdetaakno;

alter table  UTIC.uzitbookchapters
        add constraint FK_UZITBOOKCHAP_UZITPLANNING foreign key
                (
                        uzitplanning_id
                )
        references UTIC.uzitplanning;

alter table  UTIC.uzitbookchapters
        add constraint FK_UZITBOOKCHAP_UZITPROJEC foreign key
                (
                        uzitprojec_code
                )
        references UTIC.uzitprojec;

alter table  UTIC.uzitbooks
        add constraint FK_UZITBOOKS_UZITCODIS foreign key
                (
                        uzitbooks_codis
                )
        references UTIC.uzitcodis;

alter table  UTIC.uzitbooks
        add constraint FK_UZITBOOKS_UZITPARTIC foreign key
                (
                        uzitbooks_compett
                )
        references UTIC.uzitpartic;

alter table  UTIC.uzitbooks
        add constraint FK_UZITBOOKS_UZITDETAAKNO foreign key
                (
                        uzitdetaakno_code
                )
        references UTIC.uzitdetaakno;

alter table  UTIC.uzitbooks
        add constraint FK_UZITBOOKS_UZITPLANNING foreign key
                (
                        uzitplanning_id
                )
        references UTIC.uzitplanning;

alter table  UTIC.uzitbooks
        add constraint FK_UZITBOOKS_UZITPROJEC foreign key
                (
                        uzitprojec_code
                )
        references UTIC.uzitprojec;


alter table  UTIC.uzitcoauth
        add constraint FK_UZITCOAUTH_UZITBOOKCHAP foreign key
                (
                        uzitbookchapters_id
                )
        references UTIC.uzitbookchapters;

alter table  UTIC.uzitcoauth
        add constraint FK_UZITCOAUTH_UZITBOOKS foreign key
                (
                        uzitbooks_id
                )
        references UTIC.uzitbooks;

alter table  UTIC.uzitcoauth
        add constraint FK_UZITCOAUTH_UZITPARTIC foreign key
                (
                        uzitcoauth_compett
                )
        references UTIC.uzitpartic;

alter table  UTIC.uzitcoauth
        add constraint FK_UZITCOAUTH_UZITCONGRESS foreign key
                (
                        uzitcongress_id
                )
        references UTIC.uzitcongress;


alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITCONTYPART foreign key
                (
                        uzitcongress_typart
                )
        references UTIC.uzitcontypart;

alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITPARTIC foreign key
                (
                        uzitcongress_compett
                )
        references UTIC.uzitpartic;

alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITDETAAKNO foreign key
                (
                        uzitdetaakno_code
                )
        references UTIC.uzitdetaakno;

alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITPLANNING foreign key
                (
                        uzitplanning_id
                )
        references UTIC.uzitplanning;

alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITPROJEC foreign key
                (
                        uzitprojec_code
                )
        references UTIC.uzitprojec;

alter table  UTIC.uzitcongress
        add constraint FK_UZITCONGRESS_UZITCONTYPE foreign key
                (
                        uzitcongress_type
                )
        references UTIC.uzitcontype;

alter table  UTIC.uzitotheractivities
        add constraint FK_UZITOTHERAC_UZITPLANNING foreign key
                (
                        uzitplanning_id
                )
        references UTIC.uzitplanning;

alter table  UTIC.uzitotheractivities
        add constraint FK_UZITOTHERAC_UZITPROJEC foreign key
                (
                        uzitprojec_code
                )
        references UTIC.uzitprojec;

alter table  UTIC.uzitplanning
        add constraint FK_UZITPLANNING_UZITDEGREES foreign key
                (
                        uzitdegrees_id
                )
        references UTIC.uzitdegrees;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPUBTYPART foreign key
                (
                        uzitpublications_typar
                )
        references UTIC.uzitpubtypart;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPARTIC foreign key
                (
                        uzitpublications_compett
                )
        references UTIC.uzitpartic;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPUBSTATUS foreign key
                (
                        uzitpublications_condit
                )
        references UTIC.uzitpubstatus;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITDETAAKNO foreign key
                (
                        uzitdetaakno_code
                )
        references UTIC.uzitdetaakno;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITINDBAS foreign key
                (
                        uzitpublications_indbas
                )
        references UTIC.uzitindbas;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPLANNING foreign key
                (
                        uzitplanning_id
                )
        references UTIC.uzitplanning;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPROJEC foreign key
                (
                        uzitprojec_code
                )
        references UTIC.uzitprojec;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITQUARTIL foreign key
                (
                        uzitpublications_quarti
                )
        references UTIC.uzitquartil;

alter table  UTIC.uzitpublications
        add constraint FK_UZITPUB_UZITPUBTYPE foreign key
                (
                        uzitpublications_type
                )
        references UTIC.uzitpubtype;
		
INSERT into UTIC.UZITROLE (UZITROLE_CODE,UZITROLE_ROLENAM,UZITROLE_NAME) values(9,'ROLE_REPORT','Usuario Reportes'); 
INSERT into UTIC.UZITROLE (UZITROLE_CODE,UZITROLE_ROLENAM,UZITROLE_NAME) values(10,'ROLE_DEPARTMENT_DIRECTOR','Director de Carrera'); 
INSERT into UTIC.UZITROLE (UZITROLE_CODE,UZITROLE_ROLENAM,UZITROLE_NAME) values(11,'ROLE_COORDINATOR','Coordinador de Evaluación'); 

INSERT into UTIC.UZITMENU (UZITMENU_CODE,UZITMENU_IDENTIFIER,UZITMENU_NAME,UZITMENU_ICON) values(6,'planningMenu','PLANIFICACIÓN','work');

INSERT into UTIC.UZITROUTE (UZITROUTE_CODE,UZITMENU_CODE,UZITROUTE_NAME,UZITROUTE_TITLE,UZITROUTE_ICON,UZITROUTE_CLASS) values(20,6,'planning/planning','Gestionar Planificación','local_atm','');
INSERT into UTIC.UZITROUTE (UZITROUTE_CODE,UZITMENU_CODE,UZITROUTE_NAME,UZITROUTE_TITLE,UZITROUTE_ICON,UZITROUTE_CLASS) values(21,6,'planning/calificate','Evaluar Planificación','rule','');
INSERT into UTIC.UZITROUTE (UZITROUTE_CODE,UZITMENU_CODE,UZITROUTE_NAME,UZITROUTE_TITLE,UZITROUTE_ICON,UZITROUTE_CLASS) values(22,6,'planning/reports','Reportes Planificación','query_stats','');
INSERT into UTIC.UZITROUTE (UZITROUTE_CODE,UZITMENU_CODE,UZITROUTE_NAME,UZITROUTE_TITLE,UZITROUTE_ICON,UZITROUTE_CLASS) values(23,6,'planning/administration','Administración','app_registration','');

--Rutas asigandas al rol admin
INSERT into UTIC.UZITROLEROUTE (UZITROLE_CODE,UZITROUTE_CODE) values(2,23);

--Rutas asigandas al rol de Usuario Reportes
INSERT into UTIC.UZITROLEROUTE (UZITROLE_CODE,UZITROUTE_CODE) values(9,22);

--Rutas asigandas al rol de Usuario Director Carrea
INSERT into UTIC.UZITROLEROUTE (UZITROLE_CODE,UZITROUTE_CODE) values(10,21);

--Rutas asigandas al rol de Usuario Coordinador evaluación
INSERT into UTIC.UZITROLEROUTE (UZITROLE_CODE,UZITROUTE_CODE) values(11,21);

--Rutas asigandas al rol de Usuario 
INSERT into UTIC.UZITROLEROUTE (UZITROLE_CODE,UZITROUTE_CODE) values(1,20);


--Grados Academicos
INSERT into UTIC.UZITDEGREES (UZITDEGREES_ID, UZITDEGREES_NAME, UZITDEGREES_REMOVE) VALUES (Degress_ID.nextval, 'Master', '0');
INSERT into UTIC.UZITDEGREES (UZITDEGREES_ID, UZITDEGREES_NAME, UZITDEGREES_REMOVE) VALUES (Degress_ID.nextval, 'PHD', '0');

--Actividades
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '6', 'Publicaciones científicas', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '6', 'Congresos', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '6', 'Capítulo de Libro', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '6', 'Escritura y Publicación de Libros', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '6', 'Participación proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '6', 'Dirección de proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '4', '12', 'Publicaciones científicas', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '12', 'Congresos', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '12', 'Capítulo de Libro', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '1', '12', 'Escritura y Publicación de Libros', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '3', '12', 'Participación proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '4', '12', 'Dirección de proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '24', 'Publicaciones científicas', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '24', 'Congresos', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '24', 'Capítulo de Libro', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '24', 'Escritura y Publicación de Libros', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '3', '24', 'Participación proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '24', 'Dirección de proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '10', '31', 'Publicaciones científicas', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '31', 'Congresos', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '31', 'Capítulo de Libro', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '31', 'Escritura y Publicación de Libros', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '6', '31', 'Participación proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '12', '31', 'Dirección de proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '0', 'Gestión de redes y programas de investigación local', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '0', 'Escritura y planteamiento de proyectos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '0', 'Participación de comités de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '0', 'Coordinación de grupos de investigación', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '2', '0', 'Asesoría, tutoría o dirección de tesis doctorales', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '12', '0', 'Estudios doctorales semipresenciales - 12H', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '13', '0', 'Estudios doctorales semipresenciales - 13H', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '14', '0', 'Estudios doctorales semipresenciales - 14H', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '15', '0', 'Estudios doctorales semipresenciales - 15H', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '16', '0', 'Estudios doctorales semipresenciales - 16H', '0');
INSERT into UTIC.UZITACTIVITIES (UZITACTIVITIES_ID, UZITACTIVITIES_DURATI, UZITACTIVITIES_MAXDUR, UZITACTIVITIES_NAME, UZITACTIVITIES_REMOVE) VALUES (Activities_ID.nextval, '24', '0', 'Dirección de centros de investigación', '0'); 


--Tipos de congreso

INSERT into UTIC.UZITCONTYPE (UZITCONTYPE_ID, UZITCONTYPE_NAME, UZITCONTYPE_REMOVE) VALUES (UZISCONTYPE_ID.NEXTVAL, 'Multidisciplinario', '0');
INSERT into UTIC.UZITCONTYPE (UZITCONTYPE_ID, UZITCONTYPE_NAME, UZITCONTYPE_REMOVE) VALUES (UZISCONTYPE_ID.NEXTVAL, 'Transdisciplinario', '0');
INSERT into UTIC.UZITCONTYPE (UZITCONTYPE_ID, UZITCONTYPE_NAME, UZITCONTYPE_REMOVE) VALUES (UZISCONTYPE_ID.NEXTVAL, 'Omnidisciplinario', '0');

--Congreso Tipo de articulos

INSERT into UTIC.UZITCONTYPART (UZITCONTYPART_ID, UZITCONTYPART_NAME, UZITCONTYPART_REMOVE) VALUES (UZISCONTYPART_ID.NEXTVAL, 'Memoria ', '0');
INSERT into UTIC.UZITCONTYPART (UZITCONTYPART_ID, UZITCONTYPART_NAME, UZITCONTYPART_REMOVE) VALUES (UZISCONTYPART_ID.NEXTVAL, 'Capítulo de libro  ', '0');
INSERT into UTIC.UZITCONTYPART (UZITCONTYPART_ID, UZITCONTYPART_NAME, UZITCONTYPART_REMOVE) VALUES (UZISCONTYPART_ID.NEXTVAL, 'Revista', '0');
INSERT into UTIC.UZITCONTYPART (UZITCONTYPART_ID, UZITCONTYPART_NAME, UZITCONTYPART_REMOVE) VALUES (UZISCONTYPART_ID.NEXTVAL, 'Otro', '0');

--Base indexada
INSERT into UTIC.UZITINDBAS (UZITINDBAS_ID, UZITINDBAS_NAME, UZITINDBAS_REMOVE) VALUES (UZISINDBAST_ID.NEXTVAL, 'Web of science', '0');
INSERT into UTIC.UZITINDBAS (UZITINDBAS_ID, UZITINDBAS_NAME, UZITINDBAS_REMOVE) VALUES (UZISINDBAST_ID.NEXTVAL, 'Scopus', '0');
INSERT into UTIC.UZITINDBAS (UZITINDBAS_ID, UZITINDBAS_NAME, UZITINDBAS_REMOVE) VALUES (UZISINDBAST_ID.NEXTVAL, 'Scimago', '0');
INSERT into UTIC.UZITINDBAS (UZITINDBAS_ID, UZITINDBAS_NAME, UZITINDBAS_REMOVE) VALUES (UZISINDBAST_ID.NEXTVAL, 'Otro', '0'); 

--Participaciones

INSERT into UTIC.UZITPARTIC (UZITPARTIC_ID, UZITPARTIC_NAME, UZITPARTIC_REMOVE) VALUES (UZISPARTIC_ID.NEXTVAL, 'Autor', '0');
INSERT into UTIC.UZITPARTIC (UZITPARTIC_ID, UZITPARTIC_NAME, UZITPARTIC_REMOVE) VALUES (UZISPARTIC_ID.NEXTVAL, 'Coautor', '0');

--Estados publicacion 
INSERT into UTIC.UZITPUBSTATUS (UZITPUBSTATUS_ID, UZITPUBSTATUS_NAME, UZITPUBSTATUS_REMOVE) VALUES (UZISPUBSTATUS_ID.NEXTVAL, 'Impresión', '0');
INSERT into UTIC.UZITPUBSTATUS (UZITPUBSTATUS_ID, UZITPUBSTATUS_NAME, UZITPUBSTATUS_REMOVE) VALUES (UZISPUBSTATUS_ID.NEXTVAL, 'Publicado', '0');

--Tipo de publicacion
INSERT into UTIC.UZITPUBTYPE (UZITPUBTYPE_ID, UZITPUBTYPE_NAME, UZITPUBTYPE_REMOVE) VALUES (UZISPUBTYPE_ID.NEXTVAL, 'Artículo', '0');
INSERT into UTIC.UZITPUBTYPE (UZITPUBTYPE_ID, UZITPUBTYPE_NAME, UZITPUBTYPE_REMOVE) VALUES (UZISPUBTYPE_ID.NEXTVAL, 'Otro', '0');

--Publicaciones tipo de articulos
INSERT into UTIC.UZITPUBTYPART (UZITPUBTYPART_ID, UZITPUBTYPART_NAME, UZITPUBTYPART_REMOVE) VALUES (UZISPUBTYPART_ID.NEXTVAL, 'Revista', '0');
INSERT into UTIC.UZITPUBTYPART (UZITPUBTYPART_ID, UZITPUBTYPART_NAME, UZITPUBTYPART_REMOVE) VALUES (UZISPUBTYPART_ID.NEXTVAL, 'Otro', '0');

--Quartiles
INSERT into UTIC.UZITQUARTIL (UZITQUARTIL_ID, UZITQUARTIL_NAME, UZITQUARTIL_REMOVE) VALUES (UZISQUARTIL_ID.NEXTVAL, 'Q1', '0');
INSERT into UTIC.UZITQUARTIL (UZITQUARTIL_ID, UZITQUARTIL_NAME, UZITQUARTIL_REMOVE) VALUES (UZISQUARTIL_ID.NEXTVAL, 'Q2', '0');
INSERT into UTIC.UZITQUARTIL (UZITQUARTIL_ID, UZITQUARTIL_NAME, UZITQUARTIL_REMOVE) VALUES (UZISQUARTIL_ID.NEXTVAL, 'Q3', '0');
INSERT into UTIC.UZITQUARTIL (UZITQUARTIL_ID, UZITQUARTIL_NAME, UZITQUARTIL_REMOVE) VALUES (UZISQUARTIL_ID.NEXTVAL, 'Q4', '0');
INSERT into UTIC.UZITQUARTIL (UZITQUARTIL_ID, UZITQUARTIL_NAME, UZITQUARTIL_REMOVE) VALUES (UZISQUARTIL_ID.NEXTVAL, 'Otro', '0');

--Codigos IS
INSERT into UTIC.UZITCODIS (UZITCODIS_ID, UZITCODIS_NAME, UZITCODIS_REMOVE) VALUES (UZISCOSIS_ID.NEXTVAL, 'Físico', '0');
INSERT into UTIC.UZITCODIS (UZITCODIS_ID, UZITCODIS_NAME, UZITCODIS_REMOVE) VALUES (UZISCOSIS_ID.NEXTVAL, 'Digital', '0'); 

