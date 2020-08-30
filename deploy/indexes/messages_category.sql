-- Deploy database-message-store:indexes/messages_category to pg
-- requires: schemas/message_store
-- requires: tables/messages
-- requires: functions/category

BEGIN;

CREATE INDEX messages_category ON message_store.messages (
  message_store.category(stream_name),
  global_position,
  message_store.category(metadata->>'correlationStreamName')
);

COMMIT;
