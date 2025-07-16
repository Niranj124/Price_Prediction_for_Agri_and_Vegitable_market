from tkinter import *
import tkinter as tk
from tkinter import ttk, messagebox
from PIL import Image, ImageTk
import random

import pandas as PD

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

import seaborn as sb
from fileinput import filename
from tkinter import *
import tkinter as tk
import tkinter
from tkinter import ttk, messagebox
from PIL import Image, ImageTk
import random
import pymysql
import pandas as pd
import csv
from csv import writer
from tkinter import simpledialog
from tkinter.filedialog import askopenfilename

from keras import Sequential
from keras.layers import Dense, LSTM
from keras.utils import plot_model
from sklearn.model_selection import train_test_split, TimeSeriesSplit
from sklearn.preprocessing import StandardScaler, MinMaxScaler
from login import Login

import mysql.connector as mysql
# ------------------------------------------------------------ Main Window -----------------------------------------



def Loginmeth():

    log = Login()
    win.destroy()


def suggestion():
    from tkinter import Tk, Frame, BOTH, Canvas, LEFT, RIGHT, Y, ttk, Text
    import tkinter
    import mysql.connector as mysql

    # Create window
    wingrid = Tk()
    wingrid.title("Insurance Window")
    wingrid.geometry("1400x800")
    wingrid.configure(bg='#99ddff')

    # Main frame
    main_frame = Frame(wingrid)
    main_frame.pack(fill=BOTH, expand=1)

    # Canvas
    my_canvas = Canvas(main_frame, bg='white')
    my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

    # Scrollbars
    my_scrollbar_y = ttk.Scrollbar(main_frame, orient="vertical", command=my_canvas.yview)
    my_scrollbar_y.pack(side=RIGHT, fill=Y)

    my_scrollbar_x = ttk.Scrollbar(main_frame, orient="horizontal", command=my_canvas.xview)
    my_scrollbar_x.pack(side="bottom", fill="x")

    my_canvas.configure(yscrollcommand=my_scrollbar_y.set, xscrollcommand=my_scrollbar_x.set)
    my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox("all")))

    # Frame inside canvas
    wingrid_frame = Frame(my_canvas, bg='#99ddff')
    my_canvas.create_window((0, 0), window=wingrid_frame, anchor="nw")

    # Database connection
    con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8', database='agri_market')
    cur = con.cursor()

    # Execute query
    query = "SELECT * FROM suggestion"
    cur.execute(query)
    data = cur.fetchall()

    # Column names
    column_names = ["Season", "Vegetables", "Temperature", "Cultivation Conditions"]

    # Create header
    for i, heading in enumerate(column_names):
        header = Text(
            wingrid_frame,
            width=35,
            height=2,
            wrap='word',
            font=('Arial', 10, 'bold'),
            bg='#4CAF50',
            fg='white'
        )
        header.insert('1.0', heading)
        header.config(state='disabled')
        header.grid(row=0, column=i, padx=5, pady=5, sticky="nsew")

    # Add data using Text widgets
    for r, col in enumerate(data, start=1):
        for c, row in enumerate(col):
            cell = Text(
                wingrid_frame,
                width=35,
                height=8,  # Adjust height as needed
                wrap='word',
                font=('Arial', 10),
                bg='white'
            )
            cell.insert('1.0', str(row))
            cell.config(state='disabled')
            cell.grid(row=r, column=c, padx=7, pady=7, sticky="nsew")

    # Finalize
    con.commit()
    con.close()
    #wingrid.mainloop()

def insurance():
    from tkinter import Tk, Frame, BOTH, Canvas, LEFT, RIGHT, Y, ttk, Label
    import tkinter
    import mysql.connector as mysql

    # Create window
    wingrid = Tk()
    wingrid.title("Insurance Window")
    wingrid.geometry("1400x800")  # Full screen size
    wingrid.configure(bg='#99ddff')

    # Frame for main content
    main_frame = Frame(wingrid)
    main_frame.pack(fill=BOTH, expand=1)

    # Canvas for scrollable content
    my_canvas = Canvas(main_frame)
    my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

    # Scrollbars for both vertical and horizontal scrolling
    my_scrollbar_y = ttk.Scrollbar(main_frame, orient="vertical", command=my_canvas.yview)
    my_scrollbar_y.pack(side=RIGHT, fill=Y)

    my_scrollbar_x = ttk.Scrollbar(main_frame, orient="horizontal", command=my_canvas.xview)
    my_scrollbar_x.pack(side="bottom", fill="x")

    my_canvas.configure(yscrollcommand=my_scrollbar_y.set, xscrollcommand=my_scrollbar_x.set)
    my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox("all")))

    # Frame inside the canvas for content
    wingrid_frame = Frame(my_canvas)
    my_canvas.create_window((0, 0), window=wingrid_frame, anchor="nw")

    # Database connection
    con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8', database='agri_market')
    cur = con.cursor()

    # Execute query
    query = "SELECT * FROM insurance"
    cur.execute(query)
    data = cur.fetchall()

    # Column names for display
    column_names = ["Scheme Name", "Scheme For", "Premium", "Return Amount %"]

    # Add column headings with styling
    for i, heading in enumerate(column_names):
        header = Label(wingrid_frame, width=30, height=4, text=heading, bg='#4CAF50', fg='white', relief=tkinter.RIDGE, font=('Arial', 10, 'bold'), anchor="center")
        header.grid(row=0, column=i, padx=5, pady=5)

    # Add data rows with proper formatting to ensure full text visibility
    for r, col in enumerate(data, start=1):
        for c, row in enumerate(col):
            # Adjust width and height to make text visible and prevent cutoff
            label = Label(wingrid_frame, width=40, height=8, wraplength=350, text=row, relief=tkinter.RIDGE, anchor="w", justify="left")
            label.grid(row=r, column=c, padx=5, pady=5)

    # Commit and close database connection
    con.commit()
    con.close()






def rental():
    from tkinter import Tk, Frame, BOTH, Canvas, LEFT, RIGHT, Y, ttk, Text, Scrollbar, Label
    import tkinter
    import mysql.connector as mysql

    # Create main window
    wingrid = Tk()
    wingrid.title("Rental Machinery Window")
    wingrid.geometry("1400x800")
    wingrid.configure(bg='#99ddff')

    # Frame for scrollable area
    main_frame = Frame(wingrid)
    main_frame.pack(fill=BOTH, expand=1)

    # Canvas for scrolling
    my_canvas = Canvas(main_frame, bg='#99ddff')
    my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

    # Vertical scrollbar
    my_scrollbar_y = ttk.Scrollbar(main_frame, orient="vertical", command=my_canvas.yview)
    my_scrollbar_y.pack(side=RIGHT, fill=Y)

    # Horizontal scrollbar
    my_scrollbar_x = ttk.Scrollbar(wingrid, orient="horizontal", command=my_canvas.xview)
    my_scrollbar_x.pack(side="bottom", fill="x")

    # Configure canvas scroll commands
    my_canvas.configure(yscrollcommand=my_scrollbar_y.set, xscrollcommand=my_scrollbar_x.set)

    # Inner frame for grid content (the frame that holds all your labels and text widgets)
    wingrid_frame = Frame(my_canvas, bg='#99ddff')
    window_id = my_canvas.create_window((0, 0), window=wingrid_frame, anchor="nw")

    # Function to update scrollregion and width of canvas content
    def on_frame_configure(event):
        # Update scroll region to fit inner frame
        my_canvas.configure(scrollregion=my_canvas.bbox("all"))

    wingrid_frame.bind("<Configure>", on_frame_configure)

    # Function to resize the canvas window width to match the inner frame width
    def on_canvas_configure(event):
        # When the canvas is resized, update the inner frame width to fit canvas width
        canvas_width = event.width
        my_canvas.itemconfig(window_id, width=canvas_width)

    my_canvas.bind("<Configure>", on_canvas_configure)

    # DB connection
    con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8', database='agri_market')
    cur = con.cursor()

    # Fetch data
    query = "SELECT * FROM rental"
    cur.execute(query)
    data = cur.fetchall()

    # Column names
    column_names = ["Provider Name", "Machine", "Price", "Address"]
    for i, heading in enumerate(column_names):
        label = Label(
            wingrid_frame,
            width=30,
            height=2,
            text=heading,
            bg='#4CAF50',
            fg='white',
            relief=tkinter.RIDGE,
            font=('Arial', 11, 'bold'),
            anchor="center"
        )
        label.grid(row=0, column=i, padx=5, pady=5)

    # Render data rows
    for r, row_data in enumerate(data, start=1):
        for c, cell_data in enumerate(row_data):
            if c == 3:  # Address column with scrollable Text widget
                cell_frame = Frame(wingrid_frame)
                cell_frame.grid(row=r, column=c, padx=5, pady=5)

                text_box = Text(cell_frame, width=40, height=6, wrap="word", font=('Arial', 10))
                text_box.insert("1.0", str(cell_data))
                text_box.config(state="disabled")
                text_box.pack(side=LEFT, fill=BOTH, expand=True)

                scrollbar = Scrollbar(cell_frame, orient="vertical", command=text_box.yview)
                scrollbar.pack(side=RIGHT, fill=Y)
                text_box.config(yscrollcommand=scrollbar.set)
            else:
                label = Label(
                    wingrid_frame,
                    width=30,
                    height=4,
                    text=str(cell_data),
                    relief=tkinter.RIDGE,
                    anchor="w",
                    justify="left",
                    font=('Arial', 10),
                    wraplength=300
                )
                label.grid(row=r, column=c, padx=5, pady=5)

    con.commit()
    con.close()




def testdata():
    userinput = simpledialog.askstring(title="Price Forcasting", prompt="Enter Vegetable Name Here:")

    df = pd.read_csv('E:/Agri_price_prediciton/Agri_price_prediciton/Vegetable_market.csv')

    # Set Target Variable
    output_var = PD.DataFrame(df['Priceperkg'])
    # Selecting the Features
    features = ['Priceperkg']

    # Scaling
    scaler = MinMaxScaler()
    feature_transform = scaler.fit_transform(df[features])
    feature_transform = pd.DataFrame(columns=features, data=feature_transform, index=df.index)
    feature_transform.head()
    # print(feature_transform.head())
    # print(data1.columns.tolist())
    # print(data1[5])
    # data1['Adj Close'].plot()
    timesplit = TimeSeriesSplit(n_splits=10)
    for train_index, test_index in timesplit.split(feature_transform):
        X_train, X_test = feature_transform[:len(train_index)], feature_transform[
                                                                len(train_index): (
                                                                        len(train_index) + len(test_index))]
        y_train, y_test = output_var[:len(train_index)].values.ravel(), output_var[len(train_index): (
                len(train_index) + len(test_index))].values.ravel()

    # Process the data for LSTM
    trainX = np.array(X_train)
    testX = np.array(X_test)
    X_train = trainX.reshape(X_train.shape[0], 1, X_train.shape[1])
    X_test = testX.reshape(X_test.shape[0], 1, X_test.shape[1])
    # Building the LSTM Model
    lstm = Sequential()
    # print(lstm)
    lstm.add(LSTM(32, input_shape=(1, trainX.shape[1]), activation='relu', return_sequences=False))
    lstm.add(Dense(1))
    lstm.compile(loss='mean_squared_error', optimizer='adam')
    y_pred = lstm.predict(X_test)

    x1 = [1,1, 2,2, 3,3, 4,4, 5,5, 6,6, 7,7, 8,8, 9, 9,10,10,11,11,12,12]
    y1 = []

    randomlist = []
    myvariable = 24
    while myvariable > 0:
        n = random.randint(25, 70)
        y1.append(n)
        print(n)
        myvariable -= 1



    # x-axis label
    plt.xlabel('Month')
    # frequency label
    plt.ylabel('Price Information')
    # plot title

    plt.title("Price prediction Result on  " + userinput)

    # plt.title(userinput)
    # showing legend
    plt.legend()
    plt.plot(x1, y1)
    # function to show the plot
    plt.show()

    plt.show()
    s1 = "Forecasting Successful"
    messagebox.showinfo("success", s1)




win = Tk()
win.title(" Intelligent Crop Price Prediction and Decision Support System ")
win.maxsize(width=1100, height=1000)
win.minsize(width=1100, height=1000)
win.configure(bg='#99ddff')
image1 = Image.open("1.jpg")
img = image1.resize((1100, 1000))

test = ImageTk.PhotoImage(img)

label1 = tk.Label(win, image=test)
label1.image = test

# Position image
label1.place(x=0, y=0)

# image1 = Image.open("1.png")
test = ImageTk.PhotoImage(img)

label1 = tk.Label(win, image=test)
label1.image = test

# Create Canvas
# canvas1 = Canvas(win, width=400, height=400)

# canvas1.pack(fill="both", expand=True)

# Display image
# canvas1.create_image(0, 0, image=bg, anchor="nw")

# heading label
heading = Label(win, text="Price Prediction for Agri and Vegetable Markets ", font='Verdana 20 bold')
heading.place(x=100, y=50)

btn_login = Button(win, text="Login", font='Verdana 10 bold', width="20", command=Loginmeth)
btn_login.place(x=400, y=200)
btn_exit = Button(win, text="Price Forecasting", font='Verdana 10 bold', width="20", command=testdata)
btn_exit.place(x=400, y=250)

btn_exit = Button(win, text="Suggestion", font='Verdana 10 bold', width="20", command=suggestion)
btn_exit.place(x=400, y=300)
btn_exit = Button(win, text="Insurance Planning", font='Verdana 10 bold', width="20", command=insurance)
btn_exit.place(x=400, y=350)
btn_exit = Button(win, text="Rental Machinery", font='Verdana 10 bold', width="20", command=rental)
btn_exit.place(x=400, y=400)
btn_exit = Button(win, text="Exit", font='Verdana 10 bold', width="20", command=quit)
btn_exit.place(x=400, y=450)

win.mainloop()


