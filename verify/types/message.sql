-- Verify database-message-store:types/message on pg

BEGIN;

SELECT 1/COUNT(*) FROM pg_type WHERE typname = 'message';

ROLLBACK;
