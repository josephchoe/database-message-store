-- Deploy database-message-store:functions/id to pg
-- requires: roles/owner
-- requires: schemas/message_store

BEGIN;

CREATE OR REPLACE FUNCTION message_store.id(
  stream_name varchar
)
RETURNS varchar
AS $$
DECLARE
  _id_separator_position integer;
BEGIN
  _id_separator_position := STRPOS(id.stream_name, '-');

  IF _id_separator_position = 0 THEN
    RETURN NULL;
  END IF;

  RETURN SUBSTRING(id.stream_name, _id_separator_position + 1);
END;
$$ LANGUAGE plpgsql
IMMUTABLE SECURITY DEFINER;

ALTER FUNCTION message_store.id(varchar) OWNER TO message_store_owner;

REVOKE ALL ON FUNCTION message_store.id(varchar) FROM PUBLIC;

COMMIT;
