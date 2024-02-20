from flask import Flask
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Flask API!"

@app.route('/time')
def get_time():
    current_time = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    return f"The current time is: {current_time}"

if __name__ == '__main__':
    app.run()