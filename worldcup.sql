--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    round character varying(90) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(90) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (870, 2018, 'Final', 4, 2, 398, 399);
INSERT INTO public.games VALUES (871, 2018, 'Third Place', 2, 0, 400, 401);
INSERT INTO public.games VALUES (872, 2018, 'Semi-Final', 2, 1, 399, 401);
INSERT INTO public.games VALUES (873, 2018, 'Semi-Final', 1, 0, 398, 400);
INSERT INTO public.games VALUES (874, 2018, 'Quarter-Final', 3, 2, 399, 402);
INSERT INTO public.games VALUES (875, 2018, 'Quarter-Final', 2, 0, 401, 403);
INSERT INTO public.games VALUES (876, 2018, 'Quarter-Final', 2, 1, 400, 404);
INSERT INTO public.games VALUES (877, 2018, 'Quarter-Final', 2, 0, 398, 405);
INSERT INTO public.games VALUES (878, 2018, 'Eighth-Final', 2, 1, 401, 406);
INSERT INTO public.games VALUES (879, 2018, 'Eighth-Final', 1, 0, 403, 407);
INSERT INTO public.games VALUES (880, 2018, 'Eighth-Final', 3, 2, 400, 408);
INSERT INTO public.games VALUES (881, 2018, 'Eighth-Final', 2, 0, 404, 409);
INSERT INTO public.games VALUES (882, 2018, 'Eighth-Final', 2, 1, 399, 410);
INSERT INTO public.games VALUES (883, 2018, 'Eighth-Final', 2, 1, 402, 411);
INSERT INTO public.games VALUES (884, 2018, 'Eighth-Final', 2, 1, 405, 412);
INSERT INTO public.games VALUES (885, 2018, 'Eighth-Final', 4, 3, 398, 413);
INSERT INTO public.games VALUES (886, 2014, 'Final', 1, 0, 414, 413);
INSERT INTO public.games VALUES (887, 2014, 'Third Place', 3, 0, 415, 404);
INSERT INTO public.games VALUES (888, 2014, 'Semi-Final', 1, 0, 413, 415);
INSERT INTO public.games VALUES (889, 2014, 'Semi-Final', 7, 1, 414, 404);
INSERT INTO public.games VALUES (890, 2014, 'Quarter-Final', 1, 0, 415, 416);
INSERT INTO public.games VALUES (891, 2014, 'Quarter-Final', 1, 0, 413, 400);
INSERT INTO public.games VALUES (892, 2014, 'Quarter-Final', 2, 1, 404, 406);
INSERT INTO public.games VALUES (893, 2014, 'Quarter-Final', 1, 0, 414, 398);
INSERT INTO public.games VALUES (894, 2014, 'Eighth-Final', 2, 1, 404, 417);
INSERT INTO public.games VALUES (895, 2014, 'Eighth-Final', 2, 0, 406, 405);
INSERT INTO public.games VALUES (896, 2014, 'Eighth-Final', 2, 0, 398, 418);
INSERT INTO public.games VALUES (897, 2014, 'Eighth-Final', 2, 1, 414, 419);
INSERT INTO public.games VALUES (898, 2014, 'Eighth-Final', 2, 1, 415, 409);
INSERT INTO public.games VALUES (899, 2014, 'Eighth-Final', 2, 1, 416, 420);
INSERT INTO public.games VALUES (900, 2014, 'Eighth-Final', 1, 0, 413, 407);
INSERT INTO public.games VALUES (901, 2014, 'Eighth-Final', 2, 1, 400, 421);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (398, 'France');
INSERT INTO public.teams VALUES (399, 'Croatia');
INSERT INTO public.teams VALUES (400, 'Belgium');
INSERT INTO public.teams VALUES (401, 'England');
INSERT INTO public.teams VALUES (402, 'Russia');
INSERT INTO public.teams VALUES (403, 'Sweden');
INSERT INTO public.teams VALUES (404, 'Brazil');
INSERT INTO public.teams VALUES (405, 'Uruguay');
INSERT INTO public.teams VALUES (406, 'Colombia');
INSERT INTO public.teams VALUES (407, 'Switzerland');
INSERT INTO public.teams VALUES (408, 'Japan');
INSERT INTO public.teams VALUES (409, 'Mexico');
INSERT INTO public.teams VALUES (410, 'Denmark');
INSERT INTO public.teams VALUES (411, 'Spain');
INSERT INTO public.teams VALUES (412, 'Portugal');
INSERT INTO public.teams VALUES (413, 'Argentina');
INSERT INTO public.teams VALUES (414, 'Germany');
INSERT INTO public.teams VALUES (415, 'Netherlands');
INSERT INTO public.teams VALUES (416, 'Costa Rica');
INSERT INTO public.teams VALUES (417, 'Chile');
INSERT INTO public.teams VALUES (418, 'Nigeria');
INSERT INTO public.teams VALUES (419, 'Algeria');
INSERT INTO public.teams VALUES (420, 'Greece');
INSERT INTO public.teams VALUES (421, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 901, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 421, true);


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

