-- Revert database-message-store:views/type_summary from pg

BEGIN;

DROP VIEW message_store.type_summary;

COMMIT;
