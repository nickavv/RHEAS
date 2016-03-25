--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = soilmoist, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
--

CREATE TABLE smos (
    rid integer NOT NULL,
    rast public.raster,
    fdate date NOT NULL
);



--
--

CREATE SEQUENCE smos_rid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
--

ALTER SEQUENCE smos_rid_seq OWNED BY smos.rid;


--
--

ALTER TABLE ONLY smos ALTER COLUMN rid SET DEFAULT nextval('smos_rid_seq'::regclass);


--
--

COPY smos (rid, rast, fdate) FROM stdin;
1	0100000100000000000000D03F000000000000D0BF00000080BA604140000000402B4EF63F00000000000000000000000000000000E6100000020002006A00C079C400C079C400C079C400C079C400C079C4	2011-01-01
2	0100000100000000000000D03F000000000000D0BF00000080BA604140000000402B4EF63F00000000000000000000000000000000E6100000020002004A00C079C4F07AFA3D5D470E3EB114B23D14390A3E	2011-01-02
3	0100000100000000000000D03F000000000000D0BF00000080BA604140000000402B4EF63F00000000000000000000000000000000E6100000020002004A00C079C49C33183E7545383EAA13D13DDC8E163E	2011-01-03
\.


--
--

SELECT pg_catalog.setval('smos_rid_seq', 3, true);


--
--

ALTER TABLE ONLY smos
    ADD CONSTRAINT smos_pkey PRIMARY KEY (rid);


--
--

CREATE INDEX smos_t ON smos USING btree (fdate);


--
-- PostgreSQL database dump complete
--
