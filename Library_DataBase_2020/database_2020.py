import psycopg2

# sudo pip install psycopg2
# https://wiki.postgresql.org/wiki/Python

# The try block lets you test a block of code for errors.
try:
    con = psycopg2.connect(dbname='postgres', host='LocalHost', port='5432', user='postgres', password='1993')

    # Establish a connection to the database by creating a cursor object
    # Allows Python code to execute PostgreSQL command in a database session.
    # Cursors are created by the connection.cursor() method: they are bound to the connection
    # for the entire lifetime and all the commands are executed in the context of the database
    # session wrapped by the connection.
    cur = con.cursor()
    # sql_query = '''select id, name, dept_name, salary from instructor'''

    # The execute routine executes an SQL statement.
    book = str(input("Dwse biblio"))
    #Anazhthsh tou bibliou an yparxei
    cur.execute('''select isbn,tittle_books,name_publisher,book_available from books where tittle_books = %s ''',(book,))
    #Emfanish twn stoixeiwn gia ta biblia pou einai diathesima,dhladh book_available = YES
    cur.execute('''select isbn,tittle_books,name_publisher,book_available from books where book_available = 'YES' ''')
    print("\nSelecting rows from books table using cursor.fetchall")
    # The fetchall routine fetches all (remaining) rows of a query result, returning a list.
    # An empty list is returned when no rows are available.
    records = cur.fetchall()

    #ektypwsh twn apotelesmatwn sthn othonh

    print("\nPrint each row and it's columns values\n")
    for row in records:
        print("isbn =", row[0],)
        print("tittle_books = ", row[1])
        print("name_publisher = ", row[2])
        print("book_available = ", row[3],"\n---------------")

# The except block lets you handle the error.
except(Exception, psycopg2.Error) as error:
    print("Error while fetching data from PostgreSQL", error)

#The finally block lets you execute code, regardless of the result of the try- and except blocks.
finally:
 if con:
  cur.close()
  con.close()
  print("PostgreSQL connection is closed\n")
