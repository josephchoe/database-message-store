-- Revert database-message-store:indexes/messages_category from pg

BEGIN;

DROP INDEX message_store.messages_category;

COMMIT;
