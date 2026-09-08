# Fixes applied

This build fixes the faculty/student fetch path around the active academic year and semester layer.

- Faculty Dashboard now self-heals missing `ep_student_semesters` rows from the faculty's real active-year class assignments before counting students/mark status.
- Enter Marks / CIA / External / Assignment pages now fetch students from the selected Class + Active Academic Year + Semester.
- Legacy student rows that still only have `students.class_id` are safely migrated into the semester mapping when the faculty opens the relevant pages.
- Faculty access checks now support the semester assignment layer instead of depending only on the old `faculty.class_id` field.
- My Students now uses `ep_student_semesters.class_id` as the current academic mapping.
- Student view/edit/delete and progress-card access were updated to use faculty assignment authorization.
- Deleting a student now also removes semester/detail/question/assignment mark rows to avoid orphaned records.
- Assessment semester choices are class-specific so a semester from another assigned class cannot produce an empty student list.
- Fixed External Marks loading where a database cursor was being reused after it had already been closed.
- Faculty username generation remains space/punctuation-free (`Dr. Suresh Kumar` -> `drsureshkumar`); DOB password format remains `DD/MM/YYYY`.

Validation performed:
- All Python files compile successfully.
- All Jinja HTML templates parse successfully.

Note: A live MySQL database was not bundled in the ZIP, so runtime data-specific verification against your local records still happens when you run the app. The added self-healing mapping is specifically designed for older databases missing semester rows.
