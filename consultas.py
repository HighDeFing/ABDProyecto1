import cx_Oracle


def primera_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    #conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
            SELECT INDEX_NAME AS "Nombre del índice" ,COLUMN_NAME AS "Nombre de la columna", TABLE_NAME AS "Nombre de la tabla"
            FROM ALL_IND_COLUMNS
            WHERE TABLE_OWNER LIKE('TRYNDAMERE')
            """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def segunda_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    consul = """
    SELECT table_name AS "Nombre de la tabla", index_name AS "Nombre del índice" 
    FROM all_indexes 
    WHERE owner = 'TRYNDAMERE' 
    ORDER BY table_name 
    """
    cur = conn.cursor()
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def tercera_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", constraint_name AS "Nombre de la restricción", constraint_type AS "Tipo de restricción" 
    FROM all_constraints con 
    WHERE owner = 'TRYNDAMERE' 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def cuarta_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", trigger_name AS "Nombre del trigger", trigger_type AS "Tipo del trigger", status AS "Estatus del trigger" 
    FROM all_triggers 
    WHERE owner = 'TRYNDAMERE' 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def quinta_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", column_name AS "Nombre de la columna", data_length AS "Tamaño en bytes de la columna" 
    FROM all_tab_columns 
    WHERE owner = 'TRYNDAMERE' 
    ORDER BY table_name 
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def sexta_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    cur.execute('select * from USUARIO')
    return cur
    cur.close()
    conn.close()


def septima_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", blocks "Bloques de datos usados", empty_blocks AS "Bloques de datos vacios" 
    FROM all_tables 
    WHERE owner = 'TRYNDAMERE' 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def octava_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT object_name AS "Nombre del objeto", procedure_name AS "Nombre del procedimiento" 
    FROM all_procedures 
    WHERE owner = 'TRYNDAMERE' AND object_type = 'PROCEDURE' 
    ORDER BY object_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def novena_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT SUM(bytes)/1024/1024 AS "Tamaño de la base de datos en MB" 
    FROM user_segments
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()


def decima_consulta():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    cur.execute('select * from USUARIO')
    return cur
    cur.close()
    conn.close()

