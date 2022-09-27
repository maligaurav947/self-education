import mysql.connector

db = mysql.connector.connect(host='192.168.x.x', user='robot', password='password', port='3306', database='victims')
cur = db.cursor()
sql = 'select * from table'
cur.execute(sql)
result = cursor.fetchall()
for a in result:
    print(a)
