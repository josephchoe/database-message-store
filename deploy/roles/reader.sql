-- Deploy database-message-store:roles/reader to pg

BEGIN;

CREATE ROLE message_store_reader WITH NOLOGIN NOINHERIT;

COMMIT;
