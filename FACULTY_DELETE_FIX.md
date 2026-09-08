# Faculty Delete Fix

The Admin -> Faculty -> Delete action has been fixed to use the actual primary key of the `faculty` table:

```sql
DELETE FROM faculty WHERE id = %s
```

The route also checks the installed database before deleting related records from `ep_question_papers`, `ep_faculty_assignments`, `ep_faculty_details`, and the optional legacy `classes.faculty_id` column. This avoids querying `faculty_id` from the `faculty` table itself.

## Important

The project must be started from this updated folder. Stop any old Flask/Python process before starting it again. If an existing database still reports `Unknown column 'faculty_id'`, run the diagnostic SQL in `database/faculty_delete_diagnostic.sql`; that indicates an old trigger or schema outside the Flask code.
