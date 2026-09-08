# Faculty Module – Manual + Excel Multiple Add

## Main flow
Faculty → Add Faculty → choose Manual Add or Excel Multiple Faculty Add.

## Excel flow
1. Download Excel Template.
2. Fill Faculty Name, Email, Phone, Department, Username, Password and optional Gender/DOB/Address.
3. Upload `.xlsx` or `.csv`.
4. Review Preview & Validate.
5. Invalid rows are not inserted.
6. Click Confirm & Add Faculty.
7. Return to Faculty List.

## Important
- Department is validated against the existing `departments` table.
- Existing faculty email/phone and user username duplicates are rejected.
- Duplicate rows inside the same file are rejected.
- Upload does not insert records immediately.
- There is no application-level row limit. Excel/CSV format limits still apply.
- Faculty assignments are not deleted when editing faculty.
- Faculty deletion is blocked if the faculty has `ep_faculty_assignments`, protecting academic assignment data.
- The main Faculty table contains exactly S.No, Faculty Name, Email, Phone, Department and Action (Edit/Delete).
