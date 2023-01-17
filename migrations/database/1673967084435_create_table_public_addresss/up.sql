CREATE TABLE "public"."addresss" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "street" text NOT NULL, "house_number" numeric NOT NULL, "house_number_addition" text, "zipcode" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));
CREATE EXTENSION IF NOT EXISTS pgcrypto;
