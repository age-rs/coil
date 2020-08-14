
CREATE TABLE _background_tasks (
  id BIGSERIAL PRIMARY KEY NOT NULL,
  job_type TEXT NOT NULL,
  is_async BOOLEAN NOT NULL,
  -- priority INTEGER NOT NULL,
  data BYTEA NOT NULL,
  retries INTEGER NOT NULL DEFAULT 0,
  last_retry TIMESTAMP NOT NULL DEFAULT '1970-01-01',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
