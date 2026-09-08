# E-Progress Card Audit Changelog

## Verified fixes

- Removed the faculty OTP/Twilio login flow; all roles use username and password.
- Added deployment configuration through environment variables, WSGI entry point, Procfile, and `.env.example`.
- Repaired local MariaDB access with the dedicated `e_progress_app` account.
- Fixed faculty deletion for legacy schemas and guarded optional columns.
- Fixed Admin Classes when `classes.faculty_id` is absent.
- Restored missing student academic helpers used by Admin Students and Student Dashboard.
- Normalized academic batch duration values such as `2024-2027`.
- Restored the student class-year label helper.
- Standardized table serial headers to `S.No`.
- Locked completed mark-entry rows and left incomplete rows available for entry.
- Removed gender/address fields from requested profile and student management views.
- Removed student password-change navigation.
- Fixed the marks-entry progress-bar template diagnostics.
- Added graceful database-configuration errors for login.

## Validation performed

- `app.py` and `wsgi.py` compile successfully.
- Flask imports successfully and registers 80 routes.
- All 49 HTML templates parse through Jinja.
- Live database connection succeeds through MariaDB.
- Public routes `/` and `/login` return HTTP 200.
- Admin Classes and Admin Students return HTTP 200 with an authenticated admin session.
- An existing student login reaches Student Dashboard with HTTP 200.
- Faculty dashboard and CIA mark-entry pages were exercised successfully.
- Faculty deletion completed successfully in the live database.

## Known deployment notes

- The local database contains a legacy `faculty_login_otps` table. It is unused by the current application and is retained to avoid destructive schema changes.
- Production must provide `SECRET_KEY` and the `DB_*` environment variables. Do not use the local development database password in production.
- Browser-level coverage of every CRUD edge case and PDF visual comparison requires a dedicated test database and should be completed before production release.
