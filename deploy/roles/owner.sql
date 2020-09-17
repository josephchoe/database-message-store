-- Deploy database-message-store:roles/owner to pg

BEGIN;

CREATE ROLE message_store_owner WITH NOLOGIN NOINHERIT;

COMMIT;
