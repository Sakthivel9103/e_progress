# Subject Repeat Protection + Performance Pie Chart

## Changes in this build

1. **Cohort-aware subject repeat protection**
   - A subject assigned to a student batch in one semester is blocked from being assigned again to that same batch in another semester.
   - Example: AI 2026 cohort studying subject C in Semester 1 cannot have subject C assigned again in Semesters 2–6.
   - The same subject remains available for a new incoming batch.
   - The protection is enforced both in the assignment UI and on the Flask POST/edit routes.

2. **Assignment UI feedback**
   - Subjects already used by the same cohort in another semester are shown as disabled.
   - A shield icon and message such as `Already used by this student batch in Semester 1 · repeat blocked` are shown.
   - The selected context displays `Subject repeat protection is ON`.

3. **Student Subject Performance**
   - The existing Subject Performance chart on **Student Portal → My Marks** is now a **pie chart**.
   - It displays the distribution of subjects as Strong (≥75), Moderate (50–74.99), Weak (<50), and Pending.
   - The existing CIA 1 / CIA 2 / External subject-wise chart is retained.
