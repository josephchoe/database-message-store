-- Revert database-message-store:indexes/messages_id from pg

BEGIN;

DROP INDEX message_store.messages_id;

COMMIT;
