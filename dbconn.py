from flask import Flask, render_template, request, redirect, url_for, flash, session
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# =========================================================
# DATABASE CONNECTION CONFIGURATION (Ang kapalit ng dbconn.php)
# =========================================================
# Format: mysql+pymysql://username:password@server/database_name
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/finalrankup'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Secret key para gumana ang flash messages at session
app.secret_key = 'rankup_secret_key_ni_boss' 

# Inisyalisasyon ng database connection instance
db = SQLAlchemy(app)

# Test kung konektado nang maayos ang database mo pagka-run ng app
try:
    with app.app_context():
        db.session.execute(db.text("SELECT 1"))
    print("🚀 Database Connection Successful!")
except Exception as e:
    print(f"❌ Connection Failed: {e}")