--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

-- Started on 2021-04-10 21:55:55

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
-- TOC entry 204 (class 1259 OID 16768)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(10),
    dept_name character varying(30)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16774)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying(10)
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16765)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying(10),
    emp_no integer
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16786)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer,
    emp_title character varying,
    birth_date date,
    first_name character varying,
    last_name character varying,
    sex character varying,
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16777)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary integer
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16759)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying(10) NOT NULL,
    title character varying(20)
);


ALTER TABLE public.titles OWNER TO postgres;

-- Completed on 2021-04-10 21:55:56

--
-- PostgreSQL database dump complete
--

