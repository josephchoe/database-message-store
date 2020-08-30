-- Verify database-message-store:tables/messages on pg

BEGIN;

SELECT
  global_position,
  position,
  id,
  time,
  stream_name,
  type,
  data,
  metadata
FROM message_store.messages
WHERE FALSE;

ROLLBACK;
