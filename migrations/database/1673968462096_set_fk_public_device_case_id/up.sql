alter table "public"."device"
  add constraint "device_case_id_fkey"
  foreign key ("case_id")
  references "public"."case"
  ("id") on update restrict on delete restrict;
