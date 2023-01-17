CREATE TABLE "public"."case" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "manufacturer" text NOT NULL, "type" text NOT NULL, "entry_code" text NOT NULL, "article_number" text NOT NULL, "battery_aa" integer NOT NULL, "battery_aaa" integer NOT NULL, "posting_date" timestamptz, "lifespan" integer NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_case_updated_at"
BEFORE UPDATE ON "public"."case"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_case_updated_at" ON "public"."case" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
