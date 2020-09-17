-- Deploy database-message-store:functions/message_store_version to pg
-- requires: roles/owner
-- requires: schemas/message_store

BEGIN;

CREATE OR REPLACE FUNCTION message_store.message_store_version()
RETURNS varchar
AS $$
BEGIN
  RETURN '1.2.3';
END;
$$ LANGUAGE plpgsql
VOLATILE SECURITY DEFINER;

ALTER FUNCTION message_store.message_store_version() OWNER TO message_store_owner;

REVOKE ALL ON FUNCTION message_store.message_store_version() FROM PUBLIC;

COMMIT;
