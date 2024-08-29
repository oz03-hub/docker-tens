import flask
import tensorflow as tf

app = flask.Flask(__name__)

@app.route('/')
def index():
    return f"TensorFlow version: {tf.__version__}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
    