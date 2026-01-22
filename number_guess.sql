--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 32, 10);
INSERT INTO public.games VALUES (2, 33, 991);
INSERT INTO public.games VALUES (3, 33, 65);
INSERT INTO public.games VALUES (4, 34, 196);
INSERT INTO public.games VALUES (5, 34, 676);
INSERT INTO public.games VALUES (6, 33, 898);
INSERT INTO public.games VALUES (7, 33, 268);
INSERT INTO public.games VALUES (8, 33, 732);
INSERT INTO public.games VALUES (9, 35, 765);
INSERT INTO public.games VALUES (10, 35, 752);
INSERT INTO public.games VALUES (11, 36, 821);
INSERT INTO public.games VALUES (12, 36, 11);
INSERT INTO public.games VALUES (13, 35, 128);
INSERT INTO public.games VALUES (14, 35, 433);
INSERT INTO public.games VALUES (15, 35, 546);
INSERT INTO public.games VALUES (16, 37, 406);
INSERT INTO public.games VALUES (17, 37, 925);
INSERT INTO public.games VALUES (18, 38, 115);
INSERT INTO public.games VALUES (19, 38, 372);
INSERT INTO public.games VALUES (20, 37, 306);
INSERT INTO public.games VALUES (21, 37, 547);
INSERT INTO public.games VALUES (22, 37, 37);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1769073962290', 2, 134);
INSERT INTO public.users VALUES (19, 'user_1769074601590', 2, 173);
INSERT INTO public.users VALUES (2, 'user_1769073962291', 5, 93);
INSERT INTO public.users VALUES (18, 'user_1769074601591', 5, 16);
INSERT INTO public.users VALUES (20, 'user_1769074963169', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1769074056156', 2, 160);
INSERT INTO public.users VALUES (21, 'user_1769074963168', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1769074056157', 5, 75);
INSERT INTO public.users VALUES (7, 'user_1769074120274', 2, 269);
INSERT INTO public.users VALUES (23, 'user_1769075023897', 2, 215);
INSERT INTO public.users VALUES (6, 'user_1769074120275', 5, 90);
INSERT INTO public.users VALUES (22, 'user_1769075023898', 5, 53);
INSERT INTO public.users VALUES (9, 'user_1769074232795', 2, 29);
INSERT INTO public.users VALUES (8, 'user_1769074232796', 5, 374);
INSERT INTO public.users VALUES (11, 'user_1769074312564', 2, 372);
INSERT INTO public.users VALUES (25, 'user_1769075049441', 2, 78);
INSERT INTO public.users VALUES (10, 'user_1769074312565', 5, 188);
INSERT INTO public.users VALUES (24, 'user_1769075049442', 5, 386);
INSERT INTO public.users VALUES (1, 'taupik', 4, 7);
INSERT INTO public.users VALUES (13, 'user_1769074439160', 2, 156);
INSERT INTO public.users VALUES (12, 'user_1769074439161', 5, 33);
INSERT INTO public.users VALUES (15, 'user_1769074486884', 2, 192);
INSERT INTO public.users VALUES (27, 'user_1769075130936', 2, 338);
INSERT INTO public.users VALUES (14, 'user_1769074486885', 5, 120);
INSERT INTO public.users VALUES (26, 'user_1769075130937', 5, 106);
INSERT INTO public.users VALUES (28, 'user_1769075185270', 0, NULL);
INSERT INTO public.users VALUES (17, 'user_1769074586445', 2, 74);
INSERT INTO public.users VALUES (29, 'user_1769075185269', 0, NULL);
INSERT INTO public.users VALUES (16, 'user_1769074586446', 5, 501);
INSERT INTO public.users VALUES (31, 'user_1769075476924', 2, 478);
INSERT INTO public.users VALUES (30, 'user_1769075476925', 5, 194);
INSERT INTO public.users VALUES (32, 'Taupik', 0, NULL);
INSERT INTO public.users VALUES (33, 'user_1769076027265', 0, NULL);
INSERT INTO public.users VALUES (34, 'user_1769076027264', 0, NULL);
INSERT INTO public.users VALUES (35, 'user_1769076458953', 0, NULL);
INSERT INTO public.users VALUES (36, 'user_1769076458952', 0, NULL);
INSERT INTO public.users VALUES (37, 'user_1769076512413', 0, NULL);
INSERT INTO public.users VALUES (38, 'user_1769076512412', 0, NULL);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 22, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

