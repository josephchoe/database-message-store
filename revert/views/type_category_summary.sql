-- Revert database-message-store:views/type_category_summary from pg

BEGIN;

DROP VIEW message_store.type_category_summary;

COMMIT;
