alter table "public"."device"
  add constraint "device_aed_id_fkey"
  foreign key ("aed_id")
  references "public"."aed"
  ("id") on update restrict on delete restrict;
