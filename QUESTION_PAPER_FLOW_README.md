# Question Paper Module - Implemented Flow

## Faculty workflow
1. My Classes -> select Class
2. Select assigned Subject
3. Question Paper
4. Select CIA 1 / CIA 2 / External
5. Upload PDF/Image
6. Extract OCR text
7. Parse Section A / B / C
8. Review and edit Q.No, CO Level, Question, K Level
9. Save
10. View Extracted QP
11. Edit and update when needed

## Important behavior
- View Extracted QP never opens the uploaded PDF.
- The view page loads the saved `paper_json` payload from `ep_question_papers`.
- The same saved payload is used for Edit.
- The unique paper context is faculty + subject + academic year + semester + exam type.

## Routes
- /faculty/question-paper
- /faculty/question-paper/data
- /faculty/question-paper/save

## Database
`ep_question_papers` stores the original file path optionally and the canonical extracted payload in `paper_json`.
