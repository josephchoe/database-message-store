-- Deploy database-message-store:privileges/reader/schema to pg
-- requires: roles/reader
-- requires: schemas/message_store

BEGIN;

GRANT USAGE ON SCHEMA message_store TO message_store_reader;

COMMIT;
