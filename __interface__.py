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
    sexta_a = consultas.sexta_consulta_a()
    sexta_b = consultas.sexta_consulta_b()
    sexta_c = consultas.sexta_consulta_c()
    sexta_d = consultas.sexta_consulta_d()
    sexta_e = consultas.sexta_consulta_e()
    sexta_f = consultas.sexta_consulta_f()
    sexta_g = consultas.sexta_consulta_g()
    sexta_h = consultas.sexta_consulta_h()
    sexta_i = consultas.sexta_consulta_i()
    septima = consultas.septima_consulta()
    octava = consultas.octava_consulta()
    novena = consultas.novena_consulta()
    decima_a = consultas.decima_consulta_a()
    decima_b = consultas.decima_consulta_b()
    decima_c = consultas.decima_consulta_c()
    decima_d = consultas.decima_consulta_d()
    decima_e = consultas.decima_consulta_e()
    decima_f = consultas.decima_consulta_f()
    decima_g = consultas.decima_consulta_g()
    decima_h = consultas.decima_consulta_h()
    decima_i = consultas.decima_consulta_i()
    decima_index = consultas.decima_consulta_index()
    return render_template('home.html', pri=primera, seg=segunda, ter=tercera, cua=cuarta, qui=quinta,
                           sex_a=sexta_a, sex_b=sexta_b, sex_c=sexta_c, sex_d=sexta_d, sex_e=sexta_e, sex_f=sexta_f, sex_g=sexta_g, sex_h=sexta_h, sex_i=sexta_i,
                           sep=septima, oct=octava, nov=novena,
                           dec_a=decima_a, dec_b=decima_b, dec_c=decima_c, dec_d=decima_d, dec_e=decima_e, dec_f=decima_f, dec_g=decima_g, dec_h=decima_h, dec_i=decima_i, dec_ind=decima_index)


if __name__ == "__main__":
    #app.secret_key = os.urandom(12)
    app.run(host='0.0.0.0', port=5000, debug=True)
