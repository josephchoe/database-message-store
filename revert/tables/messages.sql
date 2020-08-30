-- Revert database-message-store:tables/messages from pg

BEGIN;

DROP TABLE message_store.messages;

COMMIT;
