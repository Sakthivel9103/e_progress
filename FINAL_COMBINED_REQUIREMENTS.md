# E-Progress Card — Final Combined Requirements

- Department creation owns course duration/batch (e.g. 2023-2026).
- UG: 3 academic years / 6 semesters; PG: 2 academic years / 4 semesters.
- Year and Semester are selectable where relevant; Semester options depend on Year.
- Academic Year is derived automatically from Department + Year; no manual academic-year entry for normal faculty/student creation.
- Department edit includes an Academic Year/Batch Update action. Historical marks must remain intact.
- Faculty assignment: Faculty + Department + Year + Semester + Section + Subject.
- Student creation: Department + Year + Semester + Section; academic year is automatic.
- Faculty marks are semester-specific. CIA 1 and CIA 2 use question-wise entry: Section A 2 marks, Section B 5 marks with explicit A/B choice, Section C 10 marks with exactly 3 of 5. Total 75 converts automatically to 10.
- External: CIA1/10 + CIA2/10 auto-fetched; Assignment/5 and External/75 entered manually; Internal/25 and Total/100 calculated automatically.
- Student View Marks has semester selection and semester-specific PDF generation. Missing marks do not display fake percentage/grade.
- Question Paper upload supports PDF/Word/image. OCR focuses on Question, CO Level and K Level. Current/upload date is automatic; Exam Date uses a calendar picker; other system-known details are auto-filled from department/year/semester/subject mapping.
- Global UI: same font, sizes, navbar/sidebar language, cards, tables, inputs, button shapes/colours, Delete/Edit/Save/Update buttons, alerts and spacing across all pages.
- Password fields get a consistent show/hide eye button.
- Enter moves to the next logical field globally; final field submits.
- Scrollbars are visually hidden while horizontal tables remain usable.

Standalone academic-year and semester pages/routes are retained only for backward compatibility; they are removed from the primary admin navigation.
