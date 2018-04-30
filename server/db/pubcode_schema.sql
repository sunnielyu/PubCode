-- Table: public.pubcode

-- DROP TABLE public.pubcode;

CREATE TABLE public.pubcode
(
    "CodeTitle" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "PCID" serial COLLATE pg_catalog."default" NOT NULL,
    "PMID" character varying(20) COLLATE pg_catalog."default",
    "PMCID" character varying(20) COLLATE pg_catalog."default",
    "CodePubDate" date,
    "Authors" character varying(500) COLLATE pg_catalog."default" NOT NULL,
    "Language" character varying(50) COLLATE pg_catalog."default",
    "Distribution" character varying(500) COLLATE pg_catalog."default",
    "OS" character varying(20) COLLATE pg_catalog."default",
    "Dependencies" character varying(500) COLLATE pg_catalog."default",
    "Licensing" character varying(20) COLLATE pg_catalog."default",
    "Version" varchar(10) COLLATE pg_catalog."default",
    "Keywords" character varying(500) COLLATE pg_catalog."default",
    "DatasetIDs" character varying(20) COLLATE pg_catalog."default",
    "GitHub_URL" character varying(50) COLLATE pg_catalog."default",
    "GH_Forks" integer,
    "GH_OpenIssues" integer,
    "GH_ClosedIssues" integer,
    "GH_DateUpdate" date,
    "Description" text COLLATE pg_catalog."default",
    "QuickStart" text COLLATE pg_catalog."default",
    "Documentation" text COLLATE pg_catalog."default",
    CONSTRAINT "pubcode_pkey" PRIMARY KEY ("CodeTitle", "PCID")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.pubcode
    OWNER to postgres;
