-- Deploy database-message-store:privileges/owner/schema to pg
-- requires: roles/owner
-- requires: schemas/message_store

BEGIN;

GRANT USAGE ON SCHEMA message_store TO message_store_owner;

COMMIT;
