PGDMP      2                |            tarea1bd    16.2    16.2 6    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    tarea1bd    DATABASE     {   CREATE DATABASE tarea1bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE tarea1bd;
                postgres    false            �            1259    16407    actor    TABLE     q   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16406    actor_id_actor_seq    SEQUENCE     �   CREATE SEQUENCE public.actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_id_actor_seq;
       public          postgres    false    218            �           0    0    actor_id_actor_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.actor_id_actor_seq OWNED BY public.actor.id_actor;
          public          postgres    false    217            �            1259    16420    actor_participa_en_pelicula    TABLE     u   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer NOT NULL,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16400    director    TABLE     w   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16399    director_id_director_seq    SEQUENCE     �   CREATE SEQUENCE public.director_id_director_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.director_id_director_seq;
       public          postgres    false    216            �           0    0    director_id_director_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.director_id_director_seq OWNED BY public.director.id_director;
          public          postgres    false    215            �            1259    16414    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45),
    genero character varying(45),
    duracion integer,
    fecha_publicacion date
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16413    pelicula_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pelicula_id_pelicula_seq;
       public          postgres    false    220            �           0    0    pelicula_id_pelicula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;
          public          postgres    false    219            �            1259    16448    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer NOT NULL,
    anio integer
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16447     premio_mejor_actor_id_premio_seq    SEQUENCE     �   CREATE SEQUENCE public.premio_mejor_actor_id_premio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.premio_mejor_actor_id_premio_seq;
       public          postgres    false    225            �           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.premio_mejor_actor_id_premio_seq OWNED BY public.premio_mejor_actor.id_premio;
          public          postgres    false    224            �            1259    16436    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16435 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   CREATE SEQUENCE public.premio_mejor_director_id_premio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.premio_mejor_director_id_premio_seq;
       public          postgres    false    223            �           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.premio_mejor_director_id_premio_seq OWNED BY public.premio_mejor_director.id_premio;
          public          postgres    false    222            �            1259    16460    premio_mejor_pelicula    TABLE     y   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16459 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   CREATE SEQUENCE public.premio_mejor_pelicula_id_premio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.premio_mejor_pelicula_id_premio_seq;
       public          postgres    false    227            �           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.premio_mejor_pelicula_id_premio_seq OWNED BY public.premio_mejor_pelicula.id_premio;
          public          postgres    false    226            8           2604    16410    actor id_actor    DEFAULT     p   ALTER TABLE ONLY public.actor ALTER COLUMN id_actor SET DEFAULT nextval('public.actor_id_actor_seq'::regclass);
 =   ALTER TABLE public.actor ALTER COLUMN id_actor DROP DEFAULT;
       public          postgres    false    217    218    218            7           2604    16403    director id_director    DEFAULT     |   ALTER TABLE ONLY public.director ALTER COLUMN id_director SET DEFAULT nextval('public.director_id_director_seq'::regclass);
 C   ALTER TABLE public.director ALTER COLUMN id_director DROP DEFAULT;
       public          postgres    false    216    215    216            9           2604    16417    pelicula id_pelicula    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    219    220    220            ;           2604    16451    premio_mejor_actor id_premio    DEFAULT     �   ALTER TABLE ONLY public.premio_mejor_actor ALTER COLUMN id_premio SET DEFAULT nextval('public.premio_mejor_actor_id_premio_seq'::regclass);
 K   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio DROP DEFAULT;
       public          postgres    false    224    225    225            :           2604    16439    premio_mejor_director id_premio    DEFAULT     �   ALTER TABLE ONLY public.premio_mejor_director ALTER COLUMN id_premio SET DEFAULT nextval('public.premio_mejor_director_id_premio_seq'::regclass);
 N   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio DROP DEFAULT;
       public          postgres    false    223    222    223            <           2604    16463    premio_mejor_pelicula id_premio    DEFAULT     �   ALTER TABLE ONLY public.premio_mejor_pelicula ALTER COLUMN id_premio SET DEFAULT nextval('public.premio_mejor_pelicula_id_premio_seq'::regclass);
 N   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio DROP DEFAULT;
       public          postgres    false    227    226    227            �          0    16407    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   B       �          0    16420    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �I       �          0    16400    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   �O       �          0    16414    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   ]W       �          0    16448    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   �m       �          0    16436    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   dn       �          0    16460    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   o       �           0    0    actor_id_actor_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.actor_id_actor_seq', 1000, true);
          public          postgres    false    217            �           0    0    director_id_director_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.director_id_director_seq', 1000, true);
          public          postgres    false    215            �           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 1500, true);
          public          postgres    false    219            �           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 30, true);
          public          postgres    false    224            �           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 27, true);
          public          postgres    false    222            �           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 38, true);
          public          postgres    false    226            D           2606    16424 <   actor_participa_en_pelicula actor_participa_en_pelicula_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_pkey PRIMARY KEY (id_actor, id_pelicula);
 f   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_pkey;
       public            postgres    false    221    221            @           2606    16412    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            >           2606    16405    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            B           2606    16419    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            H           2606    16453 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio, id_actor);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225    225            F           2606    16441 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio, id_director);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223    223            J           2606    16465 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            K           2606    16425 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    218    221    4672            L           2606    16430 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    221    4674    220            N           2606    16454 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    4672    218            M           2606    16442 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    4670    216    223            O           2606    16466 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    220    227    4674            �   p  x�eW[v�8��V�̱lK�?� !�3?J�����g�nf-�����=̯,K�QU�$�W=����R���e��iH>�ƌ�	�s�~1��L����eW�죞��u����m��k�^��䊽hl����xɞ��<6ɍ��.�x�]�[�F����hX�����<�'V�\��r48�޴�~bRq!�+3��Uw�F3v��_�Vc$��"g�tیF'��x�]"
v��X��{�\Hv�Lͷ���,�c��B���O���7�%{��f��¶�T�>�fLn��hK�Ĳ���}<6c3i���Y��P�Sb��R53���Y�_Lss��L���qZZ�\/=�/�������h�������vz\�6�~��|'%�U,��f�2j���h	ժxV���?��[W Ě}�}�=��橫�k�OS����]����$�Zsr R<_Qu;쎚ڔ���ߓ��0�l,�k=u�O^5�h~PQ������B��{��cg�����wf`�e���z�Wk@φ�@D�������0U�"eo�(���+%/D��Ӧ�}Э钗�^36���.rv��ȰA0zW�j�C�L��H�X#��d	�,�
��@�=�dg(̤��8$C�����r[o�+^��3�h����� �d�HA��&<��Mo,Nd�}�2'�S愒��'b�+�?k:�!J���f�R9�*���1+�,ٍiP �FV>�@"�_�.h�#�D���^��J�`�*�Q��;�Q��]S���1KU�5�}���ޚN��BY,{V2�\�� ai���A��0QV���z�He�^�P߂�����#��DQ�2�ʃ�ǵF	^���P2^@`g�5*�&!GC����r	�+U��� �'��*V|@���ZU�bŵ��oz�My������K
d�첅\h���Uf���ԯrv�G|�B�R�WmX��+�*%��*��A�Z����8-�*:� ���`���eE���n��|���P�j�s�KP�:[���M�:g�z�x�X*S^�����Z)ٴ;��h�1T�.�@���d�*�
 X�@"�zK'�
�,Mٻ�Y=��A�!"�V��ٍ��z^��@�H����5t�$֮�"U~J�	��"-�<��4Q��[ 	��ލ��M3�D	�iK�`7��T9�)�;��^w���+0ڃRof/��x��j�=�� 3�q�tE�T�{j����-��� �"b����[�ֱ�x1��\�Q���}����ހ���w��c�0n��]p!dA�V�#;�\�m e�*Q�3Z�im�I7/=�Df���M{lڎJzD�6�"s�2���#H�ݛ�K7鑷��&�x����0��`�^��g ��P���ʏ};�J���N�=�*��an�iUu�3@�e�ve�c���YL�2_��%VaG��?�y����1K1*_�X�{狢ӵQUA�7#O������mS��+`�X;���� 
t����a���x���y���g��� r��Dɕ_�1D#�\��Śj؁�TQɩ�2z$V��)��cz�5�������b�2 )����b0���<;YT�!~��t�Z�`YM�JW�!� #pe�ڴ+���z`op½�`�'I��	��uS���+U,E_`�yN��=d�EIb�z��x=�#�8O�
1�h�tM�M�;�+<�V��f�LYl�#�%4�����;؃-���I�����
ձ��_"tq%㜴�&��1��g_`%��v+�tf�ҋ��k\>7]s\�?��PD�:4�4��"M�`�Wj����ː�&!�5lB�C�G0���3=�$=�,7O9���]W�v�xP�]�,=��5�������_&��{      �   >  x�5�[�9C�˃�2�=���'?}��I���-㋝-����v��X뛻Ş_�jz9g��o#ۉ/goc~1��ԓND��G�q����_�hk�l��`���6�B��~���3�}�ھ4����t�[��c��M��y����%�#O>_Y���U����kg)AU����KR���F~�f�:V'OU���ܫ"�*UI�ol�e����.�3ZG8,��B��P��\�9���������;m+�:N{�F��w(3�:Tˠ[[ѩ$���s���Q4O��~m��P�G�N#��ݩFl��}��8�����/ɧFa�|V�h���̘�\�":p�V�=~���*eON�S=R*��2S�`�*����,�u*���ǧ)�.�"��������U6�u�X���|)R�����W��Dj����{�|P/9J�9�p�6_E���.�l�������]|�R��;ڄ��^w]))n����0V��L�
�ҁ���4_B����sWYj)�Kd��q7Ձ��TR��t�a��lU�HUqfU3A�k��-@v��"|�ꩣw�k�'�0w��9J(r�Ԛc�N�+q�g�ҟ�	2�f0S8�΄n��K���V�(<A�bΧ�8 ��:�(�4���㉜H.
�&�P(�n�@|�]c�9N�^b�`n�gn�3���@���K�.'�+��W������D
��J�+h�7���k�`� �C)�{�>���)�ۋ-��c0��Y_�7��Stޭ~U�>B�
�x��13�r�P�����wH�B֦�re>Yu���L@���?b��C�t�y���~\3����q�ĕ��+��.��55�������&�x�{� 8�Ϊ��{�׈��sUL4r댒[�=	|�z�S�l$;����Zo�dDFlX��H���O�1����
�
�9����ΗAg(T"V�nM�]3�S���^ֵ�C��P�I���g����׵���VJ̈́@�0_�9�����y�3��*��w{��������*󀆸����	�h���g�勾�D�T���Ջ�HH�,>�yk�cPjO�7�N�W�Y7+[�����Ƃ���Eq��M��&����<YE���;, �p}��B��� ��jJ�����lբ g���AwѬU�W�#^R'��[,�5��)7��)/��s�Ru�AL'��ǀ��8�N�����0L�Y���嶉2�ò�$�^Z.�Q��vm��x�s�gıE7-�'
KƪQ��n���4
�0�b�s.����z�����(�܋���~^Q�kHM���\�K��(z��.����l��?	��ehX�R�-r�)���G��["l�nk�v)V�S�鰤wk��� �W�X��1�Y�!�'�gZ���D��4	D�MC�.ۙr���ؕ"��-;��f��e��ކ�(�ny����(�n��?�9�t�Բz��u�6���&${��I�fx�B6�J�ת21+���?�TL�EHrb}�c�$���?"��D�(&��d�(���V���P"dN�.�7�����l��*�������'P�Q�k���l�����_"�      �   h  x�UWIv�6\��	��$ȥlɲ%��$[��҇?qp�O��mr�\,՘��d?=UW5����`�쫞�za������~�;=�V3Ur��f�XS�}�kvjG�Ĥ��ҙ�,:����S��[3�z�M��i�.j*����W�L3l�7�>��t��
/�iy�^�1{���b\�������l���D�%N.���`�¤�B�O��<�<�\��F?Z3g_�����\T��R�^�q�����������ꑕ�T�egO�Q�07�j�?NI�Q�e�=Lu�SbW\�qY�Ȫ��]Qu?��<=���E��b��Ȧ*y!]�d�٧���Z�zwQ�̟XU�b��C�m���~���N�[g���)�����7���7[�_MO��yѢ�.��'�����e�xv�Z[#"��<��,�g���1��R���!��ΒcY��|�[�7V�%����ƽL�T�.�2�z1�W;��T4��b\6손]�-����+���nb��e�l����G�`'z֏٭�,7�,�}�ݹ�����;�yY�)`���UL>�X��lP�J���	͹����J%iqa��ܙ�0e�zr���XDEͫ|�݅q�=z��B�ѡ��0t�)���I�:?�M�*^����V&^U�z^�>�Q���SP@���u>��י��A�w��u�� b!}Rղ���E�#u��K�ì��?�I����f�F���.�%{?��:��e��Gp^W�A��}pP���j�O���k  ������'�-���>�8�2�*OQƚ"C%�;��PV	���;=c�aZ�d��b~D�!��'í*vr�[�^w[�d���l��~0v���bWs�*~�?�"�}�M-�jS�?��0-D�#*t}7��<+5�MP����OUW�s�q�#q1bS���<�HN�B�v(T0!�� �8�ب����C�o��pa0�M��z)A	�m�i>0~��`�'�-��8��?2�� o�8
�HȚ��ץ�	�$<�F[�'�Jž`�F�$s�/J��z�gP&��+C(@��E����ձpT�]�0IThܸ����to�D�Uh֖Ib^Gx�+k
E=�%9����%��&f	ʂJ	Hx,�Fs�!��l�:��D`"H���B�+^`Ѽ�V�ҳ"8���**��|�
8凘�z��0ݒ���N�C�9D=�Nj��F@�?�f{^�H�"�`��6�[��tCJ��X)jY$t���t	�������'I�8+qh=���u �^B�x���!]@�Sv��@�$k YV�z�0�}�X�Y	&t�W�F��֔[�� b~���3�􈋓�̾uJ�Ư�r�J�:쉑.Qh(�#�;��)	fb�-���|]�q�h��������DːC���L2�0��Pu/`��D&IOb�x���sd��[ѹf��MT�l�J��
�V8�Wy
܍����f�wvI`�({�7�d ��T��HMbS$�q��$=�ȶ��hB���n�;�@��S3(-�}�J������$3-��uKm�������ڿJBfb�~�QX�<�~h���:��7�w�lZ(��c�H�]�-���!�=�_�G �5YD�A�C�$ތ��{o'�<�~��zFc
�?,�t�.ݞ*a4t�O¶�Q���X�w�Y�G��m%�����F�cp3��A�����D��CW�)��Ӌp��G����p�R/y�"��t�[��#I`�H�#.�=��nc�"�)�v��g��m��3D�W��:�iQPQ�6�K����$����C#	!w�Gp
\�� vί�x߈VE�|Z�D	�� �.�$�*��ɰ��GE�$�/��aA�p��������      �      x��[���H��ɯ��ݝ~����F�]`�U���,6"�9������Z�6j������J�B1�ٳ��Ub����}X^��߮O���yx:߯C�_�p��Fw�z���V�n�j�O��t����:^O�翮�_��4��w�����|k�,>��?��}I�^�����ϡ�r�.��w�h���	m߸�k���e����������y���Χ�e���7k��7�g�Z������=u���^��~�j���/���U�n���i]�i�/�����>��s秏�6�%��������2/�M�o��pbʷ�Q����n��x{���+����V}�}�I�g�Є�2㛟��a�kz�eX���V=n"�Y���N��~�6~���gzn��:�X{|-�W�Z���U}�>ȓ��e\&8�����m�w*����b�T�4>:�+��Q\ƿ�׫������!?cx�/��<��=���~k\�)�q�"��k�i�Ç~L�/�<p�[���G�@�U����Y�.����?�y\-O�5x|Q˳�����2�
�;��e0����kE�2~��MiSo��#�V�X�����{p�$%��]����e����aIb��2-,��IHT���|}�^�:/�4��p���:}��6�����4-�m�Լ�N��<k�������Ns�No����DV��LRV?�E�Lx�w��#�ß�#��q԰���:�Vq�c\�H�[�c�M`���t'�9t�A��L��,˼����8��7�:��R8�=�N�9<��;�f
k�:�[l5���kB����{ehkp"����C��my���q�����!�C+�ixJ��[Jۮձ1�lO��pU��p����E�5���ޱ��sy��!5�`���p/{�o����8�G���No�0��F��e�]���`�oï9��g��Á�7x̻�A"�̂�t��3՛�����y�N98| 莧q��:á��G�T�W,
�\
�|,��K�^��b\��st7�z���~��bM�C���>����YJ�!�%�F7� ��zXFϯ��_�$)0E%�Ǽ�I�4���D��P����`�w�/���Vrڞ��I�&e��!�b�3����o��L��M��4����ust�/����ARtB��B��t����K�0�\ Ox"�=�#1���=��@��S���AٞϐS��u�nAQb`^���aж������\�?����.H�x�p!��%����X^������u��bQ1-��Y���t}B4[��^ ��G�fn�2����c<D�-;V�a�.�-�5,m�K��mȹ�' ����ST�ፐ�� O��\Q�.�.\�׻�a�4��R��R��|h���Bj.���υy"N��MP��H�`���	����V��0ߪ��t���<��*!�6_�i]�B������"u S'��;QP�	!%ul-\�f�pO8���㲹��N�>�������9=_�Bz�B9���)������׸�	��Z�k�6+�v��P؆�j�5^e����v?�YA+"D,E� �TQ_g�����ئ�!" t��N�(H����U���'�C0�;y�Y��TՐ�tGW��cr��<�=�i�_oգ��vur��:� Xu �V�uNηU���DBkF�˚?��T��D�J�Y��wh����)��w�S�cP?fd �H*��(�-�rT0j�Pa7;T��=�f���*��4�u� /e�CY�qGxD�g��tx<�D�xڐ@�W)�q�Vn����	�C��>&*O	1�N�.)��]�7n� X❦dǲ� N������`��j�I���6���J4�������� BZED�4'݆�~OI�oR?ڳ�@���ݞ��T�������tJ�Kej�v��Do@�$�K=����:��H�ϑ�U�`7�@O&�
�\h���'\f���A�<@3��c��˷��eh�x�rʐ���lÚ2e�ڕ�r�2ţ��9�����JgKP� "����'E����G*�ٳ��/�'��mL�]3b�މ쁺����e<W�y�O��:VG�s8Z�ҧ>���p��eyټA۵�ʹ�@.�iNR|�|�Zj4������M�� b�
��|�ې>�iV�b]�F��v���)��D�&��6����ģ�����c�S����=�'���B"H�r���+��T7�X��"$E�֪�*����X*1f�aV	��$
$k}Z�l��p�2�.���`%�8��k��0���ye����^Ȅ|��T9�b��D\,�:��I�Y�A<)��E���;�R�VuX$�H~ӎm�?��BOE7��B�U��!"�I�s�t,Ct]��SċC�*�iOɄ�p&���*��*���#��ٶ�Vn\d]�����b��H�F���=	A#�mи�VL�3p�n���6�� � ��QU\��O�Ѡ~&�t$x � 1��v]1V��B���k1����dtu�^bF���0��^�Up�@B ��!,$)4==m.�8P>�]"�}�O��)`���1����8�>�I�F�f�N��:��5����
 ޫ#9K�i��q�<�<0��n�e��5H0�E6��D;�e�]�17ݛ=� ��݉HcU��(��x#K��}`���]��?���V�;jRo�RJ�L\�V���o\��p�/h	U'�*�5@��}�dGAb:)�=RO���FAc�Oߧ_�Vj��� �ރ�	�ۡq�1�R!������&En?�C�(��x����9iY~�iL�w48�n�lC�hZ����w#3;وa'�-�Ӷ�$H�/u�'-�5�H��aOv�bJ�;��^�3NU�EPZum�ƭ3W�x0hu�*ך�F��"cy��u�a����m��	
���G*ƍn���ݑRf���$��r���S�x�I1<��(!�()��,F�Q����ee��Hǋ}Q#R~�^s(%$|�7
9����OV..�j#��]xܑ�[_*����@[���Z��ҲѪH��ۥ�#@� �����`w!P̧�[s�r���YQDDyخ?2�=D'5ѣv�~%C�O����23��*5W��|�l5Y�b]l�u�i�rR�R�XC������Rݨ�D��3Ѓ�o�H�苼RJd k�bc?8#�����d��X�u�= �Uà�:���:�2�n_��Z���J$aFo�E��������-�<#j9P��'>�I)�� �η�)�yz[��hR��S݇����l�,�ȍQN�5n���XX;+.W}g�֥�Z��O!���b�p�r�cM�7M����=+=�N�rD�lvZ\Z���=6/�l�%��1���b<�C�Z�-��<l����ļ6N��;��eg}�d���ݑ�ߝ�b�>u�������r�5OC�(����U��Ul.`���<��&나%�Iu����ޙ{���#BJ|,GUM;}<���i���%0>�~2�P-<�e��Q9�j�|\u	O��{���ŀCb~)Uq����?�1�*��W\']+��h�َ[�^fX�'i� iY[�gLM���o�~"G�A'�,�m}*���0yq�ORҕ�dV��c5vT�אX3�q0�<�,.�Y�?A�`d:his��%�/�䖸W,��)uۆS�Ml���t�hn��p���*kQZ����&&Ҏ�W��FeҌO�(�y�� �F�RГ���P��F$!k=�.}����2�����!��~��3\�:�:Ir��1�g����|��ǐ#���̓���ZEM�u`ɭY�� c^!}�n���~�ܹ2��ɸ��fh
�=S$ȋ�P��J��R�z����g{;б�-�����h��W_s�䚯�.{�-�,r������T�}�L#�9��/�@F���@�8�����{!��e�mB�V4lh�ƛW7�tl�� ZtWYI՜Y֙�3饇��D�f����k�֓9,�Y<�7�@����Ń��S�/��;�12B�Z 0  T�����H��kM��6Ɗgݸ�R�� C�>Nݞ�y���q��A��������x[)��F��ס�m��V��#�f�5����P����۪�����rjP���^cr���kGQ�>6��j҈��D�M�%�ciDҒS;\�9�5yb�B�T����2�^,�^\Gr54���~�v<��!C$(���m͌�J5�ч����b~j <n�|� ��یbuf/��T2��ӳ{�o�9�}��I֑^��z?�2�o b�Sm��8��2��8D_F�5�tGY��5T1F������^۟�#�ɨ������������Z�d�2�l�2s�S���՞w�v1�:M�itʺ}g!v�݊N�~��Nn�Dh6M��MRQ$�����q��@En}v�� ��f�)����(C�ڬk����y��J��{d֞D���V����RO��;w�\��h�8]�ծ̞Wc��ŕ�5|-i�G1?��	1�j5�SB4xܥ9ƺ���%e�L|5>}���=M����#7������m��� +X)�t���1�a/,E���p�b^"��¡j�����-u�u��E���m/�7�;�4��~��|��kj.f���5�<�r�<��1��FI���0�������d�j4��m�#o��%�h���=��9���o8]��0"�-�\���1���+��<J�=��j�j� ٰ�-#V����p/��F(���O6 [�BC�S�b��q�_A��	��h���̬f�,���w7�A �(lY��J�[�&x=�%���Z��F.5\�����AK�,Dϐ��e�7I�������|@���<6�TYr͓�~p{7�H��9��h2i8��u�����(9��"�
�G�r_�����ȗ����r]���2ԗ% ��yZX��j��/doC-V2��i�)�n���Ñ]P�Hc���q�)�N�۹g�9p�R)7�+�0rאmz�,E��އ�(_�*}0�ѻ&�b�q����b%���k��X��wf���:�� ]�uX�U�H�'�b��ic�Vr0��iG���h]�ZH�s��篹{{��Dҗ�)���2�p�m�ʕ閱��� U&v�m�,��^�kA��[͑���7�� �Ă�_�l��ʤ�U^%.!�+�)))�I��l�iz.��pO�涾�~[�A&���_����&�VJ��,��nL|�ʎ#��D7�O���d i,�}+�����TQE���5i�++���BC��P��[�8�hP9W�8B�A���M��+ƼF������2���X�يBϺ�$%�)�O��=Aߜ��{�e�N�M'���W�f��s�&�0(����F�X}߻�	/�R�EE׸����E4C����j�s*]���o>o�h`sz�,-Åe`�IF(��T�����Ď#�m��)xOd_����A����=�Bk��_��c��Q��1�iu�V�����4=��I��iy��2�S���=R�k�֣����T,w�:�HS���M�'t�� _}����7��Y���yTE�c�Zo'�X�_��b������m�����      �   �   x�-P�m@1;�a��$|v��s��U��Mh�i�,�q�|�ƶ8&n��3�a�,6�2�u��~��V��p��o�Ʃ;L����.������1�7B���"X��&jK�7\�UCl��0��n�cU�[��b�0u��w�,���g�����pE����g��=F�w���?0�6      �   �   x�5��� C�I1�J/�t��c�E��\��p����Z�;�ru��*������{����v_+���jQ��T�8e���'U�y���j��@�Ġ��@n��T+MD2���V��%�����VF����"�c]���+�]��R��?$�5n/�      �   �   x�-PɕA:K0�ʥ\r���1��7��*Q��=%vN�%��B*��+��6A�z5��k;)Z��Z1��+�T�]�A�k߫
�H΅�X���,���~�DS�,�@KZ�dڒ���YK����ѡ}�#�~=]jۙ������6��������+����(#�Bu8���T�ii�-�&VOɁ���qH�K���Y��>�)���p���[����?��C�     