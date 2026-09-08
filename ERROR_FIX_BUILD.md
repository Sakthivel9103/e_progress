# E-Progress Card - Error-Fix Build

This build was statically checked after the latest changes.

## Fixes included
- Added the missing `admin/faculty_profile.html` template used by the faculty view route.
- Added the missing `student/subjects.html` template used by the student subjects route.
- Added automatic creation and seeding of the `result_settings` table, which is required by the Admin result-visibility page and dashboard.
- Removed bundled `.venv`, `.git`, and Python cache files so the ZIP contains the actual project source instead of a stale local environment.

## Run on Windows + XAMPP
1. Start Apache and MySQL/MariaDB in XAMPP.
2. Open PowerShell in this project folder.
3. Create/activate a virtual environment if needed:
   `python -m venv .venv`
   `.venv\Scripts\activate`
4. Install dependencies:
   `pip install -r requirements.txt`
5. Make sure the MySQL database is named `e_progress_card` and matches the existing project schema.
6. Start:
   `python app.py`

The application will create the `ep_*` compatibility tables and `result_settings` automatically on the first request.
