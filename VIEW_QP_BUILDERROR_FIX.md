# View Extracted QP BuildError Fix

Fixed the template so it no longer calls `url_for("faculty_question_paper_data")` during Jinja rendering.
The browser now calls the existing API directly at `/faculty/question-paper/data`.

This prevents:
`BuildError: Could not build url for endpoint faculty_question_paper_data`

The existing Flask API route remains responsible for returning the saved extracted JSON.
