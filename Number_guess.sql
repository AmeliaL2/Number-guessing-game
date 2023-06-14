--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    best_guess integer DEFAULT 0 NOT NULL
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
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 785);
INSERT INTO public.games VALUES (2, 1, 519);
INSERT INTO public.games VALUES (3, 2, 697);
INSERT INTO public.games VALUES (4, 2, 823);
INSERT INTO public.games VALUES (5, 1, 357);
INSERT INTO public.games VALUES (6, 1, 502);
INSERT INTO public.games VALUES (7, 1, 712);
INSERT INTO public.games VALUES (8, 3, 82);
INSERT INTO public.games VALUES (9, 4, 489);
INSERT INTO public.games VALUES (10, 4, 655);
INSERT INTO public.games VALUES (11, 5, 501);
INSERT INTO public.games VALUES (12, 5, 992);
INSERT INTO public.games VALUES (13, 4, 222);
INSERT INTO public.games VALUES (14, 4, 218);
INSERT INTO public.games VALUES (15, 4, 545);
INSERT INTO public.games VALUES (16, 6, 546);
INSERT INTO public.games VALUES (17, 6, 166);
INSERT INTO public.games VALUES (18, 7, 2);
INSERT INTO public.games VALUES (19, 7, 840);
INSERT INTO public.games VALUES (20, 6, 551);
INSERT INTO public.games VALUES (21, 6, 12);
INSERT INTO public.games VALUES (22, 6, 494);
INSERT INTO public.games VALUES (23, 8, 142);
INSERT INTO public.games VALUES (24, 8, 4);
INSERT INTO public.games VALUES (25, 9, 276);
INSERT INTO public.games VALUES (26, 9, 351);
INSERT INTO public.games VALUES (27, 8, 527);
INSERT INTO public.games VALUES (28, 8, 641);
INSERT INTO public.games VALUES (29, 8, 526);
INSERT INTO public.games VALUES (30, 10, 356);
INSERT INTO public.games VALUES (31, 10, 315);
INSERT INTO public.games VALUES (32, 11, 296);
INSERT INTO public.games VALUES (33, 11, 700);
INSERT INTO public.games VALUES (34, 10, 147);
INSERT INTO public.games VALUES (35, 10, 330);
INSERT INTO public.games VALUES (36, 10, 806);
INSERT INTO public.games VALUES (37, 12, 884);
INSERT INTO public.games VALUES (38, 12, 23);
INSERT INTO public.games VALUES (39, 13, 424);
INSERT INTO public.games VALUES (40, 13, 201);
INSERT INTO public.games VALUES (41, 12, 804);
INSERT INTO public.games VALUES (42, 12, 255);
INSERT INTO public.games VALUES (43, 12, 942);
INSERT INTO public.games VALUES (44, 14, 63);
INSERT INTO public.games VALUES (45, 14, 680);
INSERT INTO public.games VALUES (46, 15, 41);
INSERT INTO public.games VALUES (47, 15, 659);
INSERT INTO public.games VALUES (48, 14, 404);
INSERT INTO public.games VALUES (49, 14, 428);
INSERT INTO public.games VALUES (50, 14, 605);
INSERT INTO public.games VALUES (51, 3, 895);
INSERT INTO public.games VALUES (52, 16, 665);
INSERT INTO public.games VALUES (53, 16, 551);
INSERT INTO public.games VALUES (54, 17, 779);
INSERT INTO public.games VALUES (55, 17, 543);
INSERT INTO public.games VALUES (56, 16, 229);
INSERT INTO public.games VALUES (57, 16, 769);
INSERT INTO public.games VALUES (58, 16, 405);
INSERT INTO public.games VALUES (59, 18, 908);
INSERT INTO public.games VALUES (60, 18, 874);
INSERT INTO public.games VALUES (61, 19, 521);
INSERT INTO public.games VALUES (62, 19, 221);
INSERT INTO public.games VALUES (63, 18, 32);
INSERT INTO public.games VALUES (64, 18, 257);
INSERT INTO public.games VALUES (65, 18, 844);
INSERT INTO public.games VALUES (66, 20, 677);
INSERT INTO public.games VALUES (67, 20, 849);
INSERT INTO public.games VALUES (68, 21, 122);
INSERT INTO public.games VALUES (69, 21, 487);
INSERT INTO public.games VALUES (70, 20, 743);
INSERT INTO public.games VALUES (71, 20, 884);
INSERT INTO public.games VALUES (72, 20, 967);
INSERT INTO public.games VALUES (73, 3, 363);
INSERT INTO public.games VALUES (74, 22, 850);
INSERT INTO public.games VALUES (75, 22, 880);
INSERT INTO public.games VALUES (76, 23, 843);
INSERT INTO public.games VALUES (77, 23, 721);
INSERT INTO public.games VALUES (78, 22, 595);
INSERT INTO public.games VALUES (79, 22, 57);
INSERT INTO public.games VALUES (80, 22, 218);
INSERT INTO public.games VALUES (870, 24, 871);
INSERT INTO public.games VALUES (232, 24, 233);
INSERT INTO public.games VALUES (108, 25, 109);
INSERT INTO public.games VALUES (358, 25, 359);
INSERT INTO public.games VALUES (673, 24, 676);
INSERT INTO public.games VALUES (260, 24, 262);
INSERT INTO public.games VALUES (541, 24, 542);
INSERT INTO public.games VALUES (278, 26, 279);
INSERT INTO public.games VALUES (888, 26, 889);
INSERT INTO public.games VALUES (393, 27, 394);
INSERT INTO public.games VALUES (686, 27, 687);
INSERT INTO public.games VALUES (689, 26, 692);
INSERT INTO public.games VALUES (880, 26, 882);
INSERT INTO public.games VALUES (214, 26, 215);
INSERT INTO public.games VALUES (103, 28, 104);
INSERT INTO public.games VALUES (117, 28, 118);
INSERT INTO public.games VALUES (812, 29, 813);
INSERT INTO public.games VALUES (274, 29, 275);
INSERT INTO public.games VALUES (844, 28, 847);
INSERT INTO public.games VALUES (948, 28, 950);
INSERT INTO public.games VALUES (83, 28, 84);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (24, 'user_1686761970940', 0);
INSERT INTO public.users VALUES (2, 'user_1686758930388', 2);
INSERT INTO public.users VALUES (25, 'user_1686761970939', 0);
INSERT INTO public.users VALUES (26, 'user_1686762059259', 0);
INSERT INTO public.users VALUES (1, 'user_1686758930389', 5);
INSERT INTO public.users VALUES (27, 'user_1686762059258', 0);
INSERT INTO public.users VALUES (5, 'user_1686759463321', 2);
INSERT INTO public.users VALUES (28, 'user_1686763528034', 0);
INSERT INTO public.users VALUES (29, 'user_1686763528033', 0);
INSERT INTO public.users VALUES (4, 'user_1686759463322', 5);
INSERT INTO public.users VALUES (7, 'user_1686759956441', 2);
INSERT INTO public.users VALUES (6, 'user_1686759956442', 5);
INSERT INTO public.users VALUES (9, 'user_1686760022585', 2);
INSERT INTO public.users VALUES (8, 'user_1686760022586', 5);
INSERT INTO public.users VALUES (11, 'user_1686760312636', 2);
INSERT INTO public.users VALUES (10, 'user_1686760312637', 5);
INSERT INTO public.users VALUES (13, 'user_1686760434072', 2);
INSERT INTO public.users VALUES (12, 'user_1686760434073', 5);
INSERT INTO public.users VALUES (15, 'user_1686760499998', 2);
INSERT INTO public.users VALUES (14, 'user_1686760499999', 5);
INSERT INTO public.users VALUES (17, 'user_1686760611787', 2);
INSERT INTO public.users VALUES (16, 'user_1686760611788', 5);
INSERT INTO public.users VALUES (19, 'user_1686760641525', 2);
INSERT INTO public.users VALUES (18, 'user_1686760641526', 5);
INSERT INTO public.users VALUES (21, 'user_1686760654799', 2);
INSERT INTO public.users VALUES (20, 'user_1686760654800', 5);
INSERT INTO public.users VALUES (3, 'Amelia', 3);
INSERT INTO public.users VALUES (23, 'user_1686760682733', 2);
INSERT INTO public.users VALUES (22, 'user_1686760682734', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 80, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


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

