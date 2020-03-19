import cx_Oracle
from flask import Flask, escape, request, redirect, render_template
import consultas
import sys


def print_this():
    other = request.form.get('projectFilepath')
    print(other, file=sys.stdout)
    return
