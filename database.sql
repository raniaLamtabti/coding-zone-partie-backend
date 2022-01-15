PGDMP         ,                 z         
   codingzone     14.1 (Ubuntu 14.1-2.pgdg20.04+1)     14.1 (Ubuntu 14.1-2.pgdg20.04+1) E    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    16432 
   codingzone    DATABASE     _   CREATE DATABASE codingzone WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE codingzone;
                postgres    false            �            1259    16493    answer    TABLE     �   CREATE TABLE public.answer (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    question_id integer NOT NULL,
    is_correct boolean NOT NULL
);
    DROP TABLE public.answer;
       public         heap    postgres    false            �            1259    16492    answer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.answer_id_seq;
       public          postgres    false    220            I           0    0    answer_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.answer_id_seq OWNED BY public.answer.id;
          public          postgres    false    219            �            1259    16481    question    TABLE     �   CREATE TABLE public.question (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    time_to_live integer NOT NULL,
    score integer NOT NULL,
    test_id integer NOT NULL
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16480    question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.question_id_seq;
       public          postgres    false    218            J           0    0    question_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;
          public          postgres    false    217            �            1259    16434    role    TABLE     `   CREATE TABLE public.role (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    16433    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    210            K           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    209            �            1259    16455    student    TABLE     �   CREATE TABLE public.student (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    role_id integer NOT NULL,
    email character varying(255) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16454    student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public          postgres    false    214            L           0    0    student_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;
          public          postgres    false    213            �            1259    16441    stuff    TABLE       CREATE TABLE public.stuff (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    role_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.stuff;
       public         heap    postgres    false            �            1259    16440    stuff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stuff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.stuff_id_seq;
       public          postgres    false    212            M           0    0    stuff_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.stuff_id_seq OWNED BY public.stuff.id;
          public          postgres    false    211            �            1259    16469    test    TABLE     �   CREATE TABLE public.test (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    time_to_live integer NOT NULL,
    score integer NOT NULL,
    stuff_id integer NOT NULL
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    16517    test_answer    TABLE     �   CREATE TABLE public.test_answer (
    id integer NOT NULL,
    test_student_id integer NOT NULL,
    question_id integer NOT NULL,
    answer_id integer NOT NULL
);
    DROP TABLE public.test_answer;
       public         heap    postgres    false            �            1259    16516    test_answer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.test_answer_id_seq;
       public          postgres    false    224            N           0    0    test_answer_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.test_answer_id_seq OWNED BY public.test_answer.id;
          public          postgres    false    223            �            1259    16468    test_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.test_id_seq;
       public          postgres    false    216            O           0    0    test_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;
          public          postgres    false    215            �            1259    16505    test_student    TABLE     �   CREATE TABLE public.test_student (
    id integer NOT NULL,
    test_id integer NOT NULL,
    access_code character varying(255) NOT NULL
);
     DROP TABLE public.test_student;
       public         heap    postgres    false            �            1259    16504    test_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.test_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.test_student_id_seq;
       public          postgres    false    222            P           0    0    test_student_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.test_student_id_seq OWNED BY public.test_student.id;
          public          postgres    false    221            �           2604    16496 	   answer id    DEFAULT     f   ALTER TABLE ONLY public.answer ALTER COLUMN id SET DEFAULT nextval('public.answer_id_seq'::regclass);
 8   ALTER TABLE public.answer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    16484    question id    DEFAULT     j   ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);
 :   ALTER TABLE public.question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16437    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16458 
   student id    DEFAULT     h   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    16444    stuff id    DEFAULT     d   ALTER TABLE ONLY public.stuff ALTER COLUMN id SET DEFAULT nextval('public.stuff_id_seq'::regclass);
 7   ALTER TABLE public.stuff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16472    test id    DEFAULT     b   ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);
 6   ALTER TABLE public.test ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16520    test_answer id    DEFAULT     p   ALTER TABLE ONLY public.test_answer ALTER COLUMN id SET DEFAULT nextval('public.test_answer_id_seq'::regclass);
 =   ALTER TABLE public.test_answer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16508    test_student id    DEFAULT     r   ALTER TABLE ONLY public.test_student ALTER COLUMN id SET DEFAULT nextval('public.test_student_id_seq'::regclass);
 >   ALTER TABLE public.test_student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            >          0    16493    answer 
   TABLE DATA           C   COPY public.answer (id, name, question_id, is_correct) FROM stdin;
    public          postgres    false    220   �L       <          0    16481    question 
   TABLE DATA           J   COPY public.question (id, name, time_to_live, score, test_id) FROM stdin;
    public          postgres    false    218   �L       4          0    16434    role 
   TABLE DATA           (   COPY public.role (id, name) FROM stdin;
    public          postgres    false    210    M       8          0    16455    student 
   TABLE DATA           J   COPY public.student (id, firstname, lastname, role_id, email) FROM stdin;
    public          postgres    false    214   M       6          0    16441    stuff 
   TABLE DATA           R   COPY public.stuff (id, firstname, lastname, role_id, email, password) FROM stdin;
    public          postgres    false    212   :M       :          0    16469    test 
   TABLE DATA           G   COPY public.test (id, name, time_to_live, score, stuff_id) FROM stdin;
    public          postgres    false    216   WM       B          0    16517    test_answer 
   TABLE DATA           R   COPY public.test_answer (id, test_student_id, question_id, answer_id) FROM stdin;
    public          postgres    false    224   tM       @          0    16505    test_student 
   TABLE DATA           @   COPY public.test_student (id, test_id, access_code) FROM stdin;
    public          postgres    false    222   �M       Q           0    0    answer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.answer_id_seq', 1, false);
          public          postgres    false    219            R           0    0    question_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.question_id_seq', 1, false);
          public          postgres    false    217            S           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
          public          postgres    false    209            T           0    0    student_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.student_id_seq', 1, false);
          public          postgres    false    213            U           0    0    stuff_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stuff_id_seq', 1, false);
          public          postgres    false    211            V           0    0    test_answer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.test_answer_id_seq', 1, false);
          public          postgres    false    223            W           0    0    test_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.test_id_seq', 1, false);
          public          postgres    false    215            X           0    0    test_student_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.test_student_id_seq', 1, false);
          public          postgres    false    221            �           2606    16498    answer answer_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pkey;
       public            postgres    false    220            �           2606    16486    question question_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    218            �           2606    16439    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    210            �           2606    16462    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    214            �           2606    16448    stuff stuff_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.stuff DROP CONSTRAINT stuff_pkey;
       public            postgres    false    212            �           2606    16522    test_answer test_answer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.test_answer
    ADD CONSTRAINT test_answer_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.test_answer DROP CONSTRAINT test_answer_pkey;
       public            postgres    false    224            �           2606    16474    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    216            �           2606    16510    test_student test_student_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.test_student DROP CONSTRAINT test_student_pkey;
       public            postgres    false    222            �           2606    16499    answer answer_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(id);
 H   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_question_id_fkey;
       public          postgres    false    220    3224    218            �           2606    16487    question question_test_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.test(id);
 H   ALTER TABLE ONLY public.question DROP CONSTRAINT question_test_id_fkey;
       public          postgres    false    218    3222    216            �           2606    16463    student student_role_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_role_id_fkey;
       public          postgres    false    3216    214    210            �           2606    16449    stuff stuff_role_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);
 B   ALTER TABLE ONLY public.stuff DROP CONSTRAINT stuff_role_id_fkey;
       public          postgres    false    210    3216    212            �           2606    16533 &   test_answer test_answer_answer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_answer
    ADD CONSTRAINT test_answer_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answer(id);
 P   ALTER TABLE ONLY public.test_answer DROP CONSTRAINT test_answer_answer_id_fkey;
       public          postgres    false    3226    224    220            �           2606    16528 (   test_answer test_answer_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_answer
    ADD CONSTRAINT test_answer_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(id);
 R   ALTER TABLE ONLY public.test_answer DROP CONSTRAINT test_answer_question_id_fkey;
       public          postgres    false    224    218    3224            �           2606    16523 ,   test_answer test_answer_test_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_answer
    ADD CONSTRAINT test_answer_test_student_id_fkey FOREIGN KEY (test_student_id) REFERENCES public.test_student(id);
 V   ALTER TABLE ONLY public.test_answer DROP CONSTRAINT test_answer_test_student_id_fkey;
       public          postgres    false    222    224    3228            �           2606    16511 &   test_student test_student_test_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.test(id);
 P   ALTER TABLE ONLY public.test_student DROP CONSTRAINT test_student_test_id_fkey;
       public          postgres    false    216    222    3222            �           2606    16475    test test_stuff_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_stuff_id_fkey FOREIGN KEY (stuff_id) REFERENCES public.stuff(id);
 A   ALTER TABLE ONLY public.test DROP CONSTRAINT test_stuff_id_fkey;
       public          postgres    false    3218    216    212            >      x������ � �      <      x������ � �      4      x������ � �      8      x������ � �      6      x������ � �      :      x������ � �      B      x������ � �      @      x������ � �     