-- Revert database-message-store:views/stream_type_summary from pg

BEGIN;

DROP VIEW message_store.stream_type_summary;

COMMIT;
