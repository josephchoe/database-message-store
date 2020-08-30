-- Revert database-message-store:views/type_stream_summary from pg

BEGIN;

DROP VIEW message_store.type_stream_summary;

COMMIT;
