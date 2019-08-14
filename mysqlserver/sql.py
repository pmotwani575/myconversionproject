import pymysql.cursors

# Connect to the database.
connection = pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             db='bitcoin'
                         )

print ("connect successful!!")

cursor = connection.cursor()
cursor.execute("SELECT from_currency_code,from_currency_name from bitcoin")
data=cursor.fetchone()
print("Database version : %s" % data)
connection.close
