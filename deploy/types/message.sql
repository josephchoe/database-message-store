-- Deploy database-message-store:types/message to pg
-- requires: schemas/message_store

BEGIN;

CREATE TYPE message_store.message AS (
  id varchar,
  stream_name varchar,
  type varchar,
  position bigint,
  global_position bigint,
  data varchar,
  metadata varchar,
  time timestamp
);

COMMIT;
