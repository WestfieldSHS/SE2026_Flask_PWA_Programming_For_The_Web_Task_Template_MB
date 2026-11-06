import sqlite3 as sql

def listMedia():
  con = sql.connect("database/data_source.db")
  cur = con.cursor()
  data = cur.execute('SELECT * FROM media').fetchall()
  con.close()
  return data