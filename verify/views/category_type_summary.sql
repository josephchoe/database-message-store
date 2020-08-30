-- Verify database-message-store:views/category_type_summary on pg

BEGIN;

SELECT
  category,
  type,
  message_count,
  percent
FROM message_store.category_type_summary
WHERE FALSE;

ROLLBACK;
