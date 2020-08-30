-- Verify database-message-store:extensions/pgcrypto on pg

BEGIN;

SELECT 1/count(*) FROM pg_extension WHERE extname = 'pgcrypto';
SELECT has_function_privilege('message_store.gen_random_uuid()', 'execute');

ROLLBACK;
