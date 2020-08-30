-- Deploy database-message-store:functions/category to pg
-- requires: schemas/message_store

BEGIN;

CREATE OR REPLACE FUNCTION message_store.category(
  stream_name varchar
)
RETURNS varchar
AS $$
BEGIN
  RETURN SPLIT_PART(category.stream_name, '-', 1);
END;
$$ LANGUAGE plpgsql
IMMUTABLE;

REVOKE ALL ON FUNCTION message_store.category(varchar) FROM PUBLIC;

COMMIT;
