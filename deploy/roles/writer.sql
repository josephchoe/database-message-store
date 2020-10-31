-- Deploy database-message-store:roles/writer to pg

BEGIN;

CREATE ROLE message_store_writer WITH NOLOGIN NOINHERIT;

COMMIT;
