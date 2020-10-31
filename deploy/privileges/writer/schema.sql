-- Deploy database-message-store:privileges/writer/schema to pg
-- requires: roles/writer
-- requires: schemas/message_store

BEGIN;

GRANT USAGE ON SCHEMA message_store TO message_store_writer;

COMMIT;
