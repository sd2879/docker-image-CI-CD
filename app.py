from flask import Flask, jsonify

app = Flask(__name__)

# Define a route for the home page
@app.route('/')
def home():
    return jsonify(message="Hello, World! Welcome to your Dockerized Flask app!")

# Define a route for a sample API
@app.route('/api/data')
def data():
    return jsonify(data=[1, 2, 3, 4, 5])

# Start the Flask web server
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
