--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7
-- Dumped by pg_dump version 12.7

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
-- Name: predictions; Type: TABLE; Schema: public; Owner: cj
--

CREATE TABLE public.predictions (
    id integer NOT NULL,
    race integer,
    given_by text,
    prediction_name text,
    predicted_race_winner integer,
    created_at timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.predictions OWNER TO cj;

--
-- Name: predictions_id_seq; Type: SEQUENCE; Schema: public; Owner: cj
--

CREATE SEQUENCE public.predictions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.predictions_id_seq OWNER TO cj;

--
-- Name: predictions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cj
--

ALTER SEQUENCE public.predictions_id_seq OWNED BY public.predictions.id;


--
-- Name: race_cars; Type: TABLE; Schema: public; Owner: cj
--

CREATE TABLE public.race_cars (
    id integer NOT NULL,
    manufacturer text,
    model text,
    year text,
    hp integer,
    transmission text,
    modifications text,
    weight_lbs text,
    weight_kg text,
    driven_axle_type text,
    created_at timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.race_cars OWNER TO cj;

--
-- Name: racecars_id_seq; Type: SEQUENCE; Schema: public; Owner: cj
--

CREATE SEQUENCE public.racecars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.racecars_id_seq OWNER TO cj;

--
-- Name: racecars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cj
--

ALTER SEQUENCE public.racecars_id_seq OWNED BY public.race_cars.id;


--
-- Name: races; Type: TABLE; Schema: public; Owner: cj
--

CREATE TABLE public.races (
    id integer NOT NULL,
    youtube_name text,
    youtube_link text,
    this_name integer,
    that_name integer,
    winner integer,
    publish_date timestamp(0) without time zone,
    created_at timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.races OWNER TO cj;

--
-- Name: races_id_seq; Type: SEQUENCE; Schema: public; Owner: cj
--

CREATE SEQUENCE public.races_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.races_id_seq OWNER TO cj;

--
-- Name: races_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cj
--

ALTER SEQUENCE public.races_id_seq OWNED BY public.races.id;


--
-- Name: predictions id; Type: DEFAULT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.predictions ALTER COLUMN id SET DEFAULT nextval('public.predictions_id_seq'::regclass);


--
-- Name: race_cars id; Type: DEFAULT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.race_cars ALTER COLUMN id SET DEFAULT nextval('public.racecars_id_seq'::regclass);


--
-- Name: races id; Type: DEFAULT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.races ALTER COLUMN id SET DEFAULT nextval('public.races_id_seq'::regclass);


--
-- Data for Name: predictions; Type: TABLE DATA; Schema: public; Owner: cj
--

COPY public.predictions (id, race, given_by, prediction_name, predicted_race_winner, created_at) FROM stdin;
21	5	Dan Sommer	\N	10	2021-07-05 15:42:39
22	5	Ron Zaras	\N	9	2021-07-05 15:42:39
23	5	Hertrech Eugene Jr.	\N	10	2021-07-05 15:42:39
24	5	Brian Scotto	\N	9	2021-07-05 15:42:39
25	5	Vinny Anatra	\N	10	2021-07-05 15:42:39
3	1	John Chase	\N	2	2021-07-05 00:24:50
26	6	Dan Sommer	\N	11	2021-07-05 15:49:59
27	6	Suppy	\N	12	2021-07-05 15:49:59
28	6	John Naderi	\N	11	2021-07-05 15:49:59
29	6	Hertrech Eugene Jr.	\N	11	2021-07-05 15:49:59
31	7	John Naderi	\N	8	2021-07-05 20:08:18
32	7	Brian Scotto	\N	13	2021-07-05 20:08:18
33	7	Vinny Anatra	\N	13	2021-07-05 20:08:18
34	7	Ron Zaras	\N	13	2021-07-05 20:08:18
35	8	Larry Chen	\N	1	2021-07-06 00:16:16
36	8	Brian Scotto	\N	14	2021-07-06 00:16:16
37	8	Vinny Anatra	\N	14	2021-07-06 00:16:16
38	8	Ron Zaras	\N	14	2021-07-06 00:16:16
39	8	John Chase	\N	14	2021-07-06 00:16:16
41	9	John Naderi	\N	15	2021-07-06 00:33:03
42	9	Vinny Anatra	\N	16	2021-07-06 00:33:03
43	9	Hertrech Eugene Jr.	\N	16	2021-07-06 00:33:03
44	9	Larry Chen	\N	16	2021-07-06 00:33:03
45	10	Ron Zaras	\N	17	2021-07-06 00:48:53
46	10	Vinny Anatra	\N	17	2021-07-06 00:48:53
47	10	Hertrech Eugene Jr.	\N	\N	2021-07-06 00:48:53
48	10	Brian Scotto	\N	4	2021-07-06 00:48:53
49	12	Zac Mertens	\N	7	2021-07-06 01:12:26
50	12	Dan Sommer	\N	7	2021-07-06 01:12:26
51	12	Hertrech Eugene Jr.	\N	7	2021-07-06 01:12:26
1	1	Ron Zaras	\N	1	2021-07-05 00:24:50
5	1	Hertrech Eugene Jr.	\N	2	2021-07-05 00:24:50
2	1	Vinny Anatra	\N	1	2021-07-05 00:24:50
4	1	Brian Scotto	\N	2	2021-07-05 00:24:50
6	2	Vinny Anatra	\N	4	2021-07-05 00:55:59
7	2	Ron Zaras	\N	4	2021-07-05 00:55:59
8	2	Larry Chen	\N	4	2021-07-05 00:55:59
9	2	Brian Scotto	\N	3	2021-07-05 00:55:59
10	2	Hertrech Eugene Jr.	\N	3	2021-07-05 00:55:59
11	3	John Chase	\N	6	2021-07-05 01:07:39
12	3	Vinny Anatra	\N	6	2021-07-05 01:07:39
14	3	Brian Scotto	\N	5	2021-07-05 01:07:39
15	3	Hertrech Eugene Jr.	\N	5	2021-07-05 01:07:39
13	3	Ron Zaras	\N	6	2021-07-05 01:07:39
16	4	Ron Zaras	\N	7	2021-07-05 01:28:10
17	4	Brian Scotto	\N	7	2021-07-05 01:28:10
18	4	Hertrech Eugene Jr.	\N	7	2021-07-05 01:28:10
19	4	Suppy	\N	8	2021-07-05 01:28:10
20	4	Dan Sommer	Team Destruction	\N	2021-07-05 01:28:10
52	12	John Naderi	\N	7	2021-07-06 01:12:26
53	12	Ron Zaras	\N	20	2021-07-06 01:12:26
54	12	Brian Scotto	\N	20	2021-07-06 01:12:26
55	12	Suppy	\N	20	2021-07-06 01:12:26
56	12	Vinny Anatra	\N	20	2021-07-06 01:12:26
57	13	John Chase	\N	21	2021-07-06 01:29:36
58	13	Hertrech Eugene Jr.	\N	21	2021-07-06 01:29:36
59	13	John Naderi	\N	21	2021-07-06 01:29:36
60	13	Ron Zaras	\N	21	2021-07-06 01:29:36
61	13	Vinny Anatra	\N	21	2021-07-06 01:29:36
62	13	Sean Smith	\N	22	2021-07-06 01:29:36
63	13	Brian Scotto	\N	22	2021-07-06 01:29:36
64	14	Ron Zaras	\N	23	2021-07-06 01:52:45
65	14	Brian Scotto	\N	23	2021-07-06 01:52:45
66	14	John Naderi	\N	23	2021-07-06 01:52:45
67	14	Suppy	\N	23	2021-07-06 01:52:45
68	14	Dan Sommer	\N	24	2021-07-06 01:52:45
69	14	Hertrech Eugene Jr.	\N	24	2021-07-06 01:52:45
71	15	Vinny Anatra	\N	25	2021-07-07 14:12:43
72	15	Dan Sommer	\N	25	2021-07-07 14:12:43
73	15	Hertrech Eugene Jr.	\N	25	2021-07-07 14:12:43
74	15	Brian Scotto	\N	25	2021-07-07 14:12:43
75	15	Ron Zaras	\N	26	2021-07-07 14:12:43
76	15	John Naderi	\N	26	2021-07-07 14:12:43
77	16	John Naderi	\N	27	2021-07-07 14:27:47
78	16	Brian Scotto	\N	27	2021-07-07 14:27:47
79	16	Ron Zaras	\N	27	2021-07-07 14:27:47
80	16	Vinny Anatra	\N	27	2021-07-07 14:27:47
81	16	Hertrech Eugene Jr.	\N	28	2021-07-07 14:27:47
82	16	Suppy	\N	28	2021-07-07 14:27:47
83	16	Dan Sommer	\N	28	2021-07-07 14:27:47
85	17	Suppy	\N	29	2021-07-07 14:48:21
86	17	Brian Scotto	\N	29	2021-07-07 14:48:21
87	17	John Naderi	\N	29	2021-07-07 14:48:21
88	17	Dan Sommer	\N	30	2021-07-07 14:48:21
89	17	Hertrech Eugene Jr.	\N	30	2021-07-07 14:48:21
90	18	Ron Zaras	\N	31	2021-07-11 11:50:47
91	18	Dan Sommer	\N	31	2021-07-11 11:50:47
92	18	Brian Scotto	\N	31	2021-07-11 11:50:47
93	18	John Naderi	\N	31	2021-07-11 11:50:47
94	18	Vinny Anatra	\N	32	2021-07-11 11:50:47
95	18	Hertrech Eugene Jr.	\N	32	2021-07-11 11:50:47
96	19	Brian Scotto	\N	33	2021-07-11 12:13:55
97	19	Dan Sommer	\N	34	2021-07-11 12:13:55
98	19	Ron Zaras	\N	34	2021-07-11 12:13:55
100	19	Vinny Anatra	\N	34	2021-07-11 12:13:55
101	19	Hertrech Eugene Jr.	\N	34	2021-07-11 12:13:55
102	20	Brian Scotto	\N	35	2021-07-11 12:31:48
103	20	Ron Zaras	\N	35	2021-07-11 12:31:48
104	20	Dan Sommer	\N	35	2021-07-11 12:31:48
105	20	Micah Diaz	\N	35	2021-07-11 12:31:48
106	20	John Naderi	\N	35	2021-07-11 12:31:48
107	20	Suppy	\N	35	2021-07-11 12:32:11
108	21	Dan Sommer	\N	36	2021-07-11 12:52:17
109	21	Suppy	\N	36	2021-07-11 12:52:17
110	21	Vinny Anatra	\N	36	2021-07-11 12:52:17
111	21	Brian Scotto	\N	37	2021-07-11 12:52:17
112	21	Ron Zaras	\N	37	2021-07-11 12:52:17
113	21	Hertrech Eugene Jr.	\N	36	2021-07-11 12:54:52
114	22	Brian Scotto	\N	38	2021-07-11 15:11:28
115	22	Dan Sommer	\N	\N	2021-07-11 15:11:28
116	22	Vinny Anatra	\N	39	2021-07-11 15:11:28
99	19	Darren Parsons	\N	34	2021-07-11 12:13:55
117	22	Ron Zaras	\N	39	2021-07-11 15:11:28
118	22	John Naderi	\N	39	2021-07-11 15:11:28
119	23	Brian Scotto	\N	41	2021-07-11 15:22:34
120	23	Hertrech Eugene Jr.	\N	40	2021-07-11 15:22:34
121	23	Vinny Anatra	\N	40	2021-07-11 15:22:34
122	23	Dan Sommer	\N	40	2021-07-11 15:22:34
123	23	Ron Zaras	\N	40	2021-07-11 15:22:34
124	23	Micah Diaz	\N	40	2021-07-11 15:22:34
125	23	John Naderi	\N	40	2021-07-11 15:22:34
126	24	Micah Diaz	\N	42	2021-07-11 15:41:22
127	24	Brian Scotto	\N	42	2021-07-11 15:41:22
128	24	John Naderi	\N	42	2021-07-11 15:41:22
129	24	Larry Chen	\N	42	2021-07-11 15:41:22
130	24	Ron Zaras	\N	42	2021-07-11 15:41:22
131	24	Vinny Anatra	\N	42	2021-07-11 15:41:22
132	24	Dan Sommer	\N	43	2021-07-11 15:41:22
133	24	Hertrech Eugene Jr.	\N	\N	2021-07-11 15:41:22
134	25	Dan Sommer	\N	44	2021-07-11 16:01:11
135	25	Ron Zaras	\N	44	2021-07-11 16:01:11
136	25	Micah Diaz	\N	44	2021-07-11 16:01:11
137	25	Blake Wilkey	\N	44	2021-07-11 16:01:11
138	25	Hertrech Eugene Jr.	\N	44	2021-07-11 16:01:11
139	25	Vinny Anatra	\N	\N	2021-07-11 16:01:11
140	25	Brian Scotto	\N	45	2021-07-11 16:01:11
141	25	John Naderi	\N	45	2021-07-11 16:01:11
142	25	Zac Mertens	\N	44	2021-07-11 16:01:11
143	26	Brian Scotto	\N	46	2021-07-11 16:42:08
144	26	Hertrech Eugene Jr.	\N	46	2021-07-11 16:42:08
145	26	Vinny Anatra	\N	46	2021-07-11 16:42:08
146	26	Ron Zaras	\N	46	2021-07-11 16:42:08
147	26	Dan Sommer	\N	46	2021-07-11 16:42:08
148	26	Micah Diaz	\N	46	2021-07-11 16:42:08
149	26	John Naderi	\N	47	2021-07-11 16:42:08
150	26	Zac Mertens	\N	47	2021-07-11 16:42:08
151	27	Zac Mertens	\N	48	2021-07-11 16:52:30
152	27	Dan Sommer	\N	48	2021-07-11 16:52:30
153	27	Micah Diaz	\N	48	2021-07-11 16:52:30
154	27	Ron Zaras	\N	48	2021-07-11 16:52:30
155	27	Hertrech Eugene Jr.	\N	48	2021-07-11 16:52:30
156	27	Emelia Hartford	\N	48	2021-07-11 16:52:30
157	27	Brian Scotto	\N	40	2021-07-11 16:52:30
158	28	Brian Scotto	\N	49	2021-07-11 17:10:43
159	28	Ron Zaras	\N	49	2021-07-11 17:10:43
160	28	John Naderi	\N	49	2021-07-11 17:10:43
161	28	Vinny Anatra	\N	49	2021-07-11 17:10:43
162	28	Micah Diaz	\N	50	2021-07-11 17:10:43
163	28	Dan Sommer	\N	50	2021-07-11 17:10:43
164	29	Micah Diaz	\N	51	2021-07-11 17:24:59
165	29	Vinny Anatra	\N	51	2021-07-11 17:24:59
166	29	Brian Scotto	\N	51	2021-07-11 17:24:59
167	29	Ron Zaras	\N	51	2021-07-11 17:24:59
168	29	Hertrech Eugene Jr.	\N	51	2021-07-11 17:24:59
169	29	Dan Sommer	\N	51	2021-07-11 17:24:59
170	29	John Naderi	\N	52	2021-07-11 17:24:59
171	30	Micah Diaz	\N	11	2021-07-11 17:51:50
172	30	John Chase	\N	11	2021-07-11 17:51:50
173	30	Brian Scotto	\N	53	2021-07-11 17:51:50
174	30	Ron Zaras	\N	53	2021-07-11 17:51:50
175	30	Dan Sommer	\N	53	2021-07-11 17:51:50
176	30	Vinny Anatra	\N	53	2021-07-11 17:51:50
177	30	Suppy	\N	53	2021-07-11 17:51:50
178	30	John Naderi	\N	53	2021-07-11 17:51:50
179	31	Larry Chen	\N	54	2021-07-11 18:02:54
180	31	Vinny Anatra	\N	54	2021-07-11 18:02:54
181	31	John Chase	\N	54	2021-07-11 18:02:54
182	31	Dan Sommer	\N	54	2021-07-11 18:02:54
183	31	Brian Scotto	\N	54	2021-07-11 18:02:54
184	31	Micah Diaz	\N	55	2021-07-11 18:02:54
185	31	John Naderi	\N	55	2021-07-11 18:02:54
186	32	Brian Scotto	\N	56	2021-07-11 18:14:35
187	32	Rob Dahm	\N	56	2021-07-11 18:14:35
188	32	Dan Sommer	\N	56	2021-07-11 18:14:35
189	32	Hertrech Eugene Jr.	\N	56	2021-07-11 18:14:35
190	32	Ron Zaras	\N	56	2021-07-11 18:14:35
191	32	Vinny Anatra	\N	56	2021-07-11 18:14:35
192	32	Micah Diaz	\N	55	2021-07-11 18:14:35
193	32	Alex Andonian\n	\N	55	2021-07-11 18:14:35
194	33	John Naderi	\N	57	2021-07-11 18:29:56
195	33	Vinny Anatra	\N	57	2021-07-11 18:29:56
196	33	Brian Scotto	\N	57	2021-07-11 18:29:56
197	33	John Chase	\N	58	2021-07-11 18:29:56
198	33	Dan Sommer	\N	58	2021-07-11 18:29:56
199	33	Ron Zaras	\N	58	2021-07-11 18:29:56
200	33	Hertrech Eugene Jr.	\N	58	2021-07-11 18:29:56
201	34	Dan Sommer	\N	59	2021-07-11 18:46:11
202	34	Brian Scotto	\N	59	2021-07-11 18:46:11
203	34	Ron Zaras	\N	59	2021-07-11 18:46:11
204	34	John Chase	\N	60	2021-07-11 18:46:11
205	34	Vinny Anatra	\N	60	2021-07-11 18:46:11
206	34	John Naderi	\N	60	2021-07-11 18:46:11
207	35	Ron Zaras	\N	61	2021-07-11 21:17:44
208	35	Brian Scotto	\N	61	2021-07-11 21:17:44
209	35	Vinny Anatra	\N	61	2021-07-11 21:17:44
210	35	John Chase	\N	61	2021-07-11 21:17:44
211	35	Suppy	\N	61	2021-07-11 21:17:44
212	35	Hertrech Eugene Jr.	\N	61	2021-07-11 21:17:44
213	35	Nick Iannotti	\N	62	2021-07-11 21:17:44
214	36	Brian Scotto	\N	61	2021-07-11 21:39:03
215	36	John Chase	\N	61	2021-07-11 21:39:03
216	36	Hertrech Eugene Jr.	\N	61	2021-07-11 21:39:03
217	36	Dan Sommer	\N	61	2021-07-11 21:39:03
218	36	Vinny Anatra	\N	61	2021-07-11 21:39:03
219	36	Zac Mertens	\N	61	2021-07-11 21:39:03
220	36	Bryce Menzies	\N	63	2021-07-11 21:39:03
221	37	Suppy	\N	61	2021-07-11 21:56:11
222	37	Ron Zaras	\N	61	2021-07-11 21:56:11
223	37	Vinny Anatra	\N	61	2021-07-11 21:56:11
224	37	Hertrech Eugene Jr.	\N	61	2021-07-11 21:56:11
225	37	Brian Scotto	\N	64	2021-07-11 21:56:11
226	38	Vinny Anatra	\N	61	2021-07-11 22:14:42
227	38	Hertrech Eugene Jr.	\N	61	2021-07-11 22:14:42
228	38	Zac Mertens	\N	61	2021-07-11 22:14:42
229	38	Brian Scotto	\N	65	2021-07-11 22:14:42
230	38	Ron Zaras	\N	65	2021-07-11 22:14:42
231	38	Dan Sommer	DNP	\N	2021-07-11 22:14:42
232	38	John Chase	DNP	\N	2021-07-11 22:14:42
233	39	Suppy	\N	61	2021-07-11 22:30:24
234	39	Ron Zaras	\N	61	2021-07-11 22:30:24
235	39	Vinny Anatra	\N	61	2021-07-11 22:30:24
236	39	Hertrech Eugene Jr.	\N	61	2021-07-11 22:30:24
237	39	John Chase	\N	61	2021-07-11 22:30:24
238	39	Dan Sommer	\N	61	2021-07-11 22:30:24
239	40	Vinny Anatra	\N	61	2021-07-11 22:47:29
240	40	John Chase	\N	61	2021-07-11 22:47:29
241	40	Zac Mertens	\N	61	2021-07-11 22:47:29
242	40	Brian Scotto	\N	61	2021-07-11 22:47:29
243	40	John Naderi	\N	61	2021-07-11 22:47:29
244	40	Dan Sommer	DNP	\N	2021-07-11 22:47:29
245	41	Ron Zaras	\N	61	2021-07-11 23:03:41
246	41	Zac Mertens	\N	61	2021-07-11 23:03:41
247	41	Vinny Anatra	\N	61	2021-07-11 23:03:41
248	41	John Chase	\N	68	2021-07-11 23:03:41
249	42	Dan Sommer	\N	61	2021-07-11 23:16:56
250	42	Vinny Anatra	\N	61	2021-07-11 23:16:56
251	42	Brian Scotto	\N	61	2021-07-11 23:16:56
252	42	Zac Mertens	\N	61	2021-07-11 23:16:56
253	42	John Naderi	\N	69	2021-07-11 23:16:56
254	42	John Chase	DNP	\N	2021-07-11 23:16:56
255	43	Vinny Anatra	\N	61	2021-07-11 23:31:03
256	43	Dan Sommer	\N	61	2021-07-11 23:31:03
257	43	John Chase	\N	61	2021-07-11 23:31:03
258	43	Zac Mertens	\N	61	2021-07-11 23:31:03
259	43	Brian Scotto	\N	61	2021-07-11 23:31:03
260	43	John Naderi	\N	61	2021-07-11 23:31:03
307	51	John Naderi	\N	82	2021-07-28 23:38:08
308	51	Brian Scotto	\N	82	2021-07-28 23:38:08
309	51	Hertrech Eugene Jr.	\N	83	2021-07-28 23:38:08
310	51	Vinny Anatra	\N	83	2021-07-28 23:38:08
311	51	Dan Sommer	\N	83	2021-07-28 23:38:08
312	51	Larry Chen	\N	83	2021-07-28 23:38:08
292	49	Micah Diaz	\N	78	2021-07-28 23:06:40
293	49	Ron Zaras	\N	78	2021-07-28 23:06:40
294	49	Dan Sommer	\N	78	2021-07-28 23:06:40
295	49	Zac Mertens	\N	79	2021-07-28 23:06:40
296	49	Vinny Anatra	\N	79	2021-07-28 23:06:40
297	49	Brian Scotto	\N	79	2021-07-28 23:06:40
298	50	John Naderi	\N	80	2021-07-28 23:22:08
299	50	Brian Scotto	\N	80	2021-07-28 23:22:08
300	50	Suppy	\N	80	2021-07-28 23:22:08
301	50	Micah Diaz	\N	80	2021-07-28 23:22:08
302	50	Charlie Ashby	\N	80	2021-07-28 23:22:08
303	50	Ron Zaras	\N	80	2021-07-28 23:22:08
304	50	Dan Sommer	\N	81	2021-07-28 23:22:08
305	50	Gary King Jr.	\N	81	2021-07-28 23:22:08
306	50	Vinny Anatra	\N	81	2021-07-28 23:22:08
316	52	Hertrech Eugene Jr.	\N	82	2021-07-28 23:46:00
315	52	Dan Sommer	\N	82	2021-07-28 23:46:00
314	52	Ron Zaras	\N	82	2021-07-28 23:46:00
317	52	Brian Scotto	\N	82	2021-07-28 23:46:00
318	52	Micah Diaz	\N	84	2021-07-28 23:46:00
313	52	John Naderi	\N	82	2021-07-28 23:46:00
319	52	Vinny Anatra	\N	84	2021-07-28 23:48:11
283	48	John Naderi	\N	76	2021-07-20 00:12:04
284	48	Micah Diaz	\N	76	2021-07-20 00:12:04
285	48	Brian Scotto	\N	77	2021-07-20 00:12:04
286	48	Gary King Jr	\N	77	2021-07-20 00:12:04
287	48	Dan Sommer	\N	77	2021-07-20 00:12:04
288	48	Ron Zaras	\N	77	2021-07-20 00:12:04
289	48	Cole Powelson	\N	77	2021-07-20 00:12:04
290	48	Vinny Anatra	DNP	\N	2021-07-20 00:12:04
291	48	Zac Mertens	DNP	\N	2021-07-20 00:12:04
276	47	John Naderi	\N	74	2021-07-17 00:37:04
277	47	Suppy	\N	74	2021-07-17 00:37:04
278	47	Dan Sommer	\N	74	2021-07-17 00:37:04
279	47	Ron Zaras	\N	74	2021-07-17 00:37:04
280	47	Vinny Anatra	\N	74	2021-07-17 00:37:04
281	47	Brian Scotto	\N	75	2021-07-17 00:37:04
282	47	Micah Diaz	\N	75	2021-07-17 00:37:04
269	46	Ron Zaras	\N	72	2021-07-12 19:18:15
270	46	John Naderi	\N	73	2021-07-12 19:18:15
271	46	Zac Mertens	\N	73	2021-07-12 19:18:15
272	46	Brian Scotto	\N	73	2021-07-12 19:18:15
273	46	Dan Sommer	\N	73	2021-07-12 19:18:15
274	46	John Chase	\N	73	2021-07-12 19:18:15
275	46	Vinny Anatra	\N	73	2021-07-12 19:18:15
262	45	Ron Zaras	\N	61	2021-07-11 23:50:01
263	45	Brian Scotto	\N	61	2021-07-11 23:50:01
264	45	Zac Mertens	\N	61	2021-07-11 23:50:01
265	45	Dan Sommer	\N	61	2021-07-11 23:50:01
266	45	Vinny Anatra	\N	61	2021-07-11 23:50:01
267	45	John Chase	\N	71	2021-07-11 23:50:01
268	45	Suppy	\N	71	2021-07-11 23:50:01
320	53	Brian Scotto	\N	82	2021-07-29 21:41:00
321	53	Vinny Anatra	\N	82	2021-07-29 21:41:00
322	53	Ron Zaras	\N	82	2021-07-29 21:41:00
323	53	Larry Chen	\N	82	2021-07-29 21:41:00
324	53	Dan Sommer	\N	82	2021-07-29 21:41:00
325	53	Hertrech Eugene Jr.	\N	82	2021-07-29 21:41:00
326	53	Micah Diaz	\N	82	2021-07-29 21:41:00
327	54	Micah Diaz	\N	82	2021-07-29 21:51:29
328	54	Hertrech Eugene Jr.	\N	82	2021-07-29 21:51:29
329	54	Dan Sommer	\N	82	2021-07-29 21:51:29
330	54	Ron Zaras	\N	82	2021-07-29 21:51:29
331	54	Vinny Anatra	\N	82	2021-07-29 21:51:29
332	54	Brian Scotto	\N	85	2021-07-29 21:51:29
333	54	Larry Chen	\N	85	2021-07-29 21:51:29
334	55	Vinny Anatra	\N	82	2021-07-29 22:00:22
335	55	John Chase	\N	82	2021-07-29 22:00:22
336	55	Brian Scotto	\N	82	2021-07-29 22:00:22
337	55	Micah Diaz	\N	82	2021-07-29 22:00:22
338	55	Ron Zaras	\N	82	2021-07-29 22:00:22
339	55	Hertrech Eugene Jr.	\N	82	2021-07-29 22:00:22
340	55	Dan Sommer	\N	82	2021-07-29 22:00:22
341	56	Vinny Anatra	\N	82	2021-07-29 22:08:34
342	56	Darren Parsons	\N	82	2021-07-29 22:08:34
343	56	John Chase	\N	82	2021-07-29 22:08:34
344	56	Micah Diaz	\N	82	2021-07-29 22:08:34
345	56	John Naderi	\N	53	2021-07-29 22:08:34
346	56	Ron Zaras	\N	53	2021-07-29 22:08:34
347	56	Hertrech Eugene Jr.	\N	53	2021-07-29 22:08:34
348	56	Dan Sommer	\N	53	2021-07-29 22:08:34
349	56	Larry Chen	\N	53	2021-07-29 22:08:34
350	56	Brian Scotto	\N	53	2021-07-29 22:08:34
351	57	Brian Scotto	\N	82	2021-07-29 22:19:22
352	57	Hertrech Eugene Jr.	\N	82	2021-07-29 22:19:22
353	57	Micah Diaz	\N	82	2021-07-29 22:19:22
354	57	Ron Zaras	\N	82	2021-07-29 22:19:22
355	57	Darren Parsons	\N	82	2021-07-29 22:19:22
356	57	Vinny Anatra	\N	87	2021-07-29 22:19:22
357	57	Dan Sommer	\N	87	2021-07-29 22:19:22
358	57	John Chase	\N	87	2021-07-29 22:19:22
359	57	John Naderi	\N	87	2021-07-29 22:19:22
360	58	Dan Sommer	\N	88	2021-08-02 19:59:07
361	58	Vinny Anatra	\N	88	2021-08-02 19:59:07
362	58	Ron Zaras	\N	88	2021-08-02 19:59:07
363	58	Suppy	\N	88	2021-08-02 19:59:07
364	58	Brian Scotto	\N	88	2021-08-02 19:59:07
365	58	Zac Mertens	\N	88	2021-08-02 19:59:07
366	58	Micah Diaz	\N	89	2021-08-02 19:59:07
367	59	Vinny Anatra	\N	90	2021-08-09 20:54:52
368	59	Suppy	\N	91	2021-08-09 20:54:52
369	59	Zac Mertens	\N	91	2021-08-09 20:54:52
370	59	Brian Scotto	\N	91	2021-08-09 20:54:52
371	59	Micah Diaz	\N	91	2021-08-09 20:54:52
372	59	John Naderi	\N	91	2021-08-09 20:54:52
373	59	Ron Zaras	\N	91	2021-08-09 20:54:52
374	60	Vinny Anatra	\N	92	2021-08-16 22:28:48
375	60	John Chase	\N	92	2021-08-16 22:28:48
376	60	John Naderi	\N	92	2021-08-16 22:28:48
377	60	Zac Mertens	\N	93	2021-08-16 22:28:48
378	60	Brian Scotto	\N	93	2021-08-16 22:28:48
379	60	Ron Zaras	\N	93	2021-08-16 22:28:48
380	60	Dan Sommer	\N	93	2021-08-16 22:28:48
381	61	John Naderi	\N	94	2021-08-23 21:41:43
382	61	Vinny Anatra	\N	94	2021-08-23 21:41:43
383	61	Ron Zaras	\N	94	2021-08-23 21:41:43
384	61	Dan Sommer	\N	95	2021-08-23 21:41:43
385	61	John Chase	\N	95	2021-08-23 21:41:43
386	61	Zac Mertens	\N	95	2021-08-23 21:41:43
387	61	Brian Scotto	\N	95	2021-08-23 21:41:43
388	62	Dan Sommer	\N	96	2021-09-02 23:00:18
389	62	Vinny Anatra	\N	96	2021-09-02 23:00:18
390	62	Micah Diaz	\N	96	2021-09-02 23:00:18
391	62	Suppy	\N	96	2021-09-02 23:00:18
393	62	John Naderi	\N	97	2021-09-02 23:00:18
392	62	Sammy Sammy	\N	97	2021-09-02 23:00:18
394	63	Suppy	\N	21	2021-09-06 21:58:12
395	63	Brian Scotto	\N	98	2021-09-06 21:58:12
396	63	Seth Frye	\N	98	2021-09-06 21:58:12
397	63	Vinny Anatra	\N	98	2021-09-06 21:58:12
398	63	Ron Zaras	\N	98	2021-09-06 21:58:12
399	63	Dan Sommer	\N	98	2021-09-06 21:58:12
400	63	Micah Diaz	\N	98	2021-09-06 21:58:12
401	64	Suppy	\N	99	2021-09-09 22:08:05
402	64	John Naderi	\N	99	2021-09-09 22:08:05
403	64	Ron Zaras	\N	100	2021-09-09 22:08:05
404	64	Brian Scotto	\N	100	2021-09-09 22:08:05
405	64	Vinny Anatra	\N	100	2021-09-09 22:08:05
406	64	Dan Sommer	\N	100	2021-09-09 22:08:05
407	65	John Naderi	\N	101	2021-09-14 14:30:57
408	65	Vinny Anatra	\N	101	2021-09-14 14:30:57
409	65	Brian Scotto	\N	101	2021-09-14 14:30:57
410	65	Ron Zaras	\N	102	2021-09-14 14:30:57
411	65	John Chase	\N	102	2021-09-14 14:30:57
412	65	Dan Sommer	\N	102	2021-09-14 14:30:57
413	65	Zac Mertens	\N	102	2021-09-14 14:33:19
414	66	Dan Sommer	\N	103	2021-09-20 22:43:22
415	66	Vinny Anatra	\N	103	2021-09-20 22:43:22
416	66	Ron Zaras	\N	103	2021-09-20 22:43:22
417	66	Zac Mertens	\N	104	2021-09-20 22:43:22
418	66	John Chase	\N	104	2021-09-20 22:43:22
419	66	Brian Scotto	\N	104	2021-09-20 22:43:22
420	67	Micah Diaz	\N	105	2021-09-27 22:02:09
421	67	John Naderi	\N	105	2021-09-27 22:02:09
422	67	Dan Sommer	\N	105	2021-09-27 22:02:09
423	67	Vinny Anatra	\N	105	2021-09-27 22:02:09
424	68	Vinny Anatra	\N	107	2021-10-04 23:46:32
425	68	John Naderi	\N	108	2021-10-04 23:46:32
426	68	Hertrech Eugene Jr.	\N	108	2021-10-04 23:46:32
427	68	Dan Sommer	\N	108	2021-10-04 23:46:32
428	68	Micah Diaz	\N	108	2021-10-04 23:46:32
429	68	Alex Grimm	\N	108	2021-10-04 23:46:32
430	69	Vinny Anatra	\N	109	2021-10-11 23:15:31
431	69	Dan Sommer	\N	109	2021-10-11 23:15:31
432	69	Micah Diaz	\N	109	2021-10-11 23:15:31
433	69	Rhys Millen	\N	109	2021-10-11 23:15:31
434	69	Hertrech Eugene Jr.	\N	109	2021-10-11 23:15:31
435	69	John Naderi	\N	110	2021-10-11 23:15:31
436	69	Alex Hernandez	\N	110	2021-10-11 23:15:31
437	70	Micah Diaz	\N	111	2021-10-18 23:04:42
438	70	Suppy	\N	111	2021-10-18 23:04:42
439	70	Alex Grimm	\N	111	2021-10-18 23:04:42
440	70	Vinny Anatra	\N	112	2021-10-18 23:04:42
441	70	Dan Sommer	\N	112	2021-10-18 23:04:42
442	70	John Naderi	\N	112	2021-10-18 23:04:42
443	70	Hertrech Eugene Jr.	\N	112	2021-10-18 23:04:42
444	71	Micah Diaz	\N	113	2021-10-27 19:58:17
445	71	Vinny Anatra	\N	113	2021-10-27 19:58:17
446	71	Kevin Lo	\N	113	2021-10-27 19:58:17
447	71	John Naderi	\N	114	2021-10-27 19:58:17
448	71	Suppy	\N	114	2021-10-27 19:58:17
449	72	Vinny Anatra	\N	115	2021-11-02 22:39:34
450	72	Suppy	\N	115	2021-11-02 22:39:34
451	72	Dan Sommer	\N	116	2021-11-02 22:39:34
452	72	Micah Diaz	\N	116	2021-11-02 22:39:34
453	72	John Naderi	\N	116	2021-11-02 22:39:34
454	72	Hertrech Eugene Jr.	\N	116	2021-11-02 22:39:34
455	73	Suppy	\N	118	2021-11-08 21:57:57
456	73	Vinny Anatra	\N	118	2021-11-08 21:57:57
457	73	Dan Sommer	\N	117	2021-11-08 21:57:57
458	73	Hertrech Eugene Jr.	\N	117	2021-11-08 21:57:57
459	73	Micah Diaz	\N	117	2021-11-08 21:57:57
460	73	John Naderi	\N	118	2021-11-08 21:57:57
461	74	John Naderi	\N	119	2021-11-15 23:32:59
462	74	Dan Sommer	\N	119	2021-11-15 23:32:59
463	74	Hertrech Eugene Jr.	\N	119	2021-11-15 23:32:59
464	74	Micah Diaz	\N	120	2021-11-15 23:32:59
465	74	Suppy	\N	120	2021-11-15 23:32:59
466	75	Suppy	\N	121	2021-11-22 21:48:46
467	75	Hertrech Eugene Jr.	\N	121	2021-11-22 21:48:46
468	75	Vinny Anatra	\N	122	2021-11-22 21:48:46
469	75	Micah Diaz	\N	122	2021-11-22 21:48:46
470	75	Dan Sommer	\N	122	2021-11-22 21:48:46
471	76	Suppy	\N	123	2021-11-25 22:32:15
472	76	Vinny Anatra	\N	123	2021-11-25 22:32:15
473	76	Dan Sommer	\N	123	2021-11-25 22:32:15
474	76	John Naderi	\N	124	2021-11-25 22:32:15
475	76	Hertrech Eugene Jr.	\N	123	2021-11-25 22:32:15
476	76	Micah Diaz	\N	124	2021-11-25 22:32:15
\.


--
-- Data for Name: race_cars; Type: TABLE DATA; Schema: public; Owner: cj
--

COPY public.race_cars (id, manufacturer, model, year, hp, transmission, modifications, weight_lbs, weight_kg, driven_axle_type, created_at) FROM stdin;
80	Genesis	G70 3.3T	2021	500	8-Speed Auto	3.3L Twin Turbo V6	4000	1814,37	AWD	2021-07-28 23:13:09
81	Nissan	Skyline GT-R R33	1996	500	5-Speed Manual	RB26 DET	3400	1542,21	RWD	2021-07-28 23:13:09
82	Subaru	WRX STI	2020	862	6-Speed Sequential	2.3L Turbo Flat 4	2623	1189,77	AWD	2021-07-28 23:27:37
83	Nissan	Altima	2020	1300	6-Speed Sequential	4.1L Twin Turbo V6	3170	1437,89	RWD	2021-07-28 23:27:37
48	Yamaha	Banshee	2002	95	6-Speed Manual	421cc 2-Stroker	400	181,44	RWD	2021-07-11 16:46:32
84	Chevrolet	C5 Corvette	2000	850	6-Speed Manual	Twin Turbo V8 Iron Block	3200	1451,50	RWD	2021-07-28 23:40:02
90	McLaren	765LT	2021	750	7-Speed DCT	4.0L V8 Twin Turbo	2592	1175,71	RWD	2021-08-09 20:46:40
91	Chevrolet	Malibu Wagon	1980	660	2-Speed Powerglide	Carbureted LS3	3200	1451,50	RWD	2021-08-09 20:46:40
96	Lamborghini	Aventador	2012	715	7-Speed Auto	6.5L V12	4100	1859,73	AWD	2021-09-02 22:51:00
97	Audo	RS3	2017	565	7-Speed DCT	2.5L Straight 5	3593	1629,76	AWD	2021-09-02 22:51:00
98	Porsche	Cayman 718	2019	300	8-Speed DCT	2L Turbocharged 4 Cylinder	3000	1360,78	RWD	2021-09-06 21:47:39
99	Acura	Integra Type-R	2000	197	5-Speed Manual	1.8L 4 Cylinder	2600	1179,34	FWD	2021-09-09 21:57:39
100	Honda	S2000	2002	240	6-Speed Manual	2.0L 4 Cylinder	2800	1270,06	RWD	2021-09-09 21:57:39
105	McLaren	720S	2018	1000	7-Speed DCT	V8 Twin Turbo	3100	1406,14	RWD	2021-09-27 21:51:04
106	Tesla	Model S Plaid	2021	1020	1-Speed Auto	Electric	4766	2161,82	AWD	2021-09-27 21:51:04
109	Bentley	Continental GT Pikes Peak	2019	850	6-Speed Sequential	4L Twin Turbo	3020	1369,85	RWD	2021-10-11 23:02:15
110	Honda	Civic Type R	2019	600	5-Speed Manual	Built K20C1	3300	1496,85	FWD	2021-10-11 23:02:15
111	Halo Infinite	Hoonigan Warthog	2021	1060	4-Speed Auto	410 CI Small Block Ford	6500	2948,35	4WD	2021-10-18 22:53:19
112	Delorian	DMC-12	1981	487	G96.01 With LSD	3.3 V6	2725	1236,04	RWD	2021-10-18 22:53:19
115	BMW	M8 Competition	2020	720	8-Speed Auto	4.4L Twin Turbo V8	4030	1827,98	AWD	2021-11-02 22:29:08
116	Pontiac	GTO	2006	830	6-Speed Manual	6.2L Supercharged V8	3500	1587,57	RWD	2021-11-02 22:30:25
119	Audi	R6 Avant	2021	800	8-Speed Auto	4.0L Twin Turbo V8	5300	2404,04	AWD	2021-11-15 23:21:52
120	Chevrolet	Camaro Pikes Peak Special	1967	950	6-Speed Sequential	7.0L Turbo LS7	3200	1451,50	RWD	2021-11-15 23:21:52
121	Lamborghini	LP610-4	2017	650	7-Speed DCT	V10 VF Supercharged	3800	1723,65	AWD	2021-11-22 21:40:31
122	BMW	E46 M3	2003	850	6-Speed Manual	Turbo S54	3700	1678,29	RWD	2021-11-22 21:40:31
21	Chevrolet	P10 Shorty	1969	400	4-Speed Auto	"Fridge Like" Aero	?	?	RWD	2021-07-06 01:26:07
4	Audi	RS3	2018	800	7-Speed DSG	Tuned	3400	1542,21	AWD	2021-07-05 00:43:08
85	Jeep	Grand Cherokee Trackhawk	2018	1080	8-Speed Auto	6.2L Supercharged Smallblock	5400	2449,40	AWD	2021-07-29 21:45:42
47	Honda	Civic Type R	2021	306	6-Speed Manual	2.0L Turbo K20C1	3075	1394,80	FWD	2021-07-11 16:39:17
86	Ford	GT Heritage Edition	2017	647	7-Speed DCT	3.5L Twin Turbo V6	3300	1496,85	RWD	2021-07-29 21:57:41
87	Toyota	Supra Mk4	1995	1000	6-Speed Manual	3L Turbo 2JZ	4000	1814,37	RWD	2021-07-29 22:15:21
92	Honda	Civic	1994	101	5-Speed Manual	2.0L Non-VTEC B20 4 Cylinder 	2229	1011,06	FWD	2021-08-16 22:22:29
93	Mazda	Miata NB2	2001	100	6-Speed Manual	1.8L VVT 4 Cylinder	2200	997,90	RWD	2021-08-16 22:22:29
101	Nissan	GT-R R35	2017	1400	6-Speed DCT	3.8L VR38 Twin Turbo	4190	1900,55	AWD	2021-09-14 14:21:02
102	Ford	Mustang	2000	1370	2-Speed Powerglide	5.3L Twin Turbo	3700	1678,29	RWD	2021-09-14 14:21:02
107	Volkswagen	Golf R Mk8	2022	315	7-Speed DCT	Turbocharged 2L 4 Cylinder	3400	1542,21	AWD	2021-10-04 22:58:43
108	Volvo	LS1 Amazon	1962	420	4-Speed Manual	5.7L LS1	2500	1133,98	RWD	2021-10-04 22:58:43
73	Harley Davidson	?	2007	240	Air Shifted OEM Transmission	S&S 126ci	915	415,04	RWD	2021-07-12 19:16:17
77	Sierra	Alpha	2020	400	6-Speed Sequential	Turbo Suzuki Hayabusa 1300cc	1350	612,35	RWD	2021-07-20 00:00:04
22	BMW	Safari E36 318 IS	1994	280	5-Speed Manual	Full Send Spec	?	?	RWD	2021-07-06 01:26:07
41	Porsche	Taycan Turbo	2020	670	2-Speed Auto	Electric	5132	2327,84	AWD	2021-07-11 15:14:38
16	Toyota	Supra Mk 4	1994	720	6-Speed Manual	Turbo	3900	1769,01	RWD	2021-07-06 00:26:53
2	Buick	Gasser	1966	400	4-Speed Manual	150 Shot NOS	3260	1478,71	RWD	2021-07-05 00:24:50
42	Nissan	R35 GT-R	2012	700	6-Speed DCT	3.8L Twin Turbo V6	3829	1736,81	RWD	2021-07-11 15:32:59
1	Toyota	Supra Mk 5	2020	409	8-Speed Auto	Tuned	3400	1542,21	RWD	2021-07-05 00:24:50
18	Buick	Grand National	1987	245	?	Turbo and Intercooler	3400	1542,21	RWD	2021-07-06 00:57:10
20	Dodge	Viper ACR-X	2016	640	6-Speed Manual	All Motor	3400	1542,21	RWD	2021-07-06 01:05:10
33	Chevrolet	C6 Corvette Z06	2006	1200	2-Speed Powerglide	Twin Turbo 427 LSX	3400	1542,21	RWD	2021-07-11 12:04:05
37	Mitsubishi	Evo X	2010	675	5-Speed Manual	2.4L Single Turbo Stroker	3400	1542,21	AWD	2021-07-11 12:42:10
54	Pontiac	Trans AM GTA	1988	610	6-Speed Sequential	Supercharged LS3	3400	1542,21	RWD	2021-07-11 17:54:47
51	Nissan	Altima	2020	1300	6-Speed Sequential	4.1L Twin Turbo V6	3170	1437,89	RWD	2021-07-11 17:16:38
9	Lamborghini	Huracán Performante	2019	840	7-Speed DSG	Supercharged	3335	1512,73	AWD	2021-07-05 15:27:35
58	Mazda	FD RX-7	1993	257	5-Speed Manual	1.3L Twin Turbo 13B Rotary	2888	1309,97	RWD	2021-07-11 18:19:07
62	McLaren	Senna Merlin	2019	789	7-Speed DCT	Twin Turbo	3029	1373,93	RWD	2021-07-11 21:08:44
70	Ford	GT500	2020	760	7-Speed DCT	Supercharged	4082	1851,56	RWD	2021-07-11 23:30:33
39	Ford	F-450 + Hoonigan B Team	2019	475	6-Speed Auto	6.7L Diesel V8	28000	12700,60	4WD	2021-07-11 15:09:22
31	Jeep	Wrangler	2014	420	6-Speed Auto?	6.4L HEMI	6000	2721,55	4WD	2021-07-11 11:43:12
27	Audi	R8	2014	600	7-Speed DCT	Supercharged V10	3700	1678,29	AWD	2021-07-07 14:19:12
24	Chevrolet	C6 Corvette	2013	950	6-Speed Sequential	\N	3050	1383,46	RWD	2021-07-06 01:46:31
23	Chevrolet	Nova	1966	736	2-Speed Auto	\N	3650	1655,61	RWD	2021-07-06 01:46:31
76	Chevrolet	C8 Corvette	2021	495	8-Speed DCT	6.2L V8	3650	1655,61	RWD	2021-07-20 00:00:04
11	Chevrolet	Camaro	1967	850	2-Speed Powerglide	NA	3200	1451,50	RWD	2021-07-05 15:35:42
12	Toyota	FD Corolla	2019	950	5-Speed Sequential	Turbo	3200	1451,50	RWD	2021-07-05 15:35:42
32	BMW	E36	1995	420	6-Speed Manual	5.7L LS1	3200	1451,50	RWD	2021-07-11 11:43:12
44	Megalodon	Desert Buggy	1969	582	5-Speed Sequential	Supercharged LS3	3200	1451,50	RWD	2021-07-11 15:49:40
59	Chevrolet	C6 Corvette Z51	2005	1500	2-Speed Powerglide	LSX 427 V8	3200	1451,50	RWD	2021-07-11 18:37:36
28	Mercedes Benz	R63 AMG	2006	560	7-Speed Auto	Supercharged V8	5500	2494,76	AWD	2021-07-07 14:19:12
75	Audi	RS6 Avant	2021	700	8-Speed Auto	4L Twin Turbo	5500	2494,76	AWD	2021-07-17 00:26:23
25	Lexus	GS 300	2000	600	6-Speed Manual	2JZ Turbo	3800	1723,65	RWD	2021-07-07 13:55:07
35	Oldsmobile	Cutlass	1982	840	Lightning Rod Shifters	Supercharged 427 LSX	3800	1723,65	AWD	2021-07-11 12:20:54
36	Nissan	R35 GT-R	2013	705	6-Speed DCT	3.8L Twin Turbo V6	3800	1723,65	AWD	2021-07-11 12:42:10
53	Nissan	R35 GT-R	2009	1200	6-Speed DCT	4.3L Twin Turbo V6	3800	1723,65	AWD	2021-07-11 17:35:58
72	Audi	R8	2017	1500	7-Speed DCT	5.2L V10	3800	1723,65	AWD	2021-07-12 19:16:17
43	Chevrolet	HOWE TA2 Camaro	2013	500	4-Speed Manual	TA2 Spec LS3	2830	1283,67	RWD	2021-07-11 15:32:59
40	Chevrolet	C8 Corvette	2020	750	8-Speed DCT	Twin Turbo LT2 6.2L	3560	1614,79	RWD	2021-07-11 15:14:38
38	Oshkosh	HEMTT	1986	360	4-Speed Auto	12.1L Turbo Diesel	39000	17690,10	8x8	2021-07-11 15:09:22
8	Chevrolet	C10	1974	540	4-Speed Auto	NA	4640	2104,67	RWD	2021-07-05 01:18:33
6	Nissan	Maxima	2020	300	2-Speed CVT	Cooled Front Seats	3676	1667,41	FWD	2021-07-05 01:04:02
52	Dodge	Charger Hellcat	2015	1000	8-Speed Auto	6.2L Twin Turbo V8	4600	2086,52	RWD	2021-07-11 17:16:38
66	Ford	F1 Pickup	1949	1000	6-Speed Sequential	Compound Turbos	4600	2086,52	RWD	2021-07-11 22:23:53
60	Nissan	R35 GT-R Kimbo	2009	2000	6-Speed DCT	4.1L Twin Turbo V6	3500	1587,57	AWD	2021-07-11 18:37:36
74	Telsa	Model S Apex Raven	?	503	Single Speed	Dual Electric Motor	3500	1587,57	AWD	2021-07-17 00:26:23
15	Volkswagen	FD Passat	2015	850	4-Speed Dog Box	NA	3000	1360,78	RWD	2021-07-06 00:26:53
56	Mazda	FD RX-7	1993	1033	6-Speed Manual	Turbo Charged 3 Rotor	3000	1360,78	RWD	2021-07-11 18:06:42
57	Acura	NSX	1991	270	5-Speed Manual	3.0L DOHC 24-Valve V6	3000	1360,78	RWD	2021-07-11 18:19:07
65	Audi	IROZ RS3	2018	1100	7-Speed DCT	Ball Bearing Turbo (Note: who wrote this this? It's got a mofucking 5 cylinder turbo!!!!)	3000	1360,78	AWD	2021-07-11 22:03:54
113	Lamborghini	Huracán EVO	2020	640	7-Speed DCT	5.2L V10	3645	1653,34	AWD	2021-10-27 19:48:18
114	Wolf	GB08 TSC-LT	2018	650	6-Speed Sequential	Honda K20	1300	589,67	RWD	2021-10-27 19:48:18
117	Chevrolet	Caprice PPV	2012	600	6-Speed Auto	Supercharged L77 V8	4580	2077,45	RWD	2021-11-08 21:44:55
118	Honda	Civic EX	1994	280	5-Speed Manual	LS VTEC	2450	1111,30	FWD	2021-11-08 21:44:55
69	Ford	GT	2019	647	7-Speed DCT	Twin Turbo V6	3000	1360,78	RWD	2021-07-11 23:12:25
26	Chevrolet	C8 Corvette Stingray	2020	396	8-Speed Auto	NA	3600	1632,93	RWD	2021-07-07 13:55:07
61	Ford	Mustang Hoonicorn RTR	1965	1499	6-Speed Sequential	Twin Turbo	2998	1359,87	AWD	2021-07-11 21:08:44
29	Tesla	Model S P85+	2012	500	1-Speed 	Single AC Induction Motor	4500	2041,17	RWD	2021-07-07 14:39:17
14	Jeep	GC Trackhawk	2020	575	8-Speed Auto	Supercharged HEMI	5356	2429,44	AWD	2021-07-06 00:13:13
46	Toyota	AE86 Corolla	1986	306	6-Speed Manual	2.0L Turbo K20C1	2600	1179,34	RWD	2021-07-11 16:39:17
45	Dodge	RAM 1500 TRX	2021	702	10-Speed Auto	Supercharged HEMI V8	6396	2901,18	4WD	2021-07-11 15:49:40
49	Acura	Integra GSR	1992	1100	4-Speed Auto	Turbo 1.9L GSR	2450	1111,30	FWD	2021-07-11 17:02:57
67	Mazda	FD RX-7 4-Rotor	1993?	1240	6-Speed Sequential	106MM Turbo	3300	1496,85	AWD	2021-07-11 22:36:18
30	BMW	E46	2001	620	4-Speed Dog Box	6.9 Liter NA V8	2900	1315,42	RWD	2021-07-07 14:39:17
17	Mitsubishi	Evo VIII	2004?	800	5-Speed Manual	Turbo	2900	1315,42	AWD	2021-07-06 00:43:48
13	Porsche	991 911 GT3	2015	420	7-Speed PDK	NACA Ducts	3100	1406,14	RWD	2021-07-05 20:00:48
68	Chevrolet	Nova II SS	1966	860	3-Speed Auto	NA	3595	1630,66	RWD	2021-07-11 22:57:43
7	Nissan	240SX S14	1995	500	6-Speed Manual	Turbo	2680	1215,63	RWD	2021-07-05 01:18:33
10	Dodge	Demon	2019	808	8-Speed Auto	Supercharged	4255	1930,04	RWD	2021-07-05 15:27:35
64	Chevrolet	Impala Donkmaster Z06	1971	1500	6-Speed Sequential	Massive Turbo	5000	2267,96	RWD	2021-07-11 21:49:09
3	Nissan	370Z FD Comp Car	2012	1100	6-Speed Sequential	Twin Turbo NOS	2750	1247,38	RWD	2021-07-05 00:43:08
19	Hyundai	Palisade	2020	291	8-Speed Auto	All Motor	4458	2022,11	AWD	2021-07-06 00:57:10
34	Dodge Brothers	Lunch Money Hot Rod	1927	600	2-Speed Powerglide	Twin Turbo 388 LS	2700	1224,70	RWD	2021-07-11 12:04:05
71	Ferrari	F8 Tributo	2019	710	7-Speed DCT	Twin Turbo	3164	1435,17	RWD	2021-07-11 23:45:27
63	Ford	Raptor Trophy Truck	2020?	760	6-Speed Paddle Shift???	NA	6850	3107,11	4WD	2021-07-11 21:32:59
50	Plymouth	Baracuda	1967	588	3-Speed Auto	3010	3010	1365,31	RWD	2021-07-11 17:02:57
5	Nissan	Skyline GT-R R32	1990	280	5-Speed Manual	Twin Turbo	3153	1430,18	AWD	2021-07-05 01:04:02
55	Ferrari	488 Pista	2020	730	7-Speed DCT	3.9L Twin Twin Turbo	3054	1385,27	RWD	2021-07-11 17:54:47
78	Lexus	IS300	2002	280	6-Speed Sequential	Turbo 1JZ	3200	1451,50	RWD	2021-07-28 22:57:54
79	Chevrolet	C10 Work Truck	1973	423	4-Speed Auto	383 Stroker	3200	1451,50	RWD	2021-07-28 22:57:54
89	Ford	Mustang GT	2013	600	6-Speed Manual	5L V8	3600	1632,93	RWD	2021-08-02 19:45:22
88	Mercedes-Benz	C63 AMG	2013	750	7-Speed Auto	6.2L Supercharged V8	3800	1723,65	RWD	2021-08-02 19:45:22
94	BMW	M3 E36	1995	600	6-Speed Sequential	7.3L LS	2700	1224,70	RWD	2021-08-23 21:31:31
95	Pontiac	Trans Am	1970	808	4-Speed Manual	400 Cubic Inch LSX	3165	1435,62	RWD	2021-08-23 21:31:31
103	Honda	Grom	2015	40	6-Speed Manual	Big Bore CBR300R	200	90,72	RWD	2021-09-20 22:33:57
104	Ford	Bronco	1980	487	3-Speed Auto	Ford 521	4800	2177,24	AWD	2021-09-20 22:33:57
123	Nissan	Skyline GTR R32	1990	600	5-Speed Manual	2.6L Single Turbo RB26	3153	1430,18	AWD	2021-11-25 22:27:39
124	Chevrolet	Corvette C7 Z06	2008	900	6-Speed Sequential	427CI LS7	2950	1338,10	RWD	2021-11-25 22:27:39
\.


--
-- Data for Name: races; Type: TABLE DATA; Schema: public; Owner: cj
--

COPY public.races (id, youtube_name, youtube_link, this_name, that_name, winner, publish_date, created_at) FROM stdin;
1	2020 Toyota Supra vs. 1966 Buick Gasser	https://www.youtube.com/watch?v=d6UM7PBDugA	1	2	2	2020-08-10 00:00:00	2021-07-05 00:24:50
46	1,500hp Audi R8 Races a 240hp Harley Drag Bike… With Nitrous!	https://www.youtube.com/watch?v=vv1WSCVz1qM	72	73	73	2021-07-12 00:00:00	2021-07-12 19:16:25
44	Our 400hp Merch Van Beat Ken Block’s 1,400hp Hoonicorn!? // Hoonicorn Vs the World	https://www.youtube.com/watch?v=_seeGsdCbh4	61	21	61	2020-12-31 00:00:00	2021-07-11 23:32:10
42	Iconic Ford Battle: Ford GT Carbon Edition Vs 1,400hp AWD Mustang // Hoonicorn Vs the World	https://www.youtube.com/watch?v=dLL-5AxL-5o	61	69	61	2020-12-21 00:00:00	2021-07-11 23:12:29
43	Fastest Production Mustang Ever: 760hp Ford GT500 Vs the 1,400hp Hoonicorn // Hoonicorn Vs the World	https://www.youtube.com/watch?v=Ry8zrzh3ygU	61	70	61	2020-12-28 00:00:00	2021-07-11 23:31:01
45	Ford Vs Ferrari! 710hp F8 Tributo Daily Driver Vs Ken Block’s Hoonicorn // Hoonicorn Vs the World	https://www.youtube.com/watch?v=dtz-oESHN2U	61	71	61	2020-12-24 00:00:00	2021-07-11 23:45:29
60	Honda Civic vs. Mazda Miata Epic Showdown: Danger Dan Races Nads’ B20 EG!	https://www.youtube.com/watch?v=Q300SAa9I5M	92	93	92	2021-08-16 00:00:00	2021-08-16 22:23:15
66	650hp big block Ford Bronco vs 40hp fully-built Honda Grom!	https://www.youtube.com/watch?v=i1_BxAikyP0	103	104	104	2021-09-20 00:00:00	2021-09-20 22:35:05
39	1,200hp Compound Turbo Diesel F100 Vs Ken Block’s 1,400hp AWD Ford Mustang // Hoonicorn Vs the World	https://www.youtube.com/watch?v=Xll72rGKiu0	61	66	61	2020-12-03 00:00:00	2021-07-11 22:24:40
12	Can a 1JZ Swapped 240sx Beat a Dodge Viper ACR?	https://www.youtube.com/watch?v=P-AqBnGmj64	7	20	20	2020-11-02 00:00:00	2021-07-06 01:07:41
37	World’s Fastest Donk (1,500hp) Vs Ken Block’s 1,400hp AWD Ford Mustang // Hoonicorn Vs the World	https://www.youtube.com/watch?v=D6V66Ol8axc	61	64	61	2020-11-25 00:00:00	2021-07-11 21:54:37
47	700hp Audi RS6 Avant vs. Tesla Model S Apex: Ultimate Daily Driver Showdown	https://www.youtube.com/watch?v=uFWFneJffOo	74	75	74	2021-07-16 00:00:00	2021-07-17 00:26:32
38	8 Second AWD Audi RS 3 Vs Ken Block’s 1,400hp AWD Ford Mustang Hoonicorn // Hoonicorn Vs the World	https://www.youtube.com/watch?v=4eT8iVwayts	61	65	61	2020-11-30 00:00:00	2021-07-11 22:04:00
36	AWD Trophy Truck Pulls a Wheelie Vs Ken Block’s 1,400hp AWD Ford Mustang // Hoonicorn Vs the World	https://www.youtube.com/watch?v=rhQBvsFAvCo	61	63	61	2020-11-23 00:00:00	2021-07-11 21:33:13
40	Ken Block Vs Rob Dahm!? 1,240hp 4 Rotor AWD RX-7 is our Wildest Battle Yet // Hoonicorn Vs the World	https://www.youtube.com/watch?v=n8_2rWB5vRw	61	67	61	2020-12-14 00:00:00	2021-07-11 22:45:36
35	Ken Block’s 1,400hp AWD Ford Mustang Hoonicorn Vs a McLaren Senna Merlin // Hoonicorn Vs the World	https://www.youtube.com/watch?v=yHlCtUjf_AI	61	62	61	2020-11-16 00:00:00	2021-07-11 21:15:08
41	1100hp Chevy Nova Dragster, Big Block + Slicks Vs Ken Block's AWD Mustang // Hoonicorn Vs the World	https://www.youtube.com/watch?v=wes1wBv_XqY	61	68	61	2020-12-17 00:00:00	2021-07-11 23:02:57
58	750hp C63 AMG Faces a Twin Turbo Mustang on Big Slicks	https://www.youtube.com/watch?v=_ACai3ZD-Mw	88	89	88	2021-08-02 00:00:00	2021-08-02 19:45:32
61	Hand-built widebody 808hp TRANS AM vs Time Attack E36 M3	https://www.youtube.com/watch?v=KsGnwBUqkK0	94	95	94	2021-08-23 00:00:00	2021-08-23 21:31:44
72	Twin Turbo 2020 BMW M8 Competition vs LS Powered 830hp 2006 Pontiac GTO	https://www.youtube.com/watch?v=gbuV-S7zlX0	115	116	116	2021-11-01 00:00:00	2021-11-02 22:27:39
62	715hp V12 Lamborghini Aventador our 565hp Audi RS3 races!	https://www.youtube.com/watch?v=-fY2JsXFQzk	96	97	96	2021-08-30 00:00:00	2021-09-02 22:59:52
63	Brand New Porsche Cayman VS the Hoonigan Undefeated Merch Van	https://www.youtube.com/watch?v=4IuqZBm-hXA	21	98	98	2021-09-06 00:00:00	2021-09-06 21:49:13
64	Acura Integra Type R vs Honda S2000! FWD vs RWD VTEC drag race	https://www.youtube.com/watch?v=DUJW5wQSetQ	99	100	100	2021-09-09 00:00:00	2021-09-09 22:06:45
67	1000hp McLaren 720S vs Tesla Model S Plaid	https://www.youtube.com/watch?v=loUsRGW9z-I	105	106	106	2021-09-27 00:00:00	2021-09-27 21:51:16
69	850HP #PPIHC Bentley Continental GT3 vs 600hp #Sleeper Honda Civic Type R	https://www.youtube.com/watch?v=ZWx51UIVL_s	109	110	110	2021-10-11 00:00:00	2021-10-11 23:04:08
70	1,000hp HALO Warthog vs Marty McFly’s Dream 500hp DeLorean	https://www.youtube.com/watch?v=Nc-kCHReP4E	111	112	111	2021-10-18 00:00:00	2021-10-18 22:54:05
74	800hp 2021 Audi RS6 Avant vs 950hp 1967 Camaro Pikes Peak Specia	https://www.youtube.com/watch?v=b8__sQnh4io	119	120	119	2021-11-15 00:00:00	2021-11-15 23:22:20
75	650hp Lamborghini Huracán LP610-4 vs 850hp BMW M3 E46	https://www.youtube.com/watch?v=Lx3ouOxFWds	121	122	121	2021-11-22 00:00:00	2021-11-22 21:41:22
32	Rob Dahm’s 3 Rotor RX-7 Races a Ferrari 488 Pista, Things Get Sketchy	https://www.youtube.com/watch?v=-U2Z5Gxa6XM	55	56	55	2021-05-27 00:00:00	2021-07-11 18:06:52
7	Porsche GT3 vs. LS3 V8 Swapped Chevy C10	https://www.youtube.com/watch?v=3aUSNB1Uh9Q	13	8	13	2020-09-21 00:00:00	2021-07-05 20:08:15
48	C8 Corvette Races a Turbo Hayabusa Powered Sierra Alpha Racecar	https://www.youtube.com/watch?v=iIEh1hyPWuk	76	77	77	2021-07-19 00:00:00	2021-07-20 00:16:42
49	Sequential Swapped IS300 Daily Driver vs. 565hp Chevy C10 Work Truck… on Spray!	https://www.youtube.com/watch?v=kwl1tqAykAw	78	79	78	2021-04-26 00:00:00	2021-07-28 23:01:23
50	Skyline vs. Hyundai? 600-ish hp R33 GT-R Races a 500hp Genesis	https://www.youtube.com/watch?v=r-IAaT1-25Y	80	81	80	2021-07-26 00:00:00	2021-07-28 23:13:57
51	Travis Pastrana’s 862hp Subaru STI vs. Chris Forsberg’s 1,300hp GTR Powered Altima // Flying Finish	https://www.youtube.com/watch?v=eJl3ZxqF74M	82	83	82	2021-05-31 00:00:00	2021-07-28 23:35:04
52	Cleetus McFarland vs Travis Pastrana: Twin Turbo Vette vs Gymkhana 2020 Subaru STI! // Flying Finish	https://www.youtube.com/watch?v=8xEx5JihzJc	82	84	84	2021-06-03 00:00:00	2021-07-28 23:40:22
53	Rob Dahm’s 1,000hp 3 Rotor RX-7 vs. Travis Pastrana’s Gymkhana 2020 Subaru STI // Flying Finish	https://www.youtube.com/watch?v=6gynS_711Rg	82	56	82	2021-06-07 00:00:00	2021-07-29 21:34:54
54	Can a 1,080hp Jeep Beat Travis Pastrana’s Gymkhana Subaru? // Flying Finish	https://www.youtube.com/watch?v=WJnrWLacaIQ	82	85	85	2021-06-10 00:00:00	2021-07-29 21:46:14
55	Ford GT Battles Travis Pastrana’s Subaru 862hp Gymkhana Car. Racecar vs. Supercar! // Flying Finish	https://www.youtube.com/watch?v=ZCedSaAoeEc	82	86	82	2021-06-14 00:00:00	2021-07-29 21:57:45
56	1,200 AWHP GT-R Races Travis Pastrana’s Gymkhana 2020 Subaru STI // Flying Finish	https://www.youtube.com/watch?v=OLXOsI0U3bE	82	53	53	2021-05-17 00:00:00	2021-07-29 22:05:35
57	10,000 rpm Supra (With 1,100hp) Races Travis Pastrana’s 862hp Subaru WRX STI Gymkhana Car // Flying Finish	https://www.youtube.com/watch?v=u6FdAdTvYYo	82	87	82	2021-06-24 00:00:00	2021-07-29 22:16:24
6	850hp Big Block V8 Camaro vs. 900+hp Pro Drift Corolla	https://www.youtube.com/watch?v=9gemkiSEl4Q	11	12	11	2020-09-14 00:00:00	2021-07-05 15:36:04
13	Our 400hp Chevy Merch Van vs. All. It’s Faster Than We Thought!!	https://www.youtube.com/watch?v=VtyV-0ecNtE	21	22	21	2020-11-09 00:00:00	2021-07-06 01:26:21
4	1JZ Swapped 240sx races a LS3 Chevy C10, the Vin vs. Zac Showdown! 	https://www.youtube.com/watch?v=Thus7TjlSL8	7	8	7	2020-08-31 00:00:00	2021-07-05 01:24:26
9	MKIV Supra vs. The World’s Most Rowdy LS7 Passat (With 8 to 1 Headers!)	https://www.youtube.com/watch?v=PEe4h5jRWww	15	16	15	2020-10-05 00:00:00	2021-07-06 00:33:01
8	707hp Jeep Trackhawk vs. Tuned 2020 Supra Showdown	https://www.youtube.com/watch?v=sLjS54I8Two	1	14	14	2020-09-28 00:00:00	2021-07-06 00:13:47
5	Supercharged Lamborghini vs. Dodge Demon. 800hp Battle!	https://www.youtube.com/watch?v=ZHn0JIyubjg	9	10	9	2020-09-07 00:00:00	2021-07-05 15:30:21
11	Is a Modern Family SUV Faster Than an 80s Turbo Legend? Grand National vs. Palisade	https://www.youtube.com/watch?v=XUQlsF51tE4	18	19	18	2020-10-26 00:00:00	2021-07-06 01:00:00
3	Is a New Maxima Faster Than an R32 GT-R??	https://www.youtube.com/watch?v=KzxMt8tsdcU	5	6	5	2020-08-24 00:00:00	2021-07-05 01:06:01
10	AWD Power Battle: Audi RS3 vs. Mitsubishi Evo	https://www.youtube.com/watch?v=sTKH3rH_-QM	17	4	17	2020-10-19 00:00:00	2021-07-06 00:38:02
2	1,100hp Nissan 370z Pro Drift Car vs. 800+hp Audi RS3	https://www.youtube.com/watch?v=e4V-CmWFJaU	3	4	3	2020-08-17 00:00:00	2021-07-05 00:44:38
16	Can a 700hp Supercharged Minivan Beat a V10 Audi R8?	https://www.youtube.com/watch?v=TBYaIkjBsF0	27	28	27	2021-02-01 00:00:00	2021-07-07 14:19:32
29	1,300hp Altima Drift Car Races a Twin Turbo, 1000hp Hellcat	https://www.youtube.com/watch?v=uH-2D_hL4FU	51	52	51	2021-05-10 00:00:00	2021-07-11 17:16:47
34	3,500hp Drag Race… R35 GT-R vs. C6 Corvette, 7 Second Showdown!	https://www.youtube.com/watch?v=raMOyRJoN74	59	60	60	2021-07-05 00:00:00	2021-07-11 18:37:46
19	1,200hp Corvette vs. 600hp ’27 Dodge. Twin Turbo LS Done Two Very Different Ways!	https://www.youtube.com/watch?v=h2oALL_cOGc	33	34	34	2021-02-22 00:00:00	2021-07-11 12:08:56
28	1,100hp Integra GSR vs. a Big Block Police Car ’67 Cuda, Import/Domestic Battle!	https://www.youtube.com/watch?v=naLth_vvWDQ	49	50	50	2021-05-03 00:00:00	2021-07-11 17:09:02
33	Acura NSX Races an FD RX-7: JDM Hero Showdown!	https://www.youtube.com/watch?v=0wHTwwIJsyw	57	58	58	2021-06-28 00:00:00	2021-07-11 18:19:27
18	LS vs Hemi in a V8 Swap Battle! 6.4l Hemi Jeep Races our Knuckle Busters BMW M3	https://www.youtube.com/watch?v=rhHsNjhrRqo	31	32	32	2021-02-15 00:00:00	2021-07-11 11:43:25
31	610hp Sequential Shifting Trans-Am vs. a Ferrari 488 Pista... With a Le Mans Start!	https://www.youtube.com/watch?v=PsqqJR-FkNQ	54	55	55	2021-05-24 00:00:00	2021-07-11 18:00:40
17	Electric vs. V8! Tesla Model S Races a LS Swapped BMW E46	https://www.youtube.com/watch?v=b_ZciDK4ypQ	29	30	30	2021-02-08 00:00:00	2021-07-07 14:48:19
30	1,200whp GT-R vs. ‘67 Big Block Drag Camaro. 8 Second Import/Domestic Battle	https://www.youtube.com/watch?v=7G5sKT9G7gI	53	11	53	2021-05-17 00:00:00	2021-07-11 17:36:15
26	K20C Turbo Swapped AE86 vs. a 2021 Civic Type R. Same Engine, Two Ways!	https://www.youtube.com/watch?v=mbEA4IaC3Js	46	47	46	2021-04-12 00:00:00	2021-07-11 16:39:24
15	Is Hert’s 600hp GS300 Faster Than a C8 Corvette?	https://www.youtube.com/watch?v=VxU8-EQTYQk	25	26	26	2021-01-25 00:00:00	2021-07-07 14:12:31
25	Racing the New $100k Ram TRX Against Blake Wilkey’s 650hp Race Buggy	https://www.youtube.com/watch?v=peo0OjKssSs	44	45	45	2021-04-05 00:00:00	2021-07-11 15:56:38
20	AWD Swapped, Procharged V8 Cutlass vs. Tanner Foust’s 850hp Drift Taxi	https://www.youtube.com/watch?v=ctTi1wLXndg	15	35	35	2021-03-01 00:00:00	2021-07-11 12:21:11
14	’66 Big Block Nova vs. 950hp Corvette (Drift vs. Drag Battle)	https://www.youtube.com/watch?v=1MogUJGlD7E	23	24	23	2021-01-18 00:00:00	2021-07-06 01:46:45
23	Porsche Taycan vs. World's Fastest C8 Corvette With Emelia Hartford	https://www.youtube.com/watch?v=BEgEKIzN9pw	40	41	41	2021-03-22 00:00:00	2021-07-11 15:14:49
27	Race Spec Banshee vs. Emelia Hartford in the World's Fastest C8 Corvette	https://www.youtube.com/watch?v=TgoLU9oOdng	40	48	48	2021-04-19 00:00:00	2021-07-11 16:46:40
22	68,000lb Drag Race!? 8x8 HEMTT Races our Ford F-450… Towing THREE Cars	https://www.youtube.com/watch?v=sD5T_Ue6RNc	38	39	39	2021-03-15 00:00:00	2021-07-11 15:09:52
21	New School AWD Battle: Dustin Williams' 700hp GTR vs. 675hp Evo X	https://www.youtube.com/watch?v=H0nhoqsugbE	36	37	36	2021-03-08 00:00:00	2021-07-11 12:51:18
24	Coco Zurita’s RWD R35 GT-R Races Michele Abbate's Trans-Am Series Racecar	https://www.youtube.com/watch?v=5xu1Y071Af4	42	43	43	2021-03-29 00:00:00	2021-07-11 15:33:12
59	McLaren 765LT Races an 80s Chevy Wagon… With an LS3 and Slicks	https://www.youtube.com/watch?v=7RRIpjAirsk	90	91	91	2021-08-09 00:00:00	2021-08-09 20:47:13
65	Dancing Dan Rue’s 1400hp R35 GTR vs 1370hp Ford Mustang!	https://www.youtube.com/watch?v=DpEhVC2qv38	101	102	102	2021-09-13 00:00:00	2021-09-14 14:21:50
68	420hp '69 Volvo Amazon 122 vs BRAND NEW Volkswagen Golf R MK8	https://www.youtube.com/watch?v=vNLGFgGif6E	107	108	108	2021-10-04 00:00:00	2021-10-04 22:59:19
71	650HP K20 Powered Wolf (FASTEST car at '21 PPIHC) vs 2020 Lamborghini Huracán EVO	https://www.youtube.com/watch?v=2KRFBfx9DBg	113	114	114	2021-10-25 00:00:00	2021-10-27 19:49:31
73	600hp Chevy Caprice PPV vs LS VTec powered Honda Civic EX	https://www.youtube.com/watch?v=7gxAxETqFI0	117	118	118	2021-11-08 00:00:00	2021-11-08 21:45:39
76	600hp Nissan Skyline GT-R vs 900hp Time Attack Corvette Z06	https://www.youtube.com/watch?v=xVGzcowmXC8	123	124	124	2021-11-25 00:00:00	2021-11-25 22:27:55
\.


--
-- Name: predictions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cj
--

SELECT pg_catalog.setval('public.predictions_id_seq', 476, true);


--
-- Name: racecars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cj
--

SELECT pg_catalog.setval('public.racecars_id_seq', 124, true);


--
-- Name: races_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cj
--

SELECT pg_catalog.setval('public.races_id_seq', 76, true);


--
-- Name: predictions predictions_pkey; Type: CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.predictions
    ADD CONSTRAINT predictions_pkey PRIMARY KEY (id);


--
-- Name: race_cars racecars_pkey; Type: CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.race_cars
    ADD CONSTRAINT racecars_pkey PRIMARY KEY (id);


--
-- Name: races races_pkey; Type: CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_pkey PRIMARY KEY (id);


--
-- Name: predictions predictions_predicted_race_winner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.predictions
    ADD CONSTRAINT predictions_predicted_race_winner_fkey FOREIGN KEY (predicted_race_winner) REFERENCES public.race_cars(id);


--
-- Name: predictions predictions_race_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.predictions
    ADD CONSTRAINT predictions_race_fkey FOREIGN KEY (race) REFERENCES public.races(id);


--
-- Name: races races_that_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_that_name_fkey FOREIGN KEY (that_name) REFERENCES public.race_cars(id);


--
-- Name: races races_this_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_this_name_fkey FOREIGN KEY (this_name) REFERENCES public.race_cars(id);


--
-- Name: races races_winner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cj
--

ALTER TABLE ONLY public.races
    ADD CONSTRAINT races_winner_fkey FOREIGN KEY (winner) REFERENCES public.race_cars(id);


--
-- PostgreSQL database dump complete
--

