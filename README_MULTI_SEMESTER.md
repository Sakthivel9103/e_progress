# E-Progress Card — Multi-Semester Final Update

## Semester model
- UG: 6 semesters — Year 1 (Sem 1, 2), Year 2 (Sem 3, 4), Year 3 (Sem 5, 6)
- PG: 4 semesters — Year 1 (Sem 1, 2), Year 2 (Sem 3, 4)

## Admin
1. Academic Years — create/set active academic year.
2. Semester Setup — map each year-class to both semesters and section.
3. Faculty Semester Assignments — assign faculty + academic year + semester + class + section + subject.
4. Existing class-based assignments are automatically seeded so the old project keeps working.

## Faculty
- Dashboard is semester-aware.
- CIA 1 and CIA 2 are question-wise: 10x2 + 5x5 (A/B choice) + any 3x10 = 75, converted to /10.
- External page fetches CIA 1/2 automatically and accepts Assignment /5 + External /75.
- Question paper upload is semester-aware and supports PDF, DOC/DOCX, JPG/JPEG/PNG/WEBP through the existing OCR page.
- Enter key moves through question fields.

## Student
- My Marks and My Results are semester-wise.
- Student semester history is maintained in the new `ep_student_semesters` layer.
- Existing marks stay in the original `marks` table.

## Database safety
The update does not ALTER or rename existing application tables. It creates only prefixed `ep_*` support tables automatically on the first request. A reference SQL file is in `database/semester_layer.sql`.

## Run
```text
cd C:\xampp\htdocs\e_progress_card
python app.py
```
Make sure XAMPP MySQL/MariaDB is running first.
