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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30),
    has_life boolean NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    description text,
    galaxy_types integer,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth numeric,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types integer,
    is_spherical boolean,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL,
    distance_from_earth numeric,
    star_id integer NOT NULL
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'Something', true);
INSERT INTO public.extra VALUES (2, 'Else', false);
INSERT INTO public.extra VALUES (3, 'test', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Spiral galaxy containing our Solar System', 1, 13000, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 'Closest spiral galaxy to the Milky Way', 1, 14000, 2);
INSERT INTO public.galaxy VALUES ('Messier 87', 'Giant elliptical galaxy in the Virgo Cluster', 3, 12000, 3);
INSERT INTO public.galaxy VALUES ('Triangulum', 'Spiral galaxy in the Local Group', 1, 13000, 4);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 'Spiral galaxy with a bright nucleus', 2, 11000, 5);
INSERT INTO public.galaxy VALUES ('Pinwheel Galaxy', 'Face-on spiral galaxy in Ursa Major', 1, 14000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon1', true, false, 384400, 1, 1);
INSERT INTO public.moon VALUES ('Moon2', true, false, 238855, 2, 1);
INSERT INTO public.moon VALUES ('Moon3', true, false, 413500, 3, 2);
INSERT INTO public.moon VALUES ('Moon4', true, false, 384400, 4, 2);
INSERT INTO public.moon VALUES ('Moon5', true, false, 356500, 5, 3);
INSERT INTO public.moon VALUES ('Moon6', true, false, 413500, 6, 3);
INSERT INTO public.moon VALUES ('Moon7', true, false, 384400, 7, 4);
INSERT INTO public.moon VALUES ('Moon8', true, false, 238855, 8, 4);
INSERT INTO public.moon VALUES ('Moon9', true, false, 384400, 9, 5);
INSERT INTO public.moon VALUES ('Moon10', true, false, 413500, 10, 5);
INSERT INTO public.moon VALUES ('Moon11', true, false, 238855, 11, 6);
INSERT INTO public.moon VALUES ('Moon12', true, false, 413500, 12, 6);
INSERT INTO public.moon VALUES ('Moon13', true, false, 384400, 13, 7);
INSERT INTO public.moon VALUES ('Moon14', true, false, 238855, 14, 7);
INSERT INTO public.moon VALUES ('Moon15', true, false, 356500, 15, 8);
INSERT INTO public.moon VALUES ('Moon16', true, false, 413500, 16, 8);
INSERT INTO public.moon VALUES ('Moon17', true, false, 238855, 17, 9);
INSERT INTO public.moon VALUES ('Moon18', true, false, 384400, 18, 9);
INSERT INTO public.moon VALUES ('Moon19', true, false, 238855, 19, 10);
INSERT INTO public.moon VALUES ('Moon20', true, false, 413500, 20, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet1', true, 1, true, 1, 7);
INSERT INTO public.planet VALUES ('Planet2', false, 2, true, 2, 8);
INSERT INTO public.planet VALUES ('Planet3', true, 3, false, 3, 9);
INSERT INTO public.planet VALUES ('Planet4', false, 1, true, 4, 10);
INSERT INTO public.planet VALUES ('Planet5', true, 2, false, 5, 11);
INSERT INTO public.planet VALUES ('Planet6', false, 3, true, 6, 12);
INSERT INTO public.planet VALUES ('Planet7', true, 1, false, 7, 7);
INSERT INTO public.planet VALUES ('Planet8', false, 2, true, 8, 8);
INSERT INTO public.planet VALUES ('Planet9', true, 3, false, 9, 9);
INSERT INTO public.planet VALUES ('Planet10', false, 1, true, 10, 10);
INSERT INTO public.planet VALUES ('Planet11', true, 2, false, 11, 11);
INSERT INTO public.planet VALUES ('Planet12', false, 3, true, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star1', 100, 1, 1000, 7);
INSERT INTO public.star VALUES ('Star2', 200, 2, 2000, 8);
INSERT INTO public.star VALUES ('Star3', 300, 1, 3000, 9);
INSERT INTO public.star VALUES ('Star4', 400, 3, 4000, 10);
INSERT INTO public.star VALUES ('Star5', 500, 2, 5000, 11);
INSERT INTO public.star VALUES ('Star6', 600, 1, 6000, 12);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 33, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: extra extra_extra_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_extra_id_key UNIQUE (extra_id);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

