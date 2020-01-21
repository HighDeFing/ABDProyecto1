from flask import Flask, escape, request, redirect, render_template
from __init__ import inicio, other_execute
import sys

app = Flask(__name__)


@app.route('/')
@app.route('/home.html', methods=['GET', 'POST'])
def hello():
    cur = inicio()
    other_cur = other_execute()
    return render_template('home.html', cur=cur, other_cur=other_cur)


if __name__ == "__main__":
    #app.secret_key = os.urandom(12)
    app.run(host='0.0.0.0', port=5000, debug=True)