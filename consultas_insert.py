import cx_Oracle


def select_usuarios():
    conn = cx_Oracle.connect("TRYNDAMERE_externo_select", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT *
    FROM tryndamere.usuario
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

