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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO postgres;

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
-- Name: comet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    speed_km_per_s integer NOT NULL,
    discovered_year integer
);


ALTER TABLE public.comet OWNER TO postgres;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO postgres;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO postgres;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions numeric NOT NULL,
    description text,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO postgres;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer NOT NULL,
    description text,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO postgres;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions integer NOT NULL,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO postgres;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comet VALUES (1, 'Halley', 70, 1758);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 52, 1995);
INSERT INTO public.comet VALUES (3, 'Hyakutake', 40, 1996);
INSERT INTO public.comet VALUES (4, 'Encke', 35, 1786);
INSERT INTO public.comet VALUES (5, 'Tempel-Tuttle', 38, 1865);
INSERT INTO public.comet VALUES (6, 'Neowise', 77, 2020);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 'A barred spiral galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Nearest spiral galaxy', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 7500, 'Part of the Local Group', false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 6000, 'Elliptical galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 4000, 'Famous for its spiral structure', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 9000, 'Large bright galaxy', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 'Earth’s Moon', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600, 'Mars Moon', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600, 'Mars Moon', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4600, 'Jupiter Moon', false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4600, 'Jupiter Moon', false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4600, 'Largest Moon in Solar System', false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4600, 'Jupiter Moon', false, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 'Saturn Moon', false, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4600, 'Saturn Moon', false, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 4600, 'Saturn Moon', false, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 4600, 'Neptune Moon', false, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 4600, 'Pluto’s Moon', false, 9);
INSERT INTO public.moon VALUES (13, 'Dysnomia', 2000, 'Eris’ Moon', false, 10);
INSERT INTO public.moon VALUES (14, 'Oberon', 4600, 'Uranus Moon', false, 7);
INSERT INTO public.moon VALUES (15, 'Titania', 4600, 'Uranus Moon', false, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 4600, 'Uranus Moon', false, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 4600, 'Uranus Moon', false, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 4600, 'Uranus Moon', false, 7);
INSERT INTO public.moon VALUES (19, 'Nereid', 4600, 'Neptune Moon', false, 8);
INSERT INTO public.moon VALUES (20, 'Proteus', 4600, 'Neptune Moon', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 'Closest planet to the Sun', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4600, 'Second planet from the Sun', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4600, 'Our home planet', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 'The Red Planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600, 'Largest planet', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4600, 'Planet with rings', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4600, 'Ice giant', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4600, 'Farthest planet', false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 4000, 'Exoplanet in Alpha Centauri', false, 4);
INSERT INTO public.planet VALUES (10, 'Gliese 581c', 2000, 'Potentially habitable', false, 5);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 1500, 'Super-Earth', false, 6);
INSERT INTO public.planet VALUES (12, 'Pluto', 2348, 'I''m not a planet anymore', false, 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 'A yellow dwarf star', false, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 200, 'Brightest star in the night sky', false, 2);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 8000, 'A red supergiant star', false, 3);
INSERT INTO public.star VALUES (6, 'Alpha Centauri', 6000, 'Closest star system', false, 4);
INSERT INTO public.star VALUES (7, 'Vega', 400, 'A bright main sequence star', false, 5);
INSERT INTO public.star VALUES (8, 'Polaris', 700, 'The North Star', false, 6);
INSERT INTO public.star VALUES (9, 'Some Star Name', 5000, 'A description of the star', false, 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: DATABASE universe; Type: ACL; Schema: -; Owner: postgres
--

GRANT CONNECT,TEMPORARY ON DATABASE universe TO freecodecamp;


--
-- Name: TABLE comet; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.comet TO freecodecamp;


--
-- Name: SEQUENCE comet_comet_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.comet_comet_id_seq TO freecodecamp;


--
-- Name: TABLE galaxy; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.galaxy TO freecodecamp;


--
-- Name: SEQUENCE galaxy_galaxy_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.galaxy_galaxy_id_seq TO freecodecamp;


--
-- Name: TABLE moon; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.moon TO freecodecamp;


--
-- Name: SEQUENCE moon_moon_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.moon_moon_id_seq TO freecodecamp;


--
-- Name: TABLE planet; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.planet TO freecodecamp;


--
-- Name: SEQUENCE planet_planet_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.planet_planet_id_seq TO freecodecamp;


--
-- Name: TABLE star; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.star TO freecodecamp;


--
-- Name: SEQUENCE star_star_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.star_star_id_seq TO freecodecamp;


--
-- PostgreSQL database dump complete
--

