PGDMP         7                z            UZMT    14.5    14.5 q               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16744    UZMT    DATABASE     d   CREATE DATABASE "UZMT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE "UZMT";
                UTIC    false            "           0    0    DATABASE "UZMT"    COMMENT     A   COMMENT ON DATABASE "UZMT" IS 'BASE DE DATOS DE NOTIFICACIONES';
                   UTIC    false    3361                        2615    16745    UZNT    SCHEMA        CREATE SCHEMA "UZNT";
    DROP SCHEMA "UZNT";
                UTIC    false            �            1259    16778 	   UZNTGROUP    TABLE     �  CREATE TABLE "UZNT"."UZNTGROUP" (
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
       UZNT         heap    UTIC    false    4            #           0    0    TABLE "UZNTGROUP"    COMMENT     D   COMMENT ON TABLE "UZNT"."UZNTGROUP" IS 'rango de grupos asignados';
          UZNT          UTIC    false    214            $           0    0 !   COLUMN "UZNTGROUP"."UZNTGROUP_ID"    COMMENT     o   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_ID" IS 'identificado del regitro de datos en la tabla grupos';
          UZNT          UTIC    false    214            %           0    0 #   COLUMN "UZNTGROUP"."UZNTGROUP_NAME"    COMMENT     \   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_NAME" IS 'asignacion del nombre del grupo';
          UZNT          UTIC    false    214            &           0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_DESCRIPCION"    COMMENT     n   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_DESCRIPCION" IS 'respectiva descripcion del grupo designado';
          UZNT          UTIC    false    214            '           0    0 %   COLUMN "UZNTGROUP"."UZNTGROUP_SCRIPT"    COMMENT     e   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_SCRIPT" IS 'SQL de la consulta en la base de datos';
          UZNT          UTIC    false    214            (           0    0 (   COLUMN "UZNTGROUP"."UZNTGROUP_PARAMETRO"    COMMENT     i   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_PARAMETRO" IS 'indicar si el sql tiene parametros o no';
          UZNT          UTIC    false    214            )           0    0 %   COLUMN "UZNTGROUP"."UZNTGROUP_ACTIVE"    COMMENT     i   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_ACTIVE" IS 'indica si el grupo esta en constancia o no';
          UZNT          UTIC    false    214            *           0    0 ,   COLUMN "UZNTGROUP"."UZNTGROUP_CREATION_DATE"    COMMENT     g   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_CREATION_DATE" IS 'es la fecha de creacion del grupo';
          UZNT          UTIC    false    214            +           0    0 ,   COLUMN "UZNTGROUP"."UZNTGROUP_USER_CREATION"    COMMENT     b   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_USER_CREATION" IS 'el usuario que creo el grupo';
          UZNT          UTIC    false    214            ,           0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_CHANGE_DATE"    COMMENT     l   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_CHANGE_DATE" IS 'la fecha cuando fua actualizado el grupo';
          UZNT          UTIC    false    214            -           0    0 *   COLUMN "UZNTGROUP"."UZNTGROUP_USER_CHANGE"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTGROUP"."UZNTGROUP_USER_CHANGE" IS 'el usuario que actualizo el registro del grupo';
          UZNT          UTIC    false    214            �            1259    16792    UZNSGROUP_ID    SEQUENCE        CREATE SEQUENCE "UZNT"."UZNSGROUP_ID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 %   DROP SEQUENCE "UZNT"."UZNSGROUP_ID";
       UZNT          UTIC    false    214    4            .           0    0    UZNSGROUP_ID    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "UZNT"."UZNSGROUP_ID" OWNED BY "UZNT"."UZNTGROUP"."UZNTGROUP_ID";
          UZNT          UTIC    false    218            /           0    0    SEQUENCE "UZNSGROUP_ID"    COMMENT     D   COMMENT ON SEQUENCE "UZNT"."UZNSGROUP_ID" IS 'SECUENCIA DE GRUPOS';
          UZNT          UTIC    false    218            �            1259    16771    UZNTNOTIFICATION    TABLE     4  CREATE TABLE "UZNT"."UZNTNOTIFICATION" (
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
       UZNT         heap    UTIC    false    4            0           0    0    TABLE "UZNTNOTIFICATION"    COMMENT     f   COMMENT ON TABLE "UZNT"."UZNTNOTIFICATION" IS 'todos los valores de la notificacion correspondiente';
          UZNT          UTIC    false    213            1           0    0 /   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_ID"    COMMENT        COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_ID" IS 'identificador de la fila de la tabla de notificaciones';
          UZNT          UTIC    false    213            2           0    0 6   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_OPTION_ID"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_OPTION_ID" IS 'relacion que existe en la tabla notificacion con la opcion';
          UZNT          UTIC    false    213            3           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_TYPE_ID"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_TYPE_ID" IS 'relacion con el tipo de notificacion';
          UZNT          UTIC    false    213            4           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_SUBJECT"    COMMENT     }   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_SUBJECT" IS 'EL ASUNTO QUE VIENE INCLUIDO EN LA NOTIFICACION';
          UZNT          UTIC    false    213            5           0    0 4   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_MESSAGE"    COMMENT     z   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_MESSAGE" IS 'el menaje que va incluido en la notificacion';
          UZNT          UTIC    false    213            6           0    0 5   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_RECEIVER"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_RECEIVER" IS 'a quien va dirijido la notificacion';
          UZNT          UTIC    false    213            7           0    0 /   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_IP"    COMMENT     r   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_IP" IS 'la ip desde donde se abre la notificacion';
          UZNT          UTIC    false    213            8           0    0 3   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_AGENTE"    COMMENT     }   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_AGENTE" IS 'el servidor desde donde se abrio la notificacion';
          UZNT          UTIC    false    213            9           0    0 3   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_ACTIVE"    COMMENT     {   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_ACTIVE" IS 'se muestra si la notificacion esta activa o no';
          UZNT          UTIC    false    213            :           0    0 1   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_READ"    COMMENT     t   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_READ" IS 'muestra si la notificacion fue leida o no';
          UZNT          UTIC    false    213            ;           0    0 6   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_READ_DATE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_READ_DATE" IS 'la fecha y la hora en la que se ha leido la notificacion';
          UZNT          UTIC    false    213            <           0    0 :   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_CREATION_DATE"    COMMENT     y   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_CREATION_DATE" IS 'fecha en la que se creo este registro';
          UZNT          UTIC    false    213            =           0    0 :   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CREATION"    COMMENT     w   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CREATION" IS 'el usuario que creo la notificacion';
          UZNT          UTIC    false    213            >           0    0 8   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_CHANGE_DATE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_CHANGE_DATE" IS 'la fecha cuando fua actualizado la notificacion';
          UZNT          UTIC    false    213            ?           0    0 8   COLUMN "UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CHANGE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_USER_CHANGE" IS 'el usuario que actualizo el registro de la notificacion';
          UZNT          UTIC    false    213            �            1259    16794    UZNSNOTIFICATION_ID    SEQUENCE     �   CREATE SEQUENCE "UZNT"."UZNSNOTIFICATION_ID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 ,   DROP SEQUENCE "UZNT"."UZNSNOTIFICATION_ID";
       UZNT          UTIC    false    213    4            @           0    0    UZNSNOTIFICATION_ID    SEQUENCE OWNED BY     f   ALTER SEQUENCE "UZNT"."UZNSNOTIFICATION_ID" OWNED BY "UZNT"."UZNTNOTIFICATION"."UZNTNOTIFICATION_ID";
          UZNT          UTIC    false    219            A           0    0    SEQUENCE "UZNSNOTIFICATION_ID"    COMMENT     S   COMMENT ON SEQUENCE "UZNT"."UZNSNOTIFICATION_ID" IS 'SECUENCIA DE NOTIFICACIONES';
          UZNT          UTIC    false    219            �            1259    16790    UZNSNOTIFICATION_TYPE_ID    SEQUENCE     �   CREATE SEQUENCE "UZNT"."UZNSNOTIFICATION_TYPE_ID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 1   DROP SEQUENCE "UZNT"."UZNSNOTIFICATION_TYPE_ID";
       UZNT          UTIC    false    4            B           0    0 #   SEQUENCE "UZNSNOTIFICATION_TYPE_ID"    COMMENT     a   COMMENT ON SEQUENCE "UZNT"."UZNSNOTIFICATION_TYPE_ID" IS 'SECUENCIA DE TIPOS DE NOTIFICACIONES';
          UZNT          UTIC    false    217            �            1259    16755 
   UZNTOPTION    TABLE     �  CREATE TABLE "UZNT"."UZNTOPTION" (
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
       UZNT         heap    UTIC    false    4            C           0    0    TABLE "UZNTOPTION"    COMMENT     l   COMMENT ON TABLE "UZNT"."UZNTOPTION" IS 'se indica la opcion de la notificacion y a que sistema pertenece';
          UZNT          UTIC    false    211            D           0    0 #   COLUMN "UZNTOPTION"."UZNTOPTION_ID"    COMMENT     ]   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_ID" IS 'Identificador de la tabla option';
          UZNT          UTIC    false    211            E           0    0 *   COLUMN "UZNTOPTION"."UZNTOPTION_SYSTEM_ID"    COMMENT     q   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_SYSTEM_ID" IS 'llave foranea en relacion con la tabla sistem';
          UZNT          UTIC    false    211            F           0    0 %   COLUMN "UZNTOPTION"."UZNTOPTION_CODE"    COMMENT     ^   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CODE" IS 'codigo unico de la tabla option';
          UZNT          UTIC    false    211            G           0    0 %   COLUMN "UZNTOPTION"."UZNTOPTION_NAME"    COMMENT     `   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_NAME" IS 'nombre de la opcion a seleccionar';
          UZNT          UTIC    false    211            H           0    0 '   COLUMN "UZNTOPTION"."UZNTOPTION_ACTIVE"    COMMENT     h   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_ACTIVE" IS 'indicador si la option esta activa o no';
          UZNT          UTIC    false    211            I           0    0 .   COLUMN "UZNTOPTION"."UZNTOPTION_CREATION_DATE"    COMMENT     l   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CREATION_DATE" IS 'es la fecha de creacion de la opcion';
          UZNT          UTIC    false    211            J           0    0 .   COLUMN "UZNTOPTION"."UZNTOPTION_USER_CREATION"    COMMENT     e   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_USER_CREATION" IS 'el usuario que creo la opcion';
          UZNT          UTIC    false    211            K           0    0 ,   COLUMN "UZNTOPTION"."UZNTOPTION_CHANGE_DATE"    COMMENT     o   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_CHANGE_DATE" IS 'la fecha cuando fua actualizado la opcion';
          UZNT          UTIC    false    211            L           0    0 ,   COLUMN "UZNTOPTION"."UZNTOPTION_USER_CHANGE"    COMMENT     w   COMMENT ON COLUMN "UZNT"."UZNTOPTION"."UZNTOPTION_USER_CHANGE" IS 'el usuario que actualizo el registro de la opcion';
          UZNT          UTIC    false    211            �            1259    16787    UZNSOPTION_ID    SEQUENCE     �   CREATE SEQUENCE "UZNT"."UZNSOPTION_ID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE "UZNT"."UZNSOPTION_ID";
       UZNT          UTIC    false    211    4            M           0    0    UZNSOPTION_ID    SEQUENCE OWNED BY     T   ALTER SEQUENCE "UZNT"."UZNSOPTION_ID" OWNED BY "UZNT"."UZNTOPTION"."UZNTOPTION_ID";
          UZNT          UTIC    false    216            N           0    0    SEQUENCE "UZNSOPTION_ID"    COMMENT     G   COMMENT ON SEQUENCE "UZNT"."UZNSOPTION_ID" IS 'SECUENCIA DE OPCIONES';
          UZNT          UTIC    false    216            �            1259    16746 
   UZNTSYSTEM    TABLE     �  CREATE TABLE "UZNT"."UZNTSYSTEM" (
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
       UZNT         heap    UTIC    false    4            O           0    0    TABLE "UZNTSYSTEM"    COMMENT     ]   COMMENT ON TABLE "UZNT"."UZNTSYSTEM" IS 'systema de donde se esta enviando la notificacion';
          UZNT          UTIC    false    210            P           0    0 #   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_ID"    COMMENT     a   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_ID" IS 'identificador de la tabla de sistema';
          UZNT          UTIC    false    210            Q           0    0 %   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CODE"    COMMENT     d   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CODE" IS 'es un codigo unico parta cada sistema';
          UZNT          UTIC    false    210            R           0    0 %   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_NAME"    COMMENT     ^   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_NAME" IS 'Nombre asignado para el sistema';
          UZNT          UTIC    false    210            S           0    0 '   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_ACTIVE"    COMMENT     n   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_ACTIVE" IS 'muestra si esta activo o desactivo el sistema';
          UZNT          UTIC    false    210            T           0    0 .   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CREATION_DATE"    COMMENT     k   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CREATION_DATE" IS 'es la fecha de creacion del sistema';
          UZNT          UTIC    false    210            U           0    0 .   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_USER_CREATION"    COMMENT     f   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_USER_CREATION" IS 'el usuario que creo el sistema';
          UZNT          UTIC    false    210            V           0    0 ,   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_CHANGE_DATE"    COMMENT     p   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_CHANGE_DATE" IS 'la fecha cuando fua actualizado el sistema';
          UZNT          UTIC    false    210            W           0    0 ,   COLUMN "UZNTSYSTEM"."UZNTSYSTEM_USER_CHANGE"    COMMENT     v   COMMENT ON COLUMN "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_USER_CHANGE" IS 'el usuario que actualizo el registro del sistema';
          UZNT          UTIC    false    210            �            1259    16785    UZNSSYSTEM_ID    SEQUENCE     �   CREATE SEQUENCE "UZNT"."UZNSSYSTEM_ID"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 &   DROP SEQUENCE "UZNT"."UZNSSYSTEM_ID";
       UZNT          UTIC    false    210    4            X           0    0    UZNSSYSTEM_ID    SEQUENCE OWNED BY     T   ALTER SEQUENCE "UZNT"."UZNSSYSTEM_ID" OWNED BY "UZNT"."UZNTSYSTEM"."UZNTSYSTEM_ID";
          UZNT          UTIC    false    215            Y           0    0    SEQUENCE "UZNSSYSTEM_ID"    COMMENT     F   COMMENT ON SEQUENCE "UZNT"."UZNSSYSTEM_ID" IS 'SECUENCIA DE SISTEMA';
          UZNT          UTIC    false    215            �            1259    16764    UZNTNOTIFICATION_TYPE    TABLE       CREATE TABLE "UZNT"."UZNTNOTIFICATION_TYPE" (
    "UZNTNOTIFICATION_TYPE_ID" integer DEFAULT nextval('"UZNT"."UZNSNOTIFICATION_TYPE_ID"'::regclass) NOT NULL,
    "UZNTNOTIFICATION_TYPE_NAME" character varying,
    "UZNTNOTIFICATION_TYPE_ACTIVE" boolean,
    "UZNTNOTIFICATION_TYPE_CREATION_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_TYPE_USER_CREATION" character varying,
    "UZNTNOTIFICATION_TYPE_CHANGE_DATE" timestamp without time zone,
    "UZNTNOTIFICATION_TYPE_USER_CHANGE" character varying
);
 +   DROP TABLE "UZNT"."UZNTNOTIFICATION_TYPE";
       UZNT         heap    UTIC    false    217    4            Z           0    0    TABLE "UZNTNOTIFICATION_TYPE"    COMMENT     k   COMMENT ON TABLE "UZNT"."UZNTNOTIFICATION_TYPE" IS 'tabla para indicar el tipoo de notificacion indicado';
          UZNT          UTIC    false    212            [           0    0 9   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ID"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ID" IS 'identificador de la tabla tipo de notificacion';
          UZNT          UTIC    false    212            \           0    0 ;   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_NAME"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_NAME" IS 'nombre del tipo de notificacion asignada a la misma';
          UZNT          UTIC    false    212            ]           0    0 =   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ACTIVE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_ACTIVE" IS 'indicar si el tipo de notificacion esta activo';
          UZNT          UTIC    false    212            ^           0    0 D   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CREATION_DATE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CREATION_DATE" IS 'es la fecha de creacion del tipo de notificacion';
          UZNT          UTIC    false    212            _           0    0 D   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CREATION"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CREATION" IS 'el usuario que creo el tipo de notificacion';
          UZNT          UTIC    false    212            `           0    0 B   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CHANGE_DATE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_CHANGE_DATE" IS 'la fecha cuando fua actualizado el tipo de notificacion';
          UZNT          UTIC    false    212            a           0    0 B   COLUMN "UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CHANGE"    COMMENT     �   COMMENT ON COLUMN "UZNT"."UZNTNOTIFICATION_TYPE"."UZNTNOTIFICATION_TYPE_USER_CHANGE" IS 'el usuario que actualizo el registro del tipo de notificacion';
          UZNT          UTIC    false    212            u           2604    16793    UZNTGROUP UZNTGROUP_ID    DEFAULT     x   ALTER TABLE ONLY "UZNT"."UZNTGROUP" ALTER COLUMN "UZNTGROUP_ID" SET DEFAULT nextval('"UZNT"."UZNSGROUP_ID"'::regclass);
 I   ALTER TABLE "UZNT"."UZNTGROUP" ALTER COLUMN "UZNTGROUP_ID" DROP DEFAULT;
       UZNT          UTIC    false    218    214            t           2604    16795 $   UZNTNOTIFICATION UZNTNOTIFICATION_ID    DEFAULT     �   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" ALTER COLUMN "UZNTNOTIFICATION_ID" SET DEFAULT nextval('"UZNT"."UZNSNOTIFICATION_ID"'::regclass);
 W   ALTER TABLE "UZNT"."UZNTNOTIFICATION" ALTER COLUMN "UZNTNOTIFICATION_ID" DROP DEFAULT;
       UZNT          UTIC    false    219    213            r           2604    16788    UZNTOPTION UZNTOPTION_ID    DEFAULT     {   ALTER TABLE ONLY "UZNT"."UZNTOPTION" ALTER COLUMN "UZNTOPTION_ID" SET DEFAULT nextval('"UZNT"."UZNSOPTION_ID"'::regclass);
 K   ALTER TABLE "UZNT"."UZNTOPTION" ALTER COLUMN "UZNTOPTION_ID" DROP DEFAULT;
       UZNT          UTIC    false    216    211            q           2604    16786    UZNTSYSTEM UZNTSYSTEM_ID    DEFAULT     {   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM" ALTER COLUMN "UZNTSYSTEM_ID" SET DEFAULT nextval('"UZNT"."UZNSSYSTEM_ID"'::regclass);
 K   ALTER TABLE "UZNT"."UZNTSYSTEM" ALTER COLUMN "UZNTSYSTEM_ID" DROP DEFAULT;
       UZNT          UTIC    false    215    210                      0    16778 	   UZNTGROUP 
   TABLE DATA             COPY "UZNT"."UZNTGROUP" ("UZNTGROUP_ID", "UZNTGROUP_NAME", "UZNTGROUP_DESCRIPCION", "UZNTGROUP_SCRIPT", "UZNTGROUP_PARAMETRO", "UZNTGROUP_ACTIVE", "UZNTGROUP_CREATION_DATE", "UZNTGROUP_USER_CREATION", "UZNTGROUP_CHANGE_DATE", "UZNTGROUP_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    214   a�                 0    16771    UZNTNOTIFICATION 
   TABLE DATA           �  COPY "UZNT"."UZNTNOTIFICATION" ("UZNTNOTIFICATION_ID", "UZNTNOTIFICATION_OPTION_ID", "UZNTNOTIFICATION_TYPE_ID", "UZNTNOTIFICATION_SUBJECT", "UZNTNOTIFICATION_MESSAGE", "UZNTNOTIFICATION_RECEIVER", "UZNTNOTIFICATION_IP", "UZNTNOTIFICATION_AGENTE", "UZNTNOTIFICATION_ACTIVE", "UZNTNOTIFICATION_READ", "UZNTNOTIFICATION_READ_DATE", "UZNTNOTIFICATION_CREATION_DATE", "UZNTNOTIFICATION_USER_CREATION", "UZNTNOTIFICATION_CHANGE_DATE", "UZNTNOTIFICATION_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    213   ��                 0    16764    UZNTNOTIFICATION_TYPE 
   TABLE DATA           #  COPY "UZNT"."UZNTNOTIFICATION_TYPE" ("UZNTNOTIFICATION_TYPE_ID", "UZNTNOTIFICATION_TYPE_NAME", "UZNTNOTIFICATION_TYPE_ACTIVE", "UZNTNOTIFICATION_TYPE_CREATION_DATE", "UZNTNOTIFICATION_TYPE_USER_CREATION", "UZNTNOTIFICATION_TYPE_CHANGE_DATE", "UZNTNOTIFICATION_TYPE_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    212   ��                 0    16755 
   UZNTOPTION 
   TABLE DATA           �   COPY "UZNT"."UZNTOPTION" ("UZNTOPTION_ID", "UZNTOPTION_SYSTEM_ID", "UZNTOPTION_CODE", "UZNTOPTION_NAME", "UZNTOPTION_ACTIVE", "UZNTOPTION_CREATION_DATE", "UZNTOPTION_USER_CREATION", "UZNTOPTION_CHANGE_DATE", "UZNTOPTION_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    211   Ɔ                 0    16746 
   UZNTSYSTEM 
   TABLE DATA           �   COPY "UZNT"."UZNTSYSTEM" ("UZNTSYSTEM_ID", "UZNTSYSTEM_CODE", "UZNTSYSTEM_NAME", "UZNTSYSTEM_ACTIVE", "UZNTSYSTEM_CREATION_DATE", "UZNTSYSTEM_USER_CREATION", "UZNTSYSTEM_CHANGE_DATE", "UZNTSYSTEM_USER_CHANGE") FROM stdin;
    UZNT          UTIC    false    210   �       b           0    0    UZNSGROUP_ID    SEQUENCE SET     <   SELECT pg_catalog.setval('"UZNT"."UZNSGROUP_ID"', 1, true);
          UZNT          UTIC    false    218            c           0    0    UZNSNOTIFICATION_ID    SEQUENCE SET     D   SELECT pg_catalog.setval('"UZNT"."UZNSNOTIFICATION_ID"', 1, false);
          UZNT          UTIC    false    219            d           0    0    UZNSNOTIFICATION_TYPE_ID    SEQUENCE SET     I   SELECT pg_catalog.setval('"UZNT"."UZNSNOTIFICATION_TYPE_ID"', 1, false);
          UZNT          UTIC    false    217            e           0    0    UZNSOPTION_ID    SEQUENCE SET     >   SELECT pg_catalog.setval('"UZNT"."UZNSOPTION_ID"', 1, false);
          UZNT          UTIC    false    216            f           0    0    UZNSSYSTEM_ID    SEQUENCE SET     >   SELECT pg_catalog.setval('"UZNT"."UZNSSYSTEM_ID"', 1, false);
          UZNT          UTIC    false    215            �           2606    16784    UZNTGROUP PK_GROUP 
   CONSTRAINT     `   ALTER TABLE ONLY "UZNT"."UZNTGROUP"
    ADD CONSTRAINT "PK_GROUP" PRIMARY KEY ("UZNTGROUP_ID");
 @   ALTER TABLE ONLY "UZNT"."UZNTGROUP" DROP CONSTRAINT "PK_GROUP";
       UZNT            UTIC    false    214            g           0    0 $   CONSTRAINT "PK_GROUP" ON "UZNTGROUP"    COMMENT     ^   COMMENT ON CONSTRAINT "PK_GROUP" ON "UZNT"."UZNTGROUP" IS 'llave primaria de la tabla grupo';
          UZNT          UTIC    false    3203            �           2606    16777     UZNTNOTIFICATION PK_NOTIFICATION 
   CONSTRAINT     u   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "PK_NOTIFICATION" PRIMARY KEY ("UZNTNOTIFICATION_ID");
 N   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "PK_NOTIFICATION";
       UZNT            UTIC    false    213            h           0    0 2   CONSTRAINT "PK_NOTIFICATION" ON "UZNTNOTIFICATION"    COMMENT     s   COMMENT ON CONSTRAINT "PK_NOTIFICATION" ON "UZNT"."UZNTNOTIFICATION" IS 'llave primaria de la tabla notificacion';
          UZNT          UTIC    false    3201                       2606    16770 *   UZNTNOTIFICATION_TYPE PK_NOTIFICATION_TYPE 
   CONSTRAINT     �   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION_TYPE"
    ADD CONSTRAINT "PK_NOTIFICATION_TYPE" PRIMARY KEY ("UZNTNOTIFICATION_TYPE_ID");
 X   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION_TYPE" DROP CONSTRAINT "PK_NOTIFICATION_TYPE";
       UZNT            UTIC    false    212            i           0    0 <   CONSTRAINT "PK_NOTIFICATION_TYPE" ON "UZNTNOTIFICATION_TYPE"    COMMENT     �   COMMENT ON CONSTRAINT "PK_NOTIFICATION_TYPE" ON "UZNT"."UZNTNOTIFICATION_TYPE" IS 'llave primaria de la tabla de tipo de notificaciones';
          UZNT          UTIC    false    3199            {           2606    16761    UZNTOPTION PK_OPTION 
   CONSTRAINT     c   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "PK_OPTION" PRIMARY KEY ("UZNTOPTION_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "PK_OPTION";
       UZNT            UTIC    false    211            j           0    0 &   CONSTRAINT "PK_OPTION" ON "UZNTOPTION"    COMMENT     c   COMMENT ON CONSTRAINT "PK_OPTION" ON "UZNT"."UZNTOPTION" IS 'LLAVE PRIMARIA DE LA TABLA PRIMARIA';
          UZNT          UTIC    false    3195            w           2606    16752    UZNTSYSTEM PK_SYSTEM 
   CONSTRAINT     c   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM"
    ADD CONSTRAINT "PK_SYSTEM" PRIMARY KEY ("UZNTSYSTEM_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM" DROP CONSTRAINT "PK_SYSTEM";
       UZNT            UTIC    false    210            k           0    0 &   CONSTRAINT "PK_SYSTEM" ON "UZNTSYSTEM"    COMMENT     [   COMMENT ON CONSTRAINT "PK_SYSTEM" ON "UZNT"."UZNTSYSTEM" IS 'Llave primaria del sistemas';
          UZNT          UTIC    false    3191            y           2606    16754    UZNTSYSTEM UNIQ_UZMTSYSTEM_CODE 
   CONSTRAINT     k   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM"
    ADD CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" UNIQUE ("UZNTSYSTEM_CODE");
 M   ALTER TABLE ONLY "UZNT"."UZNTSYSTEM" DROP CONSTRAINT "UNIQ_UZMTSYSTEM_CODE";
       UZNT            UTIC    false    210            l           0    0 1   CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" ON "UZNTSYSTEM"    COMMENT     p   COMMENT ON CONSTRAINT "UNIQ_UZMTSYSTEM_CODE" ON "UZNT"."UZNTSYSTEM" IS 'EL CODIGO DEBE SER DIFERENTE DE TODOS';
          UZNT          UTIC    false    3193            }           2606    16763    UZNTOPTION UNIQ_UZNTOPTION_CODE 
   CONSTRAINT     k   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "UNIQ_UZNTOPTION_CODE" UNIQUE ("UZNTOPTION_CODE");
 M   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "UNIQ_UZNTOPTION_CODE";
       UZNT            UTIC    false    211            m           0    0 1   CONSTRAINT "UNIQ_UZNTOPTION_CODE" ON "UZNTOPTION"    COMMENT     e   COMMENT ON CONSTRAINT "UNIQ_UZNTOPTION_CODE" ON "UZNT"."UZNTOPTION" IS 'CODIGO UNICO PARA OPCIONES';
          UZNT          UTIC    false    3197            �           2606    16806 %   UZNTNOTIFICATION FK_NOTIFICATION_TYPE    FK CONSTRAINT     �   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "FK_NOTIFICATION_TYPE" FOREIGN KEY ("UZNTNOTIFICATION_TYPE_ID") REFERENCES "UZNT"."UZNTNOTIFICATION_TYPE"("UZNTNOTIFICATION_TYPE_ID");
 S   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "FK_NOTIFICATION_TYPE";
       UZNT          UTIC    false    212    3199    213            n           0    0 7   CONSTRAINT "FK_NOTIFICATION_TYPE" ON "UZNTNOTIFICATION"    COMMENT     w   COMMENT ON CONSTRAINT "FK_NOTIFICATION_TYPE" ON "UZNT"."UZNTNOTIFICATION" IS 'llave foranea del tipo de notificacion';
          UZNT          UTIC    false    3206            �           2606    16801    UZNTNOTIFICATION FK_OPTION    FK CONSTRAINT     �   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION"
    ADD CONSTRAINT "FK_OPTION" FOREIGN KEY ("UZNTNOTIFICATION_OPTION_ID") REFERENCES "UZNT"."UZNTOPTION"("UZNTOPTION_ID");
 H   ALTER TABLE ONLY "UZNT"."UZNTNOTIFICATION" DROP CONSTRAINT "FK_OPTION";
       UZNT          UTIC    false    211    3195    213            o           0    0 ,   CONSTRAINT "FK_OPTION" ON "UZNTNOTIFICATION"    COMMENT     w   COMMENT ON CONSTRAINT "FK_OPTION" ON "UZNT"."UZNTNOTIFICATION" IS 'llave foranea een relacion con la tabla de opcion';
          UZNT          UTIC    false    3205            �           2606    16796    UZNTOPTION FK_SYSTEM    FK CONSTRAINT     �   ALTER TABLE ONLY "UZNT"."UZNTOPTION"
    ADD CONSTRAINT "FK_SYSTEM" FOREIGN KEY ("UZNTOPTION_SYSTEM_ID") REFERENCES "UZNT"."UZNTSYSTEM"("UZNTSYSTEM_ID");
 B   ALTER TABLE ONLY "UZNT"."UZNTOPTION" DROP CONSTRAINT "FK_SYSTEM";
       UZNT          UTIC    false    211    3191    210            p           0    0 &   CONSTRAINT "FK_SYSTEM" ON "UZNTOPTION"    COMMENT     e   COMMENT ON CONSTRAINT "FK_SYSTEM" ON "UZNT"."UZNTOPTION" IS 'LLAVE FORANEA RELACIONADO CON SISTEMA';
          UZNT          UTIC    false    3204                  x�3�rus�1~��+F��� �Z�            x������ � �            x������ � �            x������ � �            x������ � �     