import sqlite3 as sql

def listMedia():
  con = sql.connect("database/data_source.db")
  cur = con.cursor()
  data = cur.execute('SELECT * FROM media').fetchall() # This is how flask passes data from the backend to the frontend
  con.close()
  return data

def insertContact(email, name):
    """
    Insert a new contact into the contact_list table.

    Raises:
        sqlite3.IntegrityError: If email already exists (UNIQUE constraint)
    """
    with sql.connect("database/data_source.db") as con:
        cur = con.cursor()

        cur.execute(
            "INSERT INTO contact_list (email, name) VALUES (?, ?)",
            (email, name)
        )