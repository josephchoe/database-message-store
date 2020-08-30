-- Deploy database-message-store:extensions/pgcrypto to pg
-- requires: schemas/message_store

BEGIN;

CREATE EXTENSION pgcrypto SCHEMA message_store;

COMMIT;
