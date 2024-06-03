PGDMP                      |           postgres    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     }   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Slovak_Slovakia.1250';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4842                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    5            �            1259    16501 	   interface    TABLE     5  CREATE TABLE public.interface (
    id integer NOT NULL,
    connection integer,
    name character varying(255) NOT NULL,
    description character varying(255),
    config json,
    type character varying(50),
    infra_type character varying(50),
    port_channel_id integer,
    max_frame_size integer
);
    DROP TABLE public.interface;
       public         heap    postgres    false    5            �            1259    16500    interface_id_seq    SEQUENCE     �   CREATE SEQUENCE public.interface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.interface_id_seq;
       public          postgres    false    217    5            �           0    0    interface_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.interface_id_seq OWNED BY public.interface.id;
          public          postgres    false    216            Q           2604    16504    interface id    DEFAULT     l   ALTER TABLE ONLY public.interface ALTER COLUMN id SET DEFAULT nextval('public.interface_id_seq'::regclass);
 ;   ALTER TABLE public.interface ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16501 	   interface 
   TABLE DATA           �   COPY public.interface (id, connection, name, description, config, type, infra_type, port_channel_id, max_frame_size) FROM stdin;
    public          postgres    false    217   �       �           0    0    interface_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.interface_id_seq', 9, true);
          public          postgres    false    216            S           2606    16508    interface interface_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.interface
    ADD CONSTRAINT interface_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.interface DROP CONSTRAINT interface_pkey;
       public            postgres    false    217            �   �  x��WmO�8����ȟ�$�i	�8`O� [-�j%XUn�>;g;E,�?;/���ZZݝN�$fƞ�g�1��vF\(�0c$u�ΐ)"Q#�!r=�s��ߝW�pF���:'�����L�@�К�TF?���א�Y�w.���ȸ{�I�Y�xЫX���j���W<�i��"��7�Hq����
¦�TF�hL�c�a�J�Z�lj��3B2�`3����\���W�EX�sY��N�+(��IB����{G��H���Rq���3%��&��8�R�����(�L9�i�*)K�{!r�N���Lz���^���4zi�U/����n���p|qww���j�:��x����1���:�|#X��o�
#	W�-ѸP\Lq*��`�m�a���21J:���z�(�Ӳ�-~�c����+a��O����S���d$�a�e��ց˔�Rl�[���|"$�)��&C�	��`"x��1�¸mZ<�qy)�n'M���eq{큺�����y��u�Re�]���^>����mr��c��<�
θ�?k�5E��)���8
Z�G����yT4A"��<%0�U�-wGL�Z����:�:c��Rܺ��S�5�x[�it�@�9Ζ����ɹ���(i�rss5��RD��C̤��s,������6��
��u�K�=��C������&
�4��P艥��^�˥Z&ȳ���I����'U
y��gl���6�%_��(A#`f\�#����t�x����C�4����������ޞc�����%ڸV���=8,�7S �m~�2���b�^�r�G�� ���Gðaďށtqr�?1�б��tQ�p�c�l$Wn��i;�>ӊ:�x�"�$e��&����iYPZA	���rA3,^�� \�mdW�gX�����o�vJ:[	0h�9�c��ܾwf}�2��o.~�������fm��T�_c�q��<�_���vA���.%Y���G�KW���T!���V�G����bI�7     