--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-03-07 14:25:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16461)
-- Name: transaction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaction (
    id bigint NOT NULL,
    amount double precision,
    category character varying(255),
    date date,
    type character varying(255),
    parent_id bigint
);


ALTER TABLE public.transaction OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16460)
-- Name: transaction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.transaction ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.transaction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16454)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    type character varying(50) NOT NULL,
    category character varying(100) NOT NULL,
    amount numeric(10,2) NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16453)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transactions_id_seq OWNER TO postgres;

--
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 217
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 4700 (class 2604 OID 16457)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 4854 (class 0 OID 16461)
-- Dependencies: 220
-- Data for Name: transaction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaction (id, amount, category, date, type, parent_id) FROM stdin;
21	10000	Salario	2025-02-27	Receita	\N
22	2000	freelancer	2025-02-27	Receita	\N
23	1000	Mercado	2025-02-27	Despesa	\N
24	1300	parcela Carro	2025-02-27	Despesa	\N
25	200	farmacia	2025-02-27	Despesa	\N
\.


--
-- TOC entry 4852 (class 0 OID 16454)
-- Dependencies: 218
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transactions (id, type, category, amount, date) FROM stdin;
\.


--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 219
-- Name: transaction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaction_id_seq', 25, true);


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 217
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 1, false);


--
-- TOC entry 4704 (class 2606 OID 16467)
-- Name: transaction transaction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 16459)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- TOC entry 4705 (class 2606 OID 16468)
-- Name: transaction fk7xnki988uwmiu37cflu756xgb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT fk7xnki988uwmiu37cflu756xgb FOREIGN KEY (parent_id) REFERENCES public.transaction(id);


-- Completed on 2025-03-07 14:25:05

--
-- PostgreSQL database dump complete
--

