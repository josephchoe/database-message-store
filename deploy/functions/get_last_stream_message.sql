-- Deploy database-message-store:functions/get_last_stream_message to pg
-- requires: roles/owner
-- requires: schemas/message_store
-- requires: tables/messages
-- requires: types/message

BEGIN;

CREATE OR REPLACE FUNCTION message_store.get_last_stream_message(
  stream_name varchar
)
RETURNS SETOF message_store.message
AS $$
DECLARE
  _command text;
BEGIN
  _command := '
    SELECT
      id::varchar,
      stream_name::varchar,
      type::varchar,
      position::bigint,
      global_position::bigint,
      data::varchar,
      metadata::varchar,
      time::timestamp
    FROM
      messages
    WHERE
      stream_name = $1
    ORDER BY
      position DESC
    LIMIT
      1';

  IF current_setting('message_store.debug_get', true) = 'on' OR current_setting('message_store.debug', true) = 'on' THEN
    RAISE NOTICE '» get_last_stream_message';
    RAISE NOTICE 'stream_name ($1): %', get_last_stream_message.stream_name;
    RAISE NOTICE 'Generated Command: %', _command;
  END IF;

  RETURN QUERY EXECUTE _command USING get_last_stream_message.stream_name;
END;
$$ LANGUAGE plpgsql
VOLATILE SECURITY DEFINER;

ALTER FUNCTION message_store.get_last_stream_message(varchar) OWNER TO message_store_owner;

REVOKE ALL ON FUNCTION message_store.get_last_stream_message(varchar) FROM PUBLIC;

COMMIT;
