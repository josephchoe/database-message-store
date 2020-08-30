-- Verify database-message-store:indexes/messages_id on pg

BEGIN;

SELECT 1/COUNT(*)
FROM
  pg_class AS t,
  pg_class AS i,
  pg_index AS ix,
  pg_attribute AS a
WHERE t.oid = ix.indrelid
  AND i.oid = ix.indexrelid
  AND a.attrelid = t.oid
  AND a.attnum = ANY(ix.indkey)
  AND t.relkind = 'r'
  AND t.relname = 'messages'
  AND i.relname = 'messages_id';

ROLLBACK;
