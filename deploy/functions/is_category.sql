-- Deploy database-message-store:functions/is_category to pg
-- requires: schemas/message_store

BEGIN;

CREATE OR REPLACE FUNCTION message_store.is_category(
  stream_name varchar
)
RETURNS boolean
AS $$
BEGIN
  IF NOT STRPOS(is_category.stream_name, '-') = 0 THEN
    RETURN FALSE;
  END IF;

  RETURN TRUE;
END;
$$ LANGUAGE plpgsql
IMMUTABLE;

REVOKE ALL ON FUNCTION message_store.is_category(varchar) FROM PUBLIC;

COMMIT;
