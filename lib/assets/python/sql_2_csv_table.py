import pandas as pd
import mysql.connector
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

# SQL query to fetch data from the table
sql_query = f"SELECT * FROM {sys.argv[1]}"

# Use pandas to read the SQL query result into a DataFrame
df = pd.read_sql(sql_query, connection)

# Specify the path for the CSV file
csv_file_path = 'output.csv'

# Save the DataFrame to a CSV file
df.to_csv(csv_file_path, index=False)

# Close the database connection
connection.close()

print(f'Data exported to {csv_file_path}')
