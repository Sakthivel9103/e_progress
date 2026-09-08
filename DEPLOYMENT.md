# Deployment

## Environment variables

Set these values in the hosting provider. Do not commit real credentials.

- `SECRET_KEY`: a long random value
- `DB_HOST`: MySQL host
- `DB_PORT`: MySQL port, normally `3306`
- `DB_NAME`: database name
- `DB_USER`: database user
- `DB_PASSWORD`: database password

The application creates or upgrades its required tables during requests. The MySQL database itself must already exist.

## Start command

The included `Procfile` uses:

```text
gunicorn --bind 0.0.0.0:$PORT wsgi:application
```

Install dependencies with `pip install -r requirements.txt`. For local development, use `python app.py` and open `http://127.0.0.1:5000`.

Faculty, admin, and student users now authenticate with username and password only. No OTP or SMS provider is required.
