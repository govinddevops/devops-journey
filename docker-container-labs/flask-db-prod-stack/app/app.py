from flask import Flask
import mysql.connector
import os

app = Flask(__name__)

db = mysql.connector.connect(
    host="db",
    user="root",
    password="rootpass",
    database="prod_db"
)

@app.route("/")
def home():
    cursor = db.cursor()
    cursor.execute("SELECT message FROM info LIMIT 1;")
    result = cursor.fetchone()
    return f"Database Message: {result[0]}"

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

