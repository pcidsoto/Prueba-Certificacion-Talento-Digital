PGDMP     2    -                y            hotel-advisor    10.16    10.16 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    56667    hotel-advisor    DATABASE     ?   CREATE DATABASE "hotel-advisor" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE "hotel-advisor";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    56819    app1_atributos    TABLE     j   CREATE TABLE public.app1_atributos (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL
);
 "   DROP TABLE public.app1_atributos;
       public         postgres    false    3            ?            1259    56817    app1_atributos_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.app1_atributos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.app1_atributos_id_seq;
       public       postgres    false    3    215            ?           0    0    app1_atributos_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.app1_atributos_id_seq OWNED BY public.app1_atributos.id;
            public       postgres    false    214            ?            1259    56849    app1_atributoshotel    TABLE     ?   CREATE TABLE public.app1_atributoshotel (
    id bigint NOT NULL,
    valor_atributo character varying(500) NOT NULL,
    atributo_id bigint NOT NULL,
    hotel_id bigint NOT NULL
);
 '   DROP TABLE public.app1_atributoshotel;
       public         postgres    false    3            ?            1259    56847    app1_atributoshotel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app1_atributoshotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.app1_atributoshotel_id_seq;
       public       postgres    false    221    3            ?           0    0    app1_atributoshotel_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.app1_atributoshotel_id_seq OWNED BY public.app1_atributoshotel.id;
            public       postgres    false    220            ?            1259    56838    app1_comentarios    TABLE     ?   CREATE TABLE public.app1_comentarios (
    id bigint NOT NULL,
    nombre_usuario character varying(50) NOT NULL,
    comentario character varying(500) NOT NULL,
    fecha date,
    hotel_id bigint NOT NULL,
    puntuacion integer
);
 $   DROP TABLE public.app1_comentarios;
       public         postgres    false    3            ?            1259    56836    app1_comentarios_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.app1_comentarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.app1_comentarios_id_seq;
       public       postgres    false    219    3            ?           0    0    app1_comentarios_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.app1_comentarios_id_seq OWNED BY public.app1_comentarios.id;
            public       postgres    false    218            ?            1259    56827    app1_hoteles    TABLE     ?   CREATE TABLE public.app1_hoteles (
    id bigint NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(500),
    calificacion numeric(11,2),
    cant_votos integer
);
     DROP TABLE public.app1_hoteles;
       public         postgres    false    3            ?            1259    56825    app1_hoteles_id_seq    SEQUENCE     |   CREATE SEQUENCE public.app1_hoteles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.app1_hoteles_id_seq;
       public       postgres    false    217    3            ?           0    0    app1_hoteles_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.app1_hoteles_id_seq OWNED BY public.app1_hoteles.id;
            public       postgres    false    216            ?            1259    56699 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            ?            1259    56697    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203    3            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            ?            1259    56709    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            ?            1259    56707    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    205            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            ?            1259    56691    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            ?            1259    56689    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    201            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            ?            1259    56717 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            ?            1259    56727    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            ?            1259    56725    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    209            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            ?            1259    56715    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207    3            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            ?            1259    56735    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            ?            1259    56733 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    211            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            ?            1259    56795    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            ?            1259    56793    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213    3            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            ?            1259    56681    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            ?            1259    56679    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199    3            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            ?            1259    56670    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            ?            1259    56668    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197    3            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            ?            1259    56885    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            ?
           2604    56822    app1_atributos id    DEFAULT     v   ALTER TABLE ONLY public.app1_atributos ALTER COLUMN id SET DEFAULT nextval('public.app1_atributos_id_seq'::regclass);
 @   ALTER TABLE public.app1_atributos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            ?
           2604    56852    app1_atributoshotel id    DEFAULT     ?   ALTER TABLE ONLY public.app1_atributoshotel ALTER COLUMN id SET DEFAULT nextval('public.app1_atributoshotel_id_seq'::regclass);
 E   ALTER TABLE public.app1_atributoshotel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            ?
           2604    56841    app1_comentarios id    DEFAULT     z   ALTER TABLE ONLY public.app1_comentarios ALTER COLUMN id SET DEFAULT nextval('public.app1_comentarios_id_seq'::regclass);
 B   ALTER TABLE public.app1_comentarios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            ?
           2604    56830    app1_hoteles id    DEFAULT     r   ALTER TABLE ONLY public.app1_hoteles ALTER COLUMN id SET DEFAULT nextval('public.app1_hoteles_id_seq'::regclass);
 >   ALTER TABLE public.app1_hoteles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            ?
           2604    56702    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            ?
           2604    56712    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            ?
           2604    56694    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            ?
           2604    56720    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            ?
           2604    56730    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            ?
           2604    56738    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            ?
           2604    56798    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            ?
           2604    56684    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            ?
           2604    56673    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            ?          0    56819    app1_atributos 
   TABLE DATA               4   COPY public.app1_atributos (id, nombre) FROM stdin;
    public       postgres    false    215   ??       ?          0    56849    app1_atributoshotel 
   TABLE DATA               X   COPY public.app1_atributoshotel (id, valor_atributo, atributo_id, hotel_id) FROM stdin;
    public       postgres    false    221   J?       ?          0    56838    app1_comentarios 
   TABLE DATA               g   COPY public.app1_comentarios (id, nombre_usuario, comentario, fecha, hotel_id, puntuacion) FROM stdin;
    public       postgres    false    219   ?       ?          0    56827    app1_hoteles 
   TABLE DATA               Y   COPY public.app1_hoteles (id, nombre, descripcion, calificacion, cant_votos) FROM stdin;
    public       postgres    false    217   m?       ?          0    56699 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ?       ?          0    56709    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   -?       ?          0    56691    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   J?       ?          0    56717 	   auth_user 
   TABLE DATA               ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ??       ?          0    56727    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   "?       ?          0    56735    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   ??       ?          0    56795    django_admin_log 
   TABLE DATA               ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   \?       ?          0    56681    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   ,?       ?          0    56670    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   ??       ?          0    56885    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    222   ??       ?           0    0    app1_atributos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.app1_atributos_id_seq', 8, true);
            public       postgres    false    214            ?           0    0    app1_atributoshotel_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.app1_atributoshotel_id_seq', 21, true);
            public       postgres    false    220            ?           0    0    app1_comentarios_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.app1_comentarios_id_seq', 13, true);
            public       postgres    false    218            ?           0    0    app1_hoteles_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.app1_hoteles_id_seq', 3, true);
            public       postgres    false    216            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
            public       postgres    false    200            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 17, true);
            public       postgres    false    212            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
            public       postgres    false    198            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
            public       postgres    false    196            ?
           2606    56824 "   app1_atributos app1_atributos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.app1_atributos
    ADD CONSTRAINT app1_atributos_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.app1_atributos DROP CONSTRAINT app1_atributos_pkey;
       public         postgres    false    215                       2606    56857 ,   app1_atributoshotel app1_atributoshotel_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.app1_atributoshotel
    ADD CONSTRAINT app1_atributoshotel_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.app1_atributoshotel DROP CONSTRAINT app1_atributoshotel_pkey;
       public         postgres    false    221                        2606    56846 &   app1_comentarios app1_comentarios_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.app1_comentarios
    ADD CONSTRAINT app1_comentarios_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.app1_comentarios DROP CONSTRAINT app1_comentarios_pkey;
       public         postgres    false    219            ?
           2606    56835    app1_hoteles app1_hoteles_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.app1_hoteles
    ADD CONSTRAINT app1_hoteles_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.app1_hoteles DROP CONSTRAINT app1_hoteles_pkey;
       public         postgres    false    217            ?
           2606    56883    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            ?
           2606    56751 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            ?
           2606    56714 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            ?
           2606    56704    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            ?
           2606    56742 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            ?
           2606    56696 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            ?
           2606    56732 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            ?
           2606    56766 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            ?
           2606    56722    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            ?
           2606    56740 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            ?
           2606    56780 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            ?
           2606    56877     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            ?
           2606    56804 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            ?
           2606    56688 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            ?
           2606    56686 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            ?
           2606    56678 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    56892 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    222                       1259    56874 (   app1_atributoshotel_atributo_id_8d90d4d5    INDEX     o   CREATE INDEX app1_atributoshotel_atributo_id_8d90d4d5 ON public.app1_atributoshotel USING btree (atributo_id);
 <   DROP INDEX public.app1_atributoshotel_atributo_id_8d90d4d5;
       public         postgres    false    221                       1259    56875 %   app1_atributoshotel_hotel_id_94a58e28    INDEX     i   CREATE INDEX app1_atributoshotel_hotel_id_94a58e28 ON public.app1_atributoshotel USING btree (hotel_id);
 9   DROP INDEX public.app1_atributoshotel_hotel_id_94a58e28;
       public         postgres    false    221            ?
           1259    56863 "   app1_comentarios_hotel_id_012062e9    INDEX     c   CREATE INDEX app1_comentarios_hotel_id_012062e9 ON public.app1_comentarios USING btree (hotel_id);
 6   DROP INDEX public.app1_comentarios_hotel_id_012062e9;
       public         postgres    false    219            ?
           1259    56884    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            ?
           1259    56762 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            ?
           1259    56763 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            ?
           1259    56748 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            ?
           1259    56778 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            ?
           1259    56777 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            ?
           1259    56792 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            ?
           1259    56791 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            ?
           1259    56878     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            ?
           1259    56815 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            ?
           1259    56816 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    56894 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    222                       1259    56893 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    222                       2606    56864 Q   app1_atributoshotel app1_atributoshotel_atributo_id_8d90d4d5_fk_app1_atributos_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app1_atributoshotel
    ADD CONSTRAINT app1_atributoshotel_atributo_id_8d90d4d5_fk_app1_atributos_id FOREIGN KEY (atributo_id) REFERENCES public.app1_atributos(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.app1_atributoshotel DROP CONSTRAINT app1_atributoshotel_atributo_id_8d90d4d5_fk_app1_atributos_id;
       public       postgres    false    221    215    2811                       2606    56869 L   app1_atributoshotel app1_atributoshotel_hotel_id_94a58e28_fk_app1_hoteles_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app1_atributoshotel
    ADD CONSTRAINT app1_atributoshotel_hotel_id_94a58e28_fk_app1_hoteles_id FOREIGN KEY (hotel_id) REFERENCES public.app1_hoteles(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.app1_atributoshotel DROP CONSTRAINT app1_atributoshotel_hotel_id_94a58e28_fk_app1_hoteles_id;
       public       postgres    false    2813    217    221                       2606    56858 F   app1_comentarios app1_comentarios_hotel_id_012062e9_fk_app1_hoteles_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.app1_comentarios
    ADD CONSTRAINT app1_comentarios_hotel_id_012062e9_fk_app1_hoteles_id FOREIGN KEY (hotel_id) REFERENCES public.app1_hoteles(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.app1_comentarios DROP CONSTRAINT app1_comentarios_hotel_id_012062e9_fk_app1_hoteles_id;
       public       postgres    false    217    219    2813                       2606    56757 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2777            
           2606    56752 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    205    2782            	           2606    56743 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    199    2772                       2606    56772 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2782    209    203                       2606    56767 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    209    207    2790                       2606    56786 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    2777    211    201                       2606    56781 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    207    2790                       2606    56805 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    213    199    2772                       2606    56810 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    213    207    2790            ?   ?   x?5?=
B1???S????)??Y
2&+??????3y/fP?f`>??Ӿ6?	?Jj????UyI?0?W䃔?`7??{??vz?M???7t?EN????[?j?|?)??,f???P??:??2I??ӌ?? ?2?      ?   ?   x???=?@???S?Ȇ?aYj?`k?Ai??????\????X??7?&?=M??N?4?DdY?K?@?A???8?EΝ??ڷ??~}?*y2??B??$????8?E?GVo????c 6/?a]?[????n?z)A?\??=V??g?e]g'8????t??Ӳ)???>lX?l?|R??eS`?      ?   N   x?34?LL????L-.IUH-V(?S?M?+N?JUHIU((*MMJ?4202?50?5??4?4?24FӔ_R?OH?W? ?Y?      ?   ?  x??R?nA?ﾂ?+?p?a?6Ng?E?4?=J??Z?aD?C>A???Sl?*#[?=???i?w9[?gYyk?hY<]???bk<%6???#?.?m?8?I????????:&??????䀎F??Fs??D???lݧ, ۞
Ȍ?eo???-I?Q??DIH?+??d??Qg?S???????&;zd? ???'?}????\A??o??????黾o??K?}??a:`7?gm????ZN??v)vE??`|?5Tm????|s?6?$Kk???|?qZF??_7?QS?άw??[L?N?MEb?*?Ӥ?]?<;???ÉV?w???
,L?*g?S<???9K'?%????JZ?0̼??+4??T[???	???{s????u??k??/t?
?      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?m?[n?@E?gV?T??|wHU
#?	JB+v??1?u????|E?>?!????2??0,?ån??֚J?r8w?)*??	<?KX,[
????`φB????t??????6|?rd;`k?3,ۨ?!??V,O?x?????Ow(?zg/FRtz!??H?*/?,?9??&W????O?ϯ?>%ng??G????L??c-?㰬WK??-???????A??B?o?kó??N574?6?9īV$̕?LޕaO?L?c=? ?
?? ??n????2ή&'?}f??{jr?(?
1G?? Ӕ??e???5?Ǖ?Mҕa7?L?c/? ?
?? 9d??޶??ռ??I?煍??<?K?<?%x?W<?9w?????[?'̱??????uf{xk?^_Ƕ!?c??Mt?"?????r$w      ?     x?m?Mo?@?3???pv?]a?&n?JE?~??&f??*"??????Ŧs?????3X;??j???O?)30??1.????,̧?<O??.P4+?v???0ɶ??r?§???y?[????????QÀ?	???\?e??ٶ	????Q-i???ݨtm?3?;XI???]??rB-TI??????w???+Q????['?I?I?F?'?b?Vb0&?$??????G{????s?C%?E&G????@9?1B??KM??ݱ?7?{?7t??`N?e?t???K????cq      ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x????n?0E??WX,?V?X?????E?J?:?4?q&???d???	???A?1R? ?9?<??L0??L?.K??jU?g2??!<????	?]Փ/?kYf2?i?(???C????^?@?$-&Z?Ј?'y>?j?V??????Cv??Zۇ??ڦ??ȏл?\?Chޢ??w?xum{??WO?9?c^???ѻ???ۻ??uU?_??y???[?G_?????[?C??|?g?????i&??l?(7??XGG??g{j?vmxyum???/#)F!f=??????Y}?????gQkk?u"\$???r(Ш!& N??y?ќ?N?z?9[ 1????|E ??A??5???FQ??6?3???-V???- ?=?+E??ȗU??B ?Ufi??6?W(??^???̂e?? b?
[T.9?e??E?1??M??r?_t??????P      ?   {   x?]?K
?0DךÔ??ޥ7?!??$/r???B?n?0o?ϒ2?2rv]q?X}?º$?$?ތ*??ҡ+?4H???Z?~72?m??)?(??wu1<z1??̆g?A?v5?E8?9????>e      ?   ?  x???ݮ? ???)?j~|?M?Ԓ???'?o?@-?ٺ?7^??1?͌Ptv?z??6??@?4??FFN????%?b\1?pܜ-q?V=? U?!??%)?y4?q?h(&4??g???C??&?헖?z+?????1??d?'#?I?yc'yT/??5]?΢B??O]?y??
hE?ǈ??/~???x"'5?]%Hγp,?൓?v?Y?XD??????????.??:?DF??.??Ge?CJ-Jfe}??G???~?(???(@f?WƠ?eBi??o?!.x?<g?v???e?ɻ?????D'ɐf??K欼uK???ur?ˢ???
#H?w?8?+?@s?kv_4`?$?}??(t???(@?wv??Ä?J?M??\?`H??????@????ֲ<̀_???iULP~?!Q,z??`5Y*? ??m~???1??r?.򢻫???-???
	nI??#x^'??.???B?s?:??*??/?툦      ?     x??ݖB@  ??<ž?tf???AJ-"jϞ???'?e
???}%???L*?s?f??Ŏ?????*C.-??fJk????B?n䦙?=??Vږ?????A??Ȇ?p?>????)ş[Ѿ???^? ??5=??$kI]5\?1?锘??HER?Yn%Ɯ??ª?k????PHs;??ݮ)c?q?)???D?}8???w??6pȾ??????z??	?7??}@??Zn??#8?b????ߧc?D??5Xe??E?D?aʺ?D?? ???R???\?     