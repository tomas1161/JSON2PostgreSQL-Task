PGDMP                      |           postgres    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
                   pg_database_owner    false    5            �            1259    16465 	   interface    TABLE     5  CREATE TABLE public.interface (
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
       public         heap    postgres    false    5            �            1259    16464    interface_id_seq    SEQUENCE     �   CREATE SEQUENCE public.interface_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.interface_id_seq;
       public          postgres    false    217    5            �           0    0    interface_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.interface_id_seq OWNED BY public.interface.id;
          public          postgres    false    216            Q           2604    16468    interface id    DEFAULT     l   ALTER TABLE ONLY public.interface ALTER COLUMN id SET DEFAULT nextval('public.interface_id_seq'::regclass);
 ;   ALTER TABLE public.interface ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �          0    16465 	   interface 
   TABLE DATA           �   COPY public.interface (id, connection, name, description, config, type, infra_type, port_channel_id, max_frame_size) FROM stdin;
    public          postgres    false    217   �       �           0    0    interface_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.interface_id_seq', 20, true);
          public          postgres    false    216            S           2606    16472    interface interface_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.interface
    ADD CONSTRAINT interface_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.interface DROP CONSTRAINT interface_pkey;
       public            postgres    false    217            �   �  x��Yms�H�l~ŧ��@f@L��Qo˫ĵ�٪�Ep4s����R���@E��fsuV��鞧��!��mP;��1�k���v�Y{�C7 zK��~��c{�F��P��ť ��p�UܝL�gL�/���W}L9�2]Jy��H>��lw.F�ao4��|3ZZ�ը?}i���Rk<栦q2�?3�ـ�f!�[�N��n�[-�Q��<�R�0���cN���+s勒�$��|���c�����Y"DCur=?;Y����&��Ù���.���/���8�g���u�J�?�a�1�����E��|1\eN��rٳ�#kk�e�9X[A ���@p�V���ʯAΧ�A (��;�AC����K�u��?�.{���p�����U��z�bm=���V+�"#�ҎQ�M�č3�:&vPY\Du-��,��i�v��5�]v��Hp� �r�D����$�s����O�ըyˮ;�7!�C�l����t�rtWJL8�>��f�;�<u�C�Qu�m�����_w��+&�	`���B�D�#��䔭m��0T��l�`6RZ�<ޕ�HVq}���&� �A�Z�6*#�ڤ��FH����AQg���!��=�}���������Z�βՑ�o"�Hy!'j�Z��=AƥC�,�i�d�<d��b���Z��J��ʸl.�w�l�7`���}��EO��!�{Z���{�^� r���?9�g���h-����se#G�M��ݎ������%,/.�\�	%\�Xh����%[��m�K^X_����Cƅ�=�aH|��!dOHĐ3pc�6�|��6S�$}���cF���g��Z1���#����H&:�3�$P�-��`K�+"*�e�����z��]�R̤���R���c�)ґ�R(��A��>:�Q�7'��F��w���P��)��^竆� Rӌ�m��c��cύB��s�xD=2�@�Ɛ�� F	&g!�[]�b&d����Ȩ�K�\��t�"UH����v����o�z�P�%����ci���h˗\�,!�2A��vg�-�eo�.�	�w�"��! �H�#�,|�W��^K1�þ!�':u����8���kl�ɰ,spI�J���hJ�'B"ק�d�
�#���0d8�f�$�8!G(�`.���O�n��N��V�U06m�6����OI(4���E=i+�E�M�7i�p��Fcḧ́��8�'�^�
��m��f��P.�?�Z��R���UT�&�~4�gK�Cv�Vu��`Z��h'��<d�^�o*�]����?ײ�k�h"b������wMV_�r!�� 9���������s&�ƺ�j´���+Cy�-	V�\����CU:�1N~p*�5�.Z/p4	!K@��}Q����[�K���6~	�,uF�_*\��Z�������ۛ��wZ��z�JP�T��.po4��+1OϚС���m`%;e!`���%R��՝J�q;��wm� ���5Z��=k�Zeia2��D������i��b��ˬS�}4�锼̪�+�B%Y�j����U�ut�>���$Z��n����FF��J ��!����-P��UQK���Tr������l�b}��GGG�_���     