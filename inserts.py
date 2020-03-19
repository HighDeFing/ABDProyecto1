import cx_Oracle
from flask import Flask, escape, request, redirect, render_template
import consultas
import sys
import datetime


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
    fecha_nacimiento = datetime.datetime.strptime(fecha_nacimiento, '%Y-%m-%d').strftime('%d-%m-%Y')
    sexo = request.form.get('agregar_usuario_sexo')
    division = request.form.get('agregar_usuario_division')
    puntos = request.form.get('agregar_usuario_puntos')

    data = {'id': id, 'servidor': servidor, 'correo': correo, 'contrasena': contrasena,
            'nombre': nombre, 'apellido': apellido, 'telefono': telefono,
            'fecha_nacimiento': fecha_nacimiento, 'sexo': sexo, 'division': division, 'puntos': puntos
            }
    conn = cx_Oracle.connect("TRYNDAMERE_externo_insert", "a1234", "localhost/orcl", encoding="UTF-8")
    cur = conn.cursor()
    consul = """
            agregar_usuario(:id, :servido, :correo, :contrasena, :nombre, :apellido, :telefono, :fecha_nacimiento, :sexo, :division, :puntos
            """
    cur.execute(consul, data)
    return cur
    cur.close()
    conn.close()


    return
