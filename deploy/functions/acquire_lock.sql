-- Deploy database-message-store:functions/acquire_lock to pg
-- requires: schemas/message_store
-- requires: functions/hash_64
-- requires: functions/category

BEGIN;

CREATE OR REPLACE FUNCTION message_store.acquire_lock(
  stream_name varchar
)
RETURNS bigint
AS $$
DECLARE
  _category varchar;
  _category_name_hash bigint;
BEGIN
  _category := category(acquire_lock.stream_name);
  _category_name_hash := hash_64(_category);
  PERFORM pg_advisory_xact_lock(_category_name_hash);

  IF current_setting('message_store.debug_write', true) = 'on' OR current_setting('message_store.debug', true) = 'on' THEN
    RAISE NOTICE '» acquire_lock';
    RAISE NOTICE 'stream_name: %', acquire_lock.stream_name;
    RAISE NOTICE '_category: %', _category;
    RAISE NOTICE '_category_name_hash: %', _category_name_hash;
  END IF;

  RETURN _category_name_hash;
END;
$$ LANGUAGE plpgsql
VOLATILE;

REVOKE ALL ON FUNCTION message_store.acquire_lock(varchar) FROM PUBLIC;

COMMIT;
