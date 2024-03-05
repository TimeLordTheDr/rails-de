import mysql.connector
from datetime import datetime
import sys

# MySQL database connection details
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'rails_de_development',
}

# Connect to the MySQL database
connection = mysql.connector.connect(**db_config)
cursor = connection.cursor()

# Loop to generate and execute SQL INSERT statements
for i in range(1, int(sys.argv[1])):  # Adjust the range and data as needed
    title = f"title.{i}"
    content = f"CONTENT: {i*1000}"
    level = i
    datetime = created_at = updated_at = datetime.now()

    # SQL statement to insert data into the 'ratings' table
    sql_insert = f"""
    INSERT INTO notes (title, content, level, datetime, created_at, updated_at)
    VALUES ('{title}', '{content}', '{level}', '{datetime}','{created_at}', '{updated_at}');
    """

    # Execute the SQL statement
    cursor.execute(sql_insert)

# Commit the changes and close the connection
connection.commit()
cursor.close()
connection.close()