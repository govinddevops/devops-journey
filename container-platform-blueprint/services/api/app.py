from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def index():
    return "Container Platform Blueprint Running"

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

