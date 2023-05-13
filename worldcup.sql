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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (11, 2018, 'Final', 225, 224, 4, 2);
INSERT INTO public.games VALUES (12, 2018, 'Third Place', 227, 226, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Semi-Final', 224, 226, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Semi-Final', 225, 227, 1, 0);
INSERT INTO public.games VALUES (15, 2018, 'Quarter-Final', 224, 228, 3, 2);
INSERT INTO public.games VALUES (16, 2018, 'Quarter-Final', 226, 229, 2, 0);
INSERT INTO public.games VALUES (17, 2018, 'Quarter-Final', 227, 230, 2, 1);
INSERT INTO public.games VALUES (18, 2018, 'Quarter-Final', 225, 231, 2, 0);
INSERT INTO public.games VALUES (19, 2018, 'Eighth-Final', 226, 232, 2, 1);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 229, 233, 1, 0);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 227, 234, 3, 2);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 230, 235, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 224, 236, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 228, 237, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 231, 238, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 225, 239, 4, 3);
INSERT INTO public.games VALUES (27, 2014, 'Final', 240, 239, 1, 0);
INSERT INTO public.games VALUES (28, 2014, 'Third Place', 241, 230, 3, 0);
INSERT INTO public.games VALUES (29, 2014, 'Semi-Final', 239, 241, 1, 0);
INSERT INTO public.games VALUES (30, 2014, 'Semi-Final', 240, 230, 7, 1);
INSERT INTO public.games VALUES (31, 2014, 'Quarter-Final', 241, 242, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Quarter-Final', 239, 227, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Quarter-Final', 230, 232, 2, 1);
INSERT INTO public.games VALUES (34, 2014, 'Quarter-Final', 240, 225, 1, 0);
INSERT INTO public.games VALUES (35, 2014, 'Eighth-Final', 230, 243, 2, 1);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 232, 231, 2, 0);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 225, 244, 2, 0);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 240, 245, 2, 1);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 241, 235, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 242, 246, 2, 1);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 239, 233, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 227, 247, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (224, 'Croatia');
INSERT INTO public.teams VALUES (225, 'France');
INSERT INTO public.teams VALUES (226, 'England');
INSERT INTO public.teams VALUES (227, 'Belgium');
INSERT INTO public.teams VALUES (228, 'Russia');
INSERT INTO public.teams VALUES (229, 'Sweden');
INSERT INTO public.teams VALUES (230, 'Brazil');
INSERT INTO public.teams VALUES (231, 'Uruguay');
INSERT INTO public.teams VALUES (232, 'Colombia');
INSERT INTO public.teams VALUES (233, 'Switzerland');
INSERT INTO public.teams VALUES (234, 'Japan');
INSERT INTO public.teams VALUES (235, 'Mexico');
INSERT INTO public.teams VALUES (236, 'Denmark');
INSERT INTO public.teams VALUES (237, 'Spain');
INSERT INTO public.teams VALUES (238, 'Portugal');
INSERT INTO public.teams VALUES (239, 'Argentina');
INSERT INTO public.teams VALUES (240, 'Germany');
INSERT INTO public.teams VALUES (241, 'Netherlands');
INSERT INTO public.teams VALUES (242, 'Costa Rica');
INSERT INTO public.teams VALUES (243, 'Chile');
INSERT INTO public.teams VALUES (244, 'Nigeria');
INSERT INTO public.teams VALUES (245, 'Algeria');
INSERT INTO public.teams VALUES (246, 'Greece');
INSERT INTO public.teams VALUES (247, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 247, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

