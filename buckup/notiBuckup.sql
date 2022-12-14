PGDMP          ,                z            notitest    14.5    14.5 Z               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16935    notitest    DATABASE     f   CREATE DATABASE notitest WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE notitest;
                postgres    false                        2615    16936    UZNT    SCHEMA        CREATE SCHEMA "UZNT";
    DROP SCHEMA "UZNT";
                UTIC    false                       0    0    SCHEMA "UZNT"    COMMENT     U   COMMENT ON SCHEMA "UZNT" IS 'esquema de las notificacioniones ademas de las tablas';
                   UTIC    false    5            ?            1259    16969 	   UZNTGROUP    TABLE     ?  CREATE TABLE "UZNT"."UZNTGROUP" (
    "UZNTGROUP_ID" integer NOT NULL,
    "UZNTGROUP_NAME" character varying,
    "UZNTGROUP_DESCRIPCION" character varying,
    "UZNTGROUP_SCRIPT" character varying,
    "UZNTGROUP_PARAMETRO" boolean,
    "UZNTGROUP_ACTIVE" boolean,
    "UZNTGROUP_CREATION_DATE" timestamp without time zone,
    "UZNTGROUP_USER_CREATION" character varying,
    "UZNTGROUP_CHANGE_DATE" timestamp without time zone,
    "UZNTGROUP_USER_CHANGE" character varying
);
    DROP TABLE "UZNT"."UZNTGROUP";
       UZNT         heap    UTIC    false    5                       0    0    TABLE "UZNTGROUP"    COMMENT     D   COMMENT ON TABLE "UZNT"."UZNTGROUP" IS 'rango de grupos asignados';
          UZNT          UTIC    false    214                       0    0 !   COLUMN "UZNTGROUP"."UZNTGROUP_ID"    COMMENT     o   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_ID" IS 'identificado del regitro de datos en la tabla grupos';
          UZNT          UTIC    false    214                       0    0 #   COLUMN "UZNTGROUP"."UZNTGROUP_NAME"    COMMENT     \   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_NAME" IS 'asignacion del nombre del grupo';
          UZNT          UTIC    false    214                       0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_DESCRIPCION"    COMMENT     n   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_DESCRIPCION" IS 'respectiva descripcion del grupo designado';
          UZNT          UTIC    false    214                       0    0 %   COLUMN "UZNTGROUP"."UZNTGROUP_SCRIPT"    COMMENT     e   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_SCRIPT" IS 'SQL de la consulta en la base de datos';
          UZNT          UTIC    false    214                       0    0 (   COLUMN "UZNTGROUP"."UZNTGROUP_PARAMETRO"    COMMENT     i   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_PARAMETRO" IS 'indicar si el sql tiene parametros o no';
          UZNT          UTIC    false    214                       0    0 %   COLUMN "UZNTGROUP"."UZNTGROUP_ACTIVE"    COMMENT     i   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_ACTIVE" IS 'indica si el grupo esta en constancia o no';
          UZNT          UTIC    false    214                       0    0 ,   COLUMN "UZNTGROUP"."UZNTGROUP_CREATION_DATE"    COMMENT     g   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_CREATION_DATE" IS 'es la fecha de creacion del grupo';
          UZNT          UTIC    false    214                       0    0 ,   COLUMN "UZNTGROUP"."UZNTGROUP_USER_CREATION"    COMMENT     b   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_USER_CREATION" IS 'el usuario que creo el grupo';
          UZNT          UTIC    false    214                       0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_CHANGE_DATE"    COMMENT     l   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_CHANGE_DATE" IS 'la fecha cuando fua actualizado el grupo';
          UZNT          UTIC    false    214                       0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_USER_CHANGE"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_USER_CHANGE" IS 'el usuario que actualizo el registro del grupo';
          UZNT          UTIC    false    214            ?            1259    16962    UZNTNOTIFICATION    TABLE     4  CREATE TABLE "UZNT"."UZNTNOTIFICATION" (
    "UZNTNOTIFICATION_ID" integer NOT NULL,
    "UZNTNOTIFICATION_OPTION_ID" integer NOT NULL,
    "UZNTNOTIFICATION_TYPE_ID" integer NOT NULL,
    "UZNTNOTIFICATION_SUBJECT" character varying(200),
    "UZNTNOTIFICATION_MESSAGE" character varying(500),
    "UZNTNOTIFICATION_RECEIVER" character varying,
    "UZNTNOTIFICATION_IP" character varying,
    "UZNTNOTIFICATION_AGENTE" character varying,
    "UZNTNOTIFICATION_ACTIVE" boolean,
    "UZNTNOTIFICATION_READ" boolean,
    "UZNTNOTIFICATION_READ_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_CREATION_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_USER_CREATION" character varying,
    "UZNTNOTIFICATION_CHANGE_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_USER_CHANGE" character varying
);
 &   DROP TABLE "UZNT"."UZNTNOTIFICATION";
       UZNT         heap    UTIC    false    5                       0    0    TABLE "UZNTNOTIFICATION"    COMMENT     f   COMMENT ON TABLE "UZNT"."UZNTNOTIFICATION" IS 'todos los valores de la notificacion correspondiente';
          UZNT          UTIC    false    213                        0    0 /   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_ID"    COMMENT        COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_ID" IS 'identificador de la fila de la tabla de notificaciones';
          UZNT          UTIC    false    213            !           0    0 6   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_OPTION_ID"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_OPTION_ID" IS 'relacion que existe en la tabla notificacion con la opcion';
          UZNT          UTIC    false    213            "           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_TYPE_ID"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_TYPE_ID" IS 'relacion con el tipo de notificacion';
          UZNT          UTIC    false    213            #           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_SUBJECT"    COMMENT     }   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_SUBJECT" IS 'EL ASUNTO QUE VIENE INCLUIDO EN LA NOTIFICACION';
          UZNT          UTIC    false    213            $           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_MESSAGE"    COMMENT     z   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_MESSAGE" IS 'el menaje que va incluido en la notificacion';
          UZNT          UTIC    false    213            %           0    0 5   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_RECEIVER"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_RECEIVER" IS 'a quien va dirijido la notificacion';
          UZNT          UTIC    false    213            &           0    0 /   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_IP"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_IP" IS 'la ip desde donde se abre la notificacion';
          UZNT          UTIC    false    213            '           0    0 3   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_AGENTE"    COMMENT     }   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_AGENTE" IS 'el servidor desde donde se abrio la notificacion';
          UZNT          UTIC    false    213            (           0    0 3   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_ACTIVE"    COMMENT     {   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_ACTIVE" IS 'se muestra si la notificacion esta activa o no';
          UZNT          UTIC    false    213            )           0    0 1   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_READ"    COMMENT     t   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_READ" IS 'muestra si la notificacion fue leida o no';
          UZNT          UTIC    false    213            *           0    0 6   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_READ_DATE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_READ_DATE" IS 'la fecha y la hora en la que se ha leido la notificacion';
          UZNT          UTIC    false    213            +           0    0 :   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_CREATION_DATE"    COMMENT     y   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_CREATION_DATE" IS 'fecha en la que se creo este registro';
          UZNT          UTIC    false    213            ,           0    0 :   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CREATION"    COMMENT     w   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CREATION" IS 'el usuario que creo la notificacion';
          UZNT          UTIC    false    213            -           0    0 8   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_CHANGE_DATE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_CHANGE_DATE" IS 'la fecha cuando fua actualizado la notificacion';
          UZNT          UTIC    false    213            .           0    0 8   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CHANGE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CHANGE" IS 'el usuario que actualizo el registro de la notificacion';
          UZNT          UTIC    false    213            ?            1259    16955    UZNTNOTIFICATION_TYPE    TABLE     ?  CREATE TABLE "UZNT"."UZNTNOTIFICATION_TYPE" (
    "UZNTNOTIFICATION_TYPE_ID" integer NOT NULL,
    "UZNTNOTIFICATION_TYPE_NAME" character varying,
    "UZNTNOTIFICATION_TYPE_ACTIVE" boolean,
    "UZNTNOTIFICATION_TYPE_CREATION_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_TYPE_USER_CREATION" character varying,
    "UZNTNOTIFICATION_TYPE_CHANGE_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_TYPE_USER_CHANGE" character varying
);
 +   DROP TABLE "UZNT"."UZNTNOTIFICATION_TYPE";
       UZNT         heap    UTIC    false    5            /           0    0    TABLE "UZNTNOTIFICATION_TYPE"    COMMENT     k   COMMENT ON TABLE "UZNT"."UZNTNOTIFICATION_TYPE" IS 'tabla para indicar el tipoo de notificacion indicado';
          UZNT          UTIC    false    212            0           0    0 9   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ID"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ID" IS 'identificador de la tabla tipo de notificacion';
          UZNT          UTIC    false    212            1           0    0 ;   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_NAME"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_NAME" IS 'nombre del tipo de notificacion asignada a la misma';
          UZNT          UTIC    false    212            2           0    0 =   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ACTIVE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ACTIVE" IS 'indicar si el tipo de notificacion esta activo';
          UZNT          UTIC    false    212            3           0    0 D   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CREATION_DATE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CREATION_DATE" IS 'es la fecha de creacion del tipo de notificacion';
          UZNT          UTIC    false    212            4           0    0 D   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CREATION"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CREATION" IS 'el usuario que creo el tipo de notificacion';
          UZNT          UTIC    false    212            5           0    0 B   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CHANGE_DATE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CHANGE_DATE" IS 'la fecha cuando fua actualizado el tipo de notificacion';
          UZNT          UTIC    false    212            6           0    0 B   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CHANGE"    COMMENT     ?   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CHANGE" IS 'el usuario que actualizo el registro del tipo de notificacion';
          UZNT          UTIC    false    212            ?            1259    16946 
   UZNTOPTION    TABLE     ?  CREATE TABLE "UZNT"."UZNTOPTION" (
    "UZNTOPTION_ID" integer NOT NULL,
    "UZNTOPTION_SYSTEM_ID" integer,
    "UZNTOPTION_CODE" character varying,
    "UZNTOPTION_NAME" character varying,
    "UZNTOPTION_ACTIVE" boolean,
    "UZNTOPTION_CREATION_DATE" timestamp without time zone,
    "UZNTOPTION_USER_CREATION" character varying,
    "UZNTOPTION_CHANGE_DATE" timestamp without time zone,
    "UZNTOPTION_USER_CHANGE" character varying
);
     DROP TABLE "UZNT"."UZNTOPTION";
       UZNT         heap    UTIC    false    5            7           0    0    TABLE "UZNTOPTION"    COMMENT     l   COMMENT ON TABLE "UZNT"."UZNTOPTION" IS 'se indica la opcion de la notificacion y a que sistema pertenece';
          UZNT          UTIC    false    211            8           0    0 #   COLUMN "UZNTOPTION"."UZNTOPTION_ID"    COMMENT     ]   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_ID" IS 'Identificador de la tabla option';
          UZNT          UTIC    false    211            9           0    0 *   COLUMN "UZNTOPTION"."UZNTOPTION_SYSTEM_ID"    COMMENT     q   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_SYSTEM_ID" IS 'llave foranea en relacion con la tabla sistem';
          UZNT          UTIC    false    211            :           0    0 %   COLUMN "UZNTOPTION"."UZNTOPTION_CODE"    COMMENT     ^   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CODE" IS 'codigo unico de la tabla option';
          UZNT          UTIC    false    211            ;           0    0 %   COLUMN "UZNTOPTION"."UZNTOPTION_NAME"    COMMENT     `   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_NAME" IS 'nombre de la opcion a seleccionar';
          UZNT          UTIC    false    211            <           0    0 '   COLUMN "UZNTOPTION"."UZNTOPTION_ACTIVE"    COMMENT     h   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_ACTIVE" IS 'indicador si la option esta activa o no';
          UZNT          UTIC    false    211            =           0    0 .   COLUMN "UZNTOPTION"."UZNTOPTION_CREATION_DATE"    COMMENT     l   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CREATION_DATE" IS 'es la fecha de creacion de la opcion';
          UZNT          UTIC    false    211            >           0    0 .   COLUMN "UZNTOPTION"."UZNTOPTION_USER_CREATION"    COMMENT     e   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_USER_CREATION" IS 'el usuario que creo la opcion';
          UZNT          UTIC    false    211            ?           0    0 ,   COLUMN "UZNTOPTION"."UZNTOPTION_CHANGE_DATE"    COMMENT     o   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CHANGE_DATE" IS 'la fecha cuando fua actualizado la opcion';
          UZNT          UTIC    false    211            @           0    0 ,   COLUMN "UZNTOPTION"."UZNTOPTION_USER_CHANGE"    COMMENT     w   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_USER_CHANGE" IS 'el usuario que actualizo el registro de la opcion';
          UZNT          UTIC    false    211            ?            1259    16937 
   UZNTSYSTEM    TABLE     ?  CREATE TABLE "UZNT"."UZNTSYSTEM" (
    "UZNTSYSTEM_ID" integer NOT NULL,
    "UZNTSYSTEM_CODE" character varying,
    "UZNTSYSTEM_NAME" character varying,
    "UZNTSYSTEM_ACTIVE" boolean,
    "UZNTSYSTEM_CREATION_DATE" timestamp without time zone,
    "UZNTSYSTEM_USER_CREATION" character varying,
    "UZNTSYSTEM_CHANGE_DATE" timestamp without time zone,
    "UZNTSYSTEM_USER_CHANGE" character varying
);
     DROP TABLE "UZNT"."UZNTSYSTEM";
       UZNT         heap    UTIC    false    5            A           0    0    TABLE "UZNTSYSTEM"    COMMENT     ]   COMMENT ON TABLE "UZNT"."UZNTSYSTEM" IS 'systema de donde se esta enviando la notificacion';
          UZNT          UTIC    false    210            B           0    0 #   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_ID"    COMMENT     a   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_ID" IS 'identificador de la tabla de sistema';
          UZNT          UTIC    false    210            C           0    0 %   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CODE"    COMMENT     d   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CODE" IS 'es un codigo unico parta cada sistema';
          UZNT          UTIC    false    210            D           0    0 %   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_NAME"    COMMENT     ^   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_NAME" IS 'Nombre asignado para el sistema';
          UZNT          UTIC    false    210            E           0    0 '   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_ACTIVE"    COMMENT     n   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_ACTIVE" IS 'muestra si esta activo o desactivo el sistema';
          UZNT          UTIC    false    210            F           0    0 .   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CREATION_DATE"    COMMENT     k   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CREATION_DATE" IS 'es la fecha de creacion del sistema';
          UZNT          UTIC    false    210            G           0    0 .   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_USER_CREATION"    COMMENT     f   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_USER_CREATION" IS 'el usuario que creo el sistema';
          UZNT          UTIC    false    210            H           0    0 ,   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CHANGE_DATE"    COMMENT     p   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CHANGE_DATE" IS 'la fecha cuando fua actualizado el sistema';
          UZNT          UTIC    false    210            I           0    0 ,   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_USER_CHANGE"    COMMENT     v   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_USER_CHANGE" IS 'el usuario que actualizo el registro del sistema';
          UZNT          UTIC    false    210                      0    16969 	   UZNTGROUP 
   TABLE DATA             COPY "UZNT"."UZNTGROUP" ("UZNTGROUP_ID", "UZNTGROUP_NAME", "UZNTGROUP_DESCRIPCION", "UZNTGROUP_SCRIPT", "UZNTGROUP_PARAMETRO", "UZNTGROUP_ACTIVE", "UZNTGROUP_CREATION_DATE", "UZNTGROUP_USER_CREATION", "UZNTGROUP_CHANGE_DATE", "UZNTGROUP_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    214   Hn                 0    16962    UZNTNOTIFICATION 
   TABLE DATA           ?  COPY "UZNT"."UZNTNOTIFICATION" ("UZNTNOTIFICATION_ID", "UZNTNOTIFICATION_OPTION_ID", "UZNTNOTIFICATION_TYPE_ID", "UZNTNOTIFICATION_SUBJECT", "UZNTNOTIFICATION_MESSAGE", "UZNTNOTIFICATION_RECEIVER", "UZNTNOTIFICATION_IP", "UZNTNOTIFICATION_AGENTE", "UZNTNOTIFICATION_ACTIVE", "UZNTNOTIFICATION_READ", "UZNTNOTIFICATION_READ_DATE", "UZNTNOTIFICATION_CREATION_DATE", "UZNTNOTIFICATION_USER_CREATION", "UZNTNOTIFICATION_CHANGE_DATE", "UZNTNOTIFICATION_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    213   en       
          0    16955    UZNTNOTIFICATION_TYPE 
   TABLE DATA           #  COPY "UZNT"."UZNTNOTIFICATION_TYPE" ("UZNTNOTIFICATION_TYPE_ID", "UZNTNOTIFICATION_TYPE_NAME", "UZNTNOTIFICATION_TYPE_ACTIVE", "UZNTNOTIFICATION_TYPE_CREATION_DATE", "UZNTNOTIFICATION_TYPE_USER_CREATION", "UZNTNOTIFICATION_TYPE_CHANGE_DATE", "UZNTNOTIFICATION_TYPE_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    212   ?n       	          0    16946 
   UZNTOPTION 
   TABLE DATA           ?   COPY "UZNT"."UZNTOPTION" ("UZNTOPTION_ID", "UZNTOPTION_SYSTEM_ID", "UZNTOPTION_CODE", "UZNTOPTION_NAME", "UZNTOPTION_ACTIVE", "UZNTOPTION_CREATION_DATE", "UZNTOPTION_USER_CREATION", "UZNTOPTION_CHANGE_DATE", "UZNTOPTION_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    211   ?n                 0    16937 
   UZNTSYSTEM 
   TABLE DATA           ?   COPY "UZNT"."UZNTSYSTEM" ("UZNTSYSTEM_ID", "UZNTSYSTEM_CODE", "UZNTSYSTEM_NAME", "UZNTSYSTEM_ACTIVE", "UZNTSYSTEM_CREATION_DATE", "UZNTSYSTEM_USER_CREATION", "UZNTSYSTEM_CHANGE_DATE", "UZNTSYSTEM_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    210   ?n       y           2606    16975    UZNTGROUP PK_GROUP 
   CONSTRAINT     `   ALTER TABLE ONLY "UZNT"."UZNTGROUP"
    ADD CONSTRAINT "PK_GROUP" PRIMARY KEY ("UZNTGROUP_ID");
 @   ALTER TABLE ONLY "UZNT"."UZNTGROUP" DROP CONSTRAINT "PK_GROUP";
       UZNT            UTIC    false    214            J           0    0 $   CONSTRAINT "PK_GROUP" ON "UZNTGROUP"    COMMENT     ^   COMMENT ON CONSTRAINT "PK_GROUP" ON "UZNT"."UZNTGROUP" IS 'llave primaria de la tabla grupo';
          UZNT          UTIC    false    3193            w           2606    16968     UZNTNOTIFICATION PK_NOTIFICATION 
   CONSTRAINT     u   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "PK_NOTIFICATION" PRIMARY KEY ("UZNTNOTIFICATION_ID");
 N   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "PK_NOTIFICATION";
       UZNT            UTIC    false    213            K           0    0 2   CONSTRAINT "PK_NOTIFICATION" ON "UZNTNOTIFICATION"    COMMENT     s   COMMENT ON CONSTRAINT "PK_NOTIFICATION" ON "UZNT"."UZNTNOTIFICATION" IS 'llave primaria de la tabla notificacion';
          UZNT          UTIC    false    3191            u           2606    16961 *   UZNTNOTIFICATION_TYPE PK_NOTIFICATION_TYPE 
   CONSTRAINT     ?   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION_TYPE"
    ADD CONSTRAINT "PK_NOTIFICATION_TYPE" PRIMARY KEY ("UZNTNOTIFICATION_TYPE_ID");
 X   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION_TYPE" DROP CONSTRAINT "PK_NOTIFICATION_TYPE";
       UZNT            UTIC    false    212            L           0    0 <   CONSTRAINT "PK_NOTIFICATION_TYPE" ON "UZNTNOTIFICATION_TYPE"    COMMENT     ?   COMMENT ON CONSTRAINT "PK_NOTIFICATION_TYPE" ON "UZNT"."UZNTNOTIFICATION_TYPE" IS 'llave primaria de la tabla de tipo de notificaciones';
          UZNT          UTIC    false    3189            q           2606    16952    UZNTOPTION PK_OPTION 
   CONSTRAINT     c   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "PK_OPTION" PRIMARY KEY ("UZNTOPTION_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "PK_OPTION";
       UZNT            UTIC    false    211            M           0    0 &   CONSTRAINT "PK_OPTION" ON "UZNTOPTION"    COMMENT     c   COMMENT ON CONSTRAINT "PK_OPTION" ON "UZNT"."UZNTOPTION" IS 'LLAVE PRIMARIA DE LA TABLA PRIMARIA';
          UZNT          UTIC    false    3185            m           2606    16943    UZNTSYSTEM PK_SYSTEM 
   CONSTRAINT     c   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM"
    ADD CONSTRAINT "PK_SYSTEM" PRIMARY KEY ("UZNTSYSTEM_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM" DROP CONSTRAINT "PK_SYSTEM";
       UZNT            UTIC    false    210            N           0    0 &   CONSTRAINT "PK_SYSTEM" ON "UZNTSYSTEM"    COMMENT     [   COMMENT ON CONSTRAINT "PK_SYSTEM" ON "UZNT"."UZNTSYSTEM" IS 'Llave primaria del sistemas';
          UZNT          UTIC    false    3181            o           2606    16945    UZNTSYSTEM UNIQ_UZMTSYSTEM_CODE 
   CONSTRAINT     k   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM"
    ADD CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" UNIQUE ("UZNTSYSTEM_CODE");
 M   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM" DROP CONSTRAINT "UNIQ_UZMTSYSTEM_CODE";
       UZNT            UTIC    false    210            O           0    0 1   CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" ON "UZNTSYSTEM"    COMMENT     p   COMMENT ON CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" ON "UZNT"."UZNTSYSTEM" IS 'EL CODIGO DEBE SER DIFERENTE DE TODOS';
          UZNT          UTIC    false    3183            s           2606    16954    UZNTOPTION UNIQ_UZNTOPTION_CODE 
   CONSTRAINT     k   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "UNIQ_UZNTOPTION_CODE" UNIQUE ("UZNTOPTION_CODE");
 M   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "UNIQ_UZNTOPTION_CODE";
       UZNT            UTIC    false    211            P           0    0 1   CONSTRAINT "UNIQ_UZNTOPTION_CODE" ON "UZNTOPTION"    COMMENT     e   COMMENT ON CONSTRAINT "UNIQ_UZNTOPTION_CODE" ON "UZNT"."UZNTOPTION" IS 'CODIGO UNICO PARA OPCIONES';
          UZNT          UTIC    false    3187            |           2606    16986 %   UZNTNOTIFICATION FK_NOTIFICATION_TYPE    FK CONSTRAINT     ?   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "FK_NOTIFICATION_TYPE" FOREIGN KEY ("UZNTNOTIFICATION_TYPE_ID") REFERENCES "UZNT"."UZNTNOTIFICATION_TYPE"("UZNTNOTIFICATION_TYPE_ID");
 S   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "FK_NOTIFICATION_TYPE";
       UZNT          UTIC    false    212    3189    213            Q           0    0 7   CONSTRAINT "FK_NOTIFICATION_TYPE" ON "UZNTNOTIFICATION"    COMMENT     w   COMMENT ON CONSTRAINT "FK_NOTIFICATION_TYPE" ON "UZNT"."UZNTNOTIFICATION" IS 'llave foranea del tipo de notificacion';
          UZNT          UTIC    false    3196            {           2606    16981    UZNTNOTIFICATION FK_OPTION    FK CONSTRAINT     ?   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "FK_OPTION" FOREIGN KEY ("UZNTNOTIFICATION_OPTION_ID") REFERENCES "UZNT"."UZNTOPTION"("UZNTOPTION_ID");
 H   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "FK_OPTION";
       UZNT          UTIC    false    3185    213    211            R           0    0 ,   CONSTRAINT "FK_OPTION" ON "UZNTNOTIFICATION"    COMMENT     w   COMMENT ON CONSTRAINT "FK_OPTION" ON "UZNT"."UZNTNOTIFICATION" IS 'llave foranea een relacion con la tabla de opcion';
          UZNT          UTIC    false    3195            z           2606    16976    UZNTOPTION FK_SYSTEM    FK CONSTRAINT     ?   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "FK_SYSTEM" FOREIGN KEY ("UZNTOPTION_SYSTEM_ID") REFERENCES "UZNT"."UZNTSYSTEM"("UZNTSYSTEM_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "FK_SYSTEM";
       UZNT          UTIC    false    211    3181    210            S           0    0 &   CONSTRAINT "FK_SYSTEM" ON "UZNTOPTION"    COMMENT     e   COMMENT ON CONSTRAINT "FK_SYSTEM" ON "UZNT"."UZNTOPTION" IS 'LLAVE FORANEA RELACIONADO CON SISTEMA';
          UZNT          UTIC    false    3194                  x?????? ? ?            x?????? ? ?      
      x?????? ? ?      	      x?????? ? ?            x?????? ? ?     