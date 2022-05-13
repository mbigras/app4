import flask

app4 = flask.Flask(__name__)

@app4.route("/")
def hello():
    return flask.jsonify(status="up")
