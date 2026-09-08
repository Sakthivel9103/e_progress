USE e_progress_card;

-- Confirm the faculty primary key.
SHOW COLUMNS FROM faculty;

-- Check for triggers that may contain an old faculty_id reference.
SHOW TRIGGERS WHERE `Table` = 'faculty';

-- Find installed columns named faculty_id.
SELECT TABLE_NAME, COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'e_progress_card'
  AND COLUMN_NAME = 'faculty_id';

-- Inspect trigger definitions if any trigger is returned above:
-- SHOW CREATE TRIGGER trigger_name;
