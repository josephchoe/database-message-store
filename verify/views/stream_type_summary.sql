-- Verify database-message-store:views/stream_type_summary on pg

BEGIN;

SELECT
  stream_name,
  type,
  message_count,
  percent
FROM message_store.stream_type_summary
WHERE FALSE;

ROLLBACK;
