-- Verify database-message-store:views/type_category_summary on pg

BEGIN;

SELECT
  type,
  category,
  message_count,
  percent
FROM message_store.type_category_summary
WHERE FALSE;

ROLLBACK;
