-- Revert database-message-store:types/message from pg

BEGIN;

DROP TYPE message_store.message;

COMMIT;
