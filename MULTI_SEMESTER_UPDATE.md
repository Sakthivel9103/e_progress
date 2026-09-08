# Multi-Semester E-Progress Update

UG: 6 semesters (2 per year). PG: 4 semesters (2 per year).

The application auto-creates prefixed `ep_*` tables and does not alter the existing marks table. Existing class-based faculty assignments are seeded into the semester assignment layer.

Admin: Academic Years, Semester Setup, Faculty Semester Assignments.
Faculty: academic year + semester filtered subjects, CIA1, CIA2, External and Question Paper.
Student: semester-wise marks.

Run: `python app.py`
