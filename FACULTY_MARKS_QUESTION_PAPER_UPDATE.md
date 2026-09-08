# Faculty Marks & Question Paper Update

## New workflow
1. CIA 1 Marks: enter marks out of 75; automatic conversion to /10.
2. CIA 2 Marks: enter marks out of 75; automatic conversion to /10.
3. External Marks: CIA 1 and CIA 2 are fetched automatically; enter Assignment /5 and External /75 only.
4. Internal /25 and Total /100 are calculated automatically when all four components exist.
5. Question Paper: choose CIA 1 or CIA 2, upload a question-paper image, run browser OCR, edit extracted fields, and save the structured paper.

## Calculation
- CIA 1 /10 = CIA 1 /75 × 10
- CIA 2 /10 = CIA 2 /75 × 10
- Internal /25 = CIA 1 /10 + CIA 2 /10 + Assignment /5
- Total /100 = Internal /25 + External /75

The existing `marks` table and columns are reused. No ALTER TABLE or new MySQL table is required. Question-paper extracted data and the original upload are stored under `static/uploads/question_papers/` so the existing database schema is not changed.

## New faculty routes
- `/faculty/cia1`
- `/faculty/cia2`
- `/faculty/external`
- `/faculty/question-paper`
- `/faculty/question-paper/save`
- `/faculty/marks/save-partial`

The old `/faculty/marks` URL redirects to CIA 1 for compatibility.
