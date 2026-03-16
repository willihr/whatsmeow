-- v14: Add insert timestamp to message secrets for time-based cleanup
ALTER TABLE whatsmeow_message_secrets ADD COLUMN timestamp BIGINT NOT NULL DEFAULT 0;

CREATE INDEX whatsmeow_message_secrets_ts_idx ON whatsmeow_message_secrets (our_jid, timestamp);
