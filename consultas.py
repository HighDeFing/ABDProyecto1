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


def sexta_consulta_a():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT BATALLA.ID AS "ID de batalla", BATALLA.USUARIO1 AS "Invocador 1", BATALLA.USUARIO2 AS "Invocador 2", BATALLA.GANADOR AS "Ganador", vsize(BATALLA.ID) + vsize(BATALLA.USUARIO1) + vsize(BATALLA.MAZO1) + vsize(BATALLA.USUARIO2) + vsize(BATALLA.MAZO2)+ vsize(BATALLA.GANADOR) + vsize(BATALLA.PUNTOS) AS "Tamaño del registro" 
    FROM BATALLA 
    ORDER BY BATALLA.ID
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_b():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT CARTA.ID AS "ID de carta", vsize(CARTA.ID) + vsize(CARTA.TIPO) + VSIZE(CARTA.NOMBRE) + VSIZE(CARTA.DESCRIPCION) + VSIZE(CARTA.MEJORA) + VSIZE(CARTA.REGION) + VSIZE(CARTA.COSTO) + VSIZE(CARTA.ATAQUE) + VSIZE(CARTA.VIDA) + VSIZE(CARTA.RAREZA) + VSIZE(CARTA.EFECTO) + VSIZE(CARTA.PALABRA_CLAVE) AS "Tamaño del registro"
    FROM CARTA 
    ORDER BY CARTA.ID
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_c():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT DIVISION.CODIGO AS "Codigo de division", DIVISION.NOMBRE AS "Nombre de division", DIVISION.DESCRIPCION AS "Descripcion de la division", VSIZE(DIVISION.CODIGO) + VSIZE(DIVISION.NOMBRE) + VSIZE(DIVISION.DESCRIPCION) AS "Tamaño del registro" 
    FROM DIVISION
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_d():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT INVOCADOR.USUARIO AS "Usuario", INVOCADOR.NOMBRE_INVOCADOR AS "Nombre de invocador", VSIZE(INVOCADOR.USUARIO) + VSIZE(INVOCADOR.SERVIDOR) + VSIZE(INVOCADOR.NOMBRE_INVOCADOR) + VSIZE(INVOCADOR.FECHA_CREACION) AS "Tamaño del registro" 
    FROM INVOCADOR 
    ORDER BY INVOCADOR.USUARIO, INVOCADOR.NOMBRE_INVOCADOR
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_e():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT MAZO.ID AS "IDs de mazos", vsize(MAZO.ID) + vsize(MAZO.USUARIO) + vsize(MAZO.SERVIDOR) + vsize(MAZO.CARTA) + vsize(MAZO.NOMBRE)+ vsize(MAZO.CANTIDAD) AS "Tamaño del registro" 
    FROM MAZO 
    ORDER BY MAZO.ID
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_f():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT REGION.NOMBRE AS "Nombre de la region", VSIZE(REGION.NOMBRE) + VSIZE(REGION.TIPO_DE_GOBIERNO) + VSIZE(REGION.NIVEL_DE_TECNOLOGIA) + VSIZE(REGION.TOLERANCIA_A_LA_MAGIA) + VSIZE(REGION.DESCRIPCION_AMBIENTE) AS "Tamaño del registro" 
    FROM REGION 
    ORDER BY REGION.NOMBRE
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_g():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT RIOTER.USUARIO AS "Usuarios", RIOTER.NOMBRE_INVOCADOR AS "Nombre de invocador", VSIZE(RIOTER.USUARIO) + VSIZE(RIOTER.SERVIDOR) + VSIZE(RIOTER.NOMBRE_INVOCADOR) + VSIZE(RIOTER.FECHA_CONTRATO_INICIO) + VSIZE(RIOTER.FECHA_CONTRATO_FIN) + VSIZE(RIOTER.SALARIO) AS "Tamaño del registro" 
    FROM RIOTER 
    ORDER BY RIOTER.USUARIO, RIOTER.NOMBRE_INVOCADOR
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_h():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT SERVIDOR.ID AS "ID de servidor", SERVIDOR.NOMBRE AS "Nombre del servidor", SERVIDOR.IP AS "IP del servidor", VSIZE(SERVIDOR.ID) + VSIZE(SERVIDOR.NOMBRE) + VSIZE(SERVIDOR.INAUGURACION) + VSIZE(SERVIDOR.IDIOMAS) + VSIZE(SERVIDOR.UBICACION) + VSIZE(SERVIDOR.IP) AS "Tamaño del registro" 
    FROM SERVIDOR 
    ORDER BY SERVIDOR.ID
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def sexta_consulta_i():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT USUARIO.ID AS "ID de usuario", USUARIO.NOMBRE AS "Nombre del usuario", USUARIO.APELLIDO AS "Apellido del usuario", VSIZE(USUARIO.ID) + VSIZE(USUARIO.SERVIDOR) + VSIZE(USUARIO.CORREO) + VSIZE(USUARIO.CONTRASENA) + VSIZE(USUARIO.NOMBRE) + VSIZE(USUARIO.APELLIDO) + VSIZE(USUARIO.TELEFONO) + VSIZE(USUARIO.FECHA_NACIMIENTO) + VSIZE(USUARIO.SEXO) + VSIZE(USUARIO.DIVISION) + VSIZE(USUARIO.PUNTOS) AS "Tamaño del registro" 
    FROM USUARIO 
    ORDER BY USUARIO.ID
    """
    cur.execute(consul)
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


def decima_consulta_a():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_b():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_c():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_d():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_e():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_f():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_g():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_h():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()

def decima_consulta_i():
    conn = cx_Oracle.connect("TRYNDAMERE", "a1234", "localhost/orcl", encoding="UTF-8")
    # conn = cx_Oracle.connect('TRYNDAMERE/a1234@localhost/orcl')
    cur = conn.cursor()
    consul = """
    SELECT table_name AS "Nombre de la tabla", 8192/avg_row_len AS "Factor de bloqueo de la tabla" 
    FROM user_tables 
    ORDER BY table_name
    """
    cur.execute(consul)
    return cur
    cur.close()
    conn.close()




