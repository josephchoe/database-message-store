-- Revert database-message-store:roles/owner from pg

BEGIN;

DROP ROLE message_store_owner;

COMMIT;
