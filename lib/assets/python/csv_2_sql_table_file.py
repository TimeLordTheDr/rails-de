import pandas as pd
import mysql.connector
from mysql.connector import Error
import sys

# MySQL database connection details
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'rails_de_development',
}

# Replace 'your_file.csv' with the actual path to your CSV file
csv_file_path = sys.argv[2]

try:
    # Read CSV file into a Pandas DataFrame
    df = pd.read_csv(csv_file_path)

    # Replace NaN values with None
    df = df.where(pd.notna(df), None)#THIS MAKES missing => NULL-val in MySQL 

    # Connect to MySQL database
    connection = mysql.connector.connect(**db_config)

    # Create a cursor
    cursor = connection.cursor()

    # Insert data into the MySQL table
    for _, row in df.iterrows():
        sql = f"""
            INSERT INTO {sys.argv[1]} (title, content, level, datetime, created_at, updated_at)
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        values = (
            row['title'],
            row['content'],
            row['level'],
            row['datetime'],
            row['created_at'],
            row['updated_at'],
        )

        cursor.execute(sql, values)

    # Commit changes
    connection.commit()

    print(f'Data from {csv_file_path} successfully imported into {sys.argv[1]}.')

except Error as e:
    print(f'Error [mysql.connector]: {e}')

finally:
    # Close the database connection
    if connection.is_connected():
        cursor.close()
        connection.close()
        print('Database connection closed.')
