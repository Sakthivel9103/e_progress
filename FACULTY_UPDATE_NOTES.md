# E-Progress Card — Faculty Module Update

## Modified files
- `app.py`
- `templates/faculty/base.html`
- `templates/faculty/dashboard.html`
- `templates/faculty/add_student.html`
- `templates/faculty/students.html`
- `templates/faculty/view_student.html`
- `templates/faculty/edit_student.html`
- `templates/faculty/marks.html`
- `templates/faculty/profile.html`

## New file
- `templates/faculty/view_marks.html`

## Database changes
None. Existing tables and existing columns are reused. No `ALTER TABLE`, new table, or new column is required.

## Faculty workflow
1. Faculty logs in.
2. Faculty dashboard shows exactly six cards: Assigned Class Details, Number of Students in Class, Add Student, Subjects Assigned for the Class, Enter Internal Marks, View Marks.
3. Faculty student access is restricted by the logged-in faculty's `department_id` + `class_id` on the backend.
4. Add Student never trusts department/class values from the browser. Both come from the faculty assignment.
5. Register numbers use the same department-code + year-code + two-digit sequence pattern used by Admin Student Management (for example `MCAI01`, `MCAI02`).
6. Mark entry validates CIA 1 /75, CIA 2 /75, Assignment /5, External /75.
7. CIA marks are converted to /10 and Internal is /25.
8. Enter key moves CIA1 -> CIA2 -> Assignment -> External -> next student's CIA1.
9. Saving is explicit. A successful save stores the complete row and immediately converts that row to view-only mode.
10. View Marks is view-only by default. Edit enables only the selected row, and Save returns it to view mode.
11. Grade and Result are displayed only when all four required marks are present.

## Important routes
- `/faculty/dashboard`
- `/faculty/profile`
- `/faculty/students`
- `/faculty/students/add`
- `/faculty/students/view/<student_id>`
- `/faculty/students/edit/<student_id>`
- `/faculty/marks`
- `/faculty/marks/submit`
- `/faculty/view-marks`

## Validation performed
- `app.py` Python syntax check passed.
- Flask application imported successfully using the bundled project packages.
- All Faculty Jinja templates compiled successfully.
- Mark calculation and maximum-mark validation were checked.

## Run
Open a terminal in the project folder and run the same Flask command you already use for this project, for example:

`python app.py`

Do not run the bundled Windows `.venv` from Linux; it is intentionally excluded from this update ZIP.
