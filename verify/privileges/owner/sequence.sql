-- Verify database-message-store:privileges/owner/sequence on pg

BEGIN;

SELECT has_sequence_privilege('message_store_owner', 'message_store.messages_global_position_seq', 'usage');
SELECT has_sequence_privilege('message_store_owner', 'message_store.messages_global_position_seq', 'select');

ROLLBACK;
