toc.dat                                                                                             0000600 0004000 0002000 00000057461 14002001757 0014450 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                            y            RentACarWeb    12.3    13.1 T    v           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         w           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         x           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         y           1262    49161    RentACarWeb    DATABASE     j   CREATE DATABASE "RentACarWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "RentACarWeb";
                postgres    false         �            1259    49162    arac    TABLE     e  CREATE TABLE public.arac (
    aracid integer NOT NULL,
    plaka character varying(15) NOT NULL,
    marka character varying(20) NOT NULL,
    model character varying(20) NOT NULL,
    motor double precision,
    yil integer,
    kilometre integer,
    yakit character varying(8),
    vites character varying(20),
    firmaid integer,
    fiyat integer
);
    DROP TABLE public.arac;
       public         heap    postgres    false         �            1259    49165    arac_aracid_seq    SEQUENCE     �   CREATE SEQUENCE public.arac_aracid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.arac_aracid_seq;
       public          postgres    false    202         z           0    0    arac_aracid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.arac_aracid_seq OWNED BY public.arac.aracid;
          public          postgres    false    203         �            1259    49167    document    TABLE     s   CREATE TABLE public.document (
    id integer NOT NULL,
    filepath text,
    filename text,
    filetype text
);
    DROP TABLE public.document;
       public         heap    postgres    false         �            1259    49173    document_id_seq    SEQUENCE     �   CREATE SEQUENCE public.document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.document_id_seq;
       public          postgres    false    204         {           0    0    document_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.document_id_seq OWNED BY public.document.id;
          public          postgres    false    205         �            1259    49175    firma    TABLE     �   CREATE TABLE public.firma (
    firmaid integer NOT NULL,
    adi character varying(20),
    telefon character varying(20),
    email character varying(20),
    adres character varying(500),
    sehir_id integer
);
    DROP TABLE public.firma;
       public         heap    postgres    false         �            1259    49181    firma_firmaid_seq    SEQUENCE     �   CREATE SEQUENCE public.firma_firmaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.firma_firmaid_seq;
       public          postgres    false    206         |           0    0    firma_firmaid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.firma_firmaid_seq OWNED BY public.firma.firmaid;
          public          postgres    false    207         �            1259    49183    firma_sehir    TABLE     t   CREATE TABLE public.firma_sehir (
    firmaid integer,
    sehir_id integer,
    firma_sehir_id integer NOT NULL
);
    DROP TABLE public.firma_sehir;
       public         heap    postgres    false         �            1259    49186    firma_sehir_firma_sehir_id_seq    SEQUENCE     �   CREATE SEQUENCE public.firma_sehir_firma_sehir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.firma_sehir_firma_sehir_id_seq;
       public          postgres    false    208         }           0    0    firma_sehir_firma_sehir_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.firma_sehir_firma_sehir_id_seq OWNED BY public.firma_sehir.firma_sehir_id;
          public          postgres    false    209         �            1259    49188    grup    TABLE     ]   CREATE TABLE public.grup (
    grupid integer NOT NULL,
    grupadi character varying(25)
);
    DROP TABLE public.grup;
       public         heap    postgres    false         �            1259    49191    grup_grupid_seq    SEQUENCE     �   CREATE SEQUENCE public.grup_grupid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.grup_grupid_seq;
       public          postgres    false    210         ~           0    0    grup_grupid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.grup_grupid_seq OWNED BY public.grup.grupid;
          public          postgres    false    211         �            1259    49193 
   hasarkaydi    TABLE     �   CREATE TABLE public.hasarkaydi (
    hasarid integer NOT NULL,
    aracid integer,
    boya character varying(5),
    cizik character varying(5),
    degisim character varying(5),
    aciklama character varying(1000)
);
    DROP TABLE public.hasarkaydi;
       public         heap    postgres    false         �            1259    49199    hasarkaydi_hasarid_seq    SEQUENCE     �   CREATE SEQUENCE public.hasarkaydi_hasarid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.hasarkaydi_hasarid_seq;
       public          postgres    false    212                    0    0    hasarkaydi_hasarid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.hasarkaydi_hasarid_seq OWNED BY public.hasarkaydi.hasarid;
          public          postgres    false    213         �            1259    49201 	   kullanici    TABLE       CREATE TABLE public.kullanici (
    kullaniciid integer NOT NULL,
    email character varying(20),
    kullaniciadi character varying(20),
    sifre character varying(20),
    grupid integer,
    telefon character varying(20),
    adres character varying(20)
);
    DROP TABLE public.kullanici;
       public         heap    postgres    false         �            1259    49204    kullanici_kullaniciid_seq    SEQUENCE     �   CREATE SEQUENCE public.kullanici_kullaniciid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.kullanici_kullaniciid_seq;
       public          postgres    false    214         �           0    0    kullanici_kullaniciid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.kullanici_kullaniciid_seq OWNED BY public.kullanici.kullaniciid;
          public          postgres    false    215         �            1259    49206    rezervasyon    TABLE     �   CREATE TABLE public.rezervasyon (
    rezervasyonid integer NOT NULL,
    aracid integer,
    kullaniciid integer,
    aciklama character varying(1000),
    tarih date
);
    DROP TABLE public.rezervasyon;
       public         heap    postgres    false         �            1259    49212    rezervasyon_rezervasyonid_seq    SEQUENCE     �   CREATE SEQUENCE public.rezervasyon_rezervasyonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.rezervasyon_rezervasyonid_seq;
       public          postgres    false    216         �           0    0    rezervasyon_rezervasyonid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.rezervasyon_rezervasyonid_seq OWNED BY public.rezervasyon.rezervasyonid;
          public          postgres    false    217         �            1259    49214    sehir    TABLE     \   CREATE TABLE public.sehir (
    sehir_id integer NOT NULL,
    adi character varying(20)
);
    DROP TABLE public.sehir;
       public         heap    postgres    false         �            1259    49217    sehir_sehir_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sehir_sehir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sehir_sehir_id_seq;
       public          postgres    false    218         �           0    0    sehir_sehir_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sehir_sehir_id_seq OWNED BY public.sehir.sehir_id;
          public          postgres    false    219         �            1259    49219    yorum    TABLE     �   CREATE TABLE public.yorum (
    yorumid integer NOT NULL,
    kullaniciid integer,
    aracid integer,
    yorum character varying(1000)
);
    DROP TABLE public.yorum;
       public         heap    postgres    false         �            1259    49225    yorum_yorumid_seq    SEQUENCE     �   CREATE SEQUENCE public.yorum_yorumid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.yorum_yorumid_seq;
       public          postgres    false    220         �           0    0    yorum_yorumid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.yorum_yorumid_seq OWNED BY public.yorum.yorumid;
          public          postgres    false    221         �
           2604    49227    arac aracid    DEFAULT     j   ALTER TABLE ONLY public.arac ALTER COLUMN aracid SET DEFAULT nextval('public.arac_aracid_seq'::regclass);
 :   ALTER TABLE public.arac ALTER COLUMN aracid DROP DEFAULT;
       public          postgres    false    203    202         �
           2604    49228    document id    DEFAULT     j   ALTER TABLE ONLY public.document ALTER COLUMN id SET DEFAULT nextval('public.document_id_seq'::regclass);
 :   ALTER TABLE public.document ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204         �
           2604    49229    firma firmaid    DEFAULT     n   ALTER TABLE ONLY public.firma ALTER COLUMN firmaid SET DEFAULT nextval('public.firma_firmaid_seq'::regclass);
 <   ALTER TABLE public.firma ALTER COLUMN firmaid DROP DEFAULT;
       public          postgres    false    207    206         �
           2604    49230    firma_sehir firma_sehir_id    DEFAULT     �   ALTER TABLE ONLY public.firma_sehir ALTER COLUMN firma_sehir_id SET DEFAULT nextval('public.firma_sehir_firma_sehir_id_seq'::regclass);
 I   ALTER TABLE public.firma_sehir ALTER COLUMN firma_sehir_id DROP DEFAULT;
       public          postgres    false    209    208         �
           2604    49231    grup grupid    DEFAULT     j   ALTER TABLE ONLY public.grup ALTER COLUMN grupid SET DEFAULT nextval('public.grup_grupid_seq'::regclass);
 :   ALTER TABLE public.grup ALTER COLUMN grupid DROP DEFAULT;
       public          postgres    false    211    210         �
           2604    49232    hasarkaydi hasarid    DEFAULT     x   ALTER TABLE ONLY public.hasarkaydi ALTER COLUMN hasarid SET DEFAULT nextval('public.hasarkaydi_hasarid_seq'::regclass);
 A   ALTER TABLE public.hasarkaydi ALTER COLUMN hasarid DROP DEFAULT;
       public          postgres    false    213    212         �
           2604    49233    kullanici kullaniciid    DEFAULT     ~   ALTER TABLE ONLY public.kullanici ALTER COLUMN kullaniciid SET DEFAULT nextval('public.kullanici_kullaniciid_seq'::regclass);
 D   ALTER TABLE public.kullanici ALTER COLUMN kullaniciid DROP DEFAULT;
       public          postgres    false    215    214         �
           2604    49234    rezervasyon rezervasyonid    DEFAULT     �   ALTER TABLE ONLY public.rezervasyon ALTER COLUMN rezervasyonid SET DEFAULT nextval('public.rezervasyon_rezervasyonid_seq'::regclass);
 H   ALTER TABLE public.rezervasyon ALTER COLUMN rezervasyonid DROP DEFAULT;
       public          postgres    false    217    216         �
           2604    49235    sehir sehir_id    DEFAULT     p   ALTER TABLE ONLY public.sehir ALTER COLUMN sehir_id SET DEFAULT nextval('public.sehir_sehir_id_seq'::regclass);
 =   ALTER TABLE public.sehir ALTER COLUMN sehir_id DROP DEFAULT;
       public          postgres    false    219    218         �
           2604    49236    yorum yorumid    DEFAULT     n   ALTER TABLE ONLY public.yorum ALTER COLUMN yorumid SET DEFAULT nextval('public.yorum_yorumid_seq'::regclass);
 <   ALTER TABLE public.yorum ALTER COLUMN yorumid DROP DEFAULT;
       public          postgres    false    221    220         `          0    49162    arac 
   TABLE DATA           p   COPY public.arac (aracid, plaka, marka, model, motor, yil, kilometre, yakit, vites, firmaid, fiyat) FROM stdin;
    public          postgres    false    202       2912.dat b          0    49167    document 
   TABLE DATA           D   COPY public.document (id, filepath, filename, filetype) FROM stdin;
    public          postgres    false    204       2914.dat d          0    49175    firma 
   TABLE DATA           N   COPY public.firma (firmaid, adi, telefon, email, adres, sehir_id) FROM stdin;
    public          postgres    false    206       2916.dat f          0    49183    firma_sehir 
   TABLE DATA           H   COPY public.firma_sehir (firmaid, sehir_id, firma_sehir_id) FROM stdin;
    public          postgres    false    208       2918.dat h          0    49188    grup 
   TABLE DATA           /   COPY public.grup (grupid, grupadi) FROM stdin;
    public          postgres    false    210       2920.dat j          0    49193 
   hasarkaydi 
   TABLE DATA           U   COPY public.hasarkaydi (hasarid, aracid, boya, cizik, degisim, aciklama) FROM stdin;
    public          postgres    false    212       2922.dat l          0    49201 	   kullanici 
   TABLE DATA           d   COPY public.kullanici (kullaniciid, email, kullaniciadi, sifre, grupid, telefon, adres) FROM stdin;
    public          postgres    false    214       2924.dat n          0    49206    rezervasyon 
   TABLE DATA           Z   COPY public.rezervasyon (rezervasyonid, aracid, kullaniciid, aciklama, tarih) FROM stdin;
    public          postgres    false    216       2926.dat p          0    49214    sehir 
   TABLE DATA           .   COPY public.sehir (sehir_id, adi) FROM stdin;
    public          postgres    false    218       2928.dat r          0    49219    yorum 
   TABLE DATA           D   COPY public.yorum (yorumid, kullaniciid, aracid, yorum) FROM stdin;
    public          postgres    false    220       2930.dat �           0    0    arac_aracid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.arac_aracid_seq', 123, true);
          public          postgres    false    203         �           0    0    document_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.document_id_seq', 1, true);
          public          postgres    false    205         �           0    0    firma_firmaid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.firma_firmaid_seq', 27, true);
          public          postgres    false    207         �           0    0    firma_sehir_firma_sehir_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.firma_sehir_firma_sehir_id_seq', 19, true);
          public          postgres    false    209         �           0    0    grup_grupid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.grup_grupid_seq', 6, true);
          public          postgres    false    211         �           0    0    hasarkaydi_hasarid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.hasarkaydi_hasarid_seq', 21, true);
          public          postgres    false    213         �           0    0    kullanici_kullaniciid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.kullanici_kullaniciid_seq', 9, true);
          public          postgres    false    215         �           0    0    rezervasyon_rezervasyonid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.rezervasyon_rezervasyonid_seq', 4, true);
          public          postgres    false    217         �           0    0    sehir_sehir_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sehir_sehir_id_seq', 23, true);
          public          postgres    false    219         �           0    0    yorum_yorumid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.yorum_yorumid_seq', 10, true);
          public          postgres    false    221         �
           2606    49238    arac arac_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT arac_pkey PRIMARY KEY (aracid);
 8   ALTER TABLE ONLY public.arac DROP CONSTRAINT arac_pkey;
       public            postgres    false    202         �
           2606    49240    document document_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.document DROP CONSTRAINT document_pkey;
       public            postgres    false    204         �
           2606    49242    firma firma_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.firma
    ADD CONSTRAINT firma_pkey PRIMARY KEY (firmaid);
 :   ALTER TABLE ONLY public.firma DROP CONSTRAINT firma_pkey;
       public            postgres    false    206         �
           2606    49244    firma_sehir firma_sehir_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT firma_sehir_pkey PRIMARY KEY (firma_sehir_id);
 F   ALTER TABLE ONLY public.firma_sehir DROP CONSTRAINT firma_sehir_pkey;
       public            postgres    false    208         �
           2606    49246    grup grup_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.grup
    ADD CONSTRAINT grup_pkey PRIMARY KEY (grupid);
 8   ALTER TABLE ONLY public.grup DROP CONSTRAINT grup_pkey;
       public            postgres    false    210         �
           2606    49248    hasarkaydi hasarkaydi_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.hasarkaydi
    ADD CONSTRAINT hasarkaydi_pkey PRIMARY KEY (hasarid);
 D   ALTER TABLE ONLY public.hasarkaydi DROP CONSTRAINT hasarkaydi_pkey;
       public            postgres    false    212         �
           2606    49250    kullanici kullanici_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY (kullaniciid);
 B   ALTER TABLE ONLY public.kullanici DROP CONSTRAINT kullanici_pkey;
       public            postgres    false    214         �
           2606    49252    rezervasyon rezervasyon_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_pkey PRIMARY KEY (rezervasyonid);
 F   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT rezervasyon_pkey;
       public            postgres    false    216         �
           2606    49254    sehir sehir_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sehir
    ADD CONSTRAINT sehir_pkey PRIMARY KEY (sehir_id);
 :   ALTER TABLE ONLY public.sehir DROP CONSTRAINT sehir_pkey;
       public            postgres    false    218         �
           2606    49256    yorum yorum_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_pkey PRIMARY KEY (yorumid);
 :   ALTER TABLE ONLY public.yorum DROP CONSTRAINT yorum_pkey;
       public            postgres    false    220         �
           2606    49257    arac arac_firmaid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.arac
    ADD CONSTRAINT arac_firmaid_fkey FOREIGN KEY (firmaid) REFERENCES public.firma(firmaid) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.arac DROP CONSTRAINT arac_firmaid_fkey;
       public          postgres    false    206    202    2761         �
           2606    49262    firma_sehir firmaid    FK CONSTRAINT     �   ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT firmaid FOREIGN KEY (firmaid) REFERENCES public.firma(firmaid) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.firma_sehir DROP CONSTRAINT firmaid;
       public          postgres    false    2761    208    206         �
           2606    49267 !   hasarkaydi hasarkaydi_aracid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.hasarkaydi
    ADD CONSTRAINT hasarkaydi_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.hasarkaydi DROP CONSTRAINT hasarkaydi_aracid_fkey;
       public          postgres    false    212    2757    202         �
           2606    49272    kullanici kullanici_grupid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_grupid_fkey FOREIGN KEY (grupid) REFERENCES public.grup(grupid) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.kullanici DROP CONSTRAINT kullanici_grupid_fkey;
       public          postgres    false    214    2765    210         �
           2606    49277 #   rezervasyon rezervasyon_aracid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT rezervasyon_aracid_fkey;
       public          postgres    false    216    2757    202         �
           2606    49282 (   rezervasyon rezervasyon_kullaniciid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_kullaniciid_fkey FOREIGN KEY (kullaniciid) REFERENCES public.kullanici(kullaniciid) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.rezervasyon DROP CONSTRAINT rezervasyon_kullaniciid_fkey;
       public          postgres    false    2769    216    214         �
           2606    49287    firma sehir_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.firma
    ADD CONSTRAINT sehir_id FOREIGN KEY (sehir_id) REFERENCES public.sehir(sehir_id) ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.firma DROP CONSTRAINT sehir_id;
       public          postgres    false    218    2773    206         �
           2606    49292    firma_sehir sehir_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT sehir_id FOREIGN KEY (sehir_id) REFERENCES public.sehir(sehir_id) ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.firma_sehir DROP CONSTRAINT sehir_id;
       public          postgres    false    218    2773    208         �
           2606    49297    yorum yorum_aracid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.yorum DROP CONSTRAINT yorum_aracid_fkey;
       public          postgres    false    220    202    2757         �
           2606    49302    yorum yorum_kullaniciid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_kullaniciid_fkey FOREIGN KEY (kullaniciid) REFERENCES public.kullanici(kullaniciid) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.yorum DROP CONSTRAINT yorum_kullaniciid_fkey;
       public          postgres    false    214    220    2769                                                                                                                                                                                                                       2912.dat                                                                                            0000600 0004000 0002000 00000000352 14002001757 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	06 D 0972	Range	Rover	2	2017	20000	Benzin	Manuel	1	300
2	34 NBG 72	Toyata 	Coralla	1	2014	72000	Dizel	Otomatik	2	150
3	44 ABC 33	Bmw	i8	3	2018	13213	Benzin	Manuel	3	250
4	06 FEY 06	Nissan	Micra	1	2015	10000	Benzin	Manuel	5	150
\.


                                                                                                                                                                                                                                                                                      2914.dat                                                                                            0000600 0004000 0002000 00000000005 14002001757 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           2916.dat                                                                                            0000600 0004000 0002000 00000000401 14002001757 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	feyzaoto	55555555	feyza@	baglarbasi mh	10
2	suedaoto	456321987	sueda@gmail	goncagul sok	13
3	keremoto	99999999	keremahmet@gmail	kecioren	12
4	yildizcar	19741974	yildiz@hotmail.com	kalaba mah.	22
5	mehmet	03030101	mehmetbdk@gmail.com	temelli sokak	23
\.


                                                                                                                                                                                                                                                               2918.dat                                                                                            0000600 0004000 0002000 00000000032 14002001757 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	10	1
2	22	2
3	12	3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      2920.dat                                                                                            0000600 0004000 0002000 00000000027 14002001757 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Admin
3	Musteri
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         2922.dat                                                                                            0000600 0004000 0002000 00000000101 14002001757 0014234 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3	var	yok	yok	var
2	1	yok	var	yok	var
3	2	var	yok	var	var
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               2924.dat                                                                                            0000600 0004000 0002000 00000000226 14002001757 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	admin	4486	1	admin	admin
2	feyzabudaknet	feyza	44	3	159753648	erdogan sokak 13/9
3	sueda	nur	060606	3	05056547893	barıs mah.barıs sok.
\.


                                                                                                                                                                                                                                                                                                                                                                          2926.dat                                                                                            0000600 0004000 0002000 00000000061 14002001757 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	2	kira	2020-10-12
2	3	3	ayir	2020-10-13
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                               2928.dat                                                                                            0000600 0004000 0002000 00000000103 14002001757 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        12	Malatya
13	Iğdır
21	Adiyaman
22	Adana
23	Konya
10	Ankara
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                             2930.dat                                                                                            0000600 0004000 0002000 00000000053 14002001757 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	2	memnun kaldık
2	1	3	kötüydü
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     restore.sql                                                                                         0000600 0004000 0002000 00000045620 14002001757 0015367 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 13.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "RentACarWeb";
--
-- Name: RentACarWeb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "RentACarWeb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';


ALTER DATABASE "RentACarWeb" OWNER TO postgres;

\connect "RentACarWeb"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: arac; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arac (
    aracid integer NOT NULL,
    plaka character varying(15) NOT NULL,
    marka character varying(20) NOT NULL,
    model character varying(20) NOT NULL,
    motor double precision,
    yil integer,
    kilometre integer,
    yakit character varying(8),
    vites character varying(20),
    firmaid integer,
    fiyat integer
);


ALTER TABLE public.arac OWNER TO postgres;

--
-- Name: arac_aracid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.arac_aracid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.arac_aracid_seq OWNER TO postgres;

--
-- Name: arac_aracid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.arac_aracid_seq OWNED BY public.arac.aracid;


--
-- Name: document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.document (
    id integer NOT NULL,
    filepath text,
    filename text,
    filetype text
);


ALTER TABLE public.document OWNER TO postgres;

--
-- Name: document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_id_seq OWNER TO postgres;

--
-- Name: document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.document_id_seq OWNED BY public.document.id;


--
-- Name: firma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.firma (
    firmaid integer NOT NULL,
    adi character varying(20),
    telefon character varying(20),
    email character varying(20),
    adres character varying(500),
    sehir_id integer
);


ALTER TABLE public.firma OWNER TO postgres;

--
-- Name: firma_firmaid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.firma_firmaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.firma_firmaid_seq OWNER TO postgres;

--
-- Name: firma_firmaid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.firma_firmaid_seq OWNED BY public.firma.firmaid;


--
-- Name: firma_sehir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.firma_sehir (
    firmaid integer,
    sehir_id integer,
    firma_sehir_id integer NOT NULL
);


ALTER TABLE public.firma_sehir OWNER TO postgres;

--
-- Name: firma_sehir_firma_sehir_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.firma_sehir_firma_sehir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.firma_sehir_firma_sehir_id_seq OWNER TO postgres;

--
-- Name: firma_sehir_firma_sehir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.firma_sehir_firma_sehir_id_seq OWNED BY public.firma_sehir.firma_sehir_id;


--
-- Name: grup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grup (
    grupid integer NOT NULL,
    grupadi character varying(25)
);


ALTER TABLE public.grup OWNER TO postgres;

--
-- Name: grup_grupid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.grup_grupid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grup_grupid_seq OWNER TO postgres;

--
-- Name: grup_grupid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.grup_grupid_seq OWNED BY public.grup.grupid;


--
-- Name: hasarkaydi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hasarkaydi (
    hasarid integer NOT NULL,
    aracid integer,
    boya character varying(5),
    cizik character varying(5),
    degisim character varying(5),
    aciklama character varying(1000)
);


ALTER TABLE public.hasarkaydi OWNER TO postgres;

--
-- Name: hasarkaydi_hasarid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hasarkaydi_hasarid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hasarkaydi_hasarid_seq OWNER TO postgres;

--
-- Name: hasarkaydi_hasarid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hasarkaydi_hasarid_seq OWNED BY public.hasarkaydi.hasarid;


--
-- Name: kullanici; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kullanici (
    kullaniciid integer NOT NULL,
    email character varying(20),
    kullaniciadi character varying(20),
    sifre character varying(20),
    grupid integer,
    telefon character varying(20),
    adres character varying(20)
);


ALTER TABLE public.kullanici OWNER TO postgres;

--
-- Name: kullanici_kullaniciid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kullanici_kullaniciid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kullanici_kullaniciid_seq OWNER TO postgres;

--
-- Name: kullanici_kullaniciid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kullanici_kullaniciid_seq OWNED BY public.kullanici.kullaniciid;


--
-- Name: rezervasyon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rezervasyon (
    rezervasyonid integer NOT NULL,
    aracid integer,
    kullaniciid integer,
    aciklama character varying(1000),
    tarih date
);


ALTER TABLE public.rezervasyon OWNER TO postgres;

--
-- Name: rezervasyon_rezervasyonid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rezervasyon_rezervasyonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rezervasyon_rezervasyonid_seq OWNER TO postgres;

--
-- Name: rezervasyon_rezervasyonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rezervasyon_rezervasyonid_seq OWNED BY public.rezervasyon.rezervasyonid;


--
-- Name: sehir; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sehir (
    sehir_id integer NOT NULL,
    adi character varying(20)
);


ALTER TABLE public.sehir OWNER TO postgres;

--
-- Name: sehir_sehir_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sehir_sehir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sehir_sehir_id_seq OWNER TO postgres;

--
-- Name: sehir_sehir_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sehir_sehir_id_seq OWNED BY public.sehir.sehir_id;


--
-- Name: yorum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.yorum (
    yorumid integer NOT NULL,
    kullaniciid integer,
    aracid integer,
    yorum character varying(1000)
);


ALTER TABLE public.yorum OWNER TO postgres;

--
-- Name: yorum_yorumid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.yorum_yorumid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.yorum_yorumid_seq OWNER TO postgres;

--
-- Name: yorum_yorumid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.yorum_yorumid_seq OWNED BY public.yorum.yorumid;


--
-- Name: arac aracid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arac ALTER COLUMN aracid SET DEFAULT nextval('public.arac_aracid_seq'::regclass);


--
-- Name: document id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document ALTER COLUMN id SET DEFAULT nextval('public.document_id_seq'::regclass);


--
-- Name: firma firmaid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma ALTER COLUMN firmaid SET DEFAULT nextval('public.firma_firmaid_seq'::regclass);


--
-- Name: firma_sehir firma_sehir_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma_sehir ALTER COLUMN firma_sehir_id SET DEFAULT nextval('public.firma_sehir_firma_sehir_id_seq'::regclass);


--
-- Name: grup grupid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grup ALTER COLUMN grupid SET DEFAULT nextval('public.grup_grupid_seq'::regclass);


--
-- Name: hasarkaydi hasarid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasarkaydi ALTER COLUMN hasarid SET DEFAULT nextval('public.hasarkaydi_hasarid_seq'::regclass);


--
-- Name: kullanici kullaniciid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanici ALTER COLUMN kullaniciid SET DEFAULT nextval('public.kullanici_kullaniciid_seq'::regclass);


--
-- Name: rezervasyon rezervasyonid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rezervasyon ALTER COLUMN rezervasyonid SET DEFAULT nextval('public.rezervasyon_rezervasyonid_seq'::regclass);


--
-- Name: sehir sehir_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sehir ALTER COLUMN sehir_id SET DEFAULT nextval('public.sehir_sehir_id_seq'::regclass);


--
-- Name: yorum yorumid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum ALTER COLUMN yorumid SET DEFAULT nextval('public.yorum_yorumid_seq'::regclass);


--
-- Data for Name: arac; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.arac (aracid, plaka, marka, model, motor, yil, kilometre, yakit, vites, firmaid, fiyat) FROM stdin;
\.
COPY public.arac (aracid, plaka, marka, model, motor, yil, kilometre, yakit, vites, firmaid, fiyat) FROM '$$PATH$$/2912.dat';

--
-- Data for Name: document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.document (id, filepath, filename, filetype) FROM stdin;
\.
COPY public.document (id, filepath, filename, filetype) FROM '$$PATH$$/2914.dat';

--
-- Data for Name: firma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.firma (firmaid, adi, telefon, email, adres, sehir_id) FROM stdin;
\.
COPY public.firma (firmaid, adi, telefon, email, adres, sehir_id) FROM '$$PATH$$/2916.dat';

--
-- Data for Name: firma_sehir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.firma_sehir (firmaid, sehir_id, firma_sehir_id) FROM stdin;
\.
COPY public.firma_sehir (firmaid, sehir_id, firma_sehir_id) FROM '$$PATH$$/2918.dat';

--
-- Data for Name: grup; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grup (grupid, grupadi) FROM stdin;
\.
COPY public.grup (grupid, grupadi) FROM '$$PATH$$/2920.dat';

--
-- Data for Name: hasarkaydi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hasarkaydi (hasarid, aracid, boya, cizik, degisim, aciklama) FROM stdin;
\.
COPY public.hasarkaydi (hasarid, aracid, boya, cizik, degisim, aciklama) FROM '$$PATH$$/2922.dat';

--
-- Data for Name: kullanici; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kullanici (kullaniciid, email, kullaniciadi, sifre, grupid, telefon, adres) FROM stdin;
\.
COPY public.kullanici (kullaniciid, email, kullaniciadi, sifre, grupid, telefon, adres) FROM '$$PATH$$/2924.dat';

--
-- Data for Name: rezervasyon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rezervasyon (rezervasyonid, aracid, kullaniciid, aciklama, tarih) FROM stdin;
\.
COPY public.rezervasyon (rezervasyonid, aracid, kullaniciid, aciklama, tarih) FROM '$$PATH$$/2926.dat';

--
-- Data for Name: sehir; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sehir (sehir_id, adi) FROM stdin;
\.
COPY public.sehir (sehir_id, adi) FROM '$$PATH$$/2928.dat';

--
-- Data for Name: yorum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.yorum (yorumid, kullaniciid, aracid, yorum) FROM stdin;
\.
COPY public.yorum (yorumid, kullaniciid, aracid, yorum) FROM '$$PATH$$/2930.dat';

--
-- Name: arac_aracid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.arac_aracid_seq', 123, true);


--
-- Name: document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.document_id_seq', 1, true);


--
-- Name: firma_firmaid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.firma_firmaid_seq', 27, true);


--
-- Name: firma_sehir_firma_sehir_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.firma_sehir_firma_sehir_id_seq', 19, true);


--
-- Name: grup_grupid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.grup_grupid_seq', 6, true);


--
-- Name: hasarkaydi_hasarid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hasarkaydi_hasarid_seq', 21, true);


--
-- Name: kullanici_kullaniciid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kullanici_kullaniciid_seq', 9, true);


--
-- Name: rezervasyon_rezervasyonid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rezervasyon_rezervasyonid_seq', 4, true);


--
-- Name: sehir_sehir_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sehir_sehir_id_seq', 23, true);


--
-- Name: yorum_yorumid_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.yorum_yorumid_seq', 10, true);


--
-- Name: arac arac_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arac
    ADD CONSTRAINT arac_pkey PRIMARY KEY (aracid);


--
-- Name: document document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (id);


--
-- Name: firma firma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma
    ADD CONSTRAINT firma_pkey PRIMARY KEY (firmaid);


--
-- Name: firma_sehir firma_sehir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT firma_sehir_pkey PRIMARY KEY (firma_sehir_id);


--
-- Name: grup grup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grup
    ADD CONSTRAINT grup_pkey PRIMARY KEY (grupid);


--
-- Name: hasarkaydi hasarkaydi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasarkaydi
    ADD CONSTRAINT hasarkaydi_pkey PRIMARY KEY (hasarid);


--
-- Name: kullanici kullanici_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_pkey PRIMARY KEY (kullaniciid);


--
-- Name: rezervasyon rezervasyon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_pkey PRIMARY KEY (rezervasyonid);


--
-- Name: sehir sehir_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sehir
    ADD CONSTRAINT sehir_pkey PRIMARY KEY (sehir_id);


--
-- Name: yorum yorum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_pkey PRIMARY KEY (yorumid);


--
-- Name: arac arac_firmaid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arac
    ADD CONSTRAINT arac_firmaid_fkey FOREIGN KEY (firmaid) REFERENCES public.firma(firmaid) ON DELETE CASCADE;


--
-- Name: firma_sehir firmaid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT firmaid FOREIGN KEY (firmaid) REFERENCES public.firma(firmaid) ON DELETE CASCADE;


--
-- Name: hasarkaydi hasarkaydi_aracid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hasarkaydi
    ADD CONSTRAINT hasarkaydi_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;


--
-- Name: kullanici kullanici_grupid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kullanici
    ADD CONSTRAINT kullanici_grupid_fkey FOREIGN KEY (grupid) REFERENCES public.grup(grupid) ON DELETE CASCADE;


--
-- Name: rezervasyon rezervasyon_aracid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;


--
-- Name: rezervasyon rezervasyon_kullaniciid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rezervasyon
    ADD CONSTRAINT rezervasyon_kullaniciid_fkey FOREIGN KEY (kullaniciid) REFERENCES public.kullanici(kullaniciid) ON DELETE CASCADE;


--
-- Name: firma sehir_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma
    ADD CONSTRAINT sehir_id FOREIGN KEY (sehir_id) REFERENCES public.sehir(sehir_id) ON DELETE CASCADE;


--
-- Name: firma_sehir sehir_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.firma_sehir
    ADD CONSTRAINT sehir_id FOREIGN KEY (sehir_id) REFERENCES public.sehir(sehir_id) ON DELETE CASCADE;


--
-- Name: yorum yorum_aracid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_aracid_fkey FOREIGN KEY (aracid) REFERENCES public.arac(aracid) ON DELETE CASCADE;


--
-- Name: yorum yorum_kullaniciid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.yorum
    ADD CONSTRAINT yorum_kullaniciid_fkey FOREIGN KEY (kullaniciid) REFERENCES public.kullanici(kullaniciid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                