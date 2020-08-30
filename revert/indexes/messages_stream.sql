-- Revert database-message-store:indexes/messages_stream from pg

BEGIN;

DROP INDEX message_store.messages_stream;

COMMIT;
