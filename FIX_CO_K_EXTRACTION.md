# CO / K Level Extraction Fix

Fixed OCR parsing so CO and K level tokens are separated from question text.

Examples handled:
- CO2
- CO 2
- CO-Level 2
- C02 (OCR zero)
- CCO2 / CcO2 (OCR duplicate C)
- K1, K 1, K-Level 1

The UI also performs a defensive cleanup before rendering and before saving, so old extracted text containing CO/K metadata is corrected automatically.
