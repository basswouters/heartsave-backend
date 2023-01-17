alter table "public"."location" alter column "street" drop not null;
alter table "public"."location" add column "street" text;
