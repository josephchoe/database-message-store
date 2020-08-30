-- Deploy database-message-store:functions/message_store_version to pg
-- requires: schemas/message_store

BEGIN;

CREATE OR REPLACE FUNCTION message_store.message_store_version()
RETURNS varchar
AS $$
BEGIN
  RETURN '1.2.3';
END;
$$ LANGUAGE plpgsql
VOLATILE;

REVOKE ALL ON FUNCTION message_store.message_store_version() FROM PUBLIC;

COMMIT;
