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
    name character varying(20) NOT NULL,
    size integer NOT NULL,
    description text,
    hasblackhole boolean
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
    name character varying(20) NOT NULL,
    size integer NOT NULL,
    haswater boolean,
    circumference numeric,
    description text,
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer NOT NULL,
    circumference numeric,
    description text,
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
-- Name: spacerover; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacerover (
    spacerover_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    distancetraveled numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.spacerover OWNER TO freecodecamp;

--
-- Name: spacerover_spacerover_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacerover_spacerover_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacerover_spacerover_id_seq OWNER TO freecodecamp;

--
-- Name: spacerover_spacerover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacerover_spacerover_id_seq OWNED BY public.spacerover.spacerover_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer NOT NULL,
    circumference numeric,
    description text,
    galaxy_id integer
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
-- Name: spacerover spacerover_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacerover ALTER COLUMN spacerover_id SET DEFAULT nextval('public.spacerover_spacerover_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 105700, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 'Closest galaxy to the Milky Way.', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 'Small spiral galaxy near Andromeda.', false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50000, 'A spiral galaxy with a bright nucleus and dust lane.', false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 60000, 'A classic spiral galaxy with well-defined arms.', true);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 150000, 'A ring galaxy formed by a collision.', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3474, true, 10921.0, 'Earth’s only natural satellite.', 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, false, NULL, 'One of Mars’ two moons.', 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 13, false, NULL, 'Another moon of Mars.', 2);
INSERT INTO public.moon VALUES (4, 'Europa', 3121, true, NULL, 'A moon of Jupiter with a potential subsurface ocean.', 4);
INSERT INTO public.moon VALUES (5, 'Io', 3643, true, 113000, 'A volcanic moon of Jupiter.', 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, true, 166900, 'The largest moon in the Solar System, orbiting Jupiter.', 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 4800, true, 155300, 'A large, heavily cratered moon of Jupiter.', 4);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, true, 160000, 'A moon of Saturn with a thick atmosphere and methane lakes.', 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 1528, false, 47500, 'A moon of Saturn, with a heavily cratered surface.', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 504, true, 50000, 'A moon of Saturn known for its geysers of water ice.', 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 396, false, 39800, 'A moon of Saturn, known for its large impact crater.', 6);
INSERT INTO public.moon VALUES (12, 'Triton', 2706, true, 354000, 'A moon of Neptune with active geysers and a retrograde orbit.', 8);
INSERT INTO public.moon VALUES (13, 'Charon', 1212, false, 38500, 'The largest moon of Pluto, orbiting its dwarf planet.', 7);
INSERT INTO public.moon VALUES (14, 'Titania', 1578, false, 51800, 'The largest moon of Uranus.', 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 1523, false, 47000, 'A moon of Uranus with a heavily cratered surface.', 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 471, false, 23500, 'A small moon of Uranus with a rugged, geologically diverse surface.', 7);
INSERT INTO public.moon VALUES (17, 'Phoebe', 213, false, 73000, 'An irregular moon of Saturn, likely captured from the Kuiper Belt.', 6);
INSERT INTO public.moon VALUES (18, 'Gonggong', 230, false, NULL, 'An irregular moon of Haumea, a dwarf planet in the Kuiper Belt.', 9);
INSERT INTO public.moon VALUES (19, 'Charon (exoplanet)', 1000, false, NULL, 'A moon orbiting an exoplanet, potentially with an icy surface.', 10);
INSERT INTO public.moon VALUES (20, 'Kepler-1625b I', 4000, true, NULL, 'A moon orbiting the exoplanet Kepler-1625b, possibly with an ocean under its surface.', 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 40075.0, 'Our home planet.', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779, 21344.0, 'Known as the Red Planet.', 1);
INSERT INTO public.planet VALUES (3, 'Proxima b', 12000, NULL, 'An exoplanet orbiting Proxima Centauri.', 2);
INSERT INTO public.planet VALUES (4, 'Vulcan', 5000, NULL, 'Hypothetical planet in Star Trek.', 3);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139820, 439264, 'The largest planet in our Solar System.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 116460, 365882, 'A gas giant with a prominent ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, 159354, 'An ice giant with a tilted rotation axis.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, 155600, 'The most distant planet in our Solar System.', 1);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri Bb', 5000, NULL, 'An exoplanet orbiting Alpha Centauri.', 5);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 8000, NULL, 'An exoplanet in the habitable zone of its star.', 6);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 9000, NULL, 'A potentially habitable exoplanet.', 2);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 12000, NULL, 'An exoplanet orbiting in the TRAPPIST-1 system.', 2);


--
-- Data for Name: spacerover; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacerover VALUES (1, 'Curiosity', 11, 284.0, 2);
INSERT INTO public.spacerover VALUES (2, 'Perseverance', 2, 12.0, 2);
INSERT INTO public.spacerover VALUES (3, 'Voyager', 45, NULL, 1);
INSERT INTO public.spacerover VALUES (4, 'Opportunity', 15, 45.0, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1392700, 4379000.0, 'The star at the center of our Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 1714760, 5392000.0, 'Brightest star in the night sky.', 2);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 820000000, NULL, 'A red supergiant in Orion.', 1);
INSERT INTO public.star VALUES (4, 'Rigel', 116100000, NULL, 'A blue supergiant in Orion.', 3);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 200000, 628318.5, 'The closest star to the Sun.', 1);
INSERT INTO public.star VALUES (6, 'Vega', 2462000, NULL, 'A bright star in the Lyra constellation.', 1);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spacerover_spacerover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacerover_spacerover_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spacerover spacerover_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacerover
    ADD CONSTRAINT spacerover_name_key UNIQUE (name);


--
-- Name: spacerover spacerover_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacerover
    ADD CONSTRAINT spacerover_pkey PRIMARY KEY (spacerover_id);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: spacerover fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacerover
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

