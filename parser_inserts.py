from flask import Flask, escape, request, redirect, render_template
import consultas
import sys


def parse_agregar_usuario():
    other = request.form.get('agregar_usuario_servidor')
    print(other, file=sys.stdout)
    return
