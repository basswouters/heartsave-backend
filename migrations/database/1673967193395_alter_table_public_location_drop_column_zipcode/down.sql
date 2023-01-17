alter table "public"."location" alter column "zipcode" drop not null;
alter table "public"."location" add column "zipcode" text;
