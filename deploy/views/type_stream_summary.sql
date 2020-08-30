-- Deploy database-message-store:views/type_stream_summary to pg
-- requires: schemas/message_store
-- requires: tables/messages

BEGIN;

CREATE OR REPLACE VIEW message_store.type_stream_summary AS
  WITH
    type_count AS (
      SELECT
        type,
        stream_name,
        COUNT(id) AS message_count
      FROM
        message_store.messages
      GROUP BY
        type,
        stream_name
    ),

    total_count AS (
      SELECT
        COUNT(id)::decimal AS total_count
      FROM
        message_store.messages
    )

  SELECT
    type,
    stream_name,
    message_count,
    ROUND((message_count / total_count)::decimal * 100, 2) AS percent
  FROM
    type_count,
    total_count
  ORDER BY
    type,
    stream_name;

COMMIT;
