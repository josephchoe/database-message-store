-- Deploy database-message-store:indexes/messages_stream to pg
-- requires: schemas/message_store
-- requires: tables/messages

BEGIN;

CREATE UNIQUE INDEX messages_stream ON message_store.messages (
  stream_name,
  position
);

COMMIT;
