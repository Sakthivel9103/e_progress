# =========================================================
# E-PROGRESS CARD - DATABASE CONFIGURATION
# =========================================================

import os

# Local workspace defaults for the repaired MariaDB instance.
# These defaults are intentionally fixed so stale inherited DB_* or MYSQL*
# environment variables cannot redirect the app to the broken local DB.
DB_HOST = os.environ.get("E_PROGRESS_CARD_DB_HOST", "localhost")
DB_USER = os.environ.get("E_PROGRESS_CARD_DB_USER", "e_progress_app")
DB_PASSWORD = os.environ.get("E_PROGRESS_CARD_DB_PASSWORD", "EProgress_Local_2026_App")
DB_NAME = os.environ.get("E_PROGRESS_CARD_DB_NAME", "e_progress_card")
DB_PORT = int(os.environ.get("E_PROGRESS_CARD_DB_PORT", "3307"))

SECRET_KEY = os.environ.get("SECRET_KEY", "change-this-secret-key-in-production")