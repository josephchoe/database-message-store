-- Verify database-message-store:views/type_stream_summary on pg

BEGIN;

SELECT
  type,
  stream_name,
  message_count,
  percent
FROM message_store.type_stream_summary
WHERE FALSE;

ROLLBACK;
