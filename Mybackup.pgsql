--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO postgres;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO postgres;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO postgres;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO postgres;

--
-- Name: charts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.charts (
    id bigint NOT NULL,
    t_date date,
    obj text,
    assess text,
    plan text,
    o_treats character varying,
    subj text,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.charts OWNER TO postgres;

--
-- Name: charts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.charts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.charts_id_seq OWNER TO postgres;

--
-- Name: charts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.charts_id_seq OWNED BY public.charts.id;


--
-- Name: filings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.filings (
    id bigint NOT NULL,
    describe text,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.filings OWNER TO postgres;

--
-- Name: filings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.filings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.filings_id_seq OWNER TO postgres;

--
-- Name: filings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.filings_id_seq OWNED BY public.filings.id;


--
-- Name: patients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patients (
    id bigint NOT NULL,
    v_date date,
    m_stat character varying,
    weight numeric(4,1),
    height numeric(2,1),
    street character varying,
    city character varying,
    state character varying,
    zip character varying,
    cell character varying,
    home character varying,
    work character varying,
    email character varying,
    referred character varying,
    com1 character varying,
    com2 character varying,
    com3 character varying,
    pain_scale character varying,
    d_lost numeric(4,1),
    d_restd numeric(4,1),
    c_onset character varying,
    better character varying,
    worse character varying,
    o_drs character varying,
    o_drs_when date,
    pcp_name character varying,
    hosp character varying,
    h_when date,
    diag_given character varying,
    diag_where character varying,
    aq_b4 character varying,
    aqrist character varying,
    aq_where character varying,
    di_list character varying[] DEFAULT '{}'::character varying[],
    string character varying[] DEFAULT '{}'::character varying[],
    o_dis character varying,
    inj_surg character varying,
    med_taken character varying,
    alcohol character varying,
    tobacco character varying,
    last_prd date,
    preg character varying,
    preg_wks integer,
    regi_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    d_onset date
);


ALTER TABLE public.patients OWNER TO postgres;

--
-- Name: patients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patients_id_seq OWNER TO postgres;

--
-- Name: patients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patients_id_seq OWNED BY public.patients.id;


--
-- Name: regis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regis (
    id bigint NOT NULL,
    last_name character varying,
    first_name character varying,
    init character varying,
    gender character varying,
    dob date,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.regis OWNER TO postgres;

--
-- Name: regis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.regis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regis_id_seq OWNER TO postgres;

--
-- Name: regis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.regis_id_seq OWNED BY public.regis.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(0) without time zone,
    remember_created_at timestamp(0) without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp(0) without time zone,
    last_sign_in_at timestamp(0) without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    role integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: charts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts ALTER COLUMN id SET DEFAULT nextval('public.charts_id_seq'::regclass);


--
-- Name: filings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings ALTER COLUMN id SET DEFAULT nextval('public.filings_id_seq'::regclass);


--
-- Name: patients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients ALTER COLUMN id SET DEFAULT nextval('public.patients_id_seq'::regclass);


--
-- Name: regis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis ALTER COLUMN id SET DEFAULT nextval('public.regis_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
2	image	Filing	1	2	2023-01-30 00:15:54.782252
4	image	Filing	2	4	2023-01-30 00:25:04.781164
6	image	Filing	4	6	2023-02-05 22:38:23.232343
7	image	Filing	5	7	2023-02-05 22:39:16.625283
8	image	Filing	6	8	2023-02-05 22:40:15.18435
9	image	Filing	3	9	2023-02-05 22:41:09.788083
10	image	Filing	7	10	2023-02-05 22:41:58.274266
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
1	e42bq37ucac4hyyetzklzlydqg58	DSC00441.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3917620	gAnNBO2WzhkJdE+xdfs7Ng==	2023-01-30 00:15:26.094537
2	5q31tkm65ugykbxsi1p9nf0buubu	DSC00450.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	4636358	QHB2FDW9J1iqZX1nogTC4A==	2023-01-30 00:15:54.780562
3	2w6tgzge412wiosiykwez1huqqrq	DSC00489.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3731093	qocdWC8Id/f0RffEavkUSA==	2023-01-30 00:24:37.975408
4	mumv955yraptujn0vl5tui7dvslm	DSC00461.JPG	image/jpeg	{"identified":true,"width":2736,"height":3648,"analyzed":true}	local	3131469	azpE6Ct5erYPh0lnHll+8w==	2023-01-30 00:25:04.778482
5	ysxk2d9rf04xea3cg4sflw0a29wp	DSC00419.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	4047827	HzI/ZQyfgyl5QWFh+Ty6Jg==	2023-02-05 22:37:44.439101
6	kc4pt5934a38jk632jz6by3iuvls	DSC00418.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3923471	zqZ+1ptjwNRQCKqWXU2vNw==	2023-02-05 22:38:23.229196
7	pmi45rmz0xopv5ko3j1cfs1wzfj1	DSC00446.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3835114	Z2SV6WFN1/PZGBcZdPvizQ==	2023-02-05 22:39:16.622135
8	wmm3qc6hgsl4agmg7vm89vfsoro1	DSC00478.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	2327435	I+N/C4YVNW3v3FcZSab+9A==	2023-02-05 22:40:15.182258
9	z4y4ji82kdm3v195bsklydski4p5	DSC00515.JPG	image/jpeg	{"identified":true,"width":2736,"height":3648,"analyzed":true}	local	4491442	orqgSOZkpjcuknUpm8L4WA==	2023-02-05 22:41:09.785298
10	g1saa0u3d20zs4hjw3om7ldqqd7t	DSC00382.JPG	image/jpeg	{"identified":true,"width":3648,"height":2736,"analyzed":true}	local	3762197	0r/6aZKDdtr7AneLdPi96Q==	2023-02-05 22:41:58.271374
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2022-12-27 18:46:56.572117	2022-12-27 18:46:56.572117
\.


--
-- Data for Name: charts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.charts (id, t_date, obj, assess, plan, o_treats, subj, regi_id, created_at, updated_at) FROM stdin;
1	2023-01-29	Fever	Covid	Acupuncture	\N	Headache	1	2023-01-29 18:01:34	2023-01-29 18:01:34
3	2023-02-01	Weight loss	Cancer	Chinese medicines	\N	Migraines	5	2023-02-02 02:18:53	2023-02-02 02:18:53
5	2023-02-01	Lost feeling in the face	Multiple sclerosis	Acupuncture, Chinese medicines	\N	Facial numbing	3	2023-02-02 02:25:46	2023-02-02 02:25:46
6	2023-01-24	Leg swollen	Late-stage Arthritis	Acupuncture	\N	Leg joint pain, severe	4	2023-02-02 02:26:39	2023-02-02 02:26:39
8	2023-02-01	Severe stunt	Throat infection	Acupuncture	\N	Insomnia	6	2023-02-02 02:29:13	2023-02-02 02:29:13
9	2023-01-26	Weight loss	Cancer	Chinese medicines	\N	Migraines	5	2023-02-02 02:31:04	2023-02-02 02:31:04
11	2023-01-11	Weight loss	Cancer	Chinese medicines	\N	Acute migraines	5	2023-02-02 02:31:32	2023-02-02 02:32:02
10	2023-01-17	Weight loss	Cancer	Chinese medicines, acupuncture	\N	Acute migraines	5	2023-02-02 02:31:18	2023-02-02 02:32:26
12	2023-01-29	Severe stunt	Throat infection	Acupuncture	\N	Insomnia	6	2023-02-02 02:33:49	2023-02-02 02:33:49
13	2023-01-26	Severe stunt	Throat infection	Acupuncture	\N	Insomnia	6	2023-02-02 02:34:15	2023-02-02 02:34:15
14	2023-01-24	Fever	Stomach virus	Chinese medicines	\N	Severe stomach pain, diarrhea	2	2023-02-02 02:35:30	2023-02-02 02:35:30
16	2023-02-01	Fever	Covid	Acupuncture	\N	Headache	1	2023-02-02 02:37:17	2023-02-02 02:37:17
17	2023-01-17	Fever	Covid	Acupuncture	\N	Headache	1	2023-02-02 02:37:56	2023-02-02 02:37:56
18	2023-01-11	Low fever	Stomach virus	Chinese medicines	\N	Severe stomach pain, diarrhea	2	2023-02-02 02:51:10	2023-02-02 02:51:10
19	2023-01-29	Lost feeling in the face	Multiple sclerosis	Acupuncture, Chinese medicines	\N	Facial numbing	3	2023-02-02 02:52:52	2023-02-02 02:52:52
20	2023-01-24	Lost feeling in the face	Multiple sclerosis	Acupuncture, Chinese medicines	\N	Facial numbing	3	2023-02-02 02:53:23	2023-02-02 02:53:23
21	2023-02-02	Fever	Stomach flu	Acupuncture	\N	Migraines	7	2023-02-03 14:16:17	2023-02-03 14:16:17
22	2023-02-02	No fever	Stomach virus	Chinese medicines	\N	Severe stomach pain, diarrhea	2	2023-02-03 14:17:06	2023-02-03 14:17:06
23	2023-01-26	Fever	Stomach flu	Acupuncture	\N	Migraines	7	2023-02-03 14:17:47	2023-02-03 14:17:47
2	2023-01-26	No fever	Stomach virus	Chinese medicines	\N	Severe stomach pain, diarrhea	2	2023-01-30 00:26:22	2023-02-03 14:18:17
4	2023-02-02	Leg swollen	Late stage Arthritis	Acupuncture	\N	Leg joint pain	4	2023-02-02 02:21:43	2023-02-03 14:19:03
24	2023-01-17	Fever	Stomach flu	Acupuncture	\N	Migraines	7	2023-02-03 14:20:04	2023-02-03 14:20:04
15	2023-01-17	Low fever	Stomach virus	Chinese medicines, acupuncture	\N	Severe stomach pain, diarrhea	2	2023-02-02 02:36:41	2023-02-03 14:20:24
7	2023-01-29	Leg swollen	Late stage Arthritis	Acupuncture	\N	Leg joint pain, severe	4	2023-02-02 02:27:10	2023-02-03 14:21:05
25	2023-01-24	Fever	Covid	Acupuncture	\N	Headache	1	2023-02-03 14:27:45	2023-02-03 14:27:45
26	2023-01-17	Severe stunt	Throat infection	Acupuncture	\N	Insomnia	6	2023-02-03 14:28:19	2023-02-03 14:28:19
27	2023-01-11	Lost feeling in the face	Multiple sclerosis	Acupuncture, Chinese medicines	\N	Facial numbing	3	2023-02-03 14:29:05	2023-02-03 14:29:05
28	2023-01-29	Fatigue	Scoliosis	Acupuncture	\N	Numbing arms and legs	8	2023-02-13 21:58:27	2023-02-13 21:59:18
29	2023-01-26	Fatigue	Scoliosis	Acupuncture	\N	Numbing arms and legs	8	2023-02-13 21:58:39	2023-02-13 21:59:26
\.


--
-- Data for Name: filings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.filings (id, describe, regi_id, created_at, updated_at) FROM stdin;
1	Test	1	2023-01-30 00:15:26	2023-01-30 00:15:54
2	Test	2	2023-01-30 00:24:37	2023-01-30 00:25:04
4	Test	6	2023-02-05 22:38:23	2023-02-05 22:38:23
5	Test	3	2023-02-05 22:39:16	2023-02-05 22:39:16
6	Test	4	2023-02-05 22:40:15	2023-02-05 22:40:15
3	Test	7	2023-02-05 22:37:44	2023-02-05 22:41:09
7	Test	5	2023-02-05 22:41:58	2023-02-05 22:41:58
\.


--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.patients (id, v_date, m_stat, weight, height, street, city, state, zip, cell, home, work, email, referred, com1, com2, com3, pain_scale, d_lost, d_restd, c_onset, better, worse, o_drs, o_drs_when, pcp_name, hosp, h_when, diag_given, diag_where, aq_b4, aqrist, aq_where, di_list, string, o_dis, inj_surg, med_taken, alcohol, tobacco, last_prd, preg, preg_wks, regi_id, created_at, updated_at, d_onset) FROM stdin;
1	2023-01-29	Married	150.0	5.5	123 Main Street	Boomtown	CA	11111	111-111-1111	222-222-2222	333-333-3333	brian@test.com	John Daul	Headache	Fatigue	Stomach pain	9	\N	\N				No	\N	John Daul	No	\N			No			{Hypertension,Seizure,Palpitation}	{}		Head injury	Tramadol			\N	NA	\N	1	2023-01-30 00:14:09	2023-01-30 00:14:09	2023-01-04
2	2023-01-29	Widowed	160.0	5.7	321 Main Street	Watertown	MA	22222	111-111-1111	222-222-2222	333-333-3333	marie@test.com	Jack Dauer	Stomach pain	Diarrhea	Headache	10	\N	\N				No	\N	Jack Dauer	No	\N			No			{Diabetes,Cancer,Frequent_Colds,Excess_Sweating}	{}			Atorvastatin	3 beers / day	1 pack / week	\N	NA	\N	2	2023-01-30 00:24:05	2023-01-30 00:24:05	2023-01-01
3	2023-02-01	Widowed	135.0	5.6	123 Main Street	Boomtown	CA	11111	111-111-1111	222-222-2222		stephen@test.com	John Dauer	Migraines	Facial numbness		8	\N	\N				No	\N	John Dauer	No	\N			No			{Heart_Disease,Chest_Pain_or_Tightness}	{}						\N	NA	\N	5	2023-02-02 02:56:47	2023-02-02 02:56:47	2023-01-29
4	2023-01-25	Married	155.0	5.7	111 Main Street	Watertown	MD	11111	111-111-1111	111-222-222	333-333-3333	mark@test.com	Brian Strong	Insomnia	Weight loss	Headache	7	\N	\N				No	\N	Brain Strong	No	\N			No			{Cancer,Excess_Sweating}	{}						\N	NA	\N	4	2023-02-02 03:00:07	2023-02-02 03:00:07	2023-01-29
5	2023-01-25	Divorced	170.0	5.8	123 Main Street	Freetown	MA	222222	111-111-1111	222-222-2222		jane@test.com	Mark Townie	Shoulder freezing	Diarrhea		8	\N	\N				No	\N	Mark Townie	No	\N			No			{Major_Depression,Anxiety_Disorder}	{}						\N	NA	\N	3	2023-02-02 03:03:11	2023-02-02 03:03:11	2023-01-03
6	2023-01-11	Married	140.0	5.5	123 Market Street	Lowertown	NY	33333	111-111-1111	222-222-2222	333-333-3333	alice@test.com	Adam Jenkin	High fever	Stomach pain	Diarrhea	9	\N	\N				No	\N	Adam Jenkin	No	\N			No			{Post_Traumatic_Stress_Disorder,Bypolar_Disorder}	{}						\N	Yes	16	6	2023-02-02 03:07:17	2023-02-02 03:07:17	2023-01-08
7	2020-11-05	Widowed	135.0	5.6	123 Market Street	Jamestown	CA	12345	111-111-1111	222-222-2222		stephen@test.com	John Dauer	Migraines	Facial numbness		8	\N	\N				No	\N	John Dauer	No	\N			No			{Heart_Disease,Chest_Pain_or_Tightness}	{}						\N	NA	\N	5	2023-02-02 16:56:30	2023-02-02 16:56:30	2023-01-29
8	2021-05-06	Widowed	160.0	5.7	123 Main Street	Jamestown	MA	22222	111-111-1111	222-222-2222	333-333-3333	marie@test.com	Jack Dauer	Stomach pain	Diarrhea	Headache	10	\N	\N				No	\N	Jack Dauer	No	\N			No			{Diabetes,Cancer,Frequent_Colds,Excess_Sweating}	{}			Atorvastatin	3 beers / day	1 pack / week	\N	NA	\N	2	2023-02-02 16:57:57	2023-02-02 16:57:57	2023-01-01
9	2018-07-11	Widowed	160.0	5.7	111 King Street	Kingstown	CA	54321	111-111-1111	222-222-2222	333-333-3333	marie@test.com	Jack Dauer	Stomach pain	Diarrhea	Headache	10	\N	\N				No	\N	Jack Dauer	No	\N			No			{Diabetes,Cancer,Frequent_Colds,Excess_Sweating}	{}			Atorvastatin	3 beers / day	1 pack / week	\N	NA	\N	2	2023-02-02 17:06:16	2023-02-02 17:06:16	2023-01-01
10	2023-02-13	Married	150.0	5.6	111 King Street	Watertown	MD	11111	111-111-1111	222-222-2222	333-333-3333	david1@test.com	John Daul	Numbing limbs	Weight loss		6	\N	\N				No	\N	John Daul	No	\N			No			{Hypertension,Back/Lower_Back_Pain}	{}			Ibuprofen			\N	NA	\N	8	2023-02-13 21:47:04	2023-02-13 21:47:20	2020-06-01
11	2019-06-04	Married	150.0	5.6	123 King Street	Watertown	MD	11111	111-111-1111	222-222-2222	333-333-3333	david1@test.com	John Daul	Numbing limbs	Weight loss		6	\N	\N				No	\N	John Daul	No	\N			No			{Hypertension,Back/Lower_Back_Pain}	{}			Ibuprofen			\N	NA	\N	8	2023-02-13 21:49:22	2023-02-13 21:49:22	2020-06-01
12	2023-02-13	Single	160.0	5.5	321 Main Street	Springtown	TN	22222	111-111-1111	222-222-2222	333-333-3333	david@test.com	Mark Townie	Migraines	Fatigue	Headache	6	\N	\N				No	\N	Mark Townie	Yes	\N			No			{Heart_Disease,HIV/AIDS,Bypolar_Disorder}	{}			Tramadol			\N	NA	\N	7	2023-02-13 21:53:28	2023-02-13 21:55:52	2021-04-16
13	2018-04-11	Single	140.0	5.5	1234 Main Street	Springtown	TN	22222	111-111-1111	222-222-2222	333-333-3333	david@test.com	Mark Townie	Migraines	Fatigue	Headache	6	\N	\N				No	\N	Mark Townie	Yes	\N			No			{Heart_Disease,HIV/AIDS,Bypolar_Disorder}	{}			Tramadol			\N	NA	\N	7	2023-02-13 21:54:16	2023-02-13 21:56:08	2021-04-16
\.


--
-- Data for Name: regis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.regis (id, last_name, first_name, init, gender, dob, created_at, updated_at) FROM stdin;
3	Spalding	Jane	M	Female	1956-08-01	2023-02-02 02:04:16	2023-02-02 02:04:16
4	Greene	Mark		Male	1987-08-03	2023-02-02 02:04:59	2023-02-02 02:04:59
5	Aaron	Stephen	J	Male	1951-05-06	2023-02-02 02:06:06	2023-02-02 02:06:06
2	Brown	Marie	T	Female	1968-03-08	2022-12-27 18:58:07	2023-02-02 02:07:46
1	Johnson	Brian	N	Male	1977-07-08	2022-12-27 18:57:39	2023-02-02 02:07:58
6	Young	Alice	A	Female	1985-09-30	2023-02-02 02:06:54	2023-02-02 02:30:04
8	Brown	David		Male	1970-06-18	2023-02-13 21:42:12	2023-02-13 21:42:35
7	Brown	David		Male	1987-05-05	2023-02-03 03:23:32	2023-02-13 21:42:42
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (version) FROM stdin;
20221212163628
20221212163804
20221212163939
20221212180226
20221212181440
20221213005159
20221213142453
20230110183607
20230110183632
20230115221119
20230115224721
20230115225026
20230115225432
20230118214835
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, role) FROM stdin;
7	dc20433@hotmail.com	$2a$12$Yplj3aVmnH0uyr.r5busCu0IvMEKrgjd73dlg10K0BhMxlZ7e8TTy	\N	\N	\N	1	2023-02-04 00:17:59	2023-02-04 00:17:59	::1	::1	2023-02-04 00:17:59	2023-02-04 00:17:59	0
5	zhangbinct@gmail.com	$2a$12$B714MGAm0H0J7LaRbehV5uZfvGRdRBC2BgPfqBuRnhRLJXq/kqUY2	\N	\N	\N	1	2022-12-27 18:53:21	2022-12-27 18:53:21	::1	::1	2022-12-27 18:53:21	2022-12-27 18:53:29	1
2	dc20433@yahoo.com	$2a$12$MLHk0MRlo80NAiZE5lw8NeTfBeUnU7JJ4fk9JJfyla1FDGMxV.mQi	\N	\N	\N	5	2023-02-04 00:34:50	2023-02-03 03:22:24	::1	::1	2022-12-27 18:50:44	2023-02-04 00:34:50	0
6	cindyzhangct@gmail.com	$2a$12$Y3FGEYs/H4WT1spY2wfsEeTVlxd.iM.c9w.k/qbEDg5m0h0MyqBNG	\N	\N	\N	1	2022-12-27 18:55:15	2022-12-27 18:55:15	::1	::1	2022-12-27 18:55:15	2022-12-27 18:55:20	1
8	bz@test.com	$2a$12$.Rm31jvYDoBLRJK.I02IDO8OgRcRQwdkF0MeuuCU99QHamdwpput.	\N	\N	\N	1	2023-02-04 00:36:54	2023-02-04 00:36:54	::1	::1	2023-02-04 00:36:54	2023-02-04 00:37:21	1
4	jz2043@yahoo.com	$2a$12$qk2hokKwVNK/LsTBI8u4yOagIa5/1oMUWfCF0WYQsBh/wqex3XDmK	\N	\N	\N	9	2023-02-05 22:36:48	2023-02-03 19:11:28	::1	::1	2022-12-27 18:52:18	2023-02-05 22:36:48	0
1	dc20433@gmail.com	$2a$12$n/SjTEruZvegBJ1Ne.tbyuF0DJzcFbavNudRVp0epajG.veF8mqa2	\N	\N	\N	21	2023-02-13 21:38:30	2023-02-13 16:41:47	::1	::1	2022-12-27 18:49:40	2023-02-13 21:38:30	0
3	dc20433@aol.com	$2a$12$ySGct3DejwBRAXBsOoc9D.wSztGtVpllSOD6ozddGdaYWOauzdbk.	\N	\N	\N	6	2023-02-02 02:03:10	2023-01-31 00:16:33	::1	::1	2022-12-27 18:51:37	2023-02-02 02:03:10	0
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 10, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 10, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: charts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.charts_id_seq', 29, true);


--
-- Name: filings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.filings_id_seq', 7, true);


--
-- Name: patients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patients_id_seq', 13, true);


--
-- Name: regis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.regis_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 8, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: charts charts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts
    ADD CONSTRAINT charts_pkey PRIMARY KEY (id);


--
-- Name: filings filings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings
    ADD CONSTRAINT filings_pkey PRIMARY KEY (id);


--
-- Name: patients patients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT patients_pkey PRIMARY KEY (id);


--
-- Name: regis regis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regis
    ADD CONSTRAINT regis_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_charts_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_charts_on_regi_id ON public.charts USING btree (regi_id);


--
-- Name: index_filings_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_filings_on_regi_id ON public.filings USING btree (regi_id);


--
-- Name: index_patients_on_regi_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_patients_on_regi_id ON public.patients USING btree (regi_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: charts fk_rails_89fcde0ec1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.charts
    ADD CONSTRAINT fk_rails_89fcde0ec1 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: filings fk_rails_9abd4b7898; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.filings
    ADD CONSTRAINT fk_rails_9abd4b7898 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: patients fk_rails_faa6e0fcc2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patients
    ADD CONSTRAINT fk_rails_faa6e0fcc2 FOREIGN KEY (regi_id) REFERENCES public.regis(id);


--
-- PostgreSQL database dump complete
--

