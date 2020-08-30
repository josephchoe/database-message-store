-- Deploy database-message-store:views/type_category_summary to pg
-- requires: schemas/message_store
-- requires: tables/messages
-- requires: functions/category

BEGIN;

CREATE OR REPLACE VIEW message_store.type_category_summary AS
  WITH
    type_count AS (
      SELECT
        type,
        message_store.category(stream_name) AS category,
        COUNT(id) AS message_count
      FROM
        message_store.messages
      GROUP BY
        type,
        category
    ),

    total_count AS (
      SELECT
        COUNT(id)::decimal AS total_count
      FROM
        message_store.messages
    )

  SELECT
    type,
    category,
    message_count,
    ROUND((message_count / total_count)::decimal * 100, 2) AS percent
  FROM
    type_count,
    total_count
  ORDER BY
    type,
    category;

COMMIT;
