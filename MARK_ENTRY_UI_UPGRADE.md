# Faculty Mark Entry UI Upgrade

Updated the Faculty > Mark Entry page.

- CIA 1, CIA 2, Assignment and External now show student-wise completion status.
- Green check + `All students` means every mapped student has a complete assessment entry.
- Amber status such as `3/42 entered` identifies incomplete assessments.
- Added mini progress bars and a quick status legend.
- Improved assessment buttons with icons, completed/pending states and hover feedback.
- Completion is calculated from the existing CIA question-wise JSON, assignment table and external question-wise table; no new database table is required.
- A mark of `0` is correctly treated as entered.
