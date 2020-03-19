from flask import Flask, escape, request, redirect, render_template
import consultas
import consultas_insert
import inserts
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


@app.route('/insert_home.html', methods=['GET', 'POST'])
def insert_home():
    return render_template('insert_home.html')


@app.route('/agregar_usuario.html', methods=['GET', 'POST'])
def agregar_usuario():
    consulta_usuarios = consultas_insert.select_usuarios()
    etwas = render_template('agregar_usuario.html', consulta_user=consulta_usuarios)
    #inserts.parse_agregar_usuario()
    # other = request.form.get('projectFilepath')
    # print(other, file=sys.stdout)
    return etwas


@app.route('/agregar_servidor.html', methods=['GET', 'POST'])
def agregar_servidor():
    return render_template('agregar_servidor.html')


@app.route('/agregar_rioter.html', methods=['GET', 'POST'])
def agregar_rioter():
    return render_template('agregar_rioter.html')


@app.route('/agregar_batalla.html', methods=['GET', 'POST'])
def agregar_batalla():
    return render_template('agregar_batalla.html')


@app.route('/agregar_region.html', methods=['GET', 'POST'])
def agregar_region():
    return render_template('agregar_region.html')


@app.route('/agregar_mazo.html', methods=['GET', 'POST'])
def agregar_mazo():
    return render_template('agregar_mazo.html')


@app.route('/agregar_invocador.html', methods=['GET', 'POST'])
def agregar_invocador():
    return render_template('agregar_invocador.html')


@app.route('/agregar_division.html', methods=['GET', 'POST'])
def agregar_division():
    return render_template('agregar_division.html')


@app.route('/agregar_carta.html', methods=['GET', 'POST'])
def agregar_carta():
    return render_template('agregar_carta.html')


if __name__ == "__main__":
    #app.secret_key = os.urandom(12)
    app.run(host='0.0.0.0', port=5000, debug=True)
