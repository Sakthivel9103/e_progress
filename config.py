# =========================================================
# E-PROGRESS CARD - DATABASE CONFIGURATION
# =========================================================

import os

DB_HOST = os.environ.get("DB_HOST", "localhost")
DB_USER = os.environ.get("DB_USER", "e_progress_app")
DB_PASSWORD = os.environ.get("DB_PASSWORD", "EProgress_Local_2026_App")
DB_NAME = os.environ.get("DB_NAME", "e_progress_card")
DB_PORT = int(os.environ.get("DB_PORT", "3306"))

SECRET_KEY = os.environ.get("SECRET_KEY", "change-this-secret-key-in-production")