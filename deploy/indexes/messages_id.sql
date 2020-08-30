-- Deploy database-message-store:indexes/messages_id to pg
-- requires: schemas/message_store
-- requires: tables/messages

BEGIN;

CREATE UNIQUE INDEX messages_id ON message_store.messages (
  id
);

COMMIT;
