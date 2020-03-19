import cx_Oracle


def select_usuario_id():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT DISTINCT(id)
        FROM tryndamere.usuario
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_usuario_servidor():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT DISTINCT(servidor)
        FROM tryndamere.usuario
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_division_codigo():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT DISTINCT(codigo)
        FROM tryndamere.division
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_servidor_id():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT DISTINCT(id)
        FROM tryndamere.servidor
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_rioter_usuario():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT DISTINCT(usuario)
        FROM tryndamere.rioter
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_rioter_servidor():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
            SELECT DISTINCT(servidor)
            FROM tryndamere.rioter
            """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_mazo_id():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
                SELECT DISTINCT(id)
                FROM tryndamere.mazo
                """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_mazo_usuario():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
                SELECT DISTINCT(usuario)
                FROM tryndamere.mazo
                """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_mazo_usuario():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
                SELECT DISTINCT(servidor)
                FROM tryndamere.mazo
                """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_mazo_carta():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
                SELECT DISTINCT(carta)
                FROM tryndamere.mazo
                """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def select_carta_id():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
            SELECT DISTINCT(id)
            FROM tryndamere.carta
            """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def select_region_nombre():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
                    SELECT DISTINCT(nombre)
                    FROM tryndamere.region
                    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()





