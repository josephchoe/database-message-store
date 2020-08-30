-- Revert database-message-store:views/stream_summary from pg

BEGIN;

DROP VIEW message_store.stream_summary;

COMMIT;
