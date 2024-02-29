import mysql.connector
from datetime import datetime  # Import datetime module

# Connect to a MySQL database
connection_mysql = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',
    database='rails_de_development'
)

cursor = connection_mysql.cursor()

# Include values for 'created_at' and 'updated_at'
cursor.execute('INSERT INTO notes (title, content, level, datetime, created_at, updated_at) VALUES ("title", "content", 43, %s, %s, %s)',
               (datetime.now(), datetime.now(), datetime.now()))

connection_mysql.commit()

cursor.close()
connection_mysql.close()
