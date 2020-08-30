-- Revert database-message-store:functions/stream_version from pg

BEGIN;

DROP FUNCTION message_store.stream_version(varchar);

COMMIT;
