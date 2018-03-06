BEGIN;

ALTER TABLE sda_db."public"."user"
ALTER COLUMN firstName TYPE VARCHAR(20),
ALTER COLUMN firstName SET NOT NULL,
ALTER COLUMN lastName SET NOT NULL,
ALTER COLUMN lastName TYPE VARCHAR(30),
ALTER COLUMN email TYPE VARCHAR(30),
ALTER COLUMN email SET NOT NULL;

ALTER TABLE "user"
  ADD CONSTRAINT constraint_namex UNIQUE (email);

COMMIT;