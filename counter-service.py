from flask import Flask, render_template , request

app = Flask(__name__)

counter = {"METHOD_POST":0}

@app.route('/')
def index_route():
    return render_template("index.html")

@app.route('/request-counter', methods=["POST"])
def post_request_counter():
    counter['METHOD_POST'] += 1
    return render_template("index.html")

@app.route('/request-counter', methods=["GET"])
def get_request():
    return render_template("request-counter.html", counter=counter)

if __name__ == '_main_':
   app.run(debug=True)