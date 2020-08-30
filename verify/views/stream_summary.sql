-- Verify database-message-store:views/stream_summary on pg

BEGIN;

SELECT
  stream_name,
  message_count,
  percent
FROM message_store.stream_summary
WHERE FALSE;

ROLLBACK;
