from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "This is a project for GCP testing for a Senior Associate at Acc.!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
