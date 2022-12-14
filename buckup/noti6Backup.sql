PGDMP                         z            uzmt    14.5    14.5 ]    &           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            '           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            (           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            )           1262    25148    uzmt    DATABASE     b   CREATE DATABASE uzmt WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Ecuador.1252';
    DROP DATABASE uzmt;
                postgres    false                        2615    25149    utic    SCHEMA        CREATE SCHEMA utic;
    DROP SCHEMA utic;
                postgres    false            ?            1259    25155    seq_uzstsistema    SEQUENCE     ?   CREATE SEQUENCE utic.seq_uzstsistema
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 $   DROP SEQUENCE utic.seq_uzstsistema;
       utic          postgres    false    5            ?            1259    25150    uzmsgroup_id    SEQUENCE     }   CREATE SEQUENCE utic.uzmsgroup_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 !   DROP SEQUENCE utic.uzmsgroup_id;
       utic          postgres    false    5            ?            1259    25151    uzmsmessage_id    SEQUENCE        CREATE SEQUENCE utic.uzmsmessage_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 #   DROP SEQUENCE utic.uzmsmessage_id;
       utic          postgres    false    5            ?            1259    25152    uzmsnotification_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsnotification_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 (   DROP SEQUENCE utic.uzmsnotification_id;
       utic          postgres    false    5            ?            1259    25153    uzmsnotificationtype_id    SEQUENCE     ?   CREATE SEQUENCE utic.uzmsnotificationtype_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 ,   DROP SEQUENCE utic.uzmsnotificationtype_id;
       utic          postgres    false    5            ?            1259    25154    uzmsoption_id    SEQUENCE     ~   CREATE SEQUENCE utic.uzmsoption_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;
 "   DROP SEQUENCE utic.uzmsoption_id;
       utic          postgres    false    5            ?            1259    25156 	   uzmtgroup    TABLE     ?  CREATE TABLE utic.uzmtgroup (
    uzmtgroup_id integer DEFAULT nextval('utic.uzmsgroup_id'::regclass) NOT NULL,
    uzmtgroup_name character varying(70),
    uzmtgroup_description character varying(200),
    uzmtgroup_script text,
    uzmtgroup_parametro numeric(1,0),
    uzmtgroup_active numeric(1,0),
    uzmtgroup_fecha_crea date,
    uzmtgroup_usua_crea numeric(8,0),
    uzmtgroup_fecha_modif date,
    uzmtgroup_usua_modif numeric(8,0)
);
    DROP TABLE utic.uzmtgroup;
       utic         heap    postgres    false    210    5            *           0    0    TABLE uzmtgroup    COMMENT     `   COMMENT ON TABLE utic.uzmtgroup IS 'tabla donde se especificara el ingreso el rango en grupo ';
          utic          postgres    false    216            +           0    0    COLUMN uzmtgroup.uzmtgroup_id    COMMENT     V   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_id IS 'identificado de la fila de grupos';
          utic          postgres    false    216            ,           0    0    COLUMN uzmtgroup.uzmtgroup_name    COMMENT     V   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_name IS 'asignacion del nombre del grupo';
          utic          postgres    false    216            -           0    0 &   COLUMN uzmtgroup.uzmtgroup_description    COMMENT     h   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_description IS 'respectiva descripcion del grupo designado';
          utic          postgres    false    216            .           0    0 !   COLUMN uzmtgroup.uzmtgroup_script    COMMENT     _   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_script IS 'sql de la consulta en la base de datos';
          utic          postgres    false    216            /           0    0 $   COLUMN uzmtgroup.uzmtgroup_parametro    COMMENT     c   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_parametro IS 'indicar si el sql tiene parametros o no';
          utic          postgres    false    216            0           0    0 !   COLUMN uzmtgroup.uzmtgroup_active    COMMENT     c   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_active IS 'indica si el grupo esta en constancia o no';
          utic          postgres    false    216            1           0    0 %   COLUMN uzmtgroup.uzmtgroup_fecha_crea    COMMENT     ^   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_fecha_crea IS 'es la fecha de creacion del grupo';
          utic          postgres    false    216            2           0    0 $   COLUMN uzmtgroup.uzmtgroup_usua_crea    COMMENT     X   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_usua_crea IS 'el usuario que creo el grupo';
          utic          postgres    false    216            3           0    0 &   COLUMN uzmtgroup.uzmtgroup_fecha_modif    COMMENT     f   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_fecha_modif IS 'la fecha cuando fua actualizado el grupo';
          utic          postgres    false    216            4           0    0 %   COLUMN uzmtgroup.uzmtgroup_usua_modif    COMMENT     k   COMMENT ON COLUMN utic.uzmtgroup.uzmtgroup_usua_modif IS 'el usuario que actualizo el registro del grupo';
          utic          postgres    false    216            ?            1259    25162    uzmtmessage    TABLE     ?  CREATE TABLE utic.uzmtmessage (
    uzmtmessage_id integer DEFAULT nextval('utic.uzmsmessage_id'::regclass) NOT NULL,
    uzmtnotificationtype_id integer,
    uzmtmessage_header character varying(200),
    uzmtmessage_body text,
    uzmtmessage_active numeric(1,0),
    uzmtmessage_usua_crea numeric(8,0),
    uzmtmessage_fecha_crea date,
    uzmtmessage_usua_modif numeric(8,0),
    uzmtmessage_fecha_modif date
);
    DROP TABLE utic.uzmtmessage;
       utic         heap    postgres    false    211    5            5           0    0    TABLE uzmtmessage    COMMENT     :   COMMENT ON TABLE utic.uzmtmessage IS 'tabla de mensajes';
          utic          postgres    false    217            6           0    0 !   COLUMN uzmtmessage.uzmtmessage_id    COMMENT     ]   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_id IS 'identificador de la fila del mensaje';
          utic          postgres    false    217            7           0    0 *   COLUMN uzmtmessage.uzmtnotificationtype_id    COMMENT     w   COMMENT ON COLUMN utic.uzmtmessage.uzmtnotificationtype_id IS 'llave foranea en relacion con el tipo de notificacion';
          utic          postgres    false    217            8           0    0 %   COLUMN uzmtmessage.uzmtmessage_header    COMMENT     P   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_header IS 'el tema del mensaje';
          utic          postgres    false    217            9           0    0 #   COLUMN uzmtmessage.uzmtmessage_body    COMMENT     P   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_body IS 'contenido del mensaje';
          utic          postgres    false    217            :           0    0 (   COLUMN uzmtmessage.uzmtmessage_usua_crea    COMMENT     `   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_usua_crea IS 'el usuario quien creo el mensaje';
          utic          postgres    false    217            ;           0    0 )   COLUMN uzmtmessage.uzmtmessage_fecha_crea    COMMENT     `   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_fecha_crea IS 'fecha cuando se creo el mensaje';
          utic          postgres    false    217            <           0    0 )   COLUMN uzmtmessage.uzmtmessage_usua_modif    COMMENT     f   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_usua_modif IS 'el usuario quien actualizo el mensaje';
          utic          postgres    false    217            =           0    0 *   COLUMN uzmtmessage.uzmtmessage_fecha_modif    COMMENT     f   COMMENT ON COLUMN utic.uzmtmessage.uzmtmessage_fecha_modif IS 'fecha cuando se actualizo el mensaje';
          utic          postgres    false    217            ?            1259    25170    uzmtnotification    TABLE       CREATE TABLE utic.uzmtnotification (
    uzmtnotification_id integer DEFAULT nextval('utic.uzmsnotification_id'::regclass) NOT NULL,
    uzmtoption_id integer,
    uzmtmessage_id integer,
    uzmtnotification_pidm_receiver numeric(8,0),
    uzmtnotification_active numeric(1,0),
    uzmtnotification_read numeric(1,0),
    uzmtnotification_read_date date,
    uzmtnotification_fecha_crea date,
    uzmtnotification_usua_crea numeric(8,0),
    uzmtnotification_fecha_modif date,
    uzmtnotification_usua_modif numeric(8,0)
);
 "   DROP TABLE utic.uzmtnotification;
       utic         heap    postgres    false    212    5            >           0    0    TABLE uzmtnotification    COMMENT     |   COMMENT ON TABLE utic.uzmtnotification IS 'tabla donde se especificara el ingreso de toda la informacion de noptificacion';
          utic          postgres    false    218            ?           0    0 +   COLUMN uzmtnotification.uzmtnotification_id    COMMENT     n   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_id IS 'identificador de la fila de la notificacion';
          utic          postgres    false    218            @           0    0 %   COLUMN uzmtnotification.uzmtoption_id    COMMENT     w   COMMENT ON COLUMN utic.uzmtnotification.uzmtoption_id IS 'relacion que existe en la tabla notificacion con la opcion';
          utic          postgres    false    218            A           0    0 6   COLUMN uzmtnotification.uzmtnotification_pidm_receiver    COMMENT     q   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_pidm_receiver IS 'a quien va dirijido la notificacion';
          utic          postgres    false    218            B           0    0 /   COLUMN uzmtnotification.uzmtnotification_active    COMMENT     u   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_active IS 'se muestra si la notificacion esta activa o no';
          utic          postgres    false    218            C           0    0 -   COLUMN uzmtnotification.uzmtnotification_read    COMMENT     n   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_read IS 'muestra si la notificacion fue leida o no';
          utic          postgres    false    218            D           0    0 2   COLUMN uzmtnotification.uzmtnotification_read_date    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_read_date IS 'la fecha y la hora en la que se ha leido la notificacion';
          utic          postgres    false    218            E           0    0 3   COLUMN uzmtnotification.uzmtnotification_fecha_crea    COMMENT     p   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_fecha_crea IS 'fecha en la que se creo este registro';
          utic          postgres    false    218            F           0    0 2   COLUMN uzmtnotification.uzmtnotification_usua_crea    COMMENT     m   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_usua_crea IS 'el usuario que creo la notificacion';
          utic          postgres    false    218            G           0    0 4   COLUMN uzmtnotification.uzmtnotification_fecha_modif    COMMENT     {   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_fecha_modif IS 'la fecha cuando fua actualizado la notificacion';
          utic          postgres    false    218            H           0    0 3   COLUMN uzmtnotification.uzmtnotification_usua_modif    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotification.uzmtnotification_usua_modif IS 'el usuario que actualizo el registro de la notificacion';
          utic          postgres    false    218            ?            1259    25176    uzmtnotificationtype    TABLE     ?  CREATE TABLE utic.uzmtnotificationtype (
    uzmtnotificationtype_id integer DEFAULT nextval('utic.uzmsnotificationtype_id'::regclass) NOT NULL,
    uzmtnotificationtype_name character varying(200),
    uzmtnotificationtype_active numeric(1,0),
    uzmtnotificationtype_usua_crea numeric(8,0),
    uzmtnotificationtype_fecha_crea date,
    uzmtnotificationtype_usua_modif numeric(8,0),
    uzmtnotificationtype_fecha_modif date
);
 &   DROP TABLE utic.uzmtnotificationtype;
       utic         heap    postgres    false    213    5            I           0    0    TABLE uzmtnotificationtype    COMMENT     ?   COMMENT ON TABLE utic.uzmtnotificationtype IS 'tabla donde se especificara el ingreso del tipo de notificdacion  al que pertenece la notifacion';
          utic          postgres    false    219            J           0    0 3   COLUMN uzmtnotificationtype.uzmtnotificationtype_id    COMMENT     }   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_id IS 'identificador de la fila dl tipo de notificaciones';
          utic          postgres    false    219            K           0    0 5   COLUMN uzmtnotificationtype.uzmtnotificationtype_name    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_name IS 'nombre del tipo de notificacion asignada a la misma';
          utic          postgres    false    219            L           0    0 7   COLUMN uzmtnotificationtype.uzmtnotificationtype_active    COMMENT     }   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_active IS 'indicar si el tipo de notificacion esta activo';
          utic          postgres    false    219            M           0    0 :   COLUMN uzmtnotificationtype.uzmtnotificationtype_usua_crea    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_usua_crea IS 'es la fecha de creacion del tipo de notificacion';
          utic          postgres    false    219            N           0    0 ;   COLUMN uzmtnotificationtype.uzmtnotificationtype_fecha_crea    COMMENT     ~   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_fecha_crea IS 'el usuario que creo el tipo de notificacion';
          utic          postgres    false    219            O           0    0 ;   COLUMN uzmtnotificationtype.uzmtnotificationtype_usua_modif    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_usua_modif IS 'la fecha cuando fua actualizado el tipo de notificacion';
          utic          postgres    false    219            P           0    0 <   COLUMN uzmtnotificationtype.uzmtnotificationtype_fecha_modif    COMMENT     ?   COMMENT ON COLUMN utic.uzmtnotificationtype.uzmtnotificationtype_fecha_modif IS 'el usuario que actualizo el registro del tipo de notificacion';
          utic          postgres    false    219            ?            1259    25182 
   uzmtoption    TABLE     q  CREATE TABLE utic.uzmtoption (
    uzmtoption_id integer DEFAULT nextval('utic.uzmsoption_id'::regclass) NOT NULL,
    uzstsistema_id integer,
    uzmtoption_name character varying(200),
    uzmtoption_active numeric(1,0),
    uzmtoption_fecha_crea date,
    uzmtoption_usua_crea numeric(8,0),
    uzmtoption_fecha_modif date,
    uzmtoption_usua_modif numeric(8,0)
);
    DROP TABLE utic.uzmtoption;
       utic         heap    postgres    false    214    5            Q           0    0    TABLE uzmtoption    COMMENT     z   COMMENT ON TABLE utic.uzmtoption IS 'tabla donde se especificara el ingreso de la opcion al que pertenece la notifacion';
          utic          postgres    false    220            R           0    0    COLUMN uzmtoption.uzmtoption_id    COMMENT     [   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_id IS 'identificador de la fila de opciones';
          utic          postgres    false    220            S           0    0     COLUMN uzmtoption.uzstsistema_id    COMMENT     e   COMMENT ON COLUMN utic.uzmtoption.uzstsistema_id IS 'llave foranea en relacion con la tabla sistem';
          utic          postgres    false    220            T           0    0 !   COLUMN uzmtoption.uzmtoption_name    COMMENT     Z   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_name IS 'nombre de la opcion a seleccionar';
          utic          postgres    false    220            U           0    0 #   COLUMN uzmtoption.uzmtoption_active    COMMENT     b   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_active IS 'indicador si la option esta activa o no';
          utic          postgres    false    220            V           0    0 '   COLUMN uzmtoption.uzmtoption_fecha_crea    COMMENT     c   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_fecha_crea IS 'es la fecha de creacion de la opcion';
          utic          postgres    false    220            W           0    0 &   COLUMN uzmtoption.uzmtoption_usua_crea    COMMENT     ]   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_usua_crea IS 'el usuario que creo la opcion''';
          utic          postgres    false    220            X           0    0 (   COLUMN uzmtoption.uzmtoption_fecha_modif    COMMENT     i   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_fecha_modif IS 'la fecha cuando fua actualizado la opcion';
          utic          postgres    false    220            Y           0    0 '   COLUMN uzmtoption.uzmtoption_usua_modif    COMMENT     p   COMMENT ON COLUMN utic.uzmtoption.uzmtoption_usua_modif IS 'el usuario que actualizo el registro de la opcion';
          utic          postgres    false    220            ?            1259    25188    uzstsistema    TABLE     U  CREATE TABLE utic.uzstsistema (
    uzstsistema_id integer DEFAULT nextval('utic.seq_uzstsistema'::regclass) NOT NULL,
    uzstsistema_nombre character varying(300),
    uzstsistema_url character varying(300),
    uzstsistema_estado numeric(1,0),
    uzstsistema_codigo character varying(200) DEFAULT 'espeseguridades'::character varying
);
    DROP TABLE utic.uzstsistema;
       utic         heap    postgres    false    215    5            Z           0    0    TABLE uzstsistema    COMMENT     z   COMMENT ON TABLE utic.uzstsistema IS 'tabla donde se especificara el ingreso del sistema al que pertenece la notifacion';
          utic          postgres    false    221            [           0    0 !   COLUMN uzstsistema.uzstsistema_id    COMMENT     ?   COMMENT ON COLUMN utic.uzstsistema.uzstsistema_id IS 'CODIGO SECUENCIAL DE LA TABLA, ESTE DATO SERA GENERADO AUTOMATICAMENTE  MEDIANTE LA UTILIZACION DE UN TRIGGER.';
          utic          postgres    false    221            \           0    0 %   COLUMN uzstsistema.uzstsistema_nombre    COMMENT     T   COMMENT ON COLUMN utic.uzstsistema.uzstsistema_nombre IS 'DESCRIPCION DEL SISTEMA';
          utic          postgres    false    221            ]           0    0 "   COLUMN uzstsistema.uzstsistema_url    COMMENT     X   COMMENT ON COLUMN utic.uzstsistema.uzstsistema_url IS 'URL DEL INICIACION DEL SISTEMA';
          utic          postgres    false    221            ^           0    0 %   COLUMN uzstsistema.uzstsistema_estado    COMMENT     j   COMMENT ON COLUMN utic.uzstsistema.uzstsistema_estado IS 'muestra si esta activo o desactivo el sistema';
          utic          postgres    false    221            _           0    0 %   COLUMN uzstsistema.uzstsistema_codigo    COMMENT     Y   COMMENT ON COLUMN utic.uzstsistema.uzstsistema_codigo IS 'indicar el codigo del sistem';
          utic          postgres    false    221                      0    25156 	   uzmtgroup 
   TABLE DATA           ?   COPY utic.uzmtgroup (uzmtgroup_id, uzmtgroup_name, uzmtgroup_description, uzmtgroup_script, uzmtgroup_parametro, uzmtgroup_active, uzmtgroup_fecha_crea, uzmtgroup_usua_crea, uzmtgroup_fecha_modif, uzmtgroup_usua_modif) FROM stdin;
    utic          postgres    false    216   ?n                 0    25162    uzmtmessage 
   TABLE DATA           ?   COPY utic.uzmtmessage (uzmtmessage_id, uzmtnotificationtype_id, uzmtmessage_header, uzmtmessage_body, uzmtmessage_active, uzmtmessage_usua_crea, uzmtmessage_fecha_crea, uzmtmessage_usua_modif, uzmtmessage_fecha_modif) FROM stdin;
    utic          postgres    false    217   p                  0    25170    uzmtnotification 
   TABLE DATA           <  COPY utic.uzmtnotification (uzmtnotification_id, uzmtoption_id, uzmtmessage_id, uzmtnotification_pidm_receiver, uzmtnotification_active, uzmtnotification_read, uzmtnotification_read_date, uzmtnotification_fecha_crea, uzmtnotification_usua_crea, uzmtnotification_fecha_modif, uzmtnotification_usua_modif) FROM stdin;
    utic          postgres    false    218   ?q       !          0    25176    uzmtnotificationtype 
   TABLE DATA             COPY utic.uzmtnotificationtype (uzmtnotificationtype_id, uzmtnotificationtype_name, uzmtnotificationtype_active, uzmtnotificationtype_usua_crea, uzmtnotificationtype_fecha_crea, uzmtnotificationtype_usua_modif, uzmtnotificationtype_fecha_modif) FROM stdin;
    utic          postgres    false    219   9r       "          0    25182 
   uzmtoption 
   TABLE DATA           ?   COPY utic.uzmtoption (uzmtoption_id, uzstsistema_id, uzmtoption_name, uzmtoption_active, uzmtoption_fecha_crea, uzmtoption_usua_crea, uzmtoption_fecha_modif, uzmtoption_usua_modif) FROM stdin;
    utic          postgres    false    220   8s       #          0    25188    uzstsistema 
   TABLE DATA           ?   COPY utic.uzstsistema (uzstsistema_id, uzstsistema_nombre, uzstsistema_url, uzstsistema_estado, uzstsistema_codigo) FROM stdin;
    utic          postgres    false    221   ?s       `           0    0    seq_uzstsistema    SEQUENCE SET     <   SELECT pg_catalog.setval('utic.seq_uzstsistema', 17, true);
          utic          postgres    false    215            a           0    0    uzmsgroup_id    SEQUENCE SET     9   SELECT pg_catalog.setval('utic.uzmsgroup_id', 52, true);
          utic          postgres    false    210            b           0    0    uzmsmessage_id    SEQUENCE SET     ;   SELECT pg_catalog.setval('utic.uzmsmessage_id', 47, true);
          utic          postgres    false    211            c           0    0    uzmsnotification_id    SEQUENCE SET     @   SELECT pg_catalog.setval('utic.uzmsnotification_id', 39, true);
          utic          postgres    false    212            d           0    0    uzmsnotificationtype_id    SEQUENCE SET     D   SELECT pg_catalog.setval('utic.uzmsnotificationtype_id', 46, true);
          utic          postgres    false    213            e           0    0    uzmsoption_id    SEQUENCE SET     :   SELECT pg_catalog.setval('utic.uzmsoption_id', 38, true);
          utic          postgres    false    214            ~           2606    25161    uzmtgroup pk_uzmtgroup 
   CONSTRAINT     \   ALTER TABLE ONLY utic.uzmtgroup
    ADD CONSTRAINT pk_uzmtgroup PRIMARY KEY (uzmtgroup_id);
 >   ALTER TABLE ONLY utic.uzmtgroup DROP CONSTRAINT pk_uzmtgroup;
       utic            postgres    false    216            ?           2606    25169    uzmtmessage pk_uzmtmessage 
   CONSTRAINT     b   ALTER TABLE ONLY utic.uzmtmessage
    ADD CONSTRAINT pk_uzmtmessage PRIMARY KEY (uzmtmessage_id);
 B   ALTER TABLE ONLY utic.uzmtmessage DROP CONSTRAINT pk_uzmtmessage;
       utic            postgres    false    217            ?           2606    25175 $   uzmtnotification pk_uzmtnotification 
   CONSTRAINT     q   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT pk_uzmtnotification PRIMARY KEY (uzmtnotification_id);
 L   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT pk_uzmtnotification;
       utic            postgres    false    218            ?           2606    25181 ,   uzmtnotificationtype pk_uzmtnotificationtype 
   CONSTRAINT     }   ALTER TABLE ONLY utic.uzmtnotificationtype
    ADD CONSTRAINT pk_uzmtnotificationtype PRIMARY KEY (uzmtnotificationtype_id);
 T   ALTER TABLE ONLY utic.uzmtnotificationtype DROP CONSTRAINT pk_uzmtnotificationtype;
       utic            postgres    false    219            ?           2606    25187    uzmtoption pk_uzmtoption 
   CONSTRAINT     _   ALTER TABLE ONLY utic.uzmtoption
    ADD CONSTRAINT pk_uzmtoption PRIMARY KEY (uzmtoption_id);
 @   ALTER TABLE ONLY utic.uzmtoption DROP CONSTRAINT pk_uzmtoption;
       utic            postgres    false    220            ?           2606    25196    uzstsistema pk_uzstsistema 
   CONSTRAINT     b   ALTER TABLE ONLY utic.uzstsistema
    ADD CONSTRAINT pk_uzstsistema PRIMARY KEY (uzstsistema_id);
 B   ALTER TABLE ONLY utic.uzstsistema DROP CONSTRAINT pk_uzstsistema;
       utic            postgres    false    221            ?           2606    25197 *   uzmtmessage fk_uzmtmess_fk_uzmtno_uzmtnoti    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtmessage
    ADD CONSTRAINT fk_uzmtmess_fk_uzmtno_uzmtnoti FOREIGN KEY (uzmtnotificationtype_id) REFERENCES utic.uzmtnotificationtype(uzmtnotificationtype_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 R   ALTER TABLE ONLY utic.uzmtmessage DROP CONSTRAINT fk_uzmtmess_fk_uzmtno_uzmtnoti;
       utic          postgres    false    217    3204    219            ?           2606    25202 /   uzmtnotification fk_uzmtnoti_fk_uzmtme_uzmtmess    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT fk_uzmtnoti_fk_uzmtme_uzmtmess FOREIGN KEY (uzmtmessage_id) REFERENCES utic.uzmtmessage(uzmtmessage_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT fk_uzmtnoti_fk_uzmtme_uzmtmess;
       utic          postgres    false    217    3200    218            ?           2606    25207 /   uzmtnotification fk_uzmtnoti_fk_uzmtno_uzmtopti    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtnotification
    ADD CONSTRAINT fk_uzmtnoti_fk_uzmtno_uzmtopti FOREIGN KEY (uzmtoption_id) REFERENCES utic.uzmtoption(uzmtoption_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 W   ALTER TABLE ONLY utic.uzmtnotification DROP CONSTRAINT fk_uzmtnoti_fk_uzmtno_uzmtopti;
       utic          postgres    false    220    218    3206            ?           2606    25212 )   uzmtoption fk_uzmtopti_fk_uzmtop_uzmtsyst    FK CONSTRAINT     ?   ALTER TABLE ONLY utic.uzmtoption
    ADD CONSTRAINT fk_uzmtopti_fk_uzmtop_uzmtsyst FOREIGN KEY (uzstsistema_id) REFERENCES utic.uzstsistema(uzstsistema_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY utic.uzmtoption DROP CONSTRAINT fk_uzmtopti_fk_uzmtop_uzmtsyst;
       utic          postgres    false    221    220    3208                 x????O?0???O?)(??Ҫ+H0??????\dǕ??qJ?? ?rwO?߻???Y?A?????ǁ?Fer???S?x?=u?w??#J??yq?K?L<???@7??W#G
?ZzSyLl?????v?Q?z
??????%???`|?^6????5?H??X??Lx?u?7??Mؿ?=e1H??C????O??yU?ϓ????u.?R?M_?L<?I;L?&6NV?*.G???Ѵ?\??8?☍1?9̳??~??????         ?  x??Tmn? ?=>?/?Ȁ?w?T3???
?n6??r?@??q[?????1?M??Ej?>?T?VKO????q????7??4??f??J?e?e?e?e?ecMY:V????힂D??ڲteM?ʺ???+?V???8????&L?L&???7&*?cP??u2o?׷WC闢?????5??y`?nj??}???????]la?6?.A;9+\oЭ??o"^?O??<8i?lfPf?)M??h%???oR??t??T?w?!ht:Mc???7H?O?wr?>VA?j??$k?_????????ѽ?a?????????4Bzu?? /n?8??t?ؓ?Ӊf??????/?o9?[? N????k?fTb?mb????G????h????x ?*;?????aV?7QE?T?~rt?g?_?꾔??]|8??ɸ??Bz=??.??????w?r?g          I   x????	?@???].?{?w??s$?:wA?H0?x?_?U??8ut&??R??g??aO䎜?>ut??"?aN?      !   ?   x???]n? ???S????w?T?\b?z?&?ZWvZ(o???FB?0%c?P`?S?t80??D@z?G????(??.??zu???????y??o?A???_?ۍ$????5?(Ò???9??_?]???j???U?????????b????m?9<,???U???nt??~
$؂^N???e???è?
??(?9??R?s?L? 1W
?S?ٌ??\?l???{?{z+b/τ?l?ӛ      "   ?   x?}?]?0?????4?[???lZ~??R???}?ф?ٝo&?
????+?
???mYI_?@0<?FC޸?????ds? ?2M?C??6??9ǰ?-??i?V?.?[?ĺis?saX??4?7??`?/??:?{??"g?{??>?      #   p   x?3?,?*.)?,.I?M????M*JE*-??4DI?O?L??2![?)g? 	.s??? [?%?N?8?P?ِ?F?h6?D3f\??ٔ?f?h6?t?)???$R}? ?Y)?     