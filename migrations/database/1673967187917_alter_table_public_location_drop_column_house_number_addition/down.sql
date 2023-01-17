alter table "public"."location" alter column "house_number_addition" drop not null;
alter table "public"."location" add column "house_number_addition" text;
