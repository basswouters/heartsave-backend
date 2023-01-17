alter table "public"."contact"
  add constraint "contact_address_id_fkey"
  foreign key ("address_id")
  references "public"."addresss"
  ("id") on update restrict on delete restrict;
