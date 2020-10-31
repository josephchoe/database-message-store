-- Verify database-message-store:privileges/reader/schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('message_store_reader', 'message_store', 'usage');

ROLLBACK;
