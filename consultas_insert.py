import cx_Oracle


def select_batallas1():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario1), unique(servidor1)
        FROM tryndamere.batalla
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def select_batallas2():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario2), unique(servidor2)
        FROM tryndamere.batalla
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_batallas3():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(mazo1), unique(usuario1), unique(carta1)
        FROM tryndamere.batalla
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_batallas2():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(mazo2), unique(usuario2), unique(carta2)
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
        SELECT unique(region)
        FROM tryndamere.carta
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_mazos1():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(carta)
        FROM tryndamere.mazos
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_mazos2():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario), unique(servidor)
        FROM tryndamere.mazo
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_usuarios1():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(division)
        FROM tryndamere.usuario
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_usuarios2():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(servidor)
        FROM tryndamere.usuario
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
    
def select_rioters():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
        SELECT unique(usuario), unique(servidor)
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
        SELECT unique(usuario), unique(servidor)
        FROM tryndamere.invocador
        """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()
