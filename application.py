#app.py(2319)
from flask import Flask
app = Flask(__name__)

@app.route("/")
def rollno():
  return "Rollno,2319"



