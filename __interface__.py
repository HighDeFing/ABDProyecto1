from flask import Flask, escape, request, redirect, render_template
import consultas
import sys

app = Flask(__name__)


@app.route('/')
@app.route('/home.html', methods=['GET', 'POST'])
def hello():
    primera = consultas.primera_consulta()
    segunda = consultas.segunda_consulta()
    tercera = consultas.tercera_consulta()
    cuarta = consultas.cuarta_consulta()
    quinta = consultas.quinta_consulta()
    sexta = consultas.sexta_consulta()
    septima = consultas.septima_consulta()
    octava = consultas.octava_consulta()
    novena = consultas.novena_consulta()
    decima = consultas.decima_consulta()
    return render_template('home.html', pri=primera, seg=segunda, ter=tercera, cua=cuarta, qui=quinta, sex=sexta, sep=septima, oct=octava, nov=novena, dec=decima)


if __name__ == "__main__":
    #app.secret_key = os.urandom(12)
    app.run(host='0.0.0.0', port=5000, debug=True)