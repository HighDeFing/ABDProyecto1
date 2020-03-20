import cx_Oracle
from flask import Flask, escape, request, redirect, render_template
import consultas
import sys
import datetime


def agregar_rioter():
    usuario = request.form.get('agregar_rioter_usuario')
    servidor = request.form.get('agregar_rioter_servidor')
    nombre_invocador = request.form.get('agregar_rioter_nombre_invocador')
    fecha_contrato_inicio = request.form.get('agregar_rioter_contrato_inicio')
    if fecha_contrato_inicio is not None:
        fecha_contrato_inicio = datetime.datetime.strptime(fecha_contrato_inicio, '%Y-%m-%d').strftime('%d-%m-%Y')
    fecha_contrato_fin = request.form.get('agregar_rioter_contrato_fin')
    if fecha_contrato_fin is not None:
        fecha_contrato_fin = datetime.datetime.strptime(fecha_contrato_fin, '%Y-%m-%d').strftime('%d-%m-%Y')
    salario = request.form.get('agregar_rioter_salario')
    if usuario is not None and servidor is not None:
        data = [usuario, servidor, nombre_invocador, fecha_contrato_inicio, fecha_contrato_fin, salario]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.execute("""ALTER SESSION SET nls_date_format = 'dd-mm-yyyy'""")
        cur.callproc('tryndamere.agregar_rioter', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data

def agregar_invocador():
    usuario = request.form.get('agregar_invocador_usuario')
    servidor = request.form.get('agregar_invocador_servidor')
    nombre_invocador = request.form.get('agregar_invocador_nombre_invocador')
    fecha_creacion = request.form.get('agregar_invocador_fecha_creacion')
    if fecha_creacion is not None:
        fecha_creacion = datetime.datetime.strptime(fecha_creacion, '%Y-%m-%d').strftime('%d-%m-%Y')
    if usuario is not None and nombre_invocador is not None:
        data = [usuario, servidor, nombre_invocador, fecha_creacion]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.execute("""ALTER SESSION SET nls_date_format = 'dd-mm-yyyy'""")
        cur.callproc('tryndamere.agregar_invocador', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data



def agregar_batalla():
    id = request.form.get('agregar_batalla_id')
    usuario1 = request.form.get('agregar_batalla_usuario1')
    servidor1 = request.form.get('agregar_batalla_servidor1')
    mazo1 = request.form.get('agregar_batalla_mazo1')
    carta1 = request.form.get('agregar_batalla_carta1')
    usuario2 = request.form.get('agregar_batalla_usuario2')
    servidor2 = request.form.get('agregar_batalla_servidor2')
    mazo2 = request.form.get('agregar_batalla_mazo2')
    carta2 = request.form.get('agregar_batalla_carta2')
    ganador = request.form.get('agregar_batalla_ganador')
    puntos = request.form.get('agregar_batalla_puntos')
    if id is not None and usuario1 is not None and servidor1 and mazo1 is not None and carta1 is not None and usuario2 is not None and servidor2 is not None and mazo2 is not None and carta2 is not None:
        data = [id, usuario1, servidor1, mazo1, carta1, usuario2, servidor2, mazo2, carta2, ganador, puntos]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.callproc('tryndamere.agregar_batalla', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data


def agregar_carta():
    id = request.form.get('agregar_carta_id')
    tipo = request.form.get('agregar_carta_tipo')
    nombre = request.form.get('agregar_carta_nombre')
    descripcion = request.form.get('agregar_carta_descripcion')
    mejora = request.form.get('agregar_carta_mejora')
    region = request.form.get('agregar_carta_region')
    costo = request.form.get('agregar_carta_costo')
    ataque = request.form.get('agregar_carta_ataque')
    vida = request.form.get('agregar_carta_vida')
    rareza = request.form.get('agregar_carta_rareza')
    efecto = request.form.get('agregar_carta_efecto')
    palabra_clave = request.form.get('agregar_carta_palabra_clave')
    if id is not None and region is not None:
        data = [id, tipo, nombre, descripcion, mejora, region, costo, ataque, vida, rareza, efecto, palabra_clave]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.callproc('tryndamere.agregar_carta', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data

def agregar_mazo():
    id = request.form.get('agregar_mazo_id')
    usuario = request.form.get('agregar_mazo_usuario')
    servidor = request.form.get('agregar_mazo_servidor')
    carta = request.form.get('agregar_mazo_carta')
    nombre = request.form.get('agregar_mazo_nombre')
    cantidad = request.form.get('agregar_mazo_cantidad')
    if id is not None and usuario is not None and servidor is not None and carta is not None and nombre is not None and cantidad is not None:
        data = [id, usuario, servidor, carta, nombre, cantidad]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.callproc('tryndamere.agregar_mazo', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data


def agregar_region():
    nombre = request.form.get('agregar_region_nombre')
    tipo_de_gobierno = request.form.get('agregar_region_tipo_de_gobierno')
    nivel_de_tecnologia = request.form.get('agregar_region_nivel_de_tecnologia')
    tolerancia_a_la_magia = request.form.get('agregar_region_tolerancia_a_la_magia')
    descripcion_ambiente = request.form.get('agregar_descripcion_ambiente')
    if nombre is not None:
        data = [nombre, tipo_de_gobierno, nivel_de_tecnologia, tolerancia_a_la_magia, descripcion_ambiente]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.callproc('tryndamere.agregar_region', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data


def agrear_divison():
    codigo = request.form.get('agregar_division_codigo')
    nombre = request.form.get('agregar_division_nombre')
    descripcion = request.form.get('agregar_division_descripcion')
    if codigo is not None:
        data = [codigo, nombre, descripcion]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.callproc('tryndamere.agregar_division', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data


def agregar_usuario():
    id = request.form.get('agregar_usuario_id')
    servidor = request.form.get('agregar_usuario_servidor')
    correo = request.form.get('agregar_usuario_correo')
    contrasena = request.form.get('agregar_usuario_contrasena')
    nombre = request.form.get('agregar_usuario_nombre')
    apellido = request.form.get('agregar_usuario_apellido')
    telefono = request.form.get('agregar_usuario_telefono')
    fecha_nacimiento = request.form.get('agregar_usuario_fecha_nacimiento')
    #format fecha to dd-mm-yyyy
    if fecha_nacimiento is not None:
        fecha_nacimiento = datetime.datetime.strptime(fecha_nacimiento, '%Y-%m-%d').strftime('%d-%m-%Y')
    sexo = request.form.get('agregar_usuario_sexo')
    division = request.form.get('agregar_usuario_division')
    puntos = request.form.get('agregar_usuario_puntos')
    if id is not None and servidor is not None:
        data = [id, servidor, correo, contrasena, nombre, apellido, telefono, fecha_nacimiento, sexo, division, puntos]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.execute("""ALTER SESSION SET nls_date_format = 'dd-mm-yyyy'""")
        cur.callproc('tryndamere.agregar_usuario', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data


def agregar_servidor():
    id = request.form.get('agregar_servidor_id')
    nombre = request.form.get('agregar_servidor_nombre')
    inaguracion = request.form.get('agregar_servidor_inaguracion')
    if inaguracion is not None:
        inaguracion = datetime.datetime.strptime(inaguracion, '%Y-%m-%d').strftime('%d-%m-%Y')
    idiomas = request.form.get('agregar_servidor_idiomas')
    ubicacion = request.form.get('agregar_servidor_ubicacion')
    ip = request.form.get('agregar_servidor_ip')

    # data = {'id': id, 'nombre': nombre, 'inaguracion': inaguracion, 'idiomas': idiomas,
    #          'ubicacion': ubicacion, 'ip': ip}
    if id is not None:
        data = [id, nombre, inaguracion, idiomas, ubicacion, ip]
        conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
        cur = conn.cursor()
        cur.execute("""ALTER SESSION SET nls_date_format = 'dd-mm-yyyy'""")
        #cur.execute("""EXECUTE tryndamere.agregar_servidor(:id, :nombre, :inaguracion, :idiomas, :ubicacion, :ip)""", data)
        #cur.callproc('tryndamere.agregar_servidor', data)
        cur.callproc('tryndamere.agregar_servidor', data)
        cur.execute("""commit""")
        cur.close()
        conn.close()
        return data

