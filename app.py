from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "Hello, Docker!"


if __name__ == "__main__":
    # 0.0.0.0 so the app is reachable from outside a Docker container
    app.run(host="0.0.0.0", port=5000)
