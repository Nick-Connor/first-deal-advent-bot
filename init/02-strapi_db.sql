--
-- PostgreSQL database dump
--

\restrict fb8lgtfPsGfRRBb8ibm4mlfRtLz2ohrOymVBhKPgujHC6EfZf1wnvdDg5NSUUEP

-- Dumped from database version 15.17 (Debian 15.17-1.pgdg12+1)
-- Dumped by pg_dump version 15.17 (Debian 15.17-1.pgdg12+1)

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_permissions OWNER TO "user";

--
-- Name: admin_permissions_api_token_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_permissions_api_token_lnk (
    id integer NOT NULL,
    permission_id integer,
    api_token_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_api_token_lnk OWNER TO "user";

--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_permissions_api_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_api_token_lnk_id_seq OWNER TO "user";

--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_permissions_api_token_lnk_id_seq OWNED BY public.admin_permissions_api_token_lnk.id;


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO "user";

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.admin_permissions_role_lnk OWNER TO "user";

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_lnk_id_seq OWNER TO "user";

--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_permissions_role_lnk_id_seq OWNED BY public.admin_permissions_role_lnk.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_roles OWNER TO "user";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO "user";

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    document_id character varying(255),
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.admin_users OWNER TO "user";

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO "user";

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.admin_users_roles_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_ord double precision,
    user_ord double precision
);


ALTER TABLE public.admin_users_roles_lnk OWNER TO "user";

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.admin_users_roles_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_lnk_id_seq OWNER TO "user";

--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.admin_users_roles_lnk_id_seq OWNED BY public.admin_users_roles_lnk.id;


--
-- Name: advent_cells; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.advent_cells (
    id integer NOT NULL,
    document_id character varying(255),
    day_number integer,
    cell_type character varying(255),
    title character varying(255),
    text_content jsonb,
    quiz_options jsonb,
    quiz_correct_answer integer,
    sticker_file_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    image_url character varying(255)
);


ALTER TABLE public.advent_cells OWNER TO "user";

--
-- Name: advent_cells_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.advent_cells_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.advent_cells_id_seq OWNER TO "user";

--
-- Name: advent_cells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.advent_cells_id_seq OWNED BY public.advent_cells.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.faqs (
    id integer NOT NULL,
    document_id character varying(255),
    category character varying(255),
    question text,
    answer text,
    order_index integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    image jsonb
);


ALTER TABLE public.faqs OWNER TO "user";

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO "user";

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.files (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    alternative_text text,
    caption text,
    focal_point jsonb,
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url text,
    preview_url text,
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.files OWNER TO "user";

--
-- Name: files_folder_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.files_folder_lnk (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_ord double precision
);


ALTER TABLE public.files_folder_lnk OWNER TO "user";

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.files_folder_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_lnk_id_seq OWNER TO "user";

--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.files_folder_lnk_id_seq OWNED BY public.files_folder_lnk.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO "user";

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_mph; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.files_related_mph (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_mph OWNER TO "user";

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.files_related_mph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_mph_id_seq OWNER TO "user";

--
-- Name: files_related_mph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.files_related_mph_id_seq OWNED BY public.files_related_mph.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.i18n_locale OWNER TO "user";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO "user";

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: stats_events; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.stats_events (
    id integer NOT NULL,
    document_id character varying(255),
    event_type character varying(255),
    event_value character varying(255),
    "timestamp" timestamp(6) without time zone,
    telegram_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.stats_events OWNER TO "user";

--
-- Name: stats_events_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.stats_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_events_id_seq OWNER TO "user";

--
-- Name: stats_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.stats_events_id_seq OWNED BY public.stats_events.id;


--
-- Name: strapi_ai_localization_jobs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_ai_localization_jobs (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255) NOT NULL,
    source_locale character varying(255) NOT NULL,
    target_locales jsonb NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_localization_jobs OWNER TO "user";

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_ai_localization_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_ai_localization_jobs_id_seq OWNER TO "user";

--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_ai_localization_jobs_id_seq OWNED BY public.strapi_ai_localization_jobs.id;


--
-- Name: strapi_ai_metadata_jobs; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_ai_metadata_jobs (
    id integer NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(6) without time zone,
    completed_at timestamp(6) without time zone
);


ALTER TABLE public.strapi_ai_metadata_jobs OWNER TO "user";

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_ai_metadata_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_ai_metadata_jobs_id_seq OWNER TO "user";

--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_ai_metadata_jobs_id_seq OWNED BY public.strapi_ai_metadata_jobs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO "user";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO "user";

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_api_token_permissions_token_lnk (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_ord double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_lnk OWNER TO "user";

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_lnk_id_seq OWNED BY public.strapi_api_token_permissions_token_lnk.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    kind character varying(255),
    type character varying(255),
    access_key character varying(255),
    encrypted_key text,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_api_tokens OWNER TO "user";

--
-- Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_api_tokens_admin_user_owner_lnk (
    id integer NOT NULL,
    api_token_id integer,
    user_id integer,
    api_token_ord double precision
);


ALTER TABLE public.strapi_api_tokens_admin_user_owner_lnk OWNER TO "user";

--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_api_tokens_admin_user_owner_lnk_id_seq OWNED BY public.strapi_api_tokens_admin_user_owner_lnk.id;


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO "user";

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO "user";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO "user";

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO "user";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO "user";

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_history_versions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_history_versions (
    id integer NOT NULL,
    content_type character varying(255) NOT NULL,
    related_document_id character varying(255),
    locale character varying(255),
    status character varying(255),
    data jsonb,
    schema jsonb,
    created_at timestamp(6) without time zone,
    created_by_id integer
);


ALTER TABLE public.strapi_history_versions OWNER TO "user";

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_history_versions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_history_versions_id_seq OWNER TO "user";

--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_history_versions_id_seq OWNED BY public.strapi_history_versions.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO "user";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO "user";

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_migrations_internal; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_migrations_internal (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations_internal OWNER TO "user";

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_migrations_internal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_internal_id_seq OWNER TO "user";

--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_migrations_internal_id_seq OWNED BY public.strapi_migrations_internal.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    document_id character varying(255),
    type character varying(255),
    content_type character varying(255),
    entry_document_id character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO "user";

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_id_seq OWNER TO "user";

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_release_actions_release_lnk (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_ord double precision
);


ALTER TABLE public.strapi_release_actions_release_lnk OWNER TO "user";

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_release_actions_release_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_release_actions_release_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_release_actions_release_lnk_id_seq OWNED BY public.strapi_release_actions_release_lnk.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_releases OWNER TO "user";

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_releases_id_seq OWNER TO "user";

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_sessions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_sessions (
    id integer NOT NULL,
    document_id character varying(255),
    user_id character varying(255),
    session_id character varying(255),
    child_id character varying(255),
    device_id character varying(255),
    origin character varying(255),
    expires_at timestamp(6) without time zone,
    absolute_expires_at timestamp(6) without time zone,
    status character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_sessions OWNER TO "user";

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_sessions_id_seq OWNER TO "user";

--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_sessions_id_seq OWNED BY public.strapi_sessions.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO "user";

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO "user";

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_transfer_token_permissions_token_lnk (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_ord double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk OWNER TO "user";

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_lnk_id_seq OWNED BY public.strapi_transfer_token_permissions_token_lnk.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO "user";

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO "user";

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO "user";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO "user";

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: strapi_workflows; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_workflows (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    content_types jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows OWNER TO "user";

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_workflows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_id_seq OWNER TO "user";

--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_workflows_id_seq OWNED BY public.strapi_workflows.id;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_workflows_stage_required_to_publish_lnk (
    id integer NOT NULL,
    workflow_id integer,
    workflow_stage_id integer
);


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk OWNER TO "user";

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_workflows_stage_required_to_publish_lnk_id_seq OWNED BY public.strapi_workflows_stage_required_to_publish_lnk.id;


--
-- Name: strapi_workflows_stages; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_workflows_stages (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    color character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.strapi_workflows_stages OWNER TO "user";

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_workflows_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_id_seq OWNER TO "user";

--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_workflows_stages_id_seq OWNED BY public.strapi_workflows_stages.id;


--
-- Name: strapi_workflows_stages_permissions_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_workflows_stages_permissions_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    permission_id integer,
    permission_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_permissions_lnk OWNER TO "user";

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_permissions_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_workflows_stages_permissions_lnk_id_seq OWNED BY public.strapi_workflows_stages_permissions_lnk.id;


--
-- Name: strapi_workflows_stages_workflow_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.strapi_workflows_stages_workflow_lnk (
    id integer NOT NULL,
    workflow_stage_id integer,
    workflow_id integer,
    workflow_stage_ord double precision
);


ALTER TABLE public.strapi_workflows_stages_workflow_lnk OWNER TO "user";

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_workflows_stages_workflow_lnk_id_seq OWNER TO "user";

--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.strapi_workflows_stages_workflow_lnk_id_seq OWNED BY public.strapi_workflows_stages_workflow_lnk.id;


--
-- Name: telegram_users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.telegram_users (
    id integer NOT NULL,
    document_id character varying(255),
    telegram_id bigint,
    username character varying(255),
    consent_given boolean,
    registered_at timestamp(6) without time zone,
    last_notification_date date,
    new_year_congrat_sent boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.telegram_users OWNER TO "user";

--
-- Name: telegram_users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.telegram_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telegram_users_id_seq OWNER TO "user";

--
-- Name: telegram_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.telegram_users_id_seq OWNED BY public.telegram_users.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    document_id character varying(255),
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_permissions OWNER TO "user";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO "user";

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.up_permissions_role_lnk (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_ord double precision
);


ALTER TABLE public.up_permissions_role_lnk OWNER TO "user";

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.up_permissions_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_lnk_id_seq OWNER TO "user";

--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.up_permissions_role_lnk_id_seq OWNED BY public.up_permissions_role_lnk.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_roles OWNER TO "user";

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO "user";

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    document_id character varying(255),
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.up_users OWNER TO "user";

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO "user";

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.up_users_role_lnk (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_ord double precision
);


ALTER TABLE public.up_users_role_lnk OWNER TO "user";

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.up_users_role_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_lnk_id_seq OWNER TO "user";

--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.up_users_role_lnk_id_seq OWNED BY public.up_users_role_lnk.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    document_id character varying(255),
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.upload_folders OWNER TO "user";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO "user";

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.upload_folders_parent_lnk (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_ord double precision
);


ALTER TABLE public.upload_folders_parent_lnk OWNER TO "user";

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.upload_folders_parent_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_lnk_id_seq OWNER TO "user";

--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.upload_folders_parent_lnk_id_seq OWNED BY public.upload_folders_parent_lnk.id;


--
-- Name: user_progresses; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_progresses (
    id integer NOT NULL,
    document_id character varying(255),
    opened_at timestamp(6) without time zone,
    reward_received boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    user_id integer,
    cell_id integer
);


ALTER TABLE public.user_progresses OWNER TO "user";

--
-- Name: user_progresses_cell_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_progresses_cell_lnk (
    id integer NOT NULL,
    user_progress_id integer,
    advent_cell_id integer,
    user_progress_ord double precision
);


ALTER TABLE public.user_progresses_cell_lnk OWNER TO "user";

--
-- Name: user_progresses_cell_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_progresses_cell_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_progresses_cell_lnk_id_seq OWNER TO "user";

--
-- Name: user_progresses_cell_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_progresses_cell_lnk_id_seq OWNED BY public.user_progresses_cell_lnk.id;


--
-- Name: user_progresses_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_progresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_progresses_id_seq OWNER TO "user";

--
-- Name: user_progresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_progresses_id_seq OWNED BY public.user_progresses.id;


--
-- Name: user_progresses_user_lnk; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_progresses_user_lnk (
    id integer NOT NULL,
    user_progress_id integer,
    telegram_user_id integer,
    user_progress_ord double precision
);


ALTER TABLE public.user_progresses_user_lnk OWNER TO "user";

--
-- Name: user_progresses_user_lnk_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_progresses_user_lnk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_progresses_user_lnk_id_seq OWNER TO "user";

--
-- Name: user_progresses_user_lnk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_progresses_user_lnk_id_seq OWNED BY public.user_progresses_user_lnk.id;


--
-- Name: user_questions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_questions (
    id integer NOT NULL,
    document_id character varying(255),
    question_text text,
    email character varying(255),
    state character varying(255),
    telegram_id character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.user_questions OWNER TO "user";

--
-- Name: user_questions_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.user_questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_questions_id_seq OWNER TO "user";

--
-- Name: user_questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.user_questions_id_seq OWNED BY public.user_questions.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_api_token_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_api_token_lnk_id_seq'::regclass);


--
-- Name: admin_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_lnk_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users_roles_lnk ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_lnk_id_seq'::regclass);


--
-- Name: advent_cells id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.advent_cells ALTER COLUMN id SET DEFAULT nextval('public.advent_cells_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_folder_lnk ALTER COLUMN id SET DEFAULT nextval('public.files_folder_lnk_id_seq'::regclass);


--
-- Name: files_related_mph id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_related_mph ALTER COLUMN id SET DEFAULT nextval('public.files_related_mph_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: stats_events id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stats_events ALTER COLUMN id SET DEFAULT nextval('public.stats_events_id_seq'::regclass);


--
-- Name: strapi_ai_localization_jobs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_localization_jobs_id_seq'::regclass);


--
-- Name: strapi_ai_metadata_jobs id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs ALTER COLUMN id SET DEFAULT nextval('public.strapi_ai_metadata_jobs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_history_versions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_history_versions ALTER COLUMN id SET DEFAULT nextval('public.strapi_history_versions_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_migrations_internal id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_migrations_internal ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_internal_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_lnk_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_sessions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_sessions ALTER COLUMN id SET DEFAULT nextval('public.strapi_sessions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_lnk_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: strapi_workflows id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_id_seq'::regclass);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_permissions_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_permissions_lnk_id_seq'::regclass);


--
-- Name: strapi_workflows_stages_workflow_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk ALTER COLUMN id SET DEFAULT nextval('public.strapi_workflows_stages_workflow_lnk_id_seq'::regclass);


--
-- Name: telegram_users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.telegram_users ALTER COLUMN id SET DEFAULT nextval('public.telegram_users_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_lnk_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users_role_lnk ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_lnk_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_lnk_id_seq'::regclass);


--
-- Name: user_progresses id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses ALTER COLUMN id SET DEFAULT nextval('public.user_progresses_id_seq'::regclass);


--
-- Name: user_progresses_cell_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_cell_lnk ALTER COLUMN id SET DEFAULT nextval('public.user_progresses_cell_lnk_id_seq'::regclass);


--
-- Name: user_progresses_user_lnk id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_user_lnk ALTER COLUMN id SET DEFAULT nextval('public.user_progresses_user_lnk_id_seq'::regclass);


--
-- Name: user_questions id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_questions ALTER COLUMN id SET DEFAULT nextval('public.user_questions_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_permissions (id, document_id, action, action_parameters, subject, properties, conditions, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	vu2dxqjske9q6k5jdss0czv1	plugin::content-manager.explorer.create	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.401	2026-06-08 20:16:41.401	2026-06-08 20:16:41.402	\N	\N	\N
2	tn3x2gevzggl3nm5gven8slk	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.41	2026-06-08 20:16:41.41	2026-06-08 20:16:41.41	\N	\N	\N
3	aq5y5s2ia5c6pchuzljyyjol	plugin::content-manager.explorer.create	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.417	2026-06-08 20:16:41.417	2026-06-08 20:16:41.417	\N	\N	\N
4	lft28uuq3e5419u0uqb4ht17	plugin::content-manager.explorer.create	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.423	2026-06-08 20:16:41.423	2026-06-08 20:16:41.423	\N	\N	\N
5	psbrjm95zlec5aki4ng1xqtp	plugin::content-manager.explorer.create	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.429	2026-06-08 20:16:41.429	2026-06-08 20:16:41.429	\N	\N	\N
6	aj6d9loendp0yr4995rhdugm	plugin::content-manager.explorer.create	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.436	2026-06-08 20:16:41.436	2026-06-08 20:16:41.436	\N	\N	\N
7	vyasbqmfiw7zn6vxwvve6biq	plugin::content-manager.explorer.read	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.442	2026-06-08 20:16:41.442	2026-06-08 20:16:41.442	\N	\N	\N
8	jk0f4ko8j0fi98vigggr7r5m	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.448	2026-06-08 20:16:41.448	2026-06-08 20:16:41.448	\N	\N	\N
9	r9r8j3jhqlxyvgl884ynpdec	plugin::content-manager.explorer.read	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.454	2026-06-08 20:16:41.454	2026-06-08 20:16:41.454	\N	\N	\N
10	pr1uo3e7xm4atfxkrt4o9vgj	plugin::content-manager.explorer.read	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.46	2026-06-08 20:16:41.46	2026-06-08 20:16:41.46	\N	\N	\N
11	xb5ttcyltvj1zovt0oe47irq	plugin::content-manager.explorer.read	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.466	2026-06-08 20:16:41.466	2026-06-08 20:16:41.466	\N	\N	\N
12	cfxew4ti4ofwhfex7wvfnwsl	plugin::content-manager.explorer.read	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.473	2026-06-08 20:16:41.473	2026-06-08 20:16:41.473	\N	\N	\N
13	ph6lzuhn0vwpkvv2o6m57z2f	plugin::content-manager.explorer.update	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.478	2026-06-08 20:16:41.478	2026-06-08 20:16:41.479	\N	\N	\N
14	a0kdgu5nhjukrurn1efe2qlx	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.486	2026-06-08 20:16:41.486	2026-06-08 20:16:41.486	\N	\N	\N
15	y0d0pf4h6asrd85euuggxvh0	plugin::content-manager.explorer.update	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.492	2026-06-08 20:16:41.492	2026-06-08 20:16:41.492	\N	\N	\N
16	wicoiefzcnz99tpy0scts8ln	plugin::content-manager.explorer.update	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.498	2026-06-08 20:16:41.498	2026-06-08 20:16:41.499	\N	\N	\N
17	l541k7ro5vf0lbegvl9lznan	plugin::content-manager.explorer.update	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.505	2026-06-08 20:16:41.505	2026-06-08 20:16:41.506	\N	\N	\N
18	t6m8a5cjgzcbw3wvxr75va5q	plugin::content-manager.explorer.update	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.516	2026-06-08 20:16:41.516	2026-06-08 20:16:41.516	\N	\N	\N
19	h8gi0rlb3nl454lk85xv5mkl	plugin::content-manager.explorer.delete	{}	api::advent-cell.advent-cell	{}	[]	2026-06-08 20:16:41.523	2026-06-08 20:16:41.523	2026-06-08 20:16:41.523	\N	\N	\N
20	cizygezdqi556rzzufmatbmz	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	[]	2026-06-08 20:16:41.529	2026-06-08 20:16:41.529	2026-06-08 20:16:41.529	\N	\N	\N
21	uqqtivk3qwtevf4404elt28l	plugin::content-manager.explorer.delete	{}	api::stats-event.stats-event	{}	[]	2026-06-08 20:16:41.535	2026-06-08 20:16:41.535	2026-06-08 20:16:41.535	\N	\N	\N
22	vlkhc3017jvwyycb05tje4o5	plugin::content-manager.explorer.delete	{}	api::telegram-user.telegram-user	{}	[]	2026-06-08 20:16:41.543	2026-06-08 20:16:41.543	2026-06-08 20:16:41.543	\N	\N	\N
23	s8hiegquqa82jcacloxzouhz	plugin::content-manager.explorer.delete	{}	api::user-progress.user-progress	{}	[]	2026-06-08 20:16:41.549	2026-06-08 20:16:41.549	2026-06-08 20:16:41.549	\N	\N	\N
24	u1ybux9uy1rc43vzv756i1gm	plugin::content-manager.explorer.delete	{}	api::user-question.user-question	{}	[]	2026-06-08 20:16:41.555	2026-06-08 20:16:41.555	2026-06-08 20:16:41.555	\N	\N	\N
25	js0g9u608hzuk2s59hisvrw0	plugin::content-manager.explorer.publish	{}	api::advent-cell.advent-cell	{}	[]	2026-06-08 20:16:41.561	2026-06-08 20:16:41.561	2026-06-08 20:16:41.561	\N	\N	\N
26	ipvgvux9fn8nhck78nsikb3a	plugin::content-manager.explorer.publish	{}	api::faq.faq	{}	[]	2026-06-08 20:16:41.567	2026-06-08 20:16:41.567	2026-06-08 20:16:41.567	\N	\N	\N
27	f8r9rby8d4hzdkrory6uwzf0	plugin::content-manager.explorer.publish	{}	api::stats-event.stats-event	{}	[]	2026-06-08 20:16:41.572	2026-06-08 20:16:41.572	2026-06-08 20:16:41.572	\N	\N	\N
28	ud1hlnl7y51iyvf1knc1d7d8	plugin::content-manager.explorer.publish	{}	api::telegram-user.telegram-user	{}	[]	2026-06-08 20:16:41.578	2026-06-08 20:16:41.578	2026-06-08 20:16:41.578	\N	\N	\N
29	qhtjdfeyc9phanm9dxpxp72x	plugin::content-manager.explorer.publish	{}	api::user-progress.user-progress	{}	[]	2026-06-08 20:16:41.583	2026-06-08 20:16:41.583	2026-06-08 20:16:41.583	\N	\N	\N
30	t5avq0pngf7dzj24u3jsk56a	plugin::content-manager.explorer.publish	{}	api::user-question.user-question	{}	[]	2026-06-08 20:16:41.589	2026-06-08 20:16:41.589	2026-06-08 20:16:41.59	\N	\N	\N
31	ni47djif7gx8l40lulip5du3	plugin::upload.read	{}	\N	{}	[]	2026-06-08 20:16:41.596	2026-06-08 20:16:41.596	2026-06-08 20:16:41.596	\N	\N	\N
32	vb2yebayu3emsky3aatj5215	plugin::upload.configure-view	{}	\N	{}	[]	2026-06-08 20:16:41.601	2026-06-08 20:16:41.601	2026-06-08 20:16:41.601	\N	\N	\N
33	orm3nh6pdrrryrd9bltbxh0l	plugin::upload.assets.create	{}	\N	{}	[]	2026-06-08 20:16:41.607	2026-06-08 20:16:41.607	2026-06-08 20:16:41.607	\N	\N	\N
34	txxmizt6wtkdkls2johe501l	plugin::upload.assets.update	{}	\N	{}	[]	2026-06-08 20:16:41.615	2026-06-08 20:16:41.615	2026-06-08 20:16:41.615	\N	\N	\N
35	g60j4ui3xe5r9ieppl00czrh	plugin::upload.assets.download	{}	\N	{}	[]	2026-06-08 20:16:41.621	2026-06-08 20:16:41.621	2026-06-08 20:16:41.621	\N	\N	\N
36	efus7ra6mpadr8gw85x4p9xg	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-06-08 20:16:41.627	2026-06-08 20:16:41.627	2026-06-08 20:16:41.627	\N	\N	\N
104	p3506qv93iz5fcx4y7qa6zon	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2026-06-08 20:16:42.075	2026-06-08 20:16:42.075	2026-06-08 20:16:42.075	\N	\N	\N
37	jcmk9cufa112emh0m239zo0i	plugin::content-manager.explorer.create	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.637	2026-06-08 20:16:41.637	2026-06-08 20:16:41.637	\N	\N	\N
38	yzxaawqecdgqpt8vxeu3k97n	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	["admin::is-creator"]	2026-06-08 20:16:41.646	2026-06-08 20:16:41.646	2026-06-08 20:16:41.646	\N	\N	\N
39	bw25zcvjsgzcy20qc2umfmmc	plugin::content-manager.explorer.create	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.653	2026-06-08 20:16:41.653	2026-06-08 20:16:41.653	\N	\N	\N
40	p1lzzr84v7955fm71hmg56a0	plugin::content-manager.explorer.create	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.659	2026-06-08 20:16:41.659	2026-06-08 20:16:41.659	\N	\N	\N
41	rq22zspwmh63zgfkjmoowqta	plugin::content-manager.explorer.create	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	["admin::is-creator"]	2026-06-08 20:16:41.664	2026-06-08 20:16:41.664	2026-06-08 20:16:41.665	\N	\N	\N
42	jkdxbb352sbr2ndfyxlutvms	plugin::content-manager.explorer.create	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.67	2026-06-08 20:16:41.67	2026-06-08 20:16:41.67	\N	\N	\N
43	x4eud2n3g8zlsbzrmav635ra	plugin::content-manager.explorer.read	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.676	2026-06-08 20:16:41.676	2026-06-08 20:16:41.676	\N	\N	\N
44	nn95w1gajgea62ppb05koq9y	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	["admin::is-creator"]	2026-06-08 20:16:41.681	2026-06-08 20:16:41.681	2026-06-08 20:16:41.681	\N	\N	\N
45	t52hgskumnswi80blqojsp5f	plugin::content-manager.explorer.read	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.688	2026-06-08 20:16:41.688	2026-06-08 20:16:41.688	\N	\N	\N
46	d2v5wehl4l4psew747pryi62	plugin::content-manager.explorer.read	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.694	2026-06-08 20:16:41.694	2026-06-08 20:16:41.694	\N	\N	\N
47	nazg1fkltjgvyi4nc205aflw	plugin::content-manager.explorer.read	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	["admin::is-creator"]	2026-06-08 20:16:41.7	2026-06-08 20:16:41.7	2026-06-08 20:16:41.7	\N	\N	\N
48	dbgbovld6evlzoo39lsw8ugb	plugin::content-manager.explorer.read	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.706	2026-06-08 20:16:41.706	2026-06-08 20:16:41.706	\N	\N	\N
49	ajmz42gxnz3k8ih8bnhu6nqx	plugin::content-manager.explorer.update	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.711	2026-06-08 20:16:41.711	2026-06-08 20:16:41.711	\N	\N	\N
50	f4ivbodwx6126pjs7th2pw1l	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	["admin::is-creator"]	2026-06-08 20:16:41.717	2026-06-08 20:16:41.717	2026-06-08 20:16:41.717	\N	\N	\N
51	b2d0ykhbh7nuwlt9omiwhvrp	plugin::content-manager.explorer.update	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.723	2026-06-08 20:16:41.723	2026-06-08 20:16:41.723	\N	\N	\N
52	b6yp79r5ec5c80l7zkx05wgp	plugin::content-manager.explorer.update	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	["admin::is-creator"]	2026-06-08 20:16:41.728	2026-06-08 20:16:41.728	2026-06-08 20:16:41.728	\N	\N	\N
53	gfjskxdl78xwcnua22geb77v	plugin::content-manager.explorer.update	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	["admin::is-creator"]	2026-06-08 20:16:41.734	2026-06-08 20:16:41.734	2026-06-08 20:16:41.734	\N	\N	\N
54	s5f0tpky2mqgjbwnc9vcx2tk	plugin::content-manager.explorer.update	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	["admin::is-creator"]	2026-06-08 20:16:41.744	2026-06-08 20:16:41.744	2026-06-08 20:16:41.745	\N	\N	\N
55	dulwi0hndhbgrlb16ehe1az9	plugin::content-manager.explorer.delete	{}	api::advent-cell.advent-cell	{}	["admin::is-creator"]	2026-06-08 20:16:41.751	2026-06-08 20:16:41.751	2026-06-08 20:16:41.751	\N	\N	\N
56	l1emmk82i4vskwdz31cf3pc6	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	["admin::is-creator"]	2026-06-08 20:16:41.756	2026-06-08 20:16:41.756	2026-06-08 20:16:41.757	\N	\N	\N
57	es7sq29e0x16fiv8r1wmy8br	plugin::content-manager.explorer.delete	{}	api::stats-event.stats-event	{}	["admin::is-creator"]	2026-06-08 20:16:41.762	2026-06-08 20:16:41.762	2026-06-08 20:16:41.762	\N	\N	\N
58	xcdzatxljzse4kumj69cd8ri	plugin::content-manager.explorer.delete	{}	api::telegram-user.telegram-user	{}	["admin::is-creator"]	2026-06-08 20:16:41.768	2026-06-08 20:16:41.768	2026-06-08 20:16:41.768	\N	\N	\N
59	t368n0worlbynou94yx1so5r	plugin::content-manager.explorer.delete	{}	api::user-progress.user-progress	{}	["admin::is-creator"]	2026-06-08 20:16:41.773	2026-06-08 20:16:41.773	2026-06-08 20:16:41.773	\N	\N	\N
60	ro12pd9lsdu6kufq6pc73nci	plugin::content-manager.explorer.delete	{}	api::user-question.user-question	{}	["admin::is-creator"]	2026-06-08 20:16:41.778	2026-06-08 20:16:41.778	2026-06-08 20:16:41.778	\N	\N	\N
61	csd450apcnugu13d8n7d628a	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2026-06-08 20:16:41.784	2026-06-08 20:16:41.784	2026-06-08 20:16:41.784	\N	\N	\N
62	smprvb6mdmsfmc4nsvtsj7kh	plugin::upload.configure-view	{}	\N	{}	[]	2026-06-08 20:16:41.789	2026-06-08 20:16:41.789	2026-06-08 20:16:41.789	\N	\N	\N
63	ck8igqbejbgwtdn3m17m4oqq	plugin::upload.assets.create	{}	\N	{}	[]	2026-06-08 20:16:41.794	2026-06-08 20:16:41.794	2026-06-08 20:16:41.794	\N	\N	\N
64	wfvqoa4ko6g8brw2blu5mtma	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2026-06-08 20:16:41.8	2026-06-08 20:16:41.8	2026-06-08 20:16:41.8	\N	\N	\N
65	obzc9i6ixyaiu822vnu0gkn9	plugin::upload.assets.download	{}	\N	{}	[]	2026-06-08 20:16:41.805	2026-06-08 20:16:41.805	2026-06-08 20:16:41.805	\N	\N	\N
66	m85nkl2svxe03flttgvm2ayg	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-06-08 20:16:41.811	2026-06-08 20:16:41.811	2026-06-08 20:16:41.811	\N	\N	\N
67	c114co6j6a9n7gbx13gvfxhy	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-06-08 20:16:41.847	2026-06-08 20:16:41.847	2026-06-08 20:16:41.847	\N	\N	\N
68	pjojt4vteereexamk32228vy	plugin::content-manager.explorer.create	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.853	2026-06-08 20:16:41.853	2026-06-08 20:16:41.854	\N	\N	\N
69	wcikd7pt1c94b9if3f4pdhx0	plugin::content-manager.explorer.create	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.859	2026-06-08 20:16:41.859	2026-06-08 20:16:41.86	\N	\N	\N
70	xz2e92bi2yjrldxvc13kxct1	plugin::content-manager.explorer.create	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.867	2026-06-08 20:16:41.867	2026-06-08 20:16:41.867	\N	\N	\N
71	vlydupwpsyt75l16xpd9aktq	plugin::content-manager.explorer.create	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.874	2026-06-08 20:16:41.874	2026-06-08 20:16:41.874	\N	\N	\N
72	rl9v23p43ddikbgv71iw7cg8	plugin::content-manager.explorer.create	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.879	2026-06-08 20:16:41.879	2026-06-08 20:16:41.879	\N	\N	\N
73	roqyapn99zmvnzqhxuhyoi9c	plugin::content-manager.explorer.create	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.885	2026-06-08 20:16:41.885	2026-06-08 20:16:41.885	\N	\N	\N
74	effp6a1u5zp4l8ic32vte3w3	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-06-08 20:16:41.891	2026-06-08 20:16:41.891	2026-06-08 20:16:41.891	\N	\N	\N
75	as5tx0b2mxq4n8qyfjy3i27p	plugin::content-manager.explorer.read	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.899	2026-06-08 20:16:41.899	2026-06-08 20:16:41.899	\N	\N	\N
76	gfvcmyeq5mijdz0ro6m6vnc0	plugin::content-manager.explorer.read	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.907	2026-06-08 20:16:41.907	2026-06-08 20:16:41.907	\N	\N	\N
77	yt9v3vhrdbbnv6ogqix034f9	plugin::content-manager.explorer.read	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.913	2026-06-08 20:16:41.913	2026-06-08 20:16:41.913	\N	\N	\N
78	etx7ofod5rzwcfrvqsyev003	plugin::content-manager.explorer.read	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.919	2026-06-08 20:16:41.919	2026-06-08 20:16:41.919	\N	\N	\N
79	tm9crond9qhhsrsh5kod2ya8	plugin::content-manager.explorer.read	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.925	2026-06-08 20:16:41.925	2026-06-08 20:16:41.926	\N	\N	\N
80	e8penai8ogogo63kuyulvg1a	plugin::content-manager.explorer.read	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.931	2026-06-08 20:16:41.931	2026-06-08 20:16:41.931	\N	\N	\N
81	yk63csqj3blqbdlaehe2619x	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2026-06-08 20:16:41.937	2026-06-08 20:16:41.937	2026-06-08 20:16:41.938	\N	\N	\N
82	uvtib0a7ftn3n0zp0l9142lx	plugin::content-manager.explorer.update	{}	api::advent-cell.advent-cell	{"fields": ["day_number", "cell_type", "title", "text_content", "image", "quiz_options", "quiz_correct_answer", "sticker_file_id", "user_progresses"]}	[]	2026-06-08 20:16:41.943	2026-06-08 20:16:41.943	2026-06-08 20:16:41.943	\N	\N	\N
83	mg2qsra7i4ldgrjbdaqxhutg	plugin::content-manager.explorer.update	{}	api::faq.faq	{"fields": ["category", "question", "answer", "image", "order_index"]}	[]	2026-06-08 20:16:41.949	2026-06-08 20:16:41.949	2026-06-08 20:16:41.949	\N	\N	\N
84	j9rb9cnmmcwesgkk7htie32f	plugin::content-manager.explorer.update	{}	api::stats-event.stats-event	{"fields": ["event_type", "event_value", "timestamp", "telegram_id"]}	[]	2026-06-08 20:16:41.955	2026-06-08 20:16:41.955	2026-06-08 20:16:41.955	\N	\N	\N
85	z699be4ptm2m0qbkq6t2j2kt	plugin::content-manager.explorer.update	{}	api::telegram-user.telegram-user	{"fields": ["telegram_id", "username", "consent_given", "registered_at", "last_notification_date", "new_year_congrat_sent", "user_progresses"]}	[]	2026-06-08 20:16:41.961	2026-06-08 20:16:41.961	2026-06-08 20:16:41.961	\N	\N	\N
86	nn0te3mym94jwdzt7pbmfdc4	plugin::content-manager.explorer.update	{}	api::user-progress.user-progress	{"fields": ["user", "cell", "opened_at", "reward_received"]}	[]	2026-06-08 20:16:41.968	2026-06-08 20:16:41.968	2026-06-08 20:16:41.969	\N	\N	\N
87	jkm8zp86ns6sahryzijimmon	plugin::content-manager.explorer.update	{}	api::user-question.user-question	{"fields": ["question_text", "email", "state", "telegram_id"]}	[]	2026-06-08 20:16:41.974	2026-06-08 20:16:41.974	2026-06-08 20:16:41.974	\N	\N	\N
88	thwsgqa0nb70ivji0ur0qmpl	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2026-06-08 20:16:41.98	2026-06-08 20:16:41.98	2026-06-08 20:16:41.98	\N	\N	\N
89	iyqik74enbmjcikr31ddu7td	plugin::content-manager.explorer.delete	{}	api::advent-cell.advent-cell	{}	[]	2026-06-08 20:16:41.986	2026-06-08 20:16:41.986	2026-06-08 20:16:41.986	\N	\N	\N
90	yg2q4tgkqs4nwt1frdwpd2o0	plugin::content-manager.explorer.delete	{}	api::faq.faq	{}	[]	2026-06-08 20:16:41.991	2026-06-08 20:16:41.991	2026-06-08 20:16:41.992	\N	\N	\N
91	nowvtx3gbk6w1n79sksvtem0	plugin::content-manager.explorer.delete	{}	api::stats-event.stats-event	{}	[]	2026-06-08 20:16:41.997	2026-06-08 20:16:41.997	2026-06-08 20:16:41.998	\N	\N	\N
92	h7pmjqmhnn3q4tg7e8rdfesd	plugin::content-manager.explorer.delete	{}	api::telegram-user.telegram-user	{}	[]	2026-06-08 20:16:42.004	2026-06-08 20:16:42.004	2026-06-08 20:16:42.004	\N	\N	\N
93	czu0f3589vcpbxovw369p8vx	plugin::content-manager.explorer.delete	{}	api::user-progress.user-progress	{}	[]	2026-06-08 20:16:42.009	2026-06-08 20:16:42.009	2026-06-08 20:16:42.01	\N	\N	\N
94	rfq7rwwgjsmwdyssdaxe1jrs	plugin::content-manager.explorer.delete	{}	api::user-question.user-question	{}	[]	2026-06-08 20:16:42.019	2026-06-08 20:16:42.019	2026-06-08 20:16:42.019	\N	\N	\N
95	ua3pwa64c1t4v3bzaq6e5qot	plugin::content-manager.explorer.publish	{}	plugin::users-permissions.user	{}	[]	2026-06-08 20:16:42.024	2026-06-08 20:16:42.024	2026-06-08 20:16:42.024	\N	\N	\N
96	j5rmdnom1s24ahmm0b8bwprw	plugin::content-manager.explorer.publish	{}	api::advent-cell.advent-cell	{}	[]	2026-06-08 20:16:42.03	2026-06-08 20:16:42.03	2026-06-08 20:16:42.03	\N	\N	\N
97	l6mzw1acudqy56pws94ygabe	plugin::content-manager.explorer.publish	{}	api::faq.faq	{}	[]	2026-06-08 20:16:42.036	2026-06-08 20:16:42.036	2026-06-08 20:16:42.036	\N	\N	\N
98	voqa0h2c0x7c4trs4loda3zr	plugin::content-manager.explorer.publish	{}	api::stats-event.stats-event	{}	[]	2026-06-08 20:16:42.041	2026-06-08 20:16:42.041	2026-06-08 20:16:42.041	\N	\N	\N
99	iak9v0zmvl22mj7jkxtrasmv	plugin::content-manager.explorer.publish	{}	api::telegram-user.telegram-user	{}	[]	2026-06-08 20:16:42.047	2026-06-08 20:16:42.047	2026-06-08 20:16:42.047	\N	\N	\N
100	nu68a5fnqlvg7mff3y3ouq3k	plugin::content-manager.explorer.publish	{}	api::user-progress.user-progress	{}	[]	2026-06-08 20:16:42.052	2026-06-08 20:16:42.052	2026-06-08 20:16:42.052	\N	\N	\N
101	pug8fkwstjgscfwi4hv76q2p	plugin::content-manager.explorer.publish	{}	api::user-question.user-question	{}	[]	2026-06-08 20:16:42.058	2026-06-08 20:16:42.058	2026-06-08 20:16:42.058	\N	\N	\N
102	jzmc02qzx34wr5oudn5yflwd	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2026-06-08 20:16:42.063	2026-06-08 20:16:42.063	2026-06-08 20:16:42.063	\N	\N	\N
103	d5bqvhe6r7ey9s7w2qxq92d4	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2026-06-08 20:16:42.069	2026-06-08 20:16:42.069	2026-06-08 20:16:42.069	\N	\N	\N
105	jd0jtl4b44sbxeq7uqh543ef	plugin::content-type-builder.read	{}	\N	{}	[]	2026-06-08 20:16:42.081	2026-06-08 20:16:42.081	2026-06-08 20:16:42.081	\N	\N	\N
106	aoqmxjx7k7xx1wf1vh2wfsr2	plugin::email.settings.read	{}	\N	{}	[]	2026-06-08 20:16:42.087	2026-06-08 20:16:42.087	2026-06-08 20:16:42.087	\N	\N	\N
107	tb69nia68hz7ribysyltoau4	plugin::upload.read	{}	\N	{}	[]	2026-06-08 20:16:42.092	2026-06-08 20:16:42.092	2026-06-08 20:16:42.092	\N	\N	\N
108	syhvq2dutcyki44mu1hat4wi	plugin::upload.assets.create	{}	\N	{}	[]	2026-06-08 20:16:42.098	2026-06-08 20:16:42.098	2026-06-08 20:16:42.098	\N	\N	\N
109	mffogsyzuwktsaz4k1e3bp7z	plugin::upload.assets.update	{}	\N	{}	[]	2026-06-08 20:16:42.104	2026-06-08 20:16:42.104	2026-06-08 20:16:42.104	\N	\N	\N
110	filcpvb1xjgay0drv2t2iwst	plugin::upload.assets.download	{}	\N	{}	[]	2026-06-08 20:16:42.11	2026-06-08 20:16:42.11	2026-06-08 20:16:42.11	\N	\N	\N
111	zb3aybqtm2fke4zjn6ykcogm	plugin::upload.assets.copy-link	{}	\N	{}	[]	2026-06-08 20:16:42.115	2026-06-08 20:16:42.115	2026-06-08 20:16:42.115	\N	\N	\N
112	xcxeqa4f58tyb7ofh3yneosp	plugin::upload.configure-view	{}	\N	{}	[]	2026-06-08 20:16:42.121	2026-06-08 20:16:42.121	2026-06-08 20:16:42.121	\N	\N	\N
113	hnv1fiul2iw0pqa2rfuotnw8	plugin::upload.settings.read	{}	\N	{}	[]	2026-06-08 20:16:42.127	2026-06-08 20:16:42.127	2026-06-08 20:16:42.127	\N	\N	\N
114	a94jcbhqdd5dlu2xnrwfknkg	plugin::i18n.locale.create	{}	\N	{}	[]	2026-06-08 20:16:42.133	2026-06-08 20:16:42.133	2026-06-08 20:16:42.133	\N	\N	\N
115	m1yv1qo1065jm6amt5jzbpsa	plugin::i18n.locale.read	{}	\N	{}	[]	2026-06-08 20:16:42.139	2026-06-08 20:16:42.139	2026-06-08 20:16:42.139	\N	\N	\N
116	c86h914dn54gc77tq7glbckb	plugin::i18n.locale.update	{}	\N	{}	[]	2026-06-08 20:16:42.145	2026-06-08 20:16:42.145	2026-06-08 20:16:42.145	\N	\N	\N
117	cp77821vzj5l2gk0hwjr1aus	plugin::i18n.locale.delete	{}	\N	{}	[]	2026-06-08 20:16:42.151	2026-06-08 20:16:42.151	2026-06-08 20:16:42.151	\N	\N	\N
118	zlauq1swk93p1jiw1pwqxsth	plugin::users-permissions.roles.create	{}	\N	{}	[]	2026-06-08 20:16:42.156	2026-06-08 20:16:42.156	2026-06-08 20:16:42.156	\N	\N	\N
119	q52lq7sfoxsgbvfsl5kqgj0d	plugin::users-permissions.roles.read	{}	\N	{}	[]	2026-06-08 20:16:42.162	2026-06-08 20:16:42.162	2026-06-08 20:16:42.162	\N	\N	\N
120	zue0zj2drjkzsq6qgd43p83k	plugin::users-permissions.roles.update	{}	\N	{}	[]	2026-06-08 20:16:42.168	2026-06-08 20:16:42.168	2026-06-08 20:16:42.168	\N	\N	\N
121	berqje3v98uvhdvrqr71xo4d	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2026-06-08 20:16:42.174	2026-06-08 20:16:42.174	2026-06-08 20:16:42.174	\N	\N	\N
122	q8oh2isest0zp2qqkr00amei	plugin::users-permissions.providers.read	{}	\N	{}	[]	2026-06-08 20:16:42.181	2026-06-08 20:16:42.181	2026-06-08 20:16:42.181	\N	\N	\N
123	l2rm0cjn81fd18eg3hwc7wbp	plugin::users-permissions.providers.update	{}	\N	{}	[]	2026-06-08 20:16:42.186	2026-06-08 20:16:42.186	2026-06-08 20:16:42.186	\N	\N	\N
124	z87yel1rlzgwszao8d3i7cla	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2026-06-08 20:16:42.195	2026-06-08 20:16:42.195	2026-06-08 20:16:42.195	\N	\N	\N
125	rv23gwzsi5mgzi4qg5f62ll9	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2026-06-08 20:16:42.201	2026-06-08 20:16:42.201	2026-06-08 20:16:42.201	\N	\N	\N
126	gebtjkgl4vgjtai3krux0ai4	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2026-06-08 20:16:42.207	2026-06-08 20:16:42.207	2026-06-08 20:16:42.207	\N	\N	\N
127	i1o6acoa72b676pm0vlgjf1m	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2026-06-08 20:16:42.213	2026-06-08 20:16:42.213	2026-06-08 20:16:42.213	\N	\N	\N
128	ogtxpd8vsavsl9qan9kb7s31	admin::marketplace.read	{}	\N	{}	[]	2026-06-08 20:16:42.218	2026-06-08 20:16:42.218	2026-06-08 20:16:42.218	\N	\N	\N
129	l6jv25w9gwecbkv3dli6ybpt	admin::webhooks.create	{}	\N	{}	[]	2026-06-08 20:16:42.224	2026-06-08 20:16:42.224	2026-06-08 20:16:42.224	\N	\N	\N
130	g4nzmdbifvjkfhlmnp3sv447	admin::webhooks.read	{}	\N	{}	[]	2026-06-08 20:16:42.23	2026-06-08 20:16:42.23	2026-06-08 20:16:42.23	\N	\N	\N
131	ci06gnigz6uttlvynk3yt4oo	admin::webhooks.update	{}	\N	{}	[]	2026-06-08 20:16:42.236	2026-06-08 20:16:42.236	2026-06-08 20:16:42.236	\N	\N	\N
132	v6qweaalhduon7vmjdnkp7r4	admin::webhooks.delete	{}	\N	{}	[]	2026-06-08 20:16:42.243	2026-06-08 20:16:42.243	2026-06-08 20:16:42.243	\N	\N	\N
133	sw4h5l4ax31csxkkc687hzyf	admin::users.create	{}	\N	{}	[]	2026-06-08 20:16:42.249	2026-06-08 20:16:42.249	2026-06-08 20:16:42.249	\N	\N	\N
134	lrnwmdlaniv1od19zx8f50nj	admin::users.read	{}	\N	{}	[]	2026-06-08 20:16:42.256	2026-06-08 20:16:42.256	2026-06-08 20:16:42.256	\N	\N	\N
135	eykutqa4pjkt3zs1b0rzu274	admin::users.update	{}	\N	{}	[]	2026-06-08 20:16:42.262	2026-06-08 20:16:42.262	2026-06-08 20:16:42.262	\N	\N	\N
136	tlu6mbkz3j0j3qo17bteglml	admin::users.delete	{}	\N	{}	[]	2026-06-08 20:16:42.267	2026-06-08 20:16:42.267	2026-06-08 20:16:42.267	\N	\N	\N
137	m896hw64fxvhdt5ojdoqqdrs	admin::roles.create	{}	\N	{}	[]	2026-06-08 20:16:42.274	2026-06-08 20:16:42.274	2026-06-08 20:16:42.274	\N	\N	\N
138	y7xe34n9e9fbh7jd32xbnp59	admin::roles.read	{}	\N	{}	[]	2026-06-08 20:16:42.281	2026-06-08 20:16:42.281	2026-06-08 20:16:42.281	\N	\N	\N
139	ag4184cwd18trmgpinpt8p4y	admin::roles.update	{}	\N	{}	[]	2026-06-08 20:16:42.288	2026-06-08 20:16:42.288	2026-06-08 20:16:42.288	\N	\N	\N
140	g3c7l1p0kaabh4j4x9yvn56u	admin::roles.delete	{}	\N	{}	[]	2026-06-08 20:16:42.295	2026-06-08 20:16:42.295	2026-06-08 20:16:42.295	\N	\N	\N
141	mzyxhw814tfs968g6q7k7lbo	admin::api-tokens.access	{}	\N	{}	[]	2026-06-08 20:16:42.301	2026-06-08 20:16:42.301	2026-06-08 20:16:42.301	\N	\N	\N
142	d6vf1nabuj29jeue384nsb9g	admin::admin-tokens.access	{}	\N	{}	[]	2026-06-08 20:16:42.308	2026-06-08 20:16:42.308	2026-06-08 20:16:42.309	\N	\N	\N
143	s8iwq0gfn5erdgzrmhqvwjfc	admin::admin-tokens.create	{}	\N	{}	[]	2026-06-08 20:16:42.314	2026-06-08 20:16:42.314	2026-06-08 20:16:42.314	\N	\N	\N
144	o0w1bf6xr1rrnnyo6hlwh8ah	admin::admin-tokens.read	{}	\N	{}	[]	2026-06-08 20:16:42.322	2026-06-08 20:16:42.322	2026-06-08 20:16:42.322	\N	\N	\N
145	t73m8bwm2rb8dhhdis1v4963	admin::admin-tokens.update	{}	\N	{}	[]	2026-06-08 20:16:42.329	2026-06-08 20:16:42.329	2026-06-08 20:16:42.329	\N	\N	\N
146	ifptw17htb1aatmhihm5npw4	admin::admin-tokens.regenerate	{}	\N	{}	[]	2026-06-08 20:16:42.337	2026-06-08 20:16:42.337	2026-06-08 20:16:42.337	\N	\N	\N
147	e78657vekujxdktdks839q66	admin::admin-tokens.delete	{}	\N	{}	[]	2026-06-08 20:16:42.343	2026-06-08 20:16:42.343	2026-06-08 20:16:42.343	\N	\N	\N
148	whqwu2qv6wa1udnjzctjlkgr	admin::api-tokens.create	{}	\N	{}	[]	2026-06-08 20:16:42.349	2026-06-08 20:16:42.349	2026-06-08 20:16:42.349	\N	\N	\N
149	frfud1zaa4lthx3trr1ooz7n	admin::api-tokens.read	{}	\N	{}	[]	2026-06-08 20:16:42.356	2026-06-08 20:16:42.356	2026-06-08 20:16:42.356	\N	\N	\N
150	sp382d3qkpqxl5ialic0uw91	admin::api-tokens.update	{}	\N	{}	[]	2026-06-08 20:16:42.362	2026-06-08 20:16:42.362	2026-06-08 20:16:42.362	\N	\N	\N
151	gni63j52uenxq2nb74ae1voy	admin::api-tokens.regenerate	{}	\N	{}	[]	2026-06-08 20:16:42.369	2026-06-08 20:16:42.369	2026-06-08 20:16:42.369	\N	\N	\N
152	qymsuza04ixoohk6yr9b5tf7	admin::api-tokens.delete	{}	\N	{}	[]	2026-06-08 20:16:42.375	2026-06-08 20:16:42.375	2026-06-08 20:16:42.375	\N	\N	\N
153	b79ukwqt5ro7t0zu7c00tero	admin::project-settings.update	{}	\N	{}	[]	2026-06-08 20:16:42.383	2026-06-08 20:16:42.383	2026-06-08 20:16:42.383	\N	\N	\N
154	xc9xmvhiatiniv830pf01gjd	admin::project-settings.read	{}	\N	{}	[]	2026-06-08 20:16:42.39	2026-06-08 20:16:42.39	2026-06-08 20:16:42.39	\N	\N	\N
155	vdt4t323ho468ma4pziwcj4v	admin::transfer.tokens.access	{}	\N	{}	[]	2026-06-08 20:16:42.397	2026-06-08 20:16:42.397	2026-06-08 20:16:42.397	\N	\N	\N
156	rxuobg4q3uo5pzw9r1f1ljrb	admin::transfer.tokens.create	{}	\N	{}	[]	2026-06-08 20:16:42.403	2026-06-08 20:16:42.403	2026-06-08 20:16:42.404	\N	\N	\N
157	rjh5f5vn5snnaiwska3xfhbw	admin::transfer.tokens.read	{}	\N	{}	[]	2026-06-08 20:16:42.411	2026-06-08 20:16:42.411	2026-06-08 20:16:42.411	\N	\N	\N
158	ry1zw9x1x4qxwlzatkzrhebe	admin::transfer.tokens.update	{}	\N	{}	[]	2026-06-08 20:16:42.417	2026-06-08 20:16:42.417	2026-06-08 20:16:42.417	\N	\N	\N
159	bq0ksxokwi50c5dlnxnewy4b	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2026-06-08 20:16:42.424	2026-06-08 20:16:42.424	2026-06-08 20:16:42.424	\N	\N	\N
160	msgbbeftfjslp4hm207sni5v	admin::transfer.tokens.delete	{}	\N	{}	[]	2026-06-08 20:16:42.43	2026-06-08 20:16:42.43	2026-06-08 20:16:42.431	\N	\N	\N
\.


--
-- Data for Name: admin_permissions_api_token_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_permissions_api_token_lnk (id, permission_id, api_token_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: admin_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	3	1
38	38	3	2
39	39	3	3
40	40	3	4
41	41	3	5
42	42	3	6
43	43	3	7
44	44	3	8
45	45	3	9
46	46	3	10
47	47	3	11
48	48	3	12
49	49	3	13
50	50	3	14
51	51	3	15
52	52	3	16
53	53	3	17
54	54	3	18
55	55	3	19
56	56	3	20
57	57	3	21
58	58	3	22
59	59	3	23
60	60	3	24
61	61	3	25
62	62	3	26
63	63	3	27
64	64	3	28
65	65	3	29
66	66	3	30
67	67	1	1
68	68	1	2
69	69	1	3
70	70	1	4
71	71	1	5
72	72	1	6
73	73	1	7
74	74	1	8
75	75	1	9
76	76	1	10
77	77	1	11
78	78	1	12
79	79	1	13
80	80	1	14
81	81	1	15
82	82	1	16
83	83	1	17
84	84	1	18
85	85	1	19
86	86	1	20
87	87	1	21
88	88	1	22
89	89	1	23
90	90	1	24
91	91	1	25
92	92	1	26
93	93	1	27
94	94	1	28
95	95	1	29
96	96	1	30
97	97	1	31
98	98	1	32
99	99	1	33
100	100	1	34
101	101	1	35
102	102	1	36
103	103	1	37
104	104	1	38
105	105	1	39
106	106	1	40
107	107	1	41
108	108	1	42
109	109	1	43
110	110	1	44
111	111	1	45
112	112	1	46
113	113	1	47
114	114	1	48
115	115	1	49
116	116	1	50
117	117	1	51
118	118	1	52
119	119	1	53
120	120	1	54
121	121	1	55
122	122	1	56
123	123	1	57
124	124	1	58
125	125	1	59
126	126	1	60
127	127	1	61
128	128	1	62
129	129	1	63
130	130	1	64
131	131	1	65
132	132	1	66
133	133	1	67
134	134	1	68
135	135	1	69
136	136	1	70
137	137	1	71
138	138	1	72
139	139	1	73
140	140	1	74
141	141	1	75
142	142	1	76
143	143	1	77
144	144	1	78
145	145	1	79
146	146	1	80
147	147	1	81
148	148	1	82
149	149	1	83
150	150	1	84
151	151	1	85
152	152	1	86
153	153	1	87
154	154	1	88
155	155	1	89
156	156	1	90
157	157	1	91
158	158	1	92
159	159	1	93
160	160	1	94
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_roles (id, document_id, name, code, description, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	sd0xsv84ydvogajblq1obb2l	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2026-06-08 20:16:41.374	2026-06-08 20:16:41.374	2026-06-08 20:16:41.375	\N	\N	\N
2	q3f7w2ontj7hz5ktj08baw19	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2026-06-08 20:16:41.384	2026-06-08 20:16:41.384	2026-06-08 20:16:41.384	\N	\N	\N
3	l8pxan6gto1hu2xer5r3pqk5	Author	strapi-author	Authors can manage the content they have created.	2026-06-08 20:16:41.389	2026-06-08 20:16:41.389	2026-06-08 20:16:41.389	\N	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_users (id, document_id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	oyon1i75yxhoqporasv5t97g	Nikita	Gaidar	\N	nikitagaydar@gmail.com	$2a$10$4.LlPpEbZgira6.XMkSdWOFrOtnMbp0v840lMQswx4S4s1oTwnRDC	\N	\N	t	f	\N	2026-06-08 20:45:59.44	2026-06-08 20:45:59.44	2026-06-08 20:45:59.441	\N	\N	\N
2	ll9jy1zcg7685m8re111iyah	AdVita		\N	temp@temp.com	\N	\N	f26de77d467241ea7c6fab9530b318e4a402271e	t	f	\N	2026-06-09 14:31:48.661	2026-06-09 14:32:07.296	2026-06-09 14:31:48.661	\N	\N	\N
\.


--
-- Data for Name: admin_users_roles_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.admin_users_roles_lnk (id, user_id, role_id, role_ord, user_ord) FROM stdin;
1	1	1	1	1
2	2	1	1	2
\.


--
-- Data for Name: advent_cells; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.advent_cells (id, document_id, day_number, cell_type, title, text_content, quiz_options, quiz_correct_answer, sticker_file_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, image_url) FROM stdin;
3	hw3n88t5ug4ym4wmwts6cnbj	1	text	Добро пожаловать в адвент-календарь "Первое дело Нового года"! 🎄	[{"type": "paragraph", "children": [{"text": "🎁 Здравствуй, друг! С этого дня и до самого Нового года мы будем вместе открывать ячейки календаря. Тебя ждут истории подопечных фонда AdVita, викторины, новогодние предсказания и даже рецепты. А главное – ты сможешь начать год с доброго дела. Твоё пожертвование, оформленное в декабре, станет первым действием 1 января. Спасибо, что ты с нами! ❤️", "type": "text"}]}]	\N	\N	\N	2026-05-21 17:07:02	2026-05-22 10:14:18	\N	\N	\N	\N	\N
5	dbnj5x0njkzexo0uvvg0xvhb	2	quiz	Что такое трансплантация костного мозга? 🧠	[{"type": "paragraph", "children": [{"text": "🩸 Трансплантация костного мозга – это...", "type": "text"}]}]	["Переливание крови", "Замена больных стволовых клеток здоровыми от донора", "Операция на позвоночнике", "Вид химиотерапии"]	1	\N	2026-05-21 17:14:42	2026-05-21 17:14:42	\N	\N	\N	\N	\N
7	qmgnqdhigehc3meuip3pl38f	3	sticker	Стикер пак "Первое дело Нового года"	[{"type": "paragraph", "children": [{"text": "📌 Ты получил стикер пак посвященный акции \\"Первое дело Нового года\\". Сохрани его в Telegram и спасибо, что ты с нами!", "type": "text"}]}]	\N	\N	CAACAgIAAxkBAAERQv1qD2WljjL_uaOkhqLtcZw73WnBRwACxpIAArl0eUhNoGQRN7FuQDsE	2026-05-21 17:16:12	2026-05-22 09:34:24	\N	\N	\N	\N	\N
9	wajwej0a4xess9rteru7w8or	4	text	Твоё новогоднее предсказание 🔮	[{"type": "paragraph", "children": [{"text": "✨ Звёзды складываются в твою пользу! В следующем году ты обязательно станешь чьим-то добрым ангелом. Не бойся предлагать свою помощь и протягивать руку – она всегда будет нужна и принята с благодарностью. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}]	\N	\N	\N	2026-05-21 17:16:47	2026-05-22 10:14:25	\N	\N	\N	\N	\N
11	ov68d0spxnsfp6guchmdnzxq	5	text	Имбирное печенье 🍪	[{"type": "paragraph", "children": [{"text": "🍪 Приготовить имбирное печенье очень даже просто! \\n", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Необходимо всего лишь взять: ", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "муки 250 г, ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "сливочного масла 100 г, ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "сахара 100 г, ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "яйцо 1 шт, ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "имбирь молотый 1 ч.л., ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "корица 0,5 ч.л., ", "type": "text"}]}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "сода на кончике ножа. ", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Замесить тесто, вырезать формочки, выпекать 10 минут при 180°С. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Украсьте глазурью – и новогоднее настроение готово!", "type": "text"}]}]	\N	\N	\N	2026-05-21 17:22:46	2026-05-22 10:14:36	\N	\N	\N	\N	\N
15	u6ijxsflwilwciiz1zucioeh	6	text	История Снежаны	[{"type": "paragraph", "children": [{"text": "🦊 Семилетняя Снежана рассказывала нам новогодний стишок: \\"А лиса несет хлопушки, Зайки – мягкие игрушки, Еж – гирлянду, мяч – пингвин, Тигр с волком – серпантин\\". Мы вспомнили его, когда придумывали акцию. Ведь если каждый принесёт по чуть-чуть, вместе мы соберём большие сани с подарками для тех, кто борется с болезнью. ❄️", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:30:16	2026-05-22 10:14:44	\N	\N	\N	\N	\N
18	t55038itcb3hsg854caxij0k	7	quiz	Сколько человек в 2025 году начали год с доброго дела?	[{"type": "paragraph", "children": [{"text": "Сколько участников было у акции \\"Первое дело Нового года\\" в 2025 году?", "type": "text"}]}]	["532", "1032", "2032", "5320"]	1	\N	2026-05-22 09:32:05	2026-05-22 09:32:52	\N	\N	\N	\N	\N
21	kgxs98zv5p75d8f4ivf0thgi	8	sticker	Стикер пак "Новый год" ⛄	[{"type": "paragraph", "children": [{"text": "🎄 Ты получил стикер пак посвященный Новому году. Сохрани его в Telegram и спасибо, что ты с нами! 🎅", "type": "text"}]}]	\N	\N	CAACAgIAAxkBAAERQttqD1EUZH1OqPK43bXyfqYzJJvCvAACxjwAApcwSEi4cXYZN1VzLDsE	2026-05-22 09:33:55	2026-05-22 09:36:23	\N	\N	\N	\N	\N
26	lg5a9474kfcgv66mqlzx1qkp	9	text	Что ждёт тебя в новом году? 🌟	[{"type": "paragraph", "children": [{"text": "👫 Ты встретишь старого друга и вспомнишь тёплые moments. Цени каждую минуту!", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:36:56	2026-05-22 10:14:53	\N	\N	\N	\N	\N
28	ovd03sw4yvrlf3e467otya4f	10	text	Глинтвейн безалкогольный 🍷	[{"type": "paragraph", "children": [{"text": "🍷 Для приготовления безалкогольного глинтвейна тебе понадобится:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "сок виноградный 500 мл,", "type": "text"}]}, {"type": "list-item", "children": [{"text": "апельсин 1 шт.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "лимон 0,5 шт.", "type": "text"}]}, {"type": "list-item", "children": [{"text": "корица", "type": "text"}]}, {"type": "list-item", "children": [{"text": "гвоздика", "type": "text"}]}, {"type": "list-item", "children": [{"text": "имбирь", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Нагреть с пряностями, не кипятить. Подавать с долькой апельсина.", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:37:35	2026-05-22 10:14:58	\N	\N	\N	\N	\N
31	axmx5pb4fzo03ngoscusjw9x	11	text	Кто такой донор костного мозга? 🩸	[{"type": "paragraph", "children": [{"text": "🩸 Донор костного мозга – это человек, который без вреда для своего здоровья отдаёт часть своих стволовых клеток для спасения пациента с лейкозом или другими заболеваниями крови. ", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Фонд AdVita помогает найти совместимых доноров по всему миру. Спасибо каждому, кто решил помочь и стать донором !", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:40:17	2026-05-22 10:15:09	\N	\N	\N	\N	\N
33	bmcn4i8ws3d0pfkg1p35hz07	12	quiz	Какую сумму собрала акция в 2025 года? 💰	[{"type": "paragraph", "children": [{"text": "💰 Сколько рублей собрали участники \\"Первого дела\\" в 2025 году?", "type": "text"}]}]	["1 702 320 ₽", "2 503 020 ₽", "1 506 080 ₽", "2 200 100 ₽"]	0	\N	2026-05-22 09:40:57	2026-05-22 09:42:53	\N	\N	\N	\N	\N
36	c7vusar7sp8122zli984vp4n	13	sticker	Стикер пак Имбирный пряник	[{"type": "paragraph", "children": [{"text": "🍪Ты получил стикер пак с имбирным пряником. Сохрани его в Telegram и используй для новогоднего настроения!", "type": "text"}]}]	\N	\N	CAACAgIAAxkBAAERQ2xqECWLZ5yotxo7cvGeGygixGUcdAACGCUAAtShuEtUgcOIpd3kijsE	2026-05-22 09:45:58	2026-05-22 09:46:54	\N	\N	\N	\N	\N
39	vd8eydusigened23wpyr3hpi	14	text	Предсказание от Деда Мороза 🎅	[{"type": "paragraph", "children": [{"text": "🎄 В новом году исполнится твоё заветное желание, если ты сделаешь хотя бы одно доброе дело в декабре. Ты уже на пути!", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:47:37	2026-05-22 10:15:20	\N	\N	\N	\N	\N
41	qklf5zdx7b893eu4yy5k779g	15	text	Салат "Новогодний" 🥗	[{"type": "paragraph", "children": [{"text": "🥗 Для того, чтобы приготовить \\"Новогодний\\" салат тебе понадобится:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "куриное филе", "type": "text"}]}, {"type": "list-item", "children": [{"text": "огурец", "type": "text"}]}, {"type": "list-item", "children": [{"text": "яйца", "type": "text"}]}, {"type": "list-item", "children": [{"text": "кукуруза", "type": "text"}]}, {"type": "list-item", "children": [{"text": "майонез", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Нарезать кубиками, перемешать. Украсить веточкой укропа.", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:48:57	2026-05-22 10:15:33	\N	\N	\N	\N	\N
43	sfnr0lph228p3h83e8jwv8ce	16	text	Письмо от подопечной 💌	[{"type": "paragraph", "children": [{"text": "💌 Маша, 9 лет, после трансплантации костного мозга: \\"Спасибо вам за лекарства и за то, что я снова могу ходить в школу. Я нарисовала для вас ёлку. С Новым годом!\\"", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:50:38	2026-05-22 10:15:41	\N	\N	\N	\N	\N
45	w7gn7rxoqx8uknwa4hdc03i4	17	quiz	Какой препарат закупает фонд AdVita для пациентов после ТКМ? 💊	[{"type": "paragraph", "children": [{"text": "💊 Какой иммуносупрессор помогает предотвратить отторжение трансплантата?", "type": "text"}]}]	["Артлетиа", "Парацетамол", "Аспирин", "Ибупрофен"]	0	\N	2026-05-22 09:52:03	2026-05-22 09:52:03	\N	\N	\N	\N	\N
47	wtfnp3fnvmrz4u0tez2s54ln	18	text	Как фонд AdVita помогает детям ❄️	[{"type": "paragraph", "children": [{"text": "❄️ Каждый год фонд AdVita помогает десяткам детей с онкологическими заболеваниями. Мы оплачиваем не только дорогостоящие лекарства, но и обеспечиваем реабилитацию, психологическую поддержку, а иногда и просто дарим праздник. Одна из наших подопечных, Алиса, после лечения смогла пойти в первый класс. 💫", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:58:25	2026-05-22 10:15:49	\N	\N	\N	\N	\N
49	fm9tpwh1bq6593jenpdg63fc	19	text	Твоё новогоднее желание 🔮	[{"type": "paragraph", "children": [{"text": "✨ Загадай желание прямо сейчас! Звёзды говорят, что если ты искренне пожелаешь здоровья и счастья своим близким, оно обязательно сбудется. А ещё в новом году тебя ждёт приятная неожиданность от тех, кому ты дорог.", "type": "text"}]}]	\N	\N	\N	2026-05-22 09:59:04	2026-05-22 10:15:56	\N	\N	\N	\N	\N
51	qim77a3o826ztpa802w5is7a	20	text	Творожное печенье "Треугольники"	[{"type": "paragraph", "children": [{"text": "🍪 Рецепт творожного печенья \\"Треугольники\\". Нужно будет:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "раскатать тесто из 200 г творога", "type": "text"}]}, {"type": "list-item", "children": [{"text": "100 г сливочного масла,", "type": "text"}]}, {"type": "list-item", "children": [{"text": "1 стакана муки ", "type": "text"}]}, {"type": "list-item", "children": [{"text": "0,5 стакана сахара. ", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Вырезать кружки, обмакнуть одну сторону в сахар, сложить пополам (сахаром внутрь), затем ещё раз пополам – получатся треугольники. Выпекать 20 минут при 180°C. Просто и невероятно вкусно!", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:00:48	2026-05-22 10:16:02	\N	\N	\N	\N	\N
53	guenin5v1nll0zx28fjiy7nq	21	text	Волонтёры фонда 📖	[{"type": "paragraph", "children": [{"text": "🙌 За каждым чудом фонда стоят люди. Наши волонтёры помогают в больницах, организуют праздники для детей, собирают подарки. Они дарят своё время и тепло. А когда ты становишься донором или помогаешь информационно – ты тоже волонтёр. Спасибо тебе! 💖", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:01:31	2026-05-22 10:16:09	\N	\N	\N	\N	\N
55	ma73x0n4alp5alaupuls5zpy	22	quiz	Что такое иммуносупрессоры? 🧠	[{"type": "paragraph", "children": [{"text": "Иммуносупрессоры — это лекарства, которые...", "type": "text"}]}]	["Повышают иммунитет", "Подавляют иммунную систему, чтобы предотвратить отторжение трансплантата", "Лечат простуду", "Снижают температуру"]	1	\N	2026-05-22 10:02:38	2026-05-22 10:02:38	\N	\N	\N	\N	\N
57	k0un7lfjm7wnmq898jm270o2	23	text	Предсказание на канун Нового года 🔮	[{"type": "paragraph", "children": [{"text": "🌠 Два дня до праздника! Ты уже почти всё успел. Астрологи советуют: проведи этот день в кругу самых близких, прости старые обиды и загадай желание под бой курантов. Оно обязательно исполнится.", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:03:09	2026-05-22 10:16:14	\N	\N	\N	\N	\N
59	m4bc1hx5qs7xu86x4rsnproa	24	text	Сочельник – время чудес 📖	[{"type": "paragraph", "children": [{"text": "🕯️ В ночь перед Рождеством в фонд приходит много писем. Одно из них особенно тронуло нас: «Я хочу, чтобы в новом году все дети были здоровы». Это написал мальчик Дима, который сам только что закончил лечение. Такие слова напоминают нам, ради чего мы работаем. Пусть в твоём доме будет мир и уют.", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:03:53	2026-05-22 10:16:19	\N	\N	\N	\N	\N
62	h2g6wm5hw7fk57kebdyi4xxj	25	text	С Рождеством!	[{"type": "paragraph", "children": [{"text": "🌟 Дорогой друг! Поздравляем тебя с Рождеством! Пусть этот светлый праздник наполнит твоё сердце теплом, а дом — уютом. Желаем здоровья, радости и много-много добрых дней. Спасибо, что ты с нами! 🕊️", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:05:13	2026-05-22 10:16:25	\N	\N	\N	\N	\N
64	mt9qnlaljorksa5xb5wvsw6i	26	quiz	Как фонд AdVita отчитывается о расходах? 📊	[{"type": "paragraph", "children": [{"text": "📊 Где можно посмотреть отчёты фонда?", "type": "text"}]}]	["В закрытом телеграм-канале", "На официальном сайте в разделе «Отчёты»", "Только по запросу", "Нигде, это секрет"]	1	\N	2026-05-22 10:06:41	2026-05-22 10:06:41	\N	\N	\N	\N	\N
66	phofuw9asnrzqi63gxx7iyjc	27	text	Что принесут последние дни года? 🔮	[{"type": "paragraph", "children": [{"text": "🎇 Четыре дня до Нового года! Ты успеешь всё: нарядить ёлку, купить подарки и доделать дела. Звёзды говорят, что хорошее настроение сейчас – залог удачи на весь следующий год.", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:07:15	2026-05-22 10:16:41	\N	\N	\N	\N	\N
68	fcyvew9jwhunkw3ss3drvkwr	28	text	История взрослого подопечного 📖	[{"type": "paragraph", "children": [{"text": "👨 Алексей, 45 лет, прошёл трансплантацию костного мозга. Благодаря поддержке доноров и фонда он вернулся к работе и воспитывает двоих детей. «Я не сдавался, потому что знал: за моей спиной – вы», – написал он в своём письме. Спасибо, что вы есть! 💪", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:07:47	2026-05-22 10:16:34	\N	\N	\N	\N	\N
70	syye0lvgj1lg7j9qle9fr7wn	29	text	Салат "Ёлочка"	[{"type": "paragraph", "children": [{"text": "🥗 А теперь давай приготовим салат \\"Ёлочка\\". Для этого нам нужно:", "type": "text"}]}, {"type": "list", "format": "unordered", "children": [{"type": "list-item", "children": [{"text": "измельчить отварное куриное филе", "type": "text"}]}, {"type": "list-item", "children": [{"text": "яйца", "type": "text"}]}, {"type": "list-item", "children": [{"text": "сыр", "type": "text"}]}, {"type": "list-item", "children": [{"text": "чеснок", "type": "text"}]}, {"type": "list-item", "children": [{"text": "заправить майонезом", "type": "text"}]}]}, {"type": "paragraph", "children": [{"text": "Выложить в форме ёлочки. Украсить веточками укропа и зёрнами граната (как ёлочные игрушки). Празднично, красиво и вкусно!", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:09:01	2026-05-22 10:16:54	\N	\N	\N	\N	\N
72	aciv6m4ejeo6difhdza5ykg9	30	text	Последнее предсказание уходящего года 🔮	[{"type": "paragraph", "children": [{"text": "🌟 Завтра последний день года. Подумай о том, что ты сделал хорошего за 12 месяцев. Похвали себя за каждое доброе дело. В новом году тебя ждут новые победы и счастливые моменты. Поверь в себя!", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:09:30	2026-05-22 10:17:03	\N	\N	\N	\N	\N
74	ueubmre2wfs4fxl6ndjzzh5a	31	text	С Новым годом! 🎄	[{"type": "paragraph", "children": [{"text": "🎄 Дорогой друг! Вот и наступил этот волшебный момент. Благодарим тебя за то, что весь декабрь был с нами! Твоё пожертвование уже списывается. Ты сделал первое доброе дело года! Пусть 2027 год принесёт здоровье, счастье и много тёплых встреч. С наступающим! 🎁✨", "type": "text"}]}]	\N	\N	\N	2026-05-22 10:10:05	2026-05-22 10:17:23	\N	\N	\N	\N	\N
1	hw3n88t5ug4ym4wmwts6cnbj	1	text	Добро пожаловать в адвент-календарь "Первое дело Нового года"! 🎄	[{"type": "paragraph", "children": [{"text": "🎁 Здравствуй, друг! С этого дня и до самого Нового года мы будем вместе открывать ячейки календаря. Тебя ждут истории подопечных фонда AdVita, викторины, новогодние предсказания и даже рецепты. А главное – ты сможешь начать год с доброго дела. Твоё пожертвование, оформленное в декабре, станет первым действием 1 января. Спасибо, что ты с нами! ❤️", "type": "text"}]}]	\N	\N	\N	2026-05-21 17:07:02	2026-05-22 10:14:18	2026-06-08 20:47:18.595	\N	\N	\N	\N
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.faqs (id, document_id, category, question, answer, order_index, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, image) FROM stdin;
2	pc3gte6sterat0o3rxgnm6nb	Об акции	🧾 Что такое акция «Первое дело Нового года»?	Это благотворительная акция фонда AdVita. Вы оформляете пожертвование в декабре, а 1 января в 00:00 оно автоматически списывается. Так ваше первое дело в новом году становится добрым.	1	2026-05-22 14:45:28	2026-05-22 14:45:28	2026-05-22 14:45:28	\N	\N	\N	\N
3	wr7fj92qqj3tqiqrfv7s98bq	Пожертвования	💳 Как оформить пожертвование?	Перейдите на сайт https://1delo.advita.ru, выберите сумму и укажите данные карты. Средства спишутся автоматически 1 января.\n💡 Важно: деньги не списываются сразу, а «замораживаются» до наступления Нового года.	1	2026-05-22 14:46:34	2026-05-22 14:48:45	2026-05-22 14:48:45	\N	\N	\N	\N
4	s47lzp1jpjt8w2fm1j5nufog	Направления помощи	💰 На что пойдут собранные средства?	Средства направляются на:\n- лекарства для пациентов после трансплантации костного мозга (иммуносупрессор «Артлетиа», иммуноглобулин «Микроген»);\n- реабилитацию и социальную поддержку; \n- диагностику и лечение онкологических заболеваний.\nОдин курс таких препаратов стоит более 100 000 рублей.	1	2026-05-22 14:48:15	2026-05-22 14:48:15	2026-05-22 14:48:15	\N	\N	\N	\N
5	hrnadclzjp0spphilvtq5mtt	Направления помощи	📊 Как фонд отчитывается о расходах?	Фонд публикует ежемесячные и годовые отчёты на официальном сайте https://advita.ru в разделе «Отчёты». Каждый донор может проверить, как были потрачены средства.	2	2026-05-22 14:49:47	2026-05-22 14:49:47	2026-05-22 14:49:47	\N	\N	\N	\N
6	dbmpjz9ro7i9v2sskewucuhi	Об акции	📅 До какого числа можно \nоформить пожертвование?	Оформить отложенное пожертвование можно в любой день декабря, вплоть до 31 декабря включительно. Рекомендуем не откладывать на последний день!	2	2026-05-22 14:50:28	2026-05-23 14:32:34	2026-05-23 14:32:34	\N	\N	\N	\N
7	nqlqvz12b2o6tafnaxi0abvl	Пожертвования	🔐 Безопасно ли оставлять данные карты?	Да, сайт акции использует защищённое соединение (HTTPS) и интегрирован с проверенными платёжными системами. Фонд AdVita работает с 2002 года и имеет безупречную репутацию.	2	2026-05-22 14:51:15	2026-05-22 14:51:15	2026-05-22 14:51:15	\N	\N	\N	\N
8	oymkcsuajw3v1mbail82eo1s	Пожертвования	❓ Что делать, если я ошибся \nв сумме или передумал?	Вы можете отменить или изменить платёж через свой банк до 31 декабря. Для уточнения деталей напишите нам в чат — сотрудник фонда поможет.	3	2026-05-22 14:51:49	2026-05-23 14:31:55	2026-05-23 14:31:55	\N	\N	\N	\N
9	hbvn5wlu7vf5rpqcc8m9kpez	Направления помощи	🏥 Кто получает помощь фонда AdVita?	Фонд помогает взрослым и детям с онкологическими, гематологическими и иммунологическими заболеваниями. Около 70% подопечных — взрослые. Пациенты приезжают на лечение в Санкт-Петербург со всей России.	3	2026-05-22 14:52:30	2026-05-22 14:52:30	2026-05-22 14:52:30	\N	\N	\N	\N
10	so8sh0meqgualj297z7hk3q3	Результаты	📈 Какие результаты акции в прошлые годы?	2024 год: более 1000 участников, собрано 1 702 320 рублей.\n2025 год: 1540 участников, собрано 2 102 676 рублей.\n2026 год: 1485 участников, собрано 2 048 489 рублей.\nСредства пошли на лекарства для пациентов после трансплантации костного мозга.	1	2026-05-22 14:53:32	2026-05-22 14:53:32	2026-05-22 14:53:32	\N	\N	\N	\N
11	r58f55q319yxyn2lsapbtqod	Об акции	🕊️ Могу ли я сделать пожертвование \nв честь близкого человека?	Да, при оформлении на сайте вы можете указать, что делаете это в честь определённого человека. Фонд пришлёт именное уведомление о том, что доброе дело совершено в его честь.	3	2026-05-22 14:54:22	2026-05-23 14:32:18	2026-05-23 14:32:18	\N	\N	\N	\N
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.files (id, document_id, name, alternative_text, caption, focal_point, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: files_folder_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.files_folder_lnk (id, file_id, folder_id, file_ord) FROM stdin;
\.


--
-- Data for Name: files_related_mph; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.files_related_mph (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.i18n_locale (id, document_id, name, code, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	tajmlh7ltkww5o0x18ef1rzg	English (en)	en	2026-06-08 20:16:41.264	2026-06-08 20:16:41.264	2026-06-08 20:16:41.265	\N	\N	\N
\.


--
-- Data for Name: stats_events; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.stats_events (id, document_id, event_type, event_value, "timestamp", telegram_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_ai_localization_jobs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_ai_localization_jobs (id, content_type, related_document_id, source_locale, target_locales, status, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_ai_metadata_jobs; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_ai_metadata_jobs (id, status, created_at, completed_at) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_api_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	weuf1q23leh4plv2qehpr9b3	api::advent-cell.advent-cell.find	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.908	\N	\N	\N
2	nliburgl937tja7eth3itaa9	api::advent-cell.advent-cell.findOne	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.909	\N	\N	\N
3	x8zlyxw95axhy186vi4wvxf9	api::faq.faq.find	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.909	\N	\N	\N
4	s1qjcun3d4l8mw33ugema10a	api::faq.faq.findOne	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.91	\N	\N	\N
5	oydbzijwgq1vrfareseb8k9c	api::stats-event.stats-event.create	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.91	\N	\N	\N
6	zjyhpa1w07xlnn9aan7hsbmc	api::telegram-user.telegram-user.find	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.91	\N	\N	\N
7	q1reomdkt34ghz3xcrq0kolq	api::telegram-user.telegram-user.findOne	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
8	qrc38cnsic5e1fm5yo3vuypi	api::telegram-user.telegram-user.update	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
9	ppzety19sezquw0kjqa2vuvf	api::telegram-user.telegram-user.create	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
10	kpaomqwm1s5ahbpzjvf1drw9	api::user-progress.user-progress.find	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
11	ui2kvpeiifhvayep699q9mcm	api::user-progress.user-progress.findOne	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
12	r9zwq54zc4r1wznqurprvpho	api::user-progress.user-progress.create	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
13	qtkygeb8826x1xwq77vnp5n8	api::user-progress.user-progress.update	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
14	empl7kxz828ns1d276zp1xp4	api::user-question.user-question.create	2026-06-08 20:52:24.907	2026-06-08 20:52:24.907	2026-06-08 20:52:24.911	\N	\N	\N
15	ty86m1t6yzpci0tajds1oz6f	api::advent-cell.advent-cell.find	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.059	\N	\N	\N
16	l4l2ay0m34g24tsuj21mnokg	api::faq.faq.find	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.06	\N	\N	\N
17	icarhb98loqs3aydl40h8mq8	api::faq.faq.findOne	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.062	\N	\N	\N
18	k0tavdmyjwclghynolzdvd85	api::stats-event.stats-event.create	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.063	\N	\N	\N
19	wmpne3f7zstm0tjnzrx5elh5	api::user-progress.user-progress.find	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.064	\N	\N	\N
20	iwmuh819zvgmg1gpxqyu57ym	api::user-progress.user-progress.create	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.064	\N	\N	\N
21	z136sj4aqvtsrux69vpdcjn5	api::user-question.user-question.create	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.064	\N	\N	\N
22	g6uxjpzw7h9feoum5xg6ite6	api::telegram-user.telegram-user.find	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.065	\N	\N	\N
23	np8wf4h1q1i976fyhuz36pe7	api::telegram-user.telegram-user.findOne	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.065	\N	\N	\N
24	jpo41zes3171o36pv2ay9yia	api::telegram-user.telegram-user.create	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.065	\N	\N	\N
25	nf03y3frqemq94mciuhqk73a	api::telegram-user.telegram-user.update	2026-06-09 13:35:25.058	2026-06-09 13:35:25.058	2026-06-09 13:35:25.066	\N	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_api_token_permissions_token_lnk (id, api_token_permission_id, api_token_id, api_token_permission_ord) FROM stdin;
15	15	4	1
16	16	4	1
17	17	4	1
18	18	4	1
19	19	4	1
20	20	4	1
21	21	4	1
22	22	4	1
23	23	4	1
24	24	4	2
25	25	4	2
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_api_tokens (id, document_id, name, description, kind, type, access_key, encrypted_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	g76rnb0a6gz36nou8lc2gyk8	Read Only	A default API token with read-only permissions, only used for accessing resources	content-api	read-only	309bc37bea7224d782ab8f13807eb1e37fb051dc519c9ff9c4aac0cef57b205ea1e638d277da0b4ed09df7b4927d13569e9893e9e0f54ffd198a9936e86ba5ef	v1:db2877d3d57423e9b1b1ca87c39c7981:df7eae46f4275b79e678eaf84b03b52f2493ac10610e35366641102fd1b34a5df913b192db173cde5a190673af7a3bb5cfba27cb11c891b09fbf1338567b9886ca4ff085dade1ac184ff419640aa2b0128cba1bd7d5263be9f7cea0fc53f507d5ed4c20d959dc070cd4e1731151d994d5c172a2977f37f09902ccc31003d66116d704ee46114d6ee7f120559bab8206b9778aa645f3d91ecbbeb5561625aa40b2ef0aa303ce027ff83cb7edfd03d6138ed4fbeb78937a562d4e7b3054315c39f96207a6416c921aa01c299e903f9ffa49079282788bcdbf796b254547db31709dacd768b79de9c681eb1b83a2e0cbad386b7c8f88f07aa04e9f45062919730ea:71bfc3a1b3157c9af249ab313c8f2b79	\N	\N	\N	2026-06-08 20:16:42.506	2026-06-08 20:16:42.506	2026-06-08 20:16:42.507	\N	\N	\N
2	pw5bcvz3fazzyag5vbuqo7vj	Full Access	A default API token with full access permissions, used for accessing or modifying resources	content-api	full-access	29e304375a33f786034d8c96c7728cf6b1348de41b29c70bee17d610e7a7b410d1fb16efe68d6c778adab85a15c3a2de50d65731af5a6fefef8f845553b3a5e5	v1:542825aeec49b4c2b6d6be9b490e0d48:f54d38bc8ed4d485601ff8199a0f72c859f53e5f4847e65e59b8cd5c6e542cf2cbac1a46ec67d0f4a1e75ab507c502dd0021db6563ffca0573e72eb130065a82a6bd81fad30aab5976f0633aa21d23eb317ff52e894a8215647ab45b688e7c445d412fd30281edcfaecc121e0ad02f6f286f08a7599b5e127fe7e7ace9aac587bf9d7d68259d4787b382f8c29028c029581ca983be766b25683d5745d5fe2268c913e239cec13749b3e8a8ad0784ef61104806d894e9885cf923aece773105daadd2d9887cee33db18695f69306dc87c50facda6b51b53e4531dfbbc86acda953a6bb616b9997701e6d36fd8835ec303879ab2504fa9f24e2176dd0f6c03425d:2c0ab32ec0687529e8c321f1c5918d4b	\N	\N	\N	2026-06-08 20:16:42.518	2026-06-08 20:16:42.518	2026-06-08 20:16:42.518	\N	\N	\N
4	lvzpmd9age55oompmaftyaht	Telegram Bot API	Токен для Telegram-бота AdVita	content-api	custom	f718bc3b91e022dd9993e4706d9b6927e4a99070505606fb9642ef50f948f7f48d01a7cc7326f0523265fcb30de28a6df46998e3286a04432ec425aa4c92f557	\N	2026-06-09 13:36:01.717	\N	\N	2026-06-09 13:35:25.026	2026-06-09 13:37:46.593	2026-06-09 13:35:25.027	\N	\N	\N
\.


--
-- Data for Name: strapi_api_tokens_admin_user_owner_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_api_tokens_admin_user_owner_lnk (id, api_token_id, user_id, api_token_ord) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
1	strapi_unidirectional-join-table-repair-ran	true	boolean	\N	\N
3	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"entryDocumentId":{"edit":{"label":"entryDocumentId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"entryDocumentId","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","entryDocumentId"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"entryDocumentId","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"focalPoint":{"edit":{"label":"focalPoint","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"focalPoint","searchable":false,"sortable":false}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6}],[{"name":"focalPoint","size":12}],[{"name":"width","size":4},{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"color":{"edit":{"label":"color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"color","searchable":true,"sortable":true}},"workflow":{"edit":{"label":"workflow","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"workflow","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","color","workflow"],"edit":[[{"name":"name","size":6},{"name":"color","size":6}],[{"name":"workflow","size":6},{"name":"permissions","size":6}]]},"uid":"plugin::review-workflows.workflow-stage"}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"stages":{"edit":{"label":"stages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stages","searchable":false,"sortable":false}},"stageRequiredToPublish":{"edit":{"label":"stageRequiredToPublish","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"stageRequiredToPublish","searchable":true,"sortable":true}},"contentTypes":{"edit":{"label":"contentTypes","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentTypes","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","stages","stageRequiredToPublish"],"edit":[[{"name":"name","size":6},{"name":"stages","size":6}],[{"name":"stageRequiredToPublish","size":6}],[{"name":"contentTypes","size":12}]]},"uid":"plugin::review-workflows.workflow"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::session	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"userId","defaultSortBy":"userId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"userId":{"edit":{"label":"userId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"userId","searchable":true,"sortable":true}},"sessionId":{"edit":{"label":"sessionId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sessionId","searchable":true,"sortable":true}},"childId":{"edit":{"label":"childId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"childId","searchable":true,"sortable":true}},"deviceId":{"edit":{"label":"deviceId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"deviceId","searchable":true,"sortable":true}},"origin":{"edit":{"label":"origin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"origin","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"absoluteExpiresAt":{"edit":{"label":"absoluteExpiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"absoluteExpiresAt","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","userId","sessionId","childId"],"edit":[[{"name":"userId","size":6},{"name":"sessionId","size":6}],[{"name":"childId","size":6},{"name":"deviceId","size":6}],[{"name":"origin","size":6},{"name":"expiresAt","size":6}],[{"name":"absoluteExpiresAt","size":6},{"name":"status","size":6}],[{"name":"type","size":6}]]},"uid":"admin::session"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::advent-cell.advent-cell	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"day_number":{"edit":{"label":"day_number","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"day_number","searchable":true,"sortable":true}},"cell_type":{"edit":{"label":"cell_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cell_type","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"text_content":{"edit":{"label":"text_content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text_content","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"quiz_options":{"edit":{"label":"quiz_options","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quiz_options","searchable":false,"sortable":false}},"quiz_correct_answer":{"edit":{"label":"quiz_correct_answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"quiz_correct_answer","searchable":true,"sortable":true}},"sticker_file_id":{"edit":{"label":"sticker_file_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"sticker_file_id","searchable":true,"sortable":true}},"user_progresses":{"edit":{"label":"user_progresses","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"user_progresses","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","day_number","cell_type","title"],"edit":[[{"name":"day_number","size":4},{"name":"cell_type","size":6}],[{"name":"title","size":6}],[{"name":"text_content","size":12}],[{"name":"image","size":6}],[{"name":"quiz_options","size":12}],[{"name":"quiz_correct_answer","size":4},{"name":"sticker_file_id","size":6}],[{"name":"user_progresses","size":6}]]},"uid":"api::advent-cell.advent-cell"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"kind":{"edit":{"label":"kind","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"kind","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"encryptedKey":{"edit":{"label":"encryptedKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"encryptedKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"adminPermissions":{"edit":{"label":"adminPermissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"adminPermissions","searchable":false,"sortable":false}},"adminUserOwner":{"edit":{"label":"adminUserOwner","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"adminUserOwner","searchable":true,"sortable":true}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","kind"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"kind","size":6},{"name":"type","size":6}],[{"name":"accessKey","size":6},{"name":"encryptedKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"adminPermissions","size":6},{"name":"adminUserOwner","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::api::faq.faq	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"category","defaultSortBy":"category","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"category":{"edit":{"label":"category","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"category","searchable":true,"sortable":true}},"question":{"edit":{"label":"question","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question","searchable":true,"sortable":true}},"answer":{"edit":{"label":"answer","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"answer","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}},"order_index":{"edit":{"label":"order_index","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"order_index","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","category","question","image"],"edit":[[{"name":"category","size":6},{"name":"question","size":6}],[{"name":"answer","size":12}],[{"name":"image","size":6},{"name":"order_index","size":4}]]},"uid":"api::faq.faq"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::stats-event.stats-event	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"event_value","defaultSortBy":"event_value","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"event_type":{"edit":{"label":"event_type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"event_type","searchable":true,"sortable":true}},"event_value":{"edit":{"label":"event_value","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"event_value","searchable":true,"sortable":true}},"timestamp":{"edit":{"label":"timestamp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timestamp","searchable":true,"sortable":true}},"telegram_id":{"edit":{"label":"telegram_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"telegram_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","event_type","event_value","timestamp"],"edit":[[{"name":"event_type","size":6},{"name":"event_value","size":6}],[{"name":"timestamp","size":6},{"name":"telegram_id","size":6}]]},"uid":"api::stats-event.stats-event"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::telegram-user.telegram-user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"telegram_id":{"edit":{"label":"telegram_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"telegram_id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"consent_given":{"edit":{"label":"consent_given","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"consent_given","searchable":true,"sortable":true}},"registered_at":{"edit":{"label":"registered_at","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registered_at","searchable":true,"sortable":true}},"last_notification_date":{"edit":{"label":"last_notification_date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"last_notification_date","searchable":true,"sortable":true}},"new_year_congrat_sent":{"edit":{"label":"new_year_congrat_sent","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"new_year_congrat_sent","searchable":true,"sortable":true}},"user_progresses":{"edit":{"label":"user_progresses","description":"","placeholder":"","visible":true,"editable":true,"mainField":"documentId"},"list":{"label":"user_progresses","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","telegram_id","username","consent_given"],"edit":[[{"name":"telegram_id","size":4},{"name":"username","size":6}],[{"name":"consent_given","size":4},{"name":"registered_at","size":6}],[{"name":"last_notification_date","size":4},{"name":"new_year_congrat_sent","size":4}],[{"name":"user_progresses","size":6}]]},"uid":"api::telegram-user.telegram-user"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::user-progress.user-progress	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"documentId","defaultSortBy":"documentId","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"user","searchable":true,"sortable":true}},"cell":{"edit":{"label":"cell","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"cell","searchable":true,"sortable":true}},"opened_at":{"edit":{"label":"opened_at","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"opened_at","searchable":true,"sortable":true}},"reward_received":{"edit":{"label":"reward_received","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"reward_received","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","user","cell","opened_at"],"edit":[[{"name":"user","size":6},{"name":"cell","size":6}],[{"name":"opened_at","size":6},{"name":"reward_received","size":4}]]},"uid":"api::user-progress.user-progress"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::user-question.user-question	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"telegram_id","defaultSortBy":"telegram_id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"question_text":{"edit":{"label":"question_text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"question_text","searchable":false,"sortable":false}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"state":{"edit":{"label":"state","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"state","searchable":true,"sortable":true}},"telegram_id":{"edit":{"label":"telegram_id","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"telegram_id","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","email","state","telegram_id"],"edit":[[{"name":"question_text","size":12}],[{"name":"email","size":6},{"name":"state","size":6}],[{"name":"telegram_id","size":6}]]},"uid":"api::user-question.user-question"}	object	\N	\N
27	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false,"aiMetadata":true}	object	\N	\N
28	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
30	plugin_i18n_default_locale	"en"	string	\N	\N
31	plugin_users-permissions_grant	{"email":{"icon":"envelope","enabled":true},"discord":{"icon":"discord","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"icon":"facebook-square","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/facebook/callback","scope":["email"]},"google":{"icon":"google","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/google/callback","scope":["email"]},"github":{"icon":"github","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"icon":"windows","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"icon":"twitter","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitter/callback"},"instagram":{"icon":"instagram","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"icon":"vk","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/vk/callback","scope":["email"]},"twitch":{"icon":"twitch","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"icon":"linkedin","enabled":false,"key":"","secret":"","callbackUrl":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"icon":"aws","enabled":false,"key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"icon":"reddit","enabled":false,"key":"","secret":"","callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"icon":"book","enabled":false,"key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"icon":"","enabled":false,"key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"icon":"","enabled":false,"key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
32	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
33	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
29	plugin_upload_metrics	{"weeklySchedule":"13 45 11 * * 5","lastWeeklyUpdate":1781858713605}	object	\N	\N
19	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"apiToken":{"edit":{"label":"apiToken","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiToken","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6},{"name":"apiToken","size":6}]]},"uid":"admin::permission"}	object	\N	\N
34	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"relationOpenMode":"modal","mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"apiTokens":{"edit":{"label":"apiTokens","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"apiTokens","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}},"documentId":{"edit":{},"list":{"label":"documentId","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"apiTokens","size":6}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
2	strapi_content_types_schema	{"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"files"}}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"plugin":"upload","globalId":"UploadFile","uid":"plugin::upload.file","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"text","configurable":false},"caption":{"type":"text","configurable":false},"focalPoint":{"type":"json","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"text","configurable":false,"required":true},"previewUrl":{"type":"text","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","minLength":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"file"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"upload_folders"}}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"plugin":"upload","globalId":"UploadFolder","uid":"plugin::upload.folder","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","minLength":1,"required":true}},"kind":"collectionType"},"modelName":"folder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::i18n.locale","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"i18n_locale"}}},"plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale","uid":"plugin::i18n.locale","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"i18n_locale","info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelName":"locale"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_releases"}}},"plugin":"content-releases","globalId":"ContentReleasesRelease","uid":"plugin::content-releases.release","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelName":"release"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_release_actions"}}},"plugin":"content-releases","globalId":"ContentReleasesReleaseAction","uid":"plugin::content-releases.release-action","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"contentType":{"type":"string","required":true},"entryDocumentId":{"type":"string"},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelName":"release-action"},"plugin::review-workflows.workflow":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflow","uid":"plugin::review-workflows.workflow","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows","info":{"name":"Workflow","description":"","singularName":"workflow","pluralName":"workflows","displayName":"Workflow"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true,"unique":true},"stages":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToMany","mappedBy":"workflow"},"stageRequiredToPublish":{"type":"relation","target":"plugin::review-workflows.workflow-stage","relation":"oneToOne","required":false},"contentTypes":{"type":"json","required":true,"default":"[]"}},"kind":"collectionType"},"modelName":"workflow"},"plugin::review-workflows.workflow-stage":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0","draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::review-workflows.workflow-stage","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_workflows_stages"}}},"plugin":"review-workflows","globalId":"ReviewWorkflowsWorkflowStage","uid":"plugin::review-workflows.workflow-stage","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_workflows_stages","info":{"name":"Workflow Stage","description":"","singularName":"workflow-stage","pluralName":"workflow-stages","displayName":"Stages"},"options":{"version":"1.1.0"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false},"color":{"type":"string","configurable":false,"default":"#4945FF"},"workflow":{"type":"relation","target":"plugin::review-workflows.workflow","relation":"manyToOne","inversedBy":"stages","configurable":false},"permissions":{"type":"relation","target":"admin::permission","relation":"manyToMany","configurable":false}},"kind":"collectionType"},"modelName":"workflow-stage"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_permissions"}}},"plugin":"users-permissions","globalId":"UsersPermissionsPermission","uid":"plugin::users-permissions.permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelName":"permission","options":{"draftAndPublish":false}},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_roles"}}},"plugin":"users-permissions","globalId":"UsersPermissionsRole","uid":"plugin::users-permissions.role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelName":"role","options":{"draftAndPublish":false}},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"up_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"plugin":"users-permissions","globalId":"UsersPermissionsUser","kind":"collectionType","pluginOptions":{},"__filename__":"schema.json","uid":"plugin::users-permissions.user","modelType":"contentType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelName":"user"},"api::advent-cell.advent-cell":{"kind":"collectionType","collectionName":"advent_cells","info":{"singularName":"advent-cell","pluralName":"advent-cells","displayName":"Advent cell"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"day_number":{"type":"integer","required":true,"unique":true,"min":1,"max":31},"cell_type":{"type":"enumeration","enum":["text","quiz","sticker"]},"title":{"type":"string"},"text_content":{"type":"blocks"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"quiz_options":{"type":"json"},"quiz_correct_answer":{"type":"integer"},"sticker_file_id":{"type":"string"},"user_progresses":{"type":"relation","relation":"oneToMany","target":"api::user-progress.user-progress","mappedBy":"cell"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::advent-cell.advent-cell","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"advent_cells"}}},"apiName":"advent-cell","globalId":"AdventCell","uid":"api::advent-cell.advent-cell","modelType":"contentType","__schema__":{"collectionName":"advent_cells","info":{"singularName":"advent-cell","pluralName":"advent-cells","displayName":"Advent cell"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"day_number":{"type":"integer","required":true,"unique":true,"min":1,"max":31},"cell_type":{"type":"enumeration","enum":["text","quiz","sticker"]},"title":{"type":"string"},"text_content":{"type":"blocks"},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"quiz_options":{"type":"json"},"quiz_correct_answer":{"type":"integer"},"sticker_file_id":{"type":"string"},"user_progresses":{"type":"relation","relation":"oneToMany","target":"api::user-progress.user-progress","mappedBy":"cell"}},"kind":"collectionType"},"modelName":"advent-cell","actions":{},"lifecycles":{}},"api::faq.faq":{"kind":"collectionType","collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"Faq"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"category":{"type":"string","required":true},"question":{"type":"text","required":true},"answer":{"type":"richtext","required":true},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"order_index":{"type":"integer","default":0},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::faq.faq","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"faqs"}}},"apiName":"faq","globalId":"Faq","uid":"api::faq.faq","modelType":"contentType","__schema__":{"collectionName":"faqs","info":{"singularName":"faq","pluralName":"faqs","displayName":"Faq"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"category":{"type":"string","required":true},"question":{"type":"text","required":true},"answer":{"type":"richtext","required":true},"image":{"type":"media","multiple":false,"allowedTypes":["images","files","videos","audios"]},"order_index":{"type":"integer","default":0}},"kind":"collectionType"},"modelName":"faq","actions":{},"lifecycles":{}},"api::stats-event.stats-event":{"kind":"collectionType","collectionName":"stats_events","info":{"singularName":"stats-event","pluralName":"stats-events","displayName":"Stats event"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"event_type":{"type":"enumeration","enum":["cell_opened","faq_clicked","donation_click","user_registered","question_sent"]},"event_value":{"type":"string"},"timestamp":{"type":"datetime"},"telegram_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::stats-event.stats-event","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"stats_events"}}},"apiName":"stats-event","globalId":"StatsEvent","uid":"api::stats-event.stats-event","modelType":"contentType","__schema__":{"collectionName":"stats_events","info":{"singularName":"stats-event","pluralName":"stats-events","displayName":"Stats event"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"event_type":{"type":"enumeration","enum":["cell_opened","faq_clicked","donation_click","user_registered","question_sent"]},"event_value":{"type":"string"},"timestamp":{"type":"datetime"},"telegram_id":{"type":"string"}},"kind":"collectionType"},"modelName":"stats-event","actions":{},"lifecycles":{}},"api::telegram-user.telegram-user":{"kind":"collectionType","collectionName":"telegram_users","info":{"singularName":"telegram-user","pluralName":"telegram-users","displayName":"Telegram User"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"telegram_id":{"type":"biginteger","required":true,"unique":true},"username":{"type":"string"},"consent_given":{"type":"boolean","default":false},"registered_at":{"type":"datetime"},"last_notification_date":{"type":"date"},"new_year_congrat_sent":{"type":"boolean","default":false},"user_progresses":{"type":"relation","relation":"oneToMany","target":"api::user-progress.user-progress","mappedBy":"user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::telegram-user.telegram-user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"telegram_users"}}},"apiName":"telegram-user","globalId":"TelegramUser","uid":"api::telegram-user.telegram-user","modelType":"contentType","__schema__":{"collectionName":"telegram_users","info":{"singularName":"telegram-user","pluralName":"telegram-users","displayName":"Telegram User"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"telegram_id":{"type":"biginteger","required":true,"unique":true},"username":{"type":"string"},"consent_given":{"type":"boolean","default":false},"registered_at":{"type":"datetime"},"last_notification_date":{"type":"date"},"new_year_congrat_sent":{"type":"boolean","default":false},"user_progresses":{"type":"relation","relation":"oneToMany","target":"api::user-progress.user-progress","mappedBy":"user"}},"kind":"collectionType"},"modelName":"telegram-user","actions":{},"lifecycles":{}},"api::user-progress.user-progress":{"kind":"collectionType","collectionName":"user_progresses","info":{"singularName":"user-progress","pluralName":"user-progresses","displayName":"User progress"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user":{"type":"relation","relation":"manyToOne","target":"api::telegram-user.telegram-user","inversedBy":"user_progresses"},"cell":{"type":"relation","relation":"manyToOne","target":"api::advent-cell.advent-cell","inversedBy":"user_progresses"},"opened_at":{"type":"datetime"},"reward_received":{"type":"boolean","default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::user-progress.user-progress","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"user_progresses"}}},"apiName":"user-progress","globalId":"UserProgress","uid":"api::user-progress.user-progress","modelType":"contentType","__schema__":{"collectionName":"user_progresses","info":{"singularName":"user-progress","pluralName":"user-progresses","displayName":"User progress"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"user":{"type":"relation","relation":"manyToOne","target":"api::telegram-user.telegram-user","inversedBy":"user_progresses"},"cell":{"type":"relation","relation":"manyToOne","target":"api::advent-cell.advent-cell","inversedBy":"user_progresses"},"opened_at":{"type":"datetime"},"reward_received":{"type":"boolean","default":true}},"kind":"collectionType"},"modelName":"user-progress","actions":{},"lifecycles":{}},"api::user-question.user-question":{"kind":"collectionType","collectionName":"user_questions","info":{"singularName":"user-question","pluralName":"user-questions","displayName":"User question"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"question_text":{"type":"richtext","required":true},"email":{"type":"email"},"state":{"type":"enumeration","default":"new","enum":["new","in_progress","answered"]},"telegram_id":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"api::user-question.user-question","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"user_questions"}}},"apiName":"user-question","globalId":"UserQuestion","uid":"api::user-question.user-question","modelType":"contentType","__schema__":{"collectionName":"user_questions","info":{"singularName":"user-question","pluralName":"user-questions","displayName":"User question"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"question_text":{"type":"richtext","required":true},"email":{"type":"email"},"state":{"type":"enumeration","default":"new","enum":["new","in_progress","answered"]},"telegram_id":{"type":"string"}},"kind":"collectionType"},"modelName":"user-question","actions":{},"lifecycles":{}},"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_permissions"}}},"plugin":"admin","globalId":"AdminPermission","uid":"admin::permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role","required":false},"apiToken":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"adminPermissions","target":"admin::api-token","required":false}},"kind":"collectionType"},"modelName":"permission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::user","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_users"}}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"plugin":"admin","globalId":"AdminUser","uid":"admin::user","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"apiTokens":{"configurable":false,"private":true,"type":"relation","relation":"oneToMany","mappedBy":"adminUserOwner","target":"admin::api-token"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelName":"user","options":{"draftAndPublish":false}},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::role","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"admin_roles"}}},"plugin":"admin","globalId":"AdminRole","uid":"admin::role","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelName":"role"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_tokens"}}},"plugin":"admin","globalId":"AdminApiToken","uid":"admin::api-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"kind":{"type":"enumeration","enum":["content-api","admin"],"configurable":false,"required":true,"default":"content-api"},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"encryptedKey":{"type":"text","minLength":1,"configurable":false,"required":false,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"adminPermissions":{"type":"relation","target":"admin::permission","relation":"oneToMany","mappedBy":"apiToken","configurable":false,"required":false},"adminUserOwner":{"type":"relation","target":"admin::user","relation":"manyToOne","inversedBy":"apiTokens","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"api-token"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::api-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_api_token_permissions"}}},"plugin":"admin","globalId":"AdminApiTokenPermission","uid":"admin::api-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelName":"api-token-permission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_tokens"}}},"plugin":"admin","globalId":"AdminTransferToken","uid":"admin::transfer-token","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelName":"transfer-token"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::transfer-token-permission","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_transfer_token_permissions"}}},"plugin":"admin","globalId":"AdminTransferTokenPermission","uid":"admin::transfer-token-permission","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelName":"transfer-token-permission"},"admin::session":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":true},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"locale":{"writable":true,"private":true,"configurable":false,"visible":false,"type":"string"},"localizations":{"type":"relation","relation":"oneToMany","target":"admin::session","writable":false,"private":true,"configurable":false,"visible":false,"unstable_virtual":true,"joinColumn":{"name":"document_id","referencedColumn":"document_id","referencedTable":"strapi_sessions"}}},"plugin":"admin","globalId":"AdminSession","uid":"admin::session","modelType":"contentType","kind":"collectionType","__schema__":{"collectionName":"strapi_sessions","info":{"name":"Session","description":"Session Manager storage","singularName":"session","pluralName":"sessions","displayName":"Session"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false},"i18n":{"localized":false}},"attributes":{"userId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"sessionId":{"type":"string","unique":true,"required":true,"configurable":false,"private":true,"searchable":false},"childId":{"type":"string","configurable":false,"private":true,"searchable":false},"deviceId":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"origin":{"type":"string","required":true,"configurable":false,"private":true,"searchable":false},"expiresAt":{"type":"datetime","required":true,"configurable":false,"private":true,"searchable":false},"absoluteExpiresAt":{"type":"datetime","configurable":false,"private":true,"searchable":false},"status":{"type":"string","configurable":false,"private":true,"searchable":false},"type":{"type":"string","configurable":false,"private":true,"searchable":false}},"kind":"collectionType"},"modelName":"session"}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_documents_idx","columns":["document_id","locale","published_at"]},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"focal_point","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_documents_idx","columns":["document_id","locale","published_at"]},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_documents_idx","columns":["document_id","locale","published_at"]},{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"entry_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows","indexes":[{"name":"strapi_workflows_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_types","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_workflows_stages","indexes":[{"name":"strapi_workflows_stages_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_workflows_stages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_workflows_stages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_roles","indexes":[{"name":"up_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"up_users","indexes":[{"name":"up_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"advent_cells","indexes":[{"name":"advent_cells_documents_idx","columns":["document_id","locale","published_at"]},{"name":"advent_cells_created_by_id_fk","columns":["created_by_id"]},{"name":"advent_cells_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"advent_cells_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"advent_cells_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"day_number","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cell_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"text_content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quiz_options","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"quiz_correct_answer","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"sticker_file_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"faqs","indexes":[{"name":"faqs_documents_idx","columns":["document_id","locale","published_at"]},{"name":"faqs_created_by_id_fk","columns":["created_by_id"]},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"faqs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"faqs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"category","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"answer","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order_index","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"stats_events","indexes":[{"name":"stats_events_documents_idx","columns":["document_id","locale","published_at"]},{"name":"stats_events_created_by_id_fk","columns":["created_by_id"]},{"name":"stats_events_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stats_events_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stats_events_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"event_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"event_value","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timestamp","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"telegram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"telegram_users","indexes":[{"name":"telegram_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"telegram_users_created_by_id_fk","columns":["created_by_id"]},{"name":"telegram_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"telegram_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"telegram_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"telegram_id","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"consent_given","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registered_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_notification_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"new_year_congrat_sent","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"user_progresses","indexes":[{"name":"user_progresses_documents_idx","columns":["document_id","locale","published_at"]},{"name":"user_progresses_created_by_id_fk","columns":["created_by_id"]},{"name":"user_progresses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"user_progresses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"user_progresses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"opened_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reward_received","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"user_questions","indexes":[{"name":"user_questions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"user_questions_created_by_id_fk","columns":["created_by_id"]},{"name":"user_questions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"user_questions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"user_questions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"question_text","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"state","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"telegram_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_users","indexes":[{"name":"admin_users_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_documents_idx","columns":["document_id","locale","published_at"]},{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kind","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"encrypted_key","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_sessions","indexes":[{"name":"strapi_sessions_documents_idx","columns":["document_id","locale","published_at"]},{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_sessions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_sessions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"user_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"session_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"child_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"device_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"origin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"absolute_expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_history_versions","indexes":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"]}],"foreignKeys":[{"name":"strapi_history_versions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"schema","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_ai_metadata_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"completed_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_ai_localization_jobs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"related_document_id","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"source_locale","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"target_locales","type":"jsonb","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"files_related_mph","indexes":[{"name":"files_related_mph_fk","columns":["file_id"]},{"name":"files_related_mph_oidx","columns":["order"]},{"name":"files_related_mph_idix","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_mph_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_lnk","indexes":[{"name":"files_folder_lnk_fk","columns":["file_id"]},{"name":"files_folder_lnk_ifk","columns":["folder_id"]},{"name":"files_folder_lnk_uq","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_lnk_oifk","columns":["file_ord"]}],"foreignKeys":[{"name":"files_folder_lnk_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_lnk_ifk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_lnk","indexes":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"]},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_lnk_uq","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_lnk_oifk","columns":["folder_ord"]}],"foreignKeys":[{"name":"upload_folders_parent_lnk_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_lnk_ifk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_lnk","indexes":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"]},{"name":"strapi_release_actions_release_lnk_uq","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_lnk_oifk","columns":["release_action_ord"]}],"foreignKeys":[{"name":"strapi_release_actions_release_lnk_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_lnk_ifk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stage_required_to_publish_lnk","indexes":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stage_required_to_publish_lnk_uq","columns":["workflow_id","workflow_stage_id"],"type":"unique"}],"foreignKeys":[{"name":"strapi_workflows_stage_required_to_publish_lnk_fk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"},{"name":"strapi_workflows_stage_required_to_publish_lnk_ifk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_workflow_lnk","indexes":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"]},{"name":"strapi_workflows_stages_workflow_lnk_uq","columns":["workflow_stage_id","workflow_id"],"type":"unique"},{"name":"strapi_workflows_stages_workflow_lnk_oifk","columns":["workflow_stage_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_workflow_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_workflow_lnk_ifk","columns":["workflow_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"workflow_stage_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_workflows_stages_permissions_lnk","indexes":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"]},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"]},{"name":"strapi_workflows_stages_permissions_lnk_uq","columns":["workflow_stage_id","permission_id"],"type":"unique"},{"name":"strapi_workflows_stages_permissions_lnk_ofk","columns":["permission_ord"]}],"foreignKeys":[{"name":"strapi_workflows_stages_permissions_lnk_fk","columns":["workflow_stage_id"],"referencedColumns":["id"],"referencedTable":"strapi_workflows_stages","onDelete":"CASCADE"},{"name":"strapi_workflows_stages_permissions_lnk_ifk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"workflow_stage_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_lnk","indexes":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"up_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"up_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_lnk","indexes":[{"name":"up_users_role_lnk_fk","columns":["user_id"]},{"name":"up_users_role_lnk_ifk","columns":["role_id"]},{"name":"up_users_role_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"up_users_role_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"user_progresses_user_lnk","indexes":[{"name":"user_progresses_user_lnk_fk","columns":["user_progress_id"]},{"name":"user_progresses_user_lnk_ifk","columns":["telegram_user_id"]},{"name":"user_progresses_user_lnk_uq","columns":["user_progress_id","telegram_user_id"],"type":"unique"},{"name":"user_progresses_user_lnk_oifk","columns":["user_progress_ord"]}],"foreignKeys":[{"name":"user_progresses_user_lnk_fk","columns":["user_progress_id"],"referencedColumns":["id"],"referencedTable":"user_progresses","onDelete":"CASCADE"},{"name":"user_progresses_user_lnk_ifk","columns":["telegram_user_id"],"referencedColumns":["id"],"referencedTable":"telegram_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_progress_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"telegram_user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_progress_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"user_progresses_cell_lnk","indexes":[{"name":"user_progresses_cell_lnk_fk","columns":["user_progress_id"]},{"name":"user_progresses_cell_lnk_ifk","columns":["advent_cell_id"]},{"name":"user_progresses_cell_lnk_uq","columns":["user_progress_id","advent_cell_id"],"type":"unique"},{"name":"user_progresses_cell_lnk_oifk","columns":["user_progress_ord"]}],"foreignKeys":[{"name":"user_progresses_cell_lnk_fk","columns":["user_progress_id"],"referencedColumns":["id"],"referencedTable":"user_progresses","onDelete":"CASCADE"},{"name":"user_progresses_cell_lnk_ifk","columns":["advent_cell_id"],"referencedColumns":["id"],"referencedTable":"advent_cells","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_progress_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"advent_cell_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_progress_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_lnk","indexes":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"]},{"name":"admin_permissions_role_lnk_uq","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_role_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_api_token_lnk","indexes":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"]},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"]},{"name":"admin_permissions_api_token_lnk_uq","columns":["permission_id","api_token_id"],"type":"unique"},{"name":"admin_permissions_api_token_lnk_oifk","columns":["permission_ord"]}],"foreignKeys":[{"name":"admin_permissions_api_token_lnk_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_api_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_lnk","indexes":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"]},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"]},{"name":"admin_users_roles_lnk_uq","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_lnk_ofk","columns":["role_ord"]},{"name":"admin_users_roles_lnk_oifk","columns":["user_ord"]}],"foreignKeys":[{"name":"admin_users_roles_lnk_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_lnk_ifk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens_admin_user_owner_lnk","indexes":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"]},{"name":"strapi_api_tokens_admin_user_owner_lnk_uq","columns":["api_token_id","user_id"],"type":"unique"},{"name":"strapi_api_tokens_admin_user_owner_lnk_oifk","columns":["api_token_ord"]}],"foreignKeys":[{"name":"strapi_api_tokens_admin_user_owner_lnk_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"},{"name":"strapi_api_tokens_admin_user_owner_lnk_ifk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_lnk","indexes":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_lnk_uq","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_lnk_oifk","columns":["api_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_lnk_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_lnk_ifk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_lnk","indexes":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_lnk_uq","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_lnk_oifk","columns":["transfer_token_permission_ord"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_lnk_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_lnk_ifk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_ord","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2026-06-08 20:16:40.767	c6be1b9416af3ebe0cd2ae603c88e47d2d5c533293bddd3d190d64f085cd5aea
\.


--
-- Data for Name: strapi_history_versions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_history_versions (id, content_type, related_document_id, locale, status, data, schema, created_at, created_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_migrations_internal; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_migrations_internal (id, name, "time") FROM stdin;
1	5.0.0-rename-identifiers-longer-than-max-length	2026-06-08 20:16:39.693
2	5.0.0-02-created-document-id	2026-06-08 20:16:39.744
3	5.0.0-03-created-locale	2026-06-08 20:16:39.797
4	5.0.0-04-created-published-at	2026-06-08 20:16:39.861
5	5.0.0-05-drop-slug-fields-index	2026-06-08 20:16:39.915
6	5.0.0-06-add-document-id-indexes	2026-06-08 20:16:39.968
7	core::5.0.0-discard-drafts	2026-06-08 20:16:40.026
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_release_actions (id, document_id, type, content_type, entry_document_id, locale, is_entry_valid, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_release_actions_release_lnk (id, release_action_id, release_id, release_action_ord) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_releases (id, document_id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_sessions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_sessions (id, document_id, user_id, session_id, child_id, device_id, origin, expires_at, absolute_expires_at, status, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
6	y26m67lu2l88vcn5sguhana0	1	dc125859f50c5da582c4bfebda406aa9	e3ede444a09d12531ab60960d870193a	3dc0ad86-8161-4f43-96b5-0c3c219832b6	admin	2026-06-23 15:06:04.452	2026-07-09 15:06:04.452	rotated	refresh	2026-06-09 15:06:04.452	2026-06-10 12:43:46.605	2026-06-09 15:06:04.452	\N	\N	\N
8	w5twm5n8m3qdefo1pgsw4rlc	1	5c5099cc9d8cb126c9641a57293fe060	\N	3dc0ad86-8161-4f43-96b5-0c3c219832b6	admin	2026-07-03 11:45:03.342	2026-07-09 15:06:04.452	active	refresh	2026-06-19 11:45:03.342	2026-06-19 11:45:03.342	2026-06-19 11:45:03.344	\N	\N	\N
7	tub408uzpmqbfiu4f91saw2s	1	e3ede444a09d12531ab60960d870193a	5c5099cc9d8cb126c9641a57293fe060	3dc0ad86-8161-4f43-96b5-0c3c219832b6	admin	2026-06-24 12:43:46.575	2026-07-09 15:06:04.452	rotated	refresh	2026-06-10 12:43:46.575	2026-06-19 11:45:03.356	2026-06-10 12:43:46.578	\N	\N	\N
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_transfer_token_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_transfer_token_permissions_token_lnk (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_transfer_tokens (id, document_id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: strapi_workflows; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_workflows (id, document_id, name, content_types, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stage_required_to_publish_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_workflows_stage_required_to_publish_lnk (id, workflow_id, workflow_stage_id) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_workflows_stages (id, document_id, name, color, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_permissions_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_workflows_stages_permissions_lnk (id, workflow_stage_id, permission_id, permission_ord) FROM stdin;
\.


--
-- Data for Name: strapi_workflows_stages_workflow_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.strapi_workflows_stages_workflow_lnk (id, workflow_stage_id, workflow_id, workflow_stage_ord) FROM stdin;
\.


--
-- Data for Name: telegram_users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.telegram_users (id, document_id, telegram_id, username, consent_given, registered_at, last_notification_date, new_year_congrat_sent, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.up_permissions (id, document_id, action, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	c5cmit9uskesdfun0p4b1dp7	plugin::users-permissions.auth.logout	2026-06-08 20:16:41.328	2026-06-08 20:16:41.328	2026-06-08 20:16:41.329	\N	\N	\N
2	zecefhvofcvy3d62yyjjh2au	plugin::users-permissions.user.me	2026-06-08 20:16:41.328	2026-06-08 20:16:41.328	2026-06-08 20:16:41.329	\N	\N	\N
3	p7mxy7o6fxqgrfngdt067hf8	plugin::users-permissions.auth.changePassword	2026-06-08 20:16:41.328	2026-06-08 20:16:41.328	2026-06-08 20:16:41.329	\N	\N	\N
4	itml7w1hh6jv6256klwab2zj	plugin::users-permissions.auth.callback	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	\N	\N	\N
5	hwg50bs7smcx484xy68nzrv6	plugin::users-permissions.auth.connect	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
6	oa94uw04ufblkxl6b5vtbfiv	plugin::users-permissions.auth.forgotPassword	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
7	fc2n65aoe24od4rszmf9h7ni	plugin::users-permissions.auth.register	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
8	g9a5ji7onw6x0pb57q9tqz1k	plugin::users-permissions.auth.resetPassword	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
9	ryjzyj4tyrea8k3qcd86zw6g	plugin::users-permissions.auth.emailConfirmation	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
10	o14d99e7afmwlbfdelvinbeo	plugin::users-permissions.auth.sendEmailConfirmation	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
11	rtxemh3w0syv8g2wduk103do	plugin::users-permissions.auth.refresh	2026-06-08 20:16:41.341	2026-06-08 20:16:41.341	2026-06-08 20:16:41.342	\N	\N	\N
\.


--
-- Data for Name: up_permissions_role_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.up_permissions_role_lnk (id, permission_id, role_id, permission_ord) FROM stdin;
1	1	1	1
2	3	1	1
3	2	1	1
4	4	2	1
5	5	2	1
6	7	2	1
7	6	2	1
8	8	2	1
9	10	2	1
10	9	2	1
11	11	2	1
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.up_roles (id, document_id, name, description, type, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	bqnvl2dttq9lnsg1jkzcgrzf	Authenticated	Default role given to authenticated user.	authenticated	2026-06-08 20:16:41.315	2026-06-08 20:16:41.315	2026-06-08 20:16:41.315	\N	\N	\N
2	vq57pk36fp9faujl344jj8gn	Public	Default role given to unauthenticated user.	public	2026-06-08 20:16:41.32	2026-06-08 20:16:41.32	2026-06-08 20:16:41.32	\N	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.up_users (id, document_id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: up_users_role_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.up_users_role_lnk (id, user_id, role_id, user_ord) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.upload_folders (id, document_id, name, path_id, path, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.upload_folders_parent_lnk (id, folder_id, inv_folder_id, folder_ord) FROM stdin;
\.


--
-- Data for Name: user_progresses; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_progresses (id, document_id, opened_at, reward_received, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, user_id, cell_id) FROM stdin;
\.


--
-- Data for Name: user_progresses_cell_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_progresses_cell_lnk (id, user_progress_id, advent_cell_id, user_progress_ord) FROM stdin;
\.


--
-- Data for Name: user_progresses_user_lnk; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_progresses_user_lnk (id, user_progress_id, telegram_user_id, user_progress_ord) FROM stdin;
\.


--
-- Data for Name: user_questions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_questions (id, document_id, question_text, email, state, telegram_id, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
\.


--
-- Name: admin_permissions_api_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_permissions_api_token_lnk_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 160, true);


--
-- Name: admin_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_permissions_role_lnk_id_seq', 160, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: admin_users_roles_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.admin_users_roles_lnk_id_seq', 3, true);


--
-- Name: advent_cells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.advent_cells_id_seq', 1, true);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.faqs_id_seq', 1, false);


--
-- Name: files_folder_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.files_folder_lnk_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_mph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.files_related_mph_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: stats_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.stats_events_id_seq', 7, true);


--
-- Name: strapi_ai_localization_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_ai_localization_jobs_id_seq', 1, false);


--
-- Name: strapi_ai_metadata_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_ai_metadata_jobs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 25, true);


--
-- Name: strapi_api_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_lnk_id_seq', 25, true);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_api_tokens_admin_user_owner_lnk_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 4, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 34, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_history_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_history_versions_id_seq', 1, false);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_migrations_internal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_migrations_internal_id_seq', 7, true);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_lnk_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_sessions_id_seq', 8, true);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_lnk_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: strapi_workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_workflows_id_seq', 1, false);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_workflows_stage_required_to_publish_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_permissions_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_permissions_lnk_id_seq', 1, false);


--
-- Name: strapi_workflows_stages_workflow_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.strapi_workflows_stages_workflow_lnk_id_seq', 1, false);


--
-- Name: telegram_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.telegram_users_id_seq', 2, true);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 11, true);


--
-- Name: up_permissions_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.up_permissions_role_lnk_id_seq', 11, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.up_users_role_lnk_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.upload_folders_parent_lnk_id_seq', 1, false);


--
-- Name: user_progresses_cell_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_progresses_cell_lnk_id_seq', 1, true);


--
-- Name: user_progresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_progresses_id_seq', 1, true);


--
-- Name: user_progresses_user_lnk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_progresses_user_lnk_id_seq', 1, true);


--
-- Name: user_questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.user_questions_id_seq', 1, true);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_uq UNIQUE (permission_id, api_token_id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: advent_cells advent_cells_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.advent_cells
    ADD CONSTRAINT advent_cells_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_pkey PRIMARY KEY (id);


--
-- Name: files_folder_lnk files_folder_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_uq UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_mph files_related_mph_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: stats_events stats_events_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stats_events
    ADD CONSTRAINT stats_events_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_localization_jobs strapi_ai_localization_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_ai_localization_jobs
    ADD CONSTRAINT strapi_ai_localization_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_ai_metadata_jobs strapi_ai_metadata_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_ai_metadata_jobs
    ADD CONSTRAINT strapi_ai_metadata_jobs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_uq UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_uq UNIQUE (api_token_id, user_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_history_versions strapi_history_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations_internal strapi_migrations_internal_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_migrations_internal
    ADD CONSTRAINT strapi_migrations_internal_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_uq UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_sessions strapi_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_uq UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows strapi_workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_uq UNIQUE (workflow_id, workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_uq UNIQUE (workflow_stage_id, permission_id);


--
-- Name: strapi_workflows_stages strapi_workflows_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_pkey PRIMARY KEY (id);


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_uq UNIQUE (workflow_stage_id, workflow_id);


--
-- Name: telegram_users telegram_users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.telegram_users
    ADD CONSTRAINT telegram_users_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_uq UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_lnk up_users_role_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_uq UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_uq UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: user_progresses_cell_lnk user_progresses_cell_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_cell_lnk
    ADD CONSTRAINT user_progresses_cell_lnk_pkey PRIMARY KEY (id);


--
-- Name: user_progresses_cell_lnk user_progresses_cell_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_cell_lnk
    ADD CONSTRAINT user_progresses_cell_lnk_uq UNIQUE (user_progress_id, advent_cell_id);


--
-- Name: user_progresses user_progresses_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses
    ADD CONSTRAINT user_progresses_pkey PRIMARY KEY (id);


--
-- Name: user_progresses_user_lnk user_progresses_user_lnk_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_user_lnk
    ADD CONSTRAINT user_progresses_user_lnk_pkey PRIMARY KEY (id);


--
-- Name: user_progresses_user_lnk user_progresses_user_lnk_uq; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_user_lnk
    ADD CONSTRAINT user_progresses_user_lnk_uq UNIQUE (user_progress_id, telegram_user_id);


--
-- Name: user_questions user_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_questions
    ADD CONSTRAINT user_questions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_api_token_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_api_token_lnk_fk ON public.admin_permissions_api_token_lnk USING btree (permission_id);


--
-- Name: admin_permissions_api_token_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_api_token_lnk_ifk ON public.admin_permissions_api_token_lnk USING btree (api_token_id);


--
-- Name: admin_permissions_api_token_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_api_token_lnk_oifk ON public.admin_permissions_api_token_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_documents_idx ON public.admin_permissions USING btree (document_id, locale, published_at);


--
-- Name: admin_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_role_lnk_fk ON public.admin_permissions_role_lnk USING btree (permission_id);


--
-- Name: admin_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_role_lnk_ifk ON public.admin_permissions_role_lnk USING btree (role_id);


--
-- Name: admin_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_role_lnk_oifk ON public.admin_permissions_role_lnk USING btree (permission_ord);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_roles_documents_idx ON public.admin_roles USING btree (document_id, locale, published_at);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_documents_idx ON public.admin_users USING btree (document_id, locale, published_at);


--
-- Name: admin_users_roles_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_roles_lnk_fk ON public.admin_users_roles_lnk USING btree (user_id);


--
-- Name: admin_users_roles_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_roles_lnk_ifk ON public.admin_users_roles_lnk USING btree (role_id);


--
-- Name: admin_users_roles_lnk_ofk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_roles_lnk_ofk ON public.admin_users_roles_lnk USING btree (role_ord);


--
-- Name: admin_users_roles_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_roles_lnk_oifk ON public.admin_users_roles_lnk USING btree (user_ord);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: advent_cells_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX advent_cells_created_by_id_fk ON public.advent_cells USING btree (created_by_id);


--
-- Name: advent_cells_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX advent_cells_documents_idx ON public.advent_cells USING btree (document_id, locale, published_at);


--
-- Name: advent_cells_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX advent_cells_updated_by_id_fk ON public.advent_cells USING btree (updated_by_id);


--
-- Name: faqs_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX faqs_created_by_id_fk ON public.faqs USING btree (created_by_id);


--
-- Name: faqs_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX faqs_documents_idx ON public.faqs USING btree (document_id, locale, published_at);


--
-- Name: faqs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX faqs_updated_by_id_fk ON public.faqs USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_documents_idx ON public.files USING btree (document_id, locale, published_at);


--
-- Name: files_folder_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_folder_lnk_fk ON public.files_folder_lnk USING btree (file_id);


--
-- Name: files_folder_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_folder_lnk_ifk ON public.files_folder_lnk USING btree (folder_id);


--
-- Name: files_folder_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_folder_lnk_oifk ON public.files_folder_lnk USING btree (file_ord);


--
-- Name: files_related_mph_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_related_mph_fk ON public.files_related_mph USING btree (file_id);


--
-- Name: files_related_mph_idix; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_related_mph_idix ON public.files_related_mph USING btree (related_id);


--
-- Name: files_related_mph_oidx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_related_mph_oidx ON public.files_related_mph USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX i18n_locale_documents_idx ON public.i18n_locale USING btree (document_id, locale, published_at);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: stats_events_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX stats_events_created_by_id_fk ON public.stats_events USING btree (created_by_id);


--
-- Name: stats_events_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX stats_events_documents_idx ON public.stats_events USING btree (document_id, locale, published_at);


--
-- Name: stats_events_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX stats_events_updated_by_id_fk ON public.stats_events USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_documents_idx ON public.strapi_api_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_fk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_ifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_token_lnk_oifk ON public.strapi_api_token_permissions_token_lnk USING btree (api_token_permission_ord);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_fk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_ifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (user_id);


--
-- Name: strapi_api_tokens_admin_user_owner_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_admin_user_owner_lnk_oifk ON public.strapi_api_tokens_admin_user_owner_lnk USING btree (api_token_ord);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_documents_idx ON public.strapi_api_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_history_versions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_history_versions_created_by_id_fk ON public.strapi_history_versions USING btree (created_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_documents_idx ON public.strapi_release_actions USING btree (document_id, locale, published_at);


--
-- Name: strapi_release_actions_release_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_release_lnk_fk ON public.strapi_release_actions_release_lnk USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_release_lnk_ifk ON public.strapi_release_actions_release_lnk USING btree (release_id);


--
-- Name: strapi_release_actions_release_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_release_lnk_oifk ON public.strapi_release_actions_release_lnk USING btree (release_action_ord);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_releases_documents_idx ON public.strapi_releases USING btree (document_id, locale, published_at);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_sessions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_sessions_created_by_id_fk ON public.strapi_sessions USING btree (created_by_id);


--
-- Name: strapi_sessions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_sessions_documents_idx ON public.strapi_sessions USING btree (document_id, locale, published_at);


--
-- Name: strapi_sessions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_sessions_updated_by_id_fk ON public.strapi_sessions USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_documents_idx ON public.strapi_transfer_token_permissions USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_token_permissions_token_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_fk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_ifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_token_lnk_oifk ON public.strapi_transfer_token_permissions_token_lnk USING btree (transfer_token_permission_ord);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_tokens_documents_idx ON public.strapi_transfer_tokens USING btree (document_id, locale, published_at);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: strapi_workflows_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_created_by_id_fk ON public.strapi_workflows USING btree (created_by_id);


--
-- Name: strapi_workflows_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_documents_idx ON public.strapi_workflows USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_fk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stage_required_to_publish_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stage_required_to_publish_lnk_ifk ON public.strapi_workflows_stage_required_to_publish_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_created_by_id_fk ON public.strapi_workflows_stages USING btree (created_by_id);


--
-- Name: strapi_workflows_stages_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_documents_idx ON public.strapi_workflows_stages USING btree (document_id, locale, published_at);


--
-- Name: strapi_workflows_stages_permissions_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_fk ON public.strapi_workflows_stages_permissions_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ifk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_id);


--
-- Name: strapi_workflows_stages_permissions_lnk_ofk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_permissions_lnk_ofk ON public.strapi_workflows_stages_permissions_lnk USING btree (permission_ord);


--
-- Name: strapi_workflows_stages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_updated_by_id_fk ON public.strapi_workflows_stages USING btree (updated_by_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_fk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_ifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_id);


--
-- Name: strapi_workflows_stages_workflow_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_stages_workflow_lnk_oifk ON public.strapi_workflows_stages_workflow_lnk USING btree (workflow_stage_ord);


--
-- Name: strapi_workflows_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX strapi_workflows_updated_by_id_fk ON public.strapi_workflows USING btree (updated_by_id);


--
-- Name: telegram_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX telegram_users_created_by_id_fk ON public.telegram_users USING btree (created_by_id);


--
-- Name: telegram_users_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX telegram_users_documents_idx ON public.telegram_users USING btree (document_id, locale, published_at);


--
-- Name: telegram_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX telegram_users_updated_by_id_fk ON public.telegram_users USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_documents_idx ON public.up_permissions USING btree (document_id, locale, published_at);


--
-- Name: up_permissions_role_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_role_lnk_fk ON public.up_permissions_role_lnk USING btree (permission_id);


--
-- Name: up_permissions_role_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_role_lnk_ifk ON public.up_permissions_role_lnk USING btree (role_id);


--
-- Name: up_permissions_role_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_role_lnk_oifk ON public.up_permissions_role_lnk USING btree (permission_ord);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_roles_documents_idx ON public.up_roles USING btree (document_id, locale, published_at);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_documents_idx ON public.up_users USING btree (document_id, locale, published_at);


--
-- Name: up_users_role_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_role_lnk_fk ON public.up_users_role_lnk USING btree (user_id);


--
-- Name: up_users_role_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_role_lnk_ifk ON public.up_users_role_lnk USING btree (role_id);


--
-- Name: up_users_role_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_role_lnk_oifk ON public.up_users_role_lnk USING btree (user_ord);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_documents_idx ON public.upload_folders USING btree (document_id, locale, published_at);


--
-- Name: upload_folders_parent_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_parent_lnk_fk ON public.upload_folders_parent_lnk USING btree (folder_id);


--
-- Name: upload_folders_parent_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_parent_lnk_ifk ON public.upload_folders_parent_lnk USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_parent_lnk_oifk ON public.upload_folders_parent_lnk USING btree (folder_ord);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: user_progresses_cell_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_cell_lnk_fk ON public.user_progresses_cell_lnk USING btree (user_progress_id);


--
-- Name: user_progresses_cell_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_cell_lnk_ifk ON public.user_progresses_cell_lnk USING btree (advent_cell_id);


--
-- Name: user_progresses_cell_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_cell_lnk_oifk ON public.user_progresses_cell_lnk USING btree (user_progress_ord);


--
-- Name: user_progresses_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_created_by_id_fk ON public.user_progresses USING btree (created_by_id);


--
-- Name: user_progresses_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_documents_idx ON public.user_progresses USING btree (document_id, locale, published_at);


--
-- Name: user_progresses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_updated_by_id_fk ON public.user_progresses USING btree (updated_by_id);


--
-- Name: user_progresses_user_lnk_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_user_lnk_fk ON public.user_progresses_user_lnk USING btree (user_progress_id);


--
-- Name: user_progresses_user_lnk_ifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_user_lnk_ifk ON public.user_progresses_user_lnk USING btree (telegram_user_id);


--
-- Name: user_progresses_user_lnk_oifk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_progresses_user_lnk_oifk ON public.user_progresses_user_lnk USING btree (user_progress_ord);


--
-- Name: user_questions_created_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_questions_created_by_id_fk ON public.user_questions USING btree (created_by_id);


--
-- Name: user_questions_documents_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_questions_documents_idx ON public.user_questions USING btree (document_id, locale, published_at);


--
-- Name: user_questions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_questions_updated_by_id_fk ON public.user_questions USING btree (updated_by_id);


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_api_token_lnk admin_permissions_api_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_api_token_lnk
    ADD CONSTRAINT admin_permissions_api_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_lnk admin_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions_role_lnk
    ADD CONSTRAINT admin_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_lnk admin_users_roles_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users_roles_lnk
    ADD CONSTRAINT admin_users_roles_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: advent_cells advent_cells_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.advent_cells
    ADD CONSTRAINT advent_cells_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: advent_cells advent_cells_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.advent_cells
    ADD CONSTRAINT advent_cells_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faqs faqs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: faqs faqs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_lnk files_folder_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_lnk files_folder_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_folder_lnk
    ADD CONSTRAINT files_folder_lnk_ifk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_mph files_related_mph_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files_related_mph
    ADD CONSTRAINT files_related_mph_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stats_events stats_events_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stats_events
    ADD CONSTRAINT stats_events_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stats_events stats_events_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stats_events
    ADD CONSTRAINT stats_events_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_lnk strapi_api_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_lnk
    ADD CONSTRAINT strapi_api_token_permissions_token_lnk_ifk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_tokens_admin_user_owner_lnk strapi_api_tokens_admin_user_owner_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens_admin_user_owner_lnk
    ADD CONSTRAINT strapi_api_tokens_admin_user_owner_lnk_ifk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_history_versions strapi_history_versions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_history_versions
    ADD CONSTRAINT strapi_history_versions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_lnk strapi_release_actions_release_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions_release_lnk
    ADD CONSTRAINT strapi_release_actions_release_lnk_ifk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_sessions strapi_sessions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_sessions
    ADD CONSTRAINT strapi_sessions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_lnk strapi_transfer_token_permissions_token_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_lnk
    ADD CONSTRAINT strapi_transfer_token_permissions_token_lnk_ifk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows strapi_workflows_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_fk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stage_required_to_publish_lnk strapi_workflows_stage_required_to_publish_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stage_required_to_publish_lnk
    ADD CONSTRAINT strapi_workflows_stage_required_to_publish_lnk_ifk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_permissions_lnk strapi_workflows_stages_permissions_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_permissions_lnk
    ADD CONSTRAINT strapi_workflows_stages_permissions_lnk_ifk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages strapi_workflows_stages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages
    ADD CONSTRAINT strapi_workflows_stages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_fk FOREIGN KEY (workflow_stage_id) REFERENCES public.strapi_workflows_stages(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows_stages_workflow_lnk strapi_workflows_stages_workflow_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows_stages_workflow_lnk
    ADD CONSTRAINT strapi_workflows_stages_workflow_lnk_ifk FOREIGN KEY (workflow_id) REFERENCES public.strapi_workflows(id) ON DELETE CASCADE;


--
-- Name: strapi_workflows strapi_workflows_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.strapi_workflows
    ADD CONSTRAINT strapi_workflows_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: telegram_users telegram_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.telegram_users
    ADD CONSTRAINT telegram_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: telegram_users telegram_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.telegram_users
    ADD CONSTRAINT telegram_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_lnk up_permissions_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions_role_lnk
    ADD CONSTRAINT up_permissions_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_lnk up_users_role_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_lnk up_users_role_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users_role_lnk
    ADD CONSTRAINT up_users_role_lnk_ifk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_lnk upload_folders_parent_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders_parent_lnk
    ADD CONSTRAINT upload_folders_parent_lnk_ifk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: user_progresses_cell_lnk user_progresses_cell_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_cell_lnk
    ADD CONSTRAINT user_progresses_cell_lnk_fk FOREIGN KEY (user_progress_id) REFERENCES public.user_progresses(id) ON DELETE CASCADE;


--
-- Name: user_progresses_cell_lnk user_progresses_cell_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_cell_lnk
    ADD CONSTRAINT user_progresses_cell_lnk_ifk FOREIGN KEY (advent_cell_id) REFERENCES public.advent_cells(id) ON DELETE CASCADE;


--
-- Name: user_progresses user_progresses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses
    ADD CONSTRAINT user_progresses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: user_progresses user_progresses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses
    ADD CONSTRAINT user_progresses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: user_progresses_user_lnk user_progresses_user_lnk_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_user_lnk
    ADD CONSTRAINT user_progresses_user_lnk_fk FOREIGN KEY (user_progress_id) REFERENCES public.user_progresses(id) ON DELETE CASCADE;


--
-- Name: user_progresses_user_lnk user_progresses_user_lnk_ifk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_progresses_user_lnk
    ADD CONSTRAINT user_progresses_user_lnk_ifk FOREIGN KEY (telegram_user_id) REFERENCES public.telegram_users(id) ON DELETE CASCADE;


--
-- Name: user_questions user_questions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_questions
    ADD CONSTRAINT user_questions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: user_questions user_questions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_questions
    ADD CONSTRAINT user_questions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict fb8lgtfPsGfRRBb8ibm4mlfRtLz2ohrOymVBhKPgujHC6EfZf1wnvdDg5NSUUEP

