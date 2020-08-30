-- Revert database-message-store:views/category_type_summary from pg

BEGIN;

DROP VIEW message_store.category_type_summary;

COMMIT;
