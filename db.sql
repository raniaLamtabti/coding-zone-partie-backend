--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)

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
-- Name: answer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answer (
    id bigint NOT NULL,
    content character varying(255) NOT NULL,
    is_correct boolean NOT NULL,
    question_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.answer OWNER TO postgres;

--
-- Name: answer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answer_id_seq OWNER TO postgres;

--
-- Name: answer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answer_id_seq OWNED BY public.answer.id;


--
-- Name: question; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question (
    id bigint NOT NULL,
    content character varying(255) NOT NULL,
    time_to_live integer NOT NULL,
    score integer NOT NULL,
    test_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.question OWNER TO postgres;

--
-- Name: question_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_id_seq OWNER TO postgres;

--
-- Name: question_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;


--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id bigint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_id_seq OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- Name: stuff; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stuff (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    description text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.stuff OWNER TO postgres;

--
-- Name: stuff_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stuff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stuff_id_seq OWNER TO postgres;

--
-- Name: stuff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stuff_id_seq OWNED BY public.stuff.id;


--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    test_category_id bigint NOT NULL,
    start_time timestamp without time zone DEFAULT now(),
    end_time timestamp without time zone DEFAULT now(),
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Name: test_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_category (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.test_category OWNER TO postgres;

--
-- Name: test_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_category_id_seq OWNER TO postgres;

--
-- Name: test_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_category_id_seq OWNED BY public.test_category.id;


--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_id_seq OWNER TO postgres;

--
-- Name: test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_id_seq OWNED BY public.test.id;


--
-- Name: test_result; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_result (
    id bigint NOT NULL,
    test_student_id bigint NOT NULL,
    score integer NOT NULL,
    question_id bigint NOT NULL,
    answer_id bigint NOT NULL,
    test_id bigint NOT NULL,
    reponse_time integer NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.test_result OWNER TO postgres;

--
-- Name: test_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_result_id_seq OWNER TO postgres;

--
-- Name: test_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_result_id_seq OWNED BY public.test_result.id;


--
-- Name: test_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test_student (
    id bigint NOT NULL,
    test_id bigint NOT NULL,
    student_id bigint NOT NULL,
    access_token character varying(255) NOT NULL,
    is_take boolean NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.test_student OWNER TO postgres;

--
-- Name: test_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.test_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_student_id_seq OWNER TO postgres;

--
-- Name: test_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.test_student_id_seq OWNED BY public.test_student.id;


--
-- Name: answer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer ALTER COLUMN id SET DEFAULT nextval('public.answer_id_seq'::regclass);


--
-- Name: question id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- Name: stuff id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stuff ALTER COLUMN id SET DEFAULT nextval('public.stuff_id_seq'::regclass);


--
-- Name: test id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test ALTER COLUMN id SET DEFAULT nextval('public.test_id_seq'::regclass);


--
-- Name: test_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_category ALTER COLUMN id SET DEFAULT nextval('public.test_category_id_seq'::regclass);


--
-- Name: test_result id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result ALTER COLUMN id SET DEFAULT nextval('public.test_result_id_seq'::regclass);


--
-- Name: test_student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_student ALTER COLUMN id SET DEFAULT nextval('public.test_student_id_seq'::regclass);


--
-- Data for Name: answer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.answer (id, content, is_correct, question_id, created_at, updated_at) VALUES (1, 'answer', true, 1, '2022-01-24 12:13:12.525836', '2022-01-24 12:13:12.525836');
INSERT INTO public.answer (id, content, is_correct, question_id, created_at, updated_at) VALUES (-6739328612283170660, 'setCorrectsetCorrectsetCorrect', true, 4509411772764995850, '2022-01-25 15:37:57.955741', '2022-01-25 15:37:57.955741');
INSERT INTO public.answer (id, content, is_correct, question_id, created_at, updated_at) VALUES (1848073511377913573, 'ffffffffffffff', false, 4509411772764995850, '2022-01-25 15:37:57.971281', '2022-01-25 15:37:57.971281');
INSERT INTO public.answer (id, content, is_correct, question_id, created_at, updated_at) VALUES (-4204807695580378041, 'min="0"', false, 4509411772764995850, '2022-01-25 15:37:57.985805', '2022-01-25 15:37:57.985805');


--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (1, '==questio №1', 2, 0, 1, '2022-01-24 12:11:40.106423', '2022-01-24 12:11:40.106423');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (-3114550121156950542, 'hhhhhh', 0, 2, -7444335711207010471, '2022-01-25 11:34:57.090412', '2022-01-25 11:34:57.090412');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (8440135885106204100, 'hhhhhh', 0, 2, -7444335711207010471, '2022-01-25 11:35:12.247811', '2022-01-25 11:35:12.247811');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (-8708666225636259249, 'hhhhhh', 0, 2, -7444335711207010471, '2022-01-25 11:42:42.661039', '2022-01-25 11:42:42.661039');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (-6970032579738187238, 'hhhhhh', 2, 2, -2677517090018343136, '2022-01-25 11:42:59.774849', '2022-01-25 11:42:59.774849');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (-7650521476479630007, 'qw', 4, 4, 9025665925354636727, '2022-01-25 11:46:07.497353', '2022-01-25 11:46:07.497353');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (3008180188926856231, 'qw', 4, 4, 9025665925354636727, '2022-01-25 11:50:56.01048', '2022-01-25 11:50:56.01048');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (6120219704738531834, 'qw', 4, 4, 9025665925354636727, '2022-01-25 11:51:56.681273', '2022-01-25 11:51:56.681273');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (-7983340842462526110, 'hhhhhh', 3, 2, 1, '2022-01-25 11:52:38.399196', '2022-01-25 11:52:38.399196');
INSERT INTO public.question (id, content, time_to_live, score, test_id, created_at, updated_at) VALUES (4509411772764995850, 'hhhhhh', 1, 3, 1, '2022-01-25 15:37:57.934856', '2022-01-25 15:37:57.934856');


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.student (id, first_name, last_name, email, created_at, updated_at) VALUES (1, 'Mohammed', 'elkabli', 'student@email.com', '2022-01-24 12:02:55.098565', '2022-01-24 12:02:55.098565');


--
-- Data for Name: stuff; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stuff (id, name, email, password, description, created_at, updated_at) VALUES (2, 'admin', 'melkabli05@gmail.com', '123456', 'h', '2022-01-23 13:20:49.743551+01', '2022-01-23 13:20:49.743551+01');


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (1, 'test1', NULL, 1, '2022-01-24 12:04:39.30814', '2022-01-24 12:04:39.30814', '2022-01-24 12:04:39.30814', '2022-01-24 12:04:39.30814');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-2677517090018343136, 'description', 'description', 1, '2022-01-25 10:00:10.697975', '2022-01-25 10:00:10.697975', '2022-01-25 10:00:10.697975', '2022-01-25 10:00:10.697975');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-8867744511999654162, 'description', 'description', 1, '2022-01-25 10:02:54.857885', '2022-01-25 10:02:54.857885', '2022-01-25 10:02:54.857885', '2022-01-25 10:02:54.857885');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (1422386564323758033, 'coding zone', 'input', 1, '2022-01-25 10:13:27.209909', '2022-01-25 10:13:27.209909', '2022-01-25 10:13:27.209909', '2022-01-25 10:13:27.209909');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-4868991138666885183, 'input', 'inputinputinput', 1, '2022-01-25 10:15:06.709756', '2022-01-25 10:15:06.709756', '2022-01-25 10:15:06.709756', '2022-01-25 10:15:06.709756');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (9025665925354636727, 'yhgc', 'yhgc', 1, '2022-01-25 10:34:04.582201', '2022-01-25 10:34:04.582201', '2022-01-25 10:34:04.582201', '2022-01-25 10:34:04.582201');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (6530676468336054016, 'admin', 'isCorrectisCorrectisCorrect', 1, '2022-01-25 10:42:06.29146', '2022-01-25 10:42:06.29146', '2022-01-25 10:42:06.29146', '2022-01-25 10:42:06.29146');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (5201986614580037560, 'admin', 'test', 1, '2022-01-25 10:49:54.82732', '2022-01-25 10:49:54.82732', '2022-01-25 10:49:54.82732', '2022-01-25 10:49:54.82732');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-4207720478100863760, 'description', 'DAOFactory.getQuestionDAO().create(question);
        // we have 3 answers for one question so we need to create 3 answers
        for (int i = 0; i < 3; i++) {
            Answer answer = new Answer();
            answer.setContent(request.getParameter("answer" + i));
            answer.setIsCorrect("isCorrect" + i);
            answer.setQuestion(question);
            //DAOFactory.getAnswerDAO().create(answer);
            System.out.println(answer );
        }
', 1, '2022-01-25 10:53:54.018458', '2022-01-25 10:53:54.018458', '2022-01-25 10:53:54.018458', '2022-01-25 10:53:54.018458');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (8396751703710321587, 'admin', 'isCorrect', 1, '2022-01-25 11:07:53.143177', '2022-01-25 11:07:53.143177', '2022-01-25 11:07:53.143177', '2022-01-25 11:07:53.143177');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-6606703404898957541, 'coding zone', 'is_correct1is_correct1', 1, '2022-01-25 11:14:33.299963', '2022-01-25 11:14:33.299963', '2022-01-25 11:14:33.299963', '2022-01-25 11:14:33.299963');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-7444335711207010471, 'admin', 'ls', 1, '2022-01-25 11:17:35.269043', '2022-01-25 11:17:35.269043', '2022-01-25 11:17:35.269043', '2022-01-25 11:17:35.269043');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (6823724211614662854, 'admin', 'test', 1, '2022-01-25 11:24:28.901723', '2022-01-25 11:24:28.901723', '2022-01-25 11:24:28.901723', '2022-01-25 11:24:28.901723');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (-3027276440540525760, 'coding zone', 'min=', 1, '2022-01-25 11:30:00.527201', '2022-01-25 11:30:00.527201', '2022-01-25 11:30:00.527201', '2022-01-25 11:30:00.527201');
INSERT INTO public.test (id, name, description, test_category_id, start_time, end_time, created_at, updated_at) VALUES (543071221105315300, 'admin', 'setCorrect', 1, '2022-01-25 11:52:21.027427', '2022-01-25 11:52:21.027427', '2022-01-25 11:52:21.027427', '2022-01-25 11:52:21.027427');


--
-- Data for Name: test_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.test_category (id, name, created_at, updated_at) VALUES (1, 'test_category_1', '2022-01-23 12:23:44.254042', '2022-01-23 12:23:44.254042');


--
-- Data for Name: test_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.test_result (id, test_student_id, score, question_id, answer_id, test_id, reponse_time, created_at, updated_at) VALUES (1, 1, 0, 1, 1, 1, 1, '2022-01-24 13:07:17.388038', '2022-01-24 13:07:17.388038');


--
-- Data for Name: test_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.test_student (id, test_id, student_id, access_token, is_take, created_at, updated_at) VALUES (1, 1, 1, 'access_token', true, '2022-01-24 12:07:32.230592', '2022-01-24 12:07:32.230592');


--
-- Name: answer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answer_id_seq', 1, false);


--
-- Name: question_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_id_seq', 1, false);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- Name: stuff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stuff_id_seq', 2, true);


--
-- Name: test_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_category_id_seq', 1, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_id_seq', 1, false);


--
-- Name: test_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_result_id_seq', 1, true);


--
-- Name: test_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.test_student_id_seq', 1, false);


--
-- Name: answer answer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (id);


--
-- Name: question question_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: stuff stuff_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stuff
    ADD CONSTRAINT stuff_pkey PRIMARY KEY (id);


--
-- Name: test_category test_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_category
    ADD CONSTRAINT test_category_pkey PRIMARY KEY (id);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);


--
-- Name: test_result test_result_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT test_result_pkey PRIMARY KEY (id);


--
-- Name: test_student test_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_pkey PRIMARY KEY (id);


--
-- Name: answer answer_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.question(id);


--
-- Name: question question_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.test(id);


--
-- Name: test_result test_result_test_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_result
    ADD CONSTRAINT test_result_test_student_id_fkey FOREIGN KEY (test_student_id) REFERENCES public.test_student(id);


--
-- Name: test_student test_student_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- Name: test_student test_student_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.test(id);


--
-- Name: test test_test_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_test_category_id_fkey FOREIGN KEY (test_category_id) REFERENCES public.test_category(id);


--
-- PostgreSQL database dump complete
--

