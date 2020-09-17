-- Verify database-message-store:privileges/owner/schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('message_store_owner', 'message_store', 'usage');

ROLLBACK;
