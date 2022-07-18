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
    name character varying(30) NOT NULL,
    description text,
    galaxy_types integer,
    age_in_millions_of_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_million_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean,
    planet_types integer,
    star_id integer,
    distance_from_earth numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 'first galaxy', 1, 100);
INSERT INTO public.galaxy VALUES (2, 'g2', 'second galaxy', 1, 100);
INSERT INTO public.galaxy VALUES (3, 'g3', 'second galaxy', 2, 100);
INSERT INTO public.galaxy VALUES (4, 'g4', 'third galaxy', 2, 100);
INSERT INTO public.galaxy VALUES (5, 'g5', 'fourth galaxy', 2, 20);
INSERT INTO public.galaxy VALUES (6, 'g6', 'fifth galaxy', 3, 30);
INSERT INTO public.galaxy VALUES (7, 'g7', 'sixth galaxy', 4, 60);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 1000, 14, 1);
INSERT INTO public.moon VALUES (2, 'm2', 1000, 14, 1);
INSERT INTO public.moon VALUES (3, 'm3', 1400, 10, 3);
INSERT INTO public.moon VALUES (4, 'm4', 1000, 10, 3);
INSERT INTO public.moon VALUES (5, 'm5', 3000, 10, 4);
INSERT INTO public.moon VALUES (6, 'm6', 14000, 5, 7);
INSERT INTO public.moon VALUES (7, 'm7', 8000, 10, 6);
INSERT INTO public.moon VALUES (8, 'm8', 7800, 10, 5);
INSERT INTO public.moon VALUES (9, 'm9', 15000, 40, 9);
INSERT INTO public.moon VALUES (10, 'm10', 90000, 11, 10);
INSERT INTO public.moon VALUES (11, 'm11', 70500, 10, 8);
INSERT INTO public.moon VALUES (12, 'm12', 45000, 13, 2);
INSERT INTO public.moon VALUES (13, 'm13', 18000, 5, 12);
INSERT INTO public.moon VALUES (14, 'm14', 10000, 10, 6);
INSERT INTO public.moon VALUES (15, 'm15', 12000, 9, 9);
INSERT INTO public.moon VALUES (16, 'm16', 1400, 14, 9);
INSERT INTO public.moon VALUES (17, 'm17', 12000, 32, 1);
INSERT INTO public.moon VALUES (18, 'm18', 2000, 6, 6);
INSERT INTO public.moon VALUES (19, 'm19', 5000, 5, 6);
INSERT INTO public.moon VALUES (20, 'm20', 48089, 10, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', true, 1, 1, 100);
INSERT INTO public.planet VALUES (2, 'p2', true, 2, 2, 100);
INSERT INTO public.planet VALUES (3, 'p3', true, 1, 2, 70);
INSERT INTO public.planet VALUES (4, 'p4', false, 2, 2, 75);
INSERT INTO public.planet VALUES (5, 'p5', false, 2, 2, 75);
INSERT INTO public.planet VALUES (6, 'p6', false, 2, 3, 30);
INSERT INTO public.planet VALUES (7, 'p7', true, 3, 4, 25);
INSERT INTO public.planet VALUES (8, 'p8', true, 3, 4, 27);
INSERT INTO public.planet VALUES (9, 'p9', true, 1, 2, 47);
INSERT INTO public.planet VALUES (10, 'p10', true, 2, 5, 15);
INSERT INTO public.planet VALUES (11, 'p11', true, 2, 1, 80);
INSERT INTO public.planet VALUES (12, 'p12', false, 1, 2, 70);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'sat1', 10);
INSERT INTO public.satellite VALUES (2, 'sat2', 20);
INSERT INTO public.satellite VALUES (3, 'sat3', 14);
INSERT INTO public.satellite VALUES (4, 'sat4', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', true, 10, 1);
INSERT INTO public.star VALUES (2, 's2', true, 10, 2);
INSERT INTO public.star VALUES (3, 's3', false, 50, 1);
INSERT INTO public.star VALUES (4, 's4', false, 20, 2);
INSERT INTO public.star VALUES (5, 's5', true, 50, 3);
INSERT INTO public.star VALUES (6, 's6', false, 80, 4);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 4, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

