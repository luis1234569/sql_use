PGDMP     :    0                z            uzmt    14.5    14.5 g    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    24689    uzmt    DATABASE     b   CREATE DATABASE uzmt WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE uzmt;
                postgres    false                        2615    24690    utic    SCHEMA        CREATE SCHEMA utic;
    DROP SCHEMA utic;
                postgres    false            ?            1259    24708    uzmsgroup_id    SEQUENCE     u   CREATE SEQUENCE public.uzmsgroup_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.uzmsgroup_id;
       public          postgres    false            ?            1259    24709    uzmsmessage_id    SEQUENCE     w   CREATE SEQUENCE public.uzmsmessage_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.uzmsmessage_id;
       public          postgres    false            ?            1259    24710    uzmsnotification_id    SEQUENCE     |   CREATE SEQUENCE public.uzmsnotification_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.uzmsnotification_id;
       public          postgres    false            ?            1259    24711    uzmsnotification_type_id    SEQUENCE     ?   CREATE SEQUENCE public.uzmsnotification_type_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.uzmsnotification_type_id;
       public          postgres    false            ?            1259    24712    uzmsoption_id    SEQUENCE     v   CREATE SEQUENCE public.uzmsoption_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.uzmsoption_id;
       public          postgres    false            ?            1259    24713    uzmssystem_id    SEQUENCE     v   CREATE SEQUENCE public.uzmssystem_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.uzmssystem_id;
       public          postgres    false            ?            1259    24723    uzmsgroup_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsgroup_id
    AS integer
    START WITH 100
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE utic.uzmsgroup_id;
       utic          postgres    false    4            ?            1259    24732    uzmsmessage_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsmessage_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE utic.uzmsmessage_id;
       utic          postgres    false    4            ?            1259    24739    uzmsnotification_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsnotification_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE utic.uzmsnotification_id;
       utic          postgres    false    4            ?            1259    24748    uzmsnotification_type_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsnotification_type_id
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE utic.uzmsnotification_type_id;
       utic          postgres    false    4            ?            1259    24724 	   uzmtgroup    TABLE     ?  CREATE TABLE utic.uzmtgroup (
    uzmtgroup_id integer DEFAULT nextval('utic.uzmsgroup_id'::regclass) NOT NULL,
    uzmtgroup_name character varying(200),
    uzmtgroup_description character varying(200),
    uzmtgroup_script character varying(200),
    uzmtgroup_parametro numeric(1,0),
    uzmtgroup_active numeric(1,0),
    uzmtgroup_fecha_crea date,
    uzmtgroup_usua_crea character varying(200),
    uzmtgroup_fecha_modif date,
    uzmtgroup_usua_modif character varying(200)
);
    DROP TABLE utic.uzmtgroup;
       utic         heap    postgres    false    216    4            /           0    0    TABLE uzmtgroup    COMMENT     `   COMMENT ON TABLE utic.uzmtgroup IS 'tabla donde se especificara el ingreso el rango en grupo ';
          utic          postgres    false    217            0           0    0    COLUMN uzmtgroup.uzmtgroup_id    COMMENT     V   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_id IS 'identificado de la fila de grupos';
          utic          postgres    false    217            1           0    0    COLUMN uzmtgroup.uzmtgroup_name    COMMENT     V   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_name IS 'asignacion del nombre del grupo';
          utic          postgres    false    217            2           0    0 &   COLUMN uzmtgroup.uzmtgroup_description    COMMENT     h   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_description IS 'respectiva descripcion del grupo designado';
          utic          postgres    false    217            3           0    0 !   COLUMN uzmtgroup.uzmtgroup_script    COMMENT     _   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_script IS 'sql de la consulta en la base de datos';
          utic          postgres    false    217            4           0    0 $   COLUMN uzmtgroup.uzmtgroup_parametro    COMMENT     c   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_parametro IS 'indicar si el sql tiene parametros o no';
          utic          postgres    false    217            5           0    0 !   COLUMN uzmtgroup.uzmtgroup_active    COMMENT     c   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_active IS 'indica si el grupo esta en constancia o no';
          utic          postgres    false    217            6           0    0 %   COLUMN uzmtgroup.uzmtgroup_fecha_crea    COMMENT     ^   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_fecha_crea IS 'es la fecha de creacion del grupo';
          utic          postgres    false    217            7           0    0 $   COLUMN uzmtgroup.uzmtgroup_usua_crea    COMMENT     X   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_usua_crea IS 'el usuario que creo el grupo';
          utic          postgres    false    217            8           0    0 &   COLUMN uzmtgroup.uzmtgroup_fecha_modif    COMMENT     f   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_fecha_modif IS 'la fecha cuando fua actualizado el grupo';
          utic          postgres    false    217            9           0    0 %   COLUMN uzmtgroup.uzmtgroup_usua_modif    COMMENT     k   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_usua_modif IS 'el usuario que actualizo el registro del grupo';
          utic          postgres    false    217            ?            1259    24733    uzmtmessage    TABLE     ?  CREATE TABLE utic.uzmtmessage (
    uzmtmessage_id integer DEFAULT nextval('utic.uzmsmessage_id'::regclass) NOT NULL,
    uzmtnotification_type_id integer,
    uzmtmessage_header character varying(200),
    uzmtmessage_body character(1),
    uzmtmessage_active numeric(1,0),
    uzmtmessage_usua_crea numeric(8,0),
    uzmtmessage_fecha_crea date,
    uzmtmessage_usua_update numeric(8,0),
    uzmtmessage_fecha_update date
);
    DROP TABLE utic.uzmtmessage;
       utic         heap    postgres    false    218    4            :           0    0    TABLE uzmtmessage    COMMENT     :   COMMENT ON TABLE utic.uzmtmessage IS 'tabla de mensajes';
          utic          postgres    false    219            ;           0    0 !   COLUMN uzmtmessage.uzmtmessage_id    COMMENT     ]   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_id IS 'identificador de la fila del mensaje';
          utic          postgres    false    219            <           0    0 +   COLUMN uzmtmessage.uzmtnotification_type_id    COMMENT     x   COMMENT ON COLUMN utic.uzmtmessage.uzmtnotification_type_id IS 'llave foranea en relacion con el tipo de notificacion';
          utic          postgres    false    219            =           0    0 %   COLUMN uzmtmessage.uzmtmessage_header    COMMENT     P   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_header IS 'el tema del mensaje';
          utic          postgres    false    219            >           0    0 #   COLUMN uzmtmessage.uzmtmessage_body    COMMENT     P   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_body IS 'contenido del mensaje';
          utic          postgres    false    219            ?           0    0 (   COLUMN uzmtmessage.uzmtmessage_usua_crea    COMMENT     `   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_usua_crea IS 'el usuario quien creo el mensaje';
          utic          postgres    false    219            @           0    0 )   COLUMN uzmtmessage.uzmtmessage_fecha_crea    COMMENT     `   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_fecha_crea IS 'fecha cuando se creo el mensaje';
          utic          postgres    false    219            A           0    0 *   COLUMN uzmtmessage.uzmtmessage_usua_update    COMMENT     g   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_usua_update IS 'el usuario quien actualizo el mensaje';
          utic          postgres    false    219            B           0    0 +   COLUMN uzmtmessage.uzmtmessage_fecha_update    COMMENT     g   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_fecha_update IS 'fecha cuando se actualizo el mensaje';
          utic          postgres    false    219            ?            1259    24740    uzmtnotification    TABLE     4  CREATE TABLE utic.uzmtnotification (
    uzmtnotification_id integer DEFAULT nextval('utic.uzmsnotification_id'::regclass) NOT NULL,
    uzmtnotification_option_id integer,
    uzmtmessage_id integer,
    uzmtnotification_receiver character varying(200),
    uzmtnotification_active numeric(1,0),
    uzmtnotification_read numeric(1,0),
    uzmtnotification_read_date date,
    uzmtnotification_fecha_crea date,
    uzmtnotification_usua_crea character varying(200),
    uzmtnotification_fecha_modif date,
    uzmtnotification_usua_modif character varying(200)
);
 "   DROP TABLE utic.uzmtnotification;
       utic         heap    postgres    false    220    4            C           0    0    TABLE uzmtnotification    COMMENT     |   COMMENT ON TABLE utic.uzmtnotification IS 'tabla donde se especificara el ingreso de toda la informacion de noptificacion';
          utic          postgres    false    221            D           0    0 +   COLUMN uzmtnotification.uzmtnotification_id    COMMENT     n   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_id IS 'identificador de la fila de la notificacion';
          utic          postgres    false    221            E           0    0 2   COLUMN uzmtnotification.uzmtnotification_option_id    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_option_id IS 'relacion que existe en la tabla notificacion con la opcion';
          utic          postgres    false    221            F           0    0 1   COLUMN uzmtnotification.uzmtnotification_receiver    COMMENT     l   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_receiver IS 'a quien va dirijido la notificacion';
          utic          postgres    false    221            G           0    0 /   COLUMN uzmtnotification.uzmtnotification_active    COMMENT     u   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_active IS 'se muestra si la notificacion esta activa o no';
          utic          postgres    false    221            H           0    0 -   COLUMN uzmtnotification.uzmtnotification_read    COMMENT     n   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_read IS 'muestra si la notificacion fue leida o no';
          utic          postgres    false    221            I           0    0 2   COLUMN uzmtnotification.uzmtnotification_read_date    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_read_date IS 'la fecha y la hora en la que se ha leido la notificacion';
          utic          postgres    false    221            J           0    0 3   COLUMN uzmtnotification.uzmtnotification_fecha_crea    COMMENT     p   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_fecha_crea IS 'fecha en la que se creo este registro';
          utic          postgres    false    221            K           0    0 2   COLUMN uzmtnotification.uzmtnotification_usua_crea    COMMENT     m   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_usua_crea IS 'el usuario que creo la notificacion';
          utic          postgres    false    221            L           0    0 4   COLUMN uzmtnotification.uzmtnotification_fecha_modif    COMMENT     {   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_fecha_modif IS 'la fecha cuando fua actualizado la notificacion';
          utic          postgres    false    221            M           0    0 3   COLUMN uzmtnotification.uzmtnotification_usua_modif    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_usua_modif IS 'el usuario que actualizo el registro de la notificacion';
          utic          postgres    false    221            ?            1259    24749    uzmtnotification_type    TABLE     ?  CREATE TABLE utic.uzmtnotification_type (
    uzmtnotification_type_id integer DEFAULT nextval('utic.uzmsnotification_type_id'::regclass) NOT NULL,
    uzmtnotification_type_name character varying(200),
    uzmtnotification_type_active numeric(1,0),
    uzmtnotification_type_usua_c character varying(200),
    uzmtnotification_type_fecha_c date,
    uzmtnotification_type_usua_m character varying(200),
    uzmtnotification_type_fecha_m date
);
 '   DROP TABLE utic.uzmtnotification_type;
       utic         heap    postgres    false    222    4            N           0    0    TABLE uzmtnotification_type    COMMENT     ?   COMMENT ON TABLE utic.uzmtnotification_type IS 'tabla donde se especificara el ingreso del tipo de notificdacion  al que pertenece la notifacion';
          utic          postgres    false    223            O           0    0 5   COLUMN uzmtnotification_type.uzmtnotification_type_id    COMMENT        COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_id IS 'identificador de la fila dl tipo de notificaciones';
          utic          postgres    false    223            P           0    0 7   COLUMN uzmtnotification_type.uzmtnotification_type_name    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_name IS 'nombre del tipo de notificacion asignada a la misma';
          utic          postgres    false    223            Q           0    0 9   COLUMN uzmtnotification_type.uzmtnotification_type_active    COMMENT        COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_active IS 'indicar si el tipo de notificacion esta activo';
          utic          postgres    false    223            R           0    0 9   COLUMN uzmtnotification_type.uzmtnotification_type_usua_c    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_usua_c IS 'es la fecha de creacion del tipo de notificacion';
          utic          postgres    false    223            S           0    0 :   COLUMN uzmtnotification_type.uzmtnotification_type_fecha_c    COMMENT     }   COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_fecha_c IS 'el usuario que creo el tipo de notificacion';
          utic          postgres    false    223            T           0    0 9   COLUMN uzmtnotification_type.uzmtnotification_type_usua_m    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_usua_m IS 'la fecha cuando fua actualizado el tipo de notificacion';
          utic          postgres    false    223            U           0    0 :   COLUMN uzmtnotification_type.uzmtnotification_type_fecha_m    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification_type.uzmtnotification_type_fecha_m IS 'el usuario que actualizo el registro del tipo de notificacion';
          utic          postgres    false    223            ?            1259    24757 
   uzmtoption    TABLE     [  CREATE TABLE utic.uzmtoption (
    uzmtoption_id integer NOT NULL,
    uzmtoption_system_id integer,
    uzmtoption_name character varying(200),
    uzmtoption_active numeric(1,0),
    uzmtoption_fecha_crea date,
    uzmtoption_usua_crea character varying(200),
    uzmtoption_fecha_modif date,
    uzmtoption_usua_modif character varying(200)
);
    DROP TABLE utic.uzmtoption;
       utic         heap    postgres    false    4            V           0    0    TABLE uzmtoption    COMMENT     z   COMMENT ON TABLE utic.uzmtoption IS 'tabla donde se especificara el ingreso de la opcion al que pertenece la notifacion';
          utic          postgres    false    224            W           0    0    COLUMN uzmtoption.uzmtoption_id    COMMENT     [   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_id IS 'identificador de la fila de opciones';
          utic          postgres    false    224            X           0    0 &   COLUMN uzmtoption.uzmtoption_system_id    COMMENT     k   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_system_id IS 'llave foranea en relacion con la tabla sistem';
          utic          postgres    false    224            Y           0    0 !   COLUMN uzmtoption.uzmtoption_name    COMMENT     Z   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_name IS 'nombre de la opcion a seleccionar';
          utic          postgres    false    224            Z           0    0 #   COLUMN uzmtoption.uzmtoption_active    COMMENT     b   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_active IS 'indicador si la option esta activa o no';
          utic          postgres    false    224            [           0    0 '   COLUMN uzmtoption.uzmtoption_fecha_crea    COMMENT     c   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_fecha_crea IS 'es la fecha de creacion de la opcion';
          utic          postgres    false    224            \           0    0 &   COLUMN uzmtoption.uzmtoption_usua_crea    COMMENT     ]   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_usua_crea IS 'el usuario que creo la opcion''';
          utic          postgres    false    224            ]           0    0 (   COLUMN uzmtoption.uzmtoption_fecha_modif    COMMENT     i   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_fecha_modif IS 'la fecha cuando fua actualizado la opcion';
          utic          postgres    false    224            ^           0    0 '   COLUMN uzmtoption.uzmtoption_usua_modif    COMMENT     p   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_usua_modif IS 'el usuario que actualizo el registro de la opcion';
          utic          postgres    false    224            ?            1259    24764 
   uzmtsystem    TABLE     9  CREATE TABLE utic.uzmtsystem (
    uzmtsystem_id integer NOT NULL,
    uzmtsystem_name character varying(300),
    uzmtsystem_active numeric(1,0),
    uzmtsystem_fecha_crea date,
    uzmtsystem_usua_crea character varying(300),
    uzmtsystem_fecha_modif date,
    uzmtsystem_usua_modif character varying(200)
);
    DROP TABLE utic.uzmtsystem;
       utic         heap    postgres    false    4            _           0    0    TABLE uzmtsystem    COMMENT     y   COMMENT ON TABLE utic.uzmtsystem IS 'tabla donde se especificara el ingreso del sistema al que pertenece la notifacion';
          utic          postgres    false    225            `           0    0    COLUMN uzmtsystem.uzmtsystem_id    COMMENT     [   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_id IS 'identificador de la fila de sistemas';
          utic          postgres    false    225            a           0    0 !   COLUMN uzmtsystem.uzmtsystem_name    COMMENT     X   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_name IS 'nombre asignado para el sistema';
          utic          postgres    false    225            b           0    0 #   COLUMN uzmtsystem.uzmtsystem_active    COMMENT     h   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_active IS 'muestra si esta activo o desactivo el sistema';
          utic          postgres    false    225            c           0    0 '   COLUMN uzmtsystem.uzmtsystem_fecha_crea    COMMENT     b   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_fecha_crea IS 'es la fecha de creacion del sistema';
          utic          postgres    false    225            d           0    0 &   COLUMN uzmtsystem.uzmtsystem_usua_crea    COMMENT     \   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_usua_crea IS 'el usuario que creo el sistema';
          utic          postgres    false    225            e           0    0 (   COLUMN uzmtsystem.uzmtsystem_fecha_modif    COMMENT     j   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_fecha_modif IS 'la fecha cuando fua actualizado el sistema';
          utic          postgres    false    225            f           0    0 '   COLUMN uzmtsystem.uzmtsystem_usua_modif    COMMENT     o   COMMENT ON COLUMN utic.uzmtsystem.uzmtsystem_usua_modif IS 'el usuario que actualizo el registro del sistema';
          utic          postgres    false    225                       0    24724 	   uzmtgroup 
   TABLE DATA           ?   COPY utic.uzmtgroup (uzmtgroup_id, uzmtgroup_name, uzmtgroup_description, uzmtgroup_script, uzmtgroup_parametro, uzmtgroup_active, uzmtgroup_fecha_crea, uzmtgroup_usua_crea, uzmtgroup_fecha_modif, uzmtgroup_usua_modif) FROM stdin;
    utic          postgres    false    217   |y       "          0    24733    uzmtmessage 
   TABLE DATA           ?   COPY utic.uzmtmessage (uzmtmessage_id, uzmtnotification_type_id, uzmtmessage_header, uzmtmessage_body, uzmtmessage_active, uzmtmessage_usua_crea, uzmtmessage_fecha_crea, uzmtmessage_usua_update, uzmtmessage_fecha_update) FROM stdin;
    utic          postgres    false    219   ?y       $          0    24740    uzmtnotification 
   TABLE DATA           D  COPY utic.uzmtnotification (uzmtnotification_id, uzmtnotification_option_id, uzmtmessage_id, uzmtnotification_receiver, uzmtnotification_active, uzmtnotification_read, uzmtnotification_read_date, uzmtnotification_fecha_crea, uzmtnotification_usua_crea, uzmtnotification_fecha_modif, uzmtnotification_usua_modif) FROM stdin;
    utic          postgres    false    221   ?y       &          0    24749    uzmtnotification_type 
   TABLE DATA           ?   COPY utic.uzmtnotification_type (uzmtnotification_type_id, uzmtnotification_type_name, uzmtnotification_type_active, uzmtnotification_type_usua_c, uzmtnotification_type_fecha_c, uzmtnotification_type_usua_m, uzmtnotification_type_fecha_m) FROM stdin;
    utic          postgres    false    223   ?y       '          0    24757 
   uzmtoption 
   TABLE DATA           ?   COPY utic.uzmtoption (uzmtoption_id, uzmtoption_system_id, uzmtoption_name, uzmtoption_active, uzmtoption_fecha_crea, uzmtoption_usua_crea, uzmtoption_fecha_modif, uzmtoption_usua_modif) FROM stdin;
    utic          postgres    false    224   z       (          0    24764 
   uzmtsystem 
   TABLE DATA           ?   COPY utic.uzmtsystem (uzmtsystem_id, uzmtsystem_name, uzmtsystem_active, uzmtsystem_fecha_crea, uzmtsystem_usua_crea, uzmtsystem_fecha_modif, uzmtsystem_usua_modif) FROM stdin;
    utic          postgres    false    225   0z       g           0    0    uzmsgroup_id    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.uzmsgroup_id', 1, false);
          public          postgres    false    210            h           0    0    uzmsmessage_id    SEQUENCE SET     =   SELECT pg_catalog.setval('public.uzmsmessage_id', 1, false);
          public          postgres    false    211            i           0    0    uzmsnotification_id    SEQUENCE SET     B   SELECT pg_catalog.setval('public.uzmsnotification_id', 1, false);
          public          postgres    false    212            j           0    0    uzmsnotification_type_id    SEQUENCE SET     G   SELECT pg_catalog.setval('public.uzmsnotification_type_id', 1, false);
          public          postgres    false    213            k           0    0    uzmsoption_id    SEQUENCE SET     <   SELECT pg_catalog.setval('public.uzmsoption_id', 1, false);
          public          postgres    false    214            l           0    0    uzmssystem_id    SEQUENCE SET     <   SELECT pg_catalog.setval('public.uzmssystem_id', 1, false);
          public          postgres    false    215            m           0    0    uzmsgroup_id    SEQUENCE SET     8   SELECT pg_catalog.setval('utic.uzmsgroup_id', 6, true);
          utic          postgres    false    216            n           0    0    uzmsmessage_id    SEQUENCE SET     ;   SELECT pg_catalog.setval('utic.uzmsmessage_id', 1, false);
          utic          postgres    false    218            o           0    0    uzmsnotification_id    SEQUENCE SET     @   SELECT pg_catalog.setval('utic.uzmsnotification_id', 1, false);
          utic          postgres    false    220            p           0    0    uzmsnotification_type_id    SEQUENCE SET     E   SELECT pg_catalog.setval('utic.uzmsnotification_type_id', 1, false);
          utic          postgres    false    222                       2606    24731    uzmtgroup pk_uzmtgroup 
   CONSTRAINT     \   ALTER TABLE ONLY utic.uzmtgroup
    ADD CONSTRAINT pk_uzmtgroup PRIMARY KEY (uzmtgroup_id);
 >   ALTER TABLE ONLY utic.uzmtgroup DROP CONSTRAINT pk_uzmtgroup;
       utic            postgres    false    217            ?           2606    24738    uzmtmessage pk_uzmtmessage 
   CONSTRAINT     b   ALTER TABLE ONLY utic.uzmtmessage
    ADD CONSTRAINT pk_uzmtmessage PRIMARY KEY (uzmtmessage_id);
 B   ALTER TABLE ONLY utic.uzmtmessage DROP CONSTRAINT pk_uzmtmessage;
       utic            postgres    false    219            ?           2606    24747 $   uzmtnotification pk_uzmtnotification 
   CONSTRAINT     q   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT pk_uzmtnotification PRIMARY KEY (uzmtnotification_id);
 L   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT pk_uzmtnotification;
       utic            postgres    false    221            ?           2606    24756 .   uzmtnotification_type pk_uzmtnotification_type 
   CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtnotification_type
    ADD CONSTRAINT pk_uzmtnotification_type PRIMARY KEY (uzmtnotification_type_id);
 V   ALTER TABLE ONLY utic.uzmtnotification_type DROP CONSTRAINT pk_uzmtnotification_type;
       utic            postgres    false    223            ?           2606    24763    uzmtoption pk_uzmtoption 
   CONSTRAINT     _   ALTER TABLE ONLY utic.uzmtoption
    ADD CONSTRAINT pk_uzmtoption PRIMARY KEY (uzmtoption_id);
 @   ALTER TABLE ONLY utic.uzmtoption DROP CONSTRAINT pk_uzmtoption;
       utic            postgres    false    224            ?           2606    24770    uzmtsystem pk_uzmtsystem 
   CONSTRAINT     _   ALTER TABLE ONLY utic.uzmtsystem
    ADD CONSTRAINT pk_uzmtsystem PRIMARY KEY (uzmtsystem_id);
 @   ALTER TABLE ONLY utic.uzmtsystem DROP CONSTRAINT pk_uzmtsystem;
       utic            postgres    false    225            ?           2606    24771 *   uzmtmessage fk_uzmtmess_fk_uzmtno_uzmtnoti    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtmessage
    ADD CONSTRAINT fk_uzmtmess_fk_uzmtno_uzmtnoti FOREIGN KEY (uzmtnotification_type_id) REFERENCES utic.uzmtnotification_type(uzmtnotification_type_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY utic.uzmtmessage DROP CONSTRAINT fk_uzmtmess_fk_uzmtno_uzmtnoti;
       utic          postgres    false    219    3205    223            ?           2606    24776 /   uzmtnotification fk_uzmtnoti_fk_uzmtme_uzmtmess    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT fk_uzmtnoti_fk_uzmtme_uzmtmess FOREIGN KEY (uzmtmessage_id) REFERENCES utic.uzmtmessage(uzmtmessage_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT fk_uzmtnoti_fk_uzmtme_uzmtmess;
       utic          postgres    false    219    3201    221            ?           2606    24781 /   uzmtnotification fk_uzmtnoti_fk_uzmtno_uzmtopti    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT fk_uzmtnoti_fk_uzmtno_uzmtopti FOREIGN KEY (uzmtnotification_option_id) REFERENCES utic.uzmtoption(uzmtoption_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT fk_uzmtnoti_fk_uzmtno_uzmtopti;
       utic          postgres    false    221    3207    224            ?           2606    24786 )   uzmtoption fk_uzmtopti_fk_uzmtop_uzmtsyst    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtoption
    ADD CONSTRAINT fk_uzmtopti_fk_uzmtop_uzmtsyst FOREIGN KEY (uzmtoption_system_id) REFERENCES utic.uzmtsystem(uzmtsystem_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY utic.uzmtoption DROP CONSTRAINT fk_uzmtopti_fk_uzmtop_uzmtsyst;
       utic          postgres    false    225    224    3209                0   x?3??O.I,?WH???Ê??`J?p*1&?Ą?S?J?+????? e?63      "      x?????? ? ?      $      x?????? ? ?      &      x?????? ? ?      '      x?????? ? ?      (      x?????? ? ?     