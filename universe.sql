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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    size integer,
    age integer,
    description text,
    avaible boolean NOT NULL,
    life_chance boolean NOT NULL,
    gap numeric(4,1),
    name character varying(50) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_id integer,
    description text,
    avaible boolean,
    life_chance boolean,
    gap numeric(4,1),
    size integer,
    age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    description text,
    avaible boolean,
    life_chance boolean,
    gap numeric(4,1),
    size integer,
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: race; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.race (
    race_id integer NOT NULL,
    name character varying(50) NOT NULL,
    hoby text
);


ALTER TABLE public.race OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.race_race_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.race_race_id_seq OWNER TO freecodecamp;

--
-- Name: race_race_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.race_race_id_seq OWNED BY public.race.race_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer,
    age integer,
    galaxy_id integer,
    description text,
    avaible boolean,
    life_chance boolean,
    gap numeric(4,1),
    name character varying(50) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: race race_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race ALTER COLUMN race_id SET DEFAULT nextval('public.race_race_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 100, 1, 'rumah', true, true, NULL, 'bima');
INSERT INTO public.galaxy VALUES (2, 150, 2, 'rumah', true, true, NULL, 'andromeda');
INSERT INTO public.galaxy VALUES (3, 120, 1, 'jauh', true, true, NULL, 'Sombreno');
INSERT INTO public.galaxy VALUES (4, 200, 2, 'jauh', true, true, NULL, 'Scluptor');
INSERT INTO public.galaxy VALUES (5, 160, 16, 'idol', true, true, NULL, 'Rose');
INSERT INTO public.galaxy VALUES (6, 164, 18, 'idol', true, true, NULL, 'Jisoo');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonlight', 1, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES (2, 'phobos', 2, NULL, NULL, NULL, NULL, 12, 10);
INSERT INTO public.moon VALUES (3, 'Nhophos', 3, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.moon VALUES (4, 'Sunrise', 1, NULL, NULL, NULL, NULL, 20, 10);
INSERT INTO public.moon VALUES (5, 'kepler', 1, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES (6, 'Greedy', 2, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.moon VALUES (7, 'icebreg', 3, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.moon VALUES (8, 'Leo,', 5, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.moon VALUES (9, 'Aqua', 2, NULL, NULL, NULL, NULL, 10, 12);
INSERT INTO public.moon VALUES (10, 'Aquarius', 4, NULL, NULL, NULL, NULL, 12, 10);
INSERT INTO public.moon VALUES (11, 'Capi', 2, NULL, NULL, NULL, NULL, 30, 10);
INSERT INTO public.moon VALUES (12, 'Pisces', 3, NULL, NULL, NULL, NULL, 30, 30);
INSERT INTO public.moon VALUES (13, 'Mino', 2, NULL, NULL, NULL, NULL, 3, 10);
INSERT INTO public.moon VALUES (14, 'Taur', 3, NULL, NULL, NULL, NULL, 4, 10);
INSERT INTO public.moon VALUES (15, 'Peace', 4, NULL, NULL, NULL, NULL, 10, 20);
INSERT INTO public.moon VALUES (16, 'Lunar', 2, NULL, NULL, NULL, NULL, 3, 30);
INSERT INTO public.moon VALUES (17, 'Beam', 3, NULL, NULL, NULL, NULL, 3, 10);
INSERT INTO public.moon VALUES (18, 'Vanis', 4, NULL, NULL, NULL, NULL, 4, 10);
INSERT INTO public.moon VALUES (19, 'Ray', 3, NULL, NULL, NULL, NULL, 2, 10);
INSERT INTO public.moon VALUES (20, 'Brew', 2, NULL, NULL, NULL, NULL, 3, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Merkurius', 6, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES (2, 'Vanus', 6, NULL, NULL, NULL, NULL, 12, 10);
INSERT INTO public.planet VALUES (3, 'Earth', 6, NULL, NULL, NULL, NULL, 10, 1000);
INSERT INTO public.planet VALUES (4, 'Mars', 5, NULL, NULL, NULL, NULL, 15, 1200);
INSERT INTO public.planet VALUES (5, 'Jupyter', 4, NULL, NULL, NULL, NULL, 22, 200);
INSERT INTO public.planet VALUES (6, 'Saturnus', 3, NULL, NULL, NULL, NULL, 23, 300);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, NULL, NULL, NULL, NULL, 10, 100);
INSERT INTO public.planet VALUES (8, 'Neptunus', 3, NULL, NULL, NULL, NULL, 11, 120);
INSERT INTO public.planet VALUES (9, 'Sun', 1, NULL, NULL, NULL, NULL, 20, 2000);
INSERT INTO public.planet VALUES (10, 'Pluto', 1, NULL, NULL, NULL, NULL, 25, 25);
INSERT INTO public.planet VALUES (11, 'Ice', 1, NULL, NULL, NULL, NULL, 10, 10);
INSERT INTO public.planet VALUES (12, 'Aurora', 2, NULL, NULL, NULL, NULL, 12, 12);
INSERT INTO public.planet VALUES (13, 'Nephis', 1, NULL, NULL, NULL, NULL, 12, 10);


--
-- Data for Name: race; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.race VALUES (1, 'Human', 'Makan');
INSERT INTO public.race VALUES (2, 'Orc', 'Hunting');
INSERT INTO public.race VALUES (3, 'Elf', 'Wood');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, 20, 6, 'YG', NULL, NULL, NULL, 'Kehidupan');
INSERT INTO public.star VALUES (2, 3, 10, 4, 'SM', NULL, NULL, NULL, 'Asmara');
INSERT INTO public.star VALUES (3, 3, 20, 5, 'DA', NULL, NULL, NULL, 'Kejora');
INSERT INTO public.star VALUES (4, 4, 21, 6, 'YG', NULL, NULL, NULL, 'Idola');
INSERT INTO public.star VALUES (5, 3, 22, 5, 'Astro', NULL, NULL, NULL, 'Moobin');
INSERT INTO public.star VALUES (6, 3, 25, 6, 'JYP', NULL, NULL, NULL, 'Momo');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name: race_race_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.race_race_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: race race_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_name_key UNIQUE (name);


--
-- Name: race race_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.race
    ADD CONSTRAINT race_pkey PRIMARY KEY (race_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

