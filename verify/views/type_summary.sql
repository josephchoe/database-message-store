-- Verify database-message-store:views/type_summary on pg

BEGIN;

SELECT
  type,
  message_count,
  percent
FROM message_store.type_summary
WHERE FALSE;

ROLLBACK;
