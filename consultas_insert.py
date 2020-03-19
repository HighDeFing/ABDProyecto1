import cx_Oracle


def select_usuarios():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT id, unique(servidor), correo, contrasena, nombre, apellido, telefono, fecha_nacimiento, sexo, unique(division), puntos
        FROM tryndamere.usuario
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def select_servidores():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT id, nombre, inauguracion, idiomas, ubicacion, ip
        FROM tryndamere.servidor
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_divisiones():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT codigo, nombre, descripcion
        FROM tryndamere.division
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
 def select_rioter():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario), unique(servidor), nombre_invocador, fecha_contrato_inicio, fecha_contrato_fin, salario
        FROM tryndamere.rioter
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_invocadores():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario), unique(servidor), nombre_invocador, fecha_creacion
        FROM tryndamere.invocador
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_mazos():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT id, unique(usuario), unique(servidor), unique(carta), nombre, cantidad
        FROM tryndamere.mazo
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_regiones():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT nombre, tipo_de_gobierno, nivel_de_tecnologia, tolerancia_a_la_magia, descripcion_ambiente
        FROM tryndamere.region
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_batallas():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT id,  unique(usuario1), unique(servidor1), unique(mazo1), unique(carta1), unique(usuario2), unique(servidor2), unique(mazo2), unique(carta2), ganador, puntos
        FROM tryndamere.batalla
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_cartas():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT id, tipo, nombre, descripcion, mejora, unique(region), costo, ataque, vida, rareza, efecto, palabra_clave
        FROM tryndamere.cartas
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
