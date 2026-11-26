import sqlite3 as sql

def listMedia():
  con = sql.connect("database/data_source.db") # connects to the specified SQL database
  cur = con.cursor() # enables sql statements to be ran and for actions like get, post, fetch, etc, to be ran
  data = cur.execute('SELECT * FROM media').fetchall() # This is how flask passes data from the backend to the frontend
  # execute statement gets and prepares the results whilst fetchall passes them into the python memory to be displayed via html
  con.close() # closes the connection
  return data # sends data to the place that called it

def listMediaByStatus(status):
    with sql.connect("database/data_source.db") as con:
        cur = con.cursor()
        data = cur.execute("SELECT * FROM media WHERE status = ?", (status,)).fetchall()
    return data

def listMediaByType(media_type):
    with sql.connect("database/data_source.db") as con:
        cur = con.cursor()
        data = cur.execute("SELECT * FROM media WHERE media_type = ?", (media_type,)).fetchall()
    return data

def listMediabySearch(search_query):
    with sql.connect("database/data_source.db") as con:
        cur = con.cursor()
        data = cur.execute(
            "SELECT * FROM media WHERE name LIKE ?" #OR about LIKE ?," if i want to add about-searching asw
            (f"%{search_query}%", f"%{search_query}%")
        )
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