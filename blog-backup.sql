--
-- PostgreSQL database dump
--

-- Dumped from database version 13.11 (Ubuntu 13.11-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.11 (Ubuntu 13.11-1.pgdg20.04+1)

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
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    post_id integer NOT NULL,
    title character varying(50) NOT NULL,
    content text NOT NULL,
    author character varying(50),
    description text,
    publication_date timestamp without time zone,
    card_image_url text DEFAULT 'https://my.alfred.edu/zoom/_images/foster-lake.jpg'::text
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- Name: posts_blog_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_blog_id_seq OWNER TO postgres;

--
-- Name: posts_blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_blog_id_seq OWNED BY public.posts.post_id;


--
-- Name: posts post_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN post_id SET DEFAULT nextval('public.posts_blog_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posts (post_id, title, content, author, description, publication_date, card_image_url) FROM stdin;
1	LOCAL DATABASE BLOG	# TEST OF MARKDOWN\n## Second header\n### third header\n#### fourth header\n\n```\ncode block\nhere\nbecause I can\nand I want to\n```\n\n---\n\n**linebreak above**\n\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs bec\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs bec\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs bec\n\n---\nlinebreak above\n\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs bec\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs bec\nLots of paragraphs because we like it and	Harrison Fritz	Pricing schemes range from a flat fee, fee by number of axles, fee by number of riders, or congestion pricing which varies based on traffic volume. In the congestion pricing scenario, price varies directly with demand for road space: as traffic volume increases, the price of using the toll road also increases.	2002-05-29 00:00:00	https://www.globaltourismforum.org/wp-content/uploads/2020/01/image.jpg
5	test	test test test #test #test	Harrison Fritz	testing a test	1995-05-29 00:00:00	https://www.globaltourismforum.org/wp-content/uploads/2020/01/image.jpg
10	asdfasdfasdf s	# Test this header	Harrison	asldkfj ls df	1995-05-29 00:00:00	https://www.globaltourismforum.org/wp-content/uploads/2020/01/image.jpg
123	123 a test	# TEST OF MARKDOWN ## Second header ### third header #### fourth header ``` code block here because I can and I want to ``` sjdlfkjsf --- **linebreak above** Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot. Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot. Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot. --- linebreak above Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot. Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot. Lots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.	Harrison Fritz	Final test afte rchatgpt fixed my cdoe	1995-05-29 00:00:00	https://www.globaltourismforum.org/wp-content/uploads/2020/01/image.jpg
1101	tet of markdown with whitepace	# TEST OF MARKDOWN\n## Second header\n### third header\n#### fourth header\n\n```\ncode block\nhere\nbecause I can\nand I want to\n```\nsjdlfkjsf\n\n---\n\n**linebreak above**\n\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.\n\n---\nlinebreak above\n\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.\nLots of paragraphs because we like it and I like it alot.0Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.Lots of paragraphs because we like it and I like it alot.	Har	tet of markdown wtih whtie space so you knwo it works	1995-05-29 00:00:00	https://www.globaltourismforum.org/wp-content/uploads/2020/01/image.jpg
\.


--
-- Name: posts_blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_blog_id_seq', 1, false);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (post_id);


--
-- Name: posts posts_title_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_title_key UNIQUE (title);


--
-- PostgreSQL database dump complete
--

