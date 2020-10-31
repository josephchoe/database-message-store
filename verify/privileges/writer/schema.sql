-- Verify database-message-store:privileges/writer/schema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('message_store_writer', 'message_store', 'usage');

ROLLBACK;
