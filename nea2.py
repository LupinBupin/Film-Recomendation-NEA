import tkinter as tk
import mysql.connector
import datetime
from tkinter import messagebox

window = tk.Tk()

#connection information for SQL server
mydb = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="",
    database="NEA")

#function to call different features
def menu(val):
    choice=val
    if choice == "1":
        PersonalityQuiz()
    elif choice =="2":
        entries()
    elif choice == "3":
        guiform()
    elif choice == "4":
        users()

#original personality quiz function
def PersonalityQuiz():
    #Basic window information
    QuizUI = tk.Tk()
    QuizUI.title("Personality Quiz")
    QuizUI.geometry('400x300')

    #assigns user inputed values to variables
    firstname = input("What is your first name?")
    surname = input("What is your surname?")

    answer1 = q1()
    answer2 = q2()
    answer3 = q3()
    answer4 = q4()
    answer5 = q5()

    print(answer4,answer5)

    sql = "SELECT * FROM Movies WHERE PG_Rating <= %s AND Minutes <= %s AND Year >= %s AND Genre = %s AND Sub_Genre = %s ORDER BY imdb desc"
    statement = (answer1,answer2,answer3,answer4,answer5)

    SQLFilmID = "SELECT FilmID FROM Movies WHERE PG_Rating <= %s AND Minutes <= %s AND Year >= %s AND Genre = %s AND Sub_Genre = %s"

    mycursor = mydb.cursor()
    mycursor.execute(sql,statement)
    myresult = mycursor.fetchall()

    listbox = tk.Listbox(QuizUI)
    listbox.pack()

    for i in myresult:
        listbox.insert(tk.END, i)

    mycursor.execute(SQLFilmID,statement)
    FilmID = mycursor.fetchall()

    SQLinsert = "INSERT INTO users (FirstName, Surname) VALUES (%s,%s)"
    vals = (firstname,surname)
    mycursor.execute(SQLinsert,vals)
    mydb.commit()

    UserID = mycursor.lastrowid

    for i in FilmID:
        LinkInsert = "INSERT INTO userlink (UserID, FilmID) VALUES (%s,%s)"
        vals = (str(UserID), str(i[0]))
        mycursor.execute(LinkInsert, vals)
        mydb.commit()

    QuizUI.mainloop()

def q1():
    question1 = input("How old are you?")
    return question1

def q2():
    question2 = input("What is the longest you would want a film to be? (minutes)")
    return question2

def q3():
    question3 = input("What is the oldest year you would watch a movie from (e.g. 1985)")
    return question3

def q4():
    question4 = input("What is your preferred Genre?")
    return question4

def q5():
    question5 = input("What is your second favourite genre")
    return question5

#window which displays all film entries
def entries():
    #window information
    filmlist = tk.Tk()
    filmlist.geometry('300x300')

    mycursor = mydb.cursor()
    mycursor.execute("SELECT FilmID, Title FROM movies") #MySQL Query
    myresult = mycursor.fetchall()

    #frames
    frame1 = tk.Frame(master=filmlist, height=25, width=100, bg="#048af1")
    frame1.pack(fill=tk.X, side=tk.TOP)
    midframe = tk.Frame(master=filmlist, height=50, width=100, bg="#ececec")
    midframe.pack(fill=tk.BOTH, side=tk.TOP, expand=True)
    btmframe = tk.Frame(master=filmlist, height=25, width=100, bg="#dddddd")
    btmframe.pack(fill=tk.BOTH, side=tk.BOTTOM, expand=True)

    listbox = tk.Listbox(midframe)
    listbox.pack()

    for i in myresult:
        listbox.insert(tk.END, i)

    NewEntry_BTN = tk.Button(btmframe, text="Add new entry to user", command=lambda:NewEntry(listbox.get(listbox.curselection())))
    NewEntry_BTN.pack()

    def NewEntry(entry):
        FilmID = entry[0]
        print(FilmID)
        UserID = input("What is your UserID? (If you don't remember the users page lists each users unique UserID as the number presented before their name")

        LinkInsert = "INSERT INTO userlink (UserID, FilmID) VALUES (%s,%s)"
        vals = (UserID, FilmID)
        mycursor.execute(LinkInsert, vals)
        mydb.commit()

        messagebox.showinfo("Information","Your film has been added")


    filmlist.mainloop()

#function for displaying list of users
def users():
    #window information
    userlist = tk.Tk()
    userlist.geometry('300x300')

    #MySQL information
    mycursor = mydb.cursor()
    mycursor.execute("SELECT UserID, surname, firstname FROM users ORDER BY surname ASC") #MySQL Query
    myresult = mycursor.fetchall()

    #Window frames
    frame1 = tk.Frame(master=userlist, height=25, width=100, bg="#048af1")
    frame1.pack(fill=tk.X, side=tk.TOP)
    midframe = tk.Frame(master=userlist, height=50, width=100, bg="#ececec")
    midframe.pack(fill=tk.BOTH, side=tk.TOP, expand=True)
    btmframe = tk.Frame(master=userlist, height=25, width=100, bg="#dddddd")
    btmframe.pack(fill=tk.BOTH, side=tk.BOTTOM, expand=True)

    listbox = tk.Listbox(midframe)
    listbox.pack()

    for i in myresult:
        listbox.insert(tk.END, i)

    UserMovies_BTN = tk.Button(btmframe, text="View users selected films", command=lambda:UserMovies(listbox.get(listbox.curselection())))
    UserMovies_BTN.pack()

    def UserMovies(userinfo):
        UserID = userinfo[0]
        FirstName = userinfo[2]
        Surname = userinfo[1]

        UserFilms = tk.Tk()
        UserFilms.geometry("300x300")

        frame1 = tk.Frame(master=UserFilms, height=25, width=100, bg="#048af1")
        frame1.pack(fill=tk.X, side=tk.TOP)
        midframe = tk.Frame(master=UserFilms, height=50, width=100, bg="#ececec")
        midframe.pack(fill=tk.BOTH, side=tk.TOP, expand=True)
        btmframe = tk.Frame(master=UserFilms, height=25, width=100, bg="#dddddd")
        btmframe.pack(fill=tk.BOTH, side=tk.BOTTOM, expand=True)

        lblWelcome = tk.Label(frame1, text="Welcome back "+FirstName)
        lblWelcome.pack()

        listbox = tk.Listbox(midframe)
        listbox.pack()

        sql="SELECT userlink.LinkID, movies.FilmID, movies.Title FROM userlink, movies WHERE userlink.UserID = '%s' AND userlink.FilmID = movies.FilmID"
        variables = (int(UserID),)
        mycursor.execute(sql, variables)
        myresult = mycursor.fetchall()
        print(myresult)

        for i in myresult:
            listbox.insert(tk.END, i)

        DeleteFilm_BTN = tk.Button(btmframe, text="Delete a selected film", command=lambda:DeleteFilm(listbox.get(listbox.curselection())))
        DeleteFilm_BTN.pack()

        def DeleteFilm(linkinfo):
            LinkID = (linkinfo[0],)

            #deletes from database
            SQL = "DELETE FROM userlink WHERE LinkID = %s"
            mycursor.execute(SQL, LinkID)
            mydb.commit()

            #deletes from listbox
            idx = listbox.get(0, tk.END).index(linkinfo)
            listbox.delete(idx)
            UserFilms.update

        UserFilms.mainloop

    userlist.mainloop()

def guiform():
    #list of genres avaliable in the OptionMenu
    genres = [
        "Action",
        "Adventure",
        "Animation",
        "Comedy",
        "Crime",
        "Documentry",
        "Drama",
        "Family",
        "Fantasy",
        "Horror",
        "Musical",
        "Sci-Fi",
        "Spy",
        "Superhero",
        "War",
    ]

    guitest = tk.Tk()
    guitest.geometry("700x400")

    #tk frames
    topframe = tk.Frame(master=guitest, height=50, width=100, bg="#048af1")
    topframe.pack(fill=tk.X, side=tk.TOP)

    frame0 = tk.Frame(master=guitest, height=200, width=100, bg="#5fb7ff")
    frame0.pack(fill=tk.BOTH, side=tk.LEFT, expand=True)
    frame1 = tk.Frame(master=guitest, height=200, width=100, bg="#ececec")
    frame1.pack(fill=tk.BOTH, side=tk.LEFT, expand=True)
    frame2 = tk.Frame(master=guitest, height=200, width=100, bg="#ffc439")
    frame2.pack(fill=tk.BOTH, side=tk.LEFT, expand=True)

    midframe = tk.Frame(master=frame1, height=50, width=100, bg="#ececec")
    midframe.pack(fill=tk.BOTH, side=tk.TOP, expand=True)
    btmframe = tk.Frame(master=frame1, height=50, width=100, bg="#dddddd")
    btmframe.pack(fill=tk.BOTH, side=tk.BOTTOM, expand=True)

    values = tk.StringVar(guitest)
    values.set(genres[0]) # default value

    #title label
    lbltitle = tk.Label(topframe, text="Welcome to the film recommendation system! \nFill out your details to get your reccommendations", bg="#048af1", font=("Calibri", 22))
    lbltitle.pack()

    lblfirstname = tk.Label(frame0, text="First Name")
    lblfirstname.grid(row=1,column=2)
    ENTfirstname = tk.Entry(frame0)
    ENTfirstname.grid(row=2,column=2)

    lblsurname = tk.Label(frame0, text="Surname")
    lblsurname.grid(row=3,column=2)
    ENTsurname = tk.Entry(frame0)
    ENTsurname.grid(row=4,column=2)

    lbl1 = tk.Label(midframe, text="How old are you?")
    lbl1.grid(row=1,column=0)
    question1 = tk.Entry(midframe)
    question1.grid(row=2,column=0)

    lbl2 = tk.Label(midframe, text="What is the longest you would want a film to be? (minutes)")
    lbl2.grid(row=4,column=0)
    question2 = tk.Entry(midframe)
    question2.grid(row=5,column=0)

    lbl3 = tk.Label(midframe, text="What is the oldest year you would watch a movie from (e.g. 1985)")
    lbl3.grid(row=6,column=0)
    question3 = tk.Entry(midframe)
    question3.grid(row=7,column=0)

    lbl4 = tk.Label(midframe, text="What is your preferred Genre?")
    lbl4.grid(row=8,column=0)
    w = tk.OptionMenu(midframe, values, *genres)
    w.grid(row=9, column=0)

    submit = tk.Button(btmframe, text="Submit information", command=lambda:infoget(ENTfirstname.get(),ENTsurname.get(),question1.get(),question2.get(),question3.get(),values.get()),width=18)
    submit.grid(column=0, row=10)

    listbox=tk.Listbox(frame2)
    listbox.grid(row=0,column=1, rowspan=10)

    def infoget(firstname,surname,answer1,answer2,answer3,answer4):
        #MySQL Query
        sql = "SELECT * FROM Movies WHERE PG_Rating <= %s AND Minutes <= %s AND Year >= %s AND Genre = %s ORDER BY imdb desc"
        statement = (str(answer1),str(answer2),str(answer3),str(answer4)) #veriables used in Query

        mycursor = mydb.cursor()
        mycursor.execute(sql, statement)
        myresult = mycursor.fetchall()

        #loops through the tuple 'myresult' and adds a the cureent item as a new line in the listbox
        for i in myresult:
            listbox.insert(tk.END, i)

        #gathers all FilmIDs from the database which fit the requirements in the query
        SQLFilmID = "SELECT FilmID FROM Movies WHERE PG_Rating <= %s AND Minutes <= %s AND Year >= %s AND Genre = %s ORDER BY imdb desc"
        mycursor.execute(SQLFilmID,statement)
        FilmID = mycursor.fetchall()

        #inserts new user into the database
        SQLinsert = "INSERT INTO users (FirstName, Surname) VALUES (%s,%s)"
        vals = (str(firstname),str(surname))
        mycursor.execute(SQLinsert,vals)
        mydb.commit()

        #Returns the Primary Key of the last row accessed by the SQL cursor
        UserID = mycursor.lastrowid

        #adds the UserID and FilmID into the UserLink table enabling a link between the users table and films table
        for i in FilmID:
            LinkInsert = "INSERT INTO userlink (UserID, FilmID) VALUES (%s,%s)"
            vals = (str(UserID), str(i[0]))
            mycursor.execute(LinkInsert, vals)
            mydb.commit()

        #Message box informing the user what their UserID is
        messagebox.showinfo("Information","Your UserID is: "+str(UserID))

        guitest.update

    guitest.mainloop()

#menu window, contains buttons which lead to other windows
window.title("Reccomendation List") #window title
window.geometry('525x275') #window geometry

#frames
topframe = tk.Frame(master=window, height=50, width=100, bg="#048af1")
topframe.pack(fill=tk.X, side=tk.TOP)
frame1 = tk.Frame(master=window, height=200, width=100, bg="#ececec")
frame1.pack(fill=tk.BOTH, side=tk.LEFT, expand=True)

#title label
lbl1 = tk.Label(topframe, text="Welcome to my Recommendation List Generator!", bg="#048af1", font=("Calibri", 18))
lbl1.grid(column=0, row=0, columnspan=8)

#buttons
button1 = tk.Button(frame1, text="Start Personality Quiz?", command=lambda: menu("3"), width=36, height=7)
button1.grid(column=0, row=1)
button2 = tk.Button(frame1, text="View all entries", command=lambda: menu("2"), width=36, height=7)
button2.grid(column=1, row=1)
button3 = tk.Button(frame1, text="Personality Quiz (Archived)", command=lambda: menu("1"), width=36, height=7)
button3.grid(column=0, row=2)
button4 = tk.Button(frame1, text="Users", command=lambda: menu("4"), width=36, height=7)
button4.grid(column=1, row=2)

#contains window in a loop keeping the window active
window.mainloop()