-- Verify database-message-store:roles/owner on pg

BEGIN;

SELECT 1/COUNT(*) FROM pg_roles WHERE rolname = 'message_store_owner';

ROLLBACK;
