from flask import Flask
import os

app = Flask(__name__)
port = int(os.environ.get("PORT", 5000))

@app.route('/')
def hello():
    return "Hello from Flask"

app.run(host='0.0.0.0', port=port)