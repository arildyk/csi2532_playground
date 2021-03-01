ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;
INSERT INTO schema_migrations (migration, migrated_at) VALUES
('20210127175000-update-athletes.sql', '2021-01-27 17:50:00');