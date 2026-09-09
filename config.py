# =========================================================
# E-PROGRESS CARD - DATABASE CONFIGURATION
# =========================================================

import os

DB_HOST = os.environ.get("DB_HOST") or os.environ.get("MYSQLHOST", "localhost")
DB_USER = os.environ.get("DB_USER") or os.environ.get("MYSQLUSER", "e_progress_app")
DB_PASSWORD = os.environ.get("DB_PASSWORD") or os.environ.get("MYSQLPASSWORD", "EProgress_Local_2026_App")
DB_NAME = os.environ.get("DB_NAME") or os.environ.get("MYSQLDATABASE", "e_progress_card")
DB_PORT = int(os.environ.get("DB_PORT") or os.environ.get("MYSQLPORT") or "3306")

SECRET_KEY = os.environ.get("SECRET_KEY", "change-this-secret-key-in-production")