-- Deploy database-message-store:functions/cardinal_id to pg
-- requires: schemas/message_store
-- requires: functions/id

BEGIN;

CREATE OR REPLACE FUNCTION message_store.cardinal_id(
  stream_name varchar
)
RETURNS varchar
AS $$
DECLARE
  _id varchar;
BEGIN
  _id := id(cardinal_id.stream_name);

  IF _id IS NULL THEN
    RETURN NULL;
  END IF;

  RETURN SPLIT_PART(_id, '+', 1);
END;
$$ LANGUAGE plpgsql
IMMUTABLE;

REVOKE ALL ON FUNCTION message_store.cardinal_id(varchar) FROM PUBLIC;

COMMIT;
