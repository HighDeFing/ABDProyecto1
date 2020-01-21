import cx_Oracle


def inicio():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    #conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    index = """
            SELECT INDEX_NAME,COLUMN_NAME, TABLE_NAME
            FROM ALL_IND_COLUMNS
            WHERE TABLE_OWNER LIKE('TRYNDAMERE')
            """
    cur.execute(index)
    return cur
    cur.close()
    conn.close()


def other_execute():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    cur.execute('select * from USUARIO')
    return cur
    cur.close()
    conn.close()
