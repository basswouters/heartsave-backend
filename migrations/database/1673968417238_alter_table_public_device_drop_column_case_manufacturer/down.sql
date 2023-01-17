alter table "public"."device" alter column "case_manufacturer" drop not null;
alter table "public"."device" add column "case_manufacturer" text;
