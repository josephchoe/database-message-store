-- Verify database-message-store:roles/writer on pg

BEGIN;

SELECT 1/COUNT(*) FROM pg_roles WHERE rolname = 'message_store_writer';

ROLLBACK;
