alter table "public"."location" alter column "house_number" drop not null;
alter table "public"."location" add column "house_number" numeric;
