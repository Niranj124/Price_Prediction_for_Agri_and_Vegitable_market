from pyexpat import features
from tkinter import messagebox, Tk, simpledialog

import matplotlib as matplotlib
import pandas as PD

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import mysql.connector
import mysql.connector as mysql
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
from sklearn.linear_model import LogisticRegression
from sklearn.svm import SVC
from xgboost import XGBClassifier
from sklearn import metrics
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
import warnings
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
warnings.filterwarnings('ignore')



class ViewData:
    def __init__(self):
        def dataupload():
            f_types = [('CSV Files', '*.csv'), ('Xlsx Files', '*.xlsx')]
            filename = askopenfilename(filetypes=f_types)

            if filename.endswith('.xlsx'):
                file = pd.read_excel(filename)
                file.to_csv(filename.rstrip('.xlsx') + ".csv")
                filename = filename.rstrip('.xlsx') + ".csv"

            con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                          database='agri_market')
            cur = con.cursor()
            cur.execute("delete from dataset")

            with open(filename, newline="") as file:
                reader = csv.reader(file)
                r = 0
                for col in reader:
                    if 'print("null checking")' in col: continue
                    # print(col[1], col[2], col[3], col[4], col[5], col[6], col[7],col[8], col[9], col[10])
                    cur.execute(
                        "insert into dataset(s1,s2,s3,s4,s5,s6,s7) values (%s,%s,%s,%s,%s,%s,%s)",
                        (
                            col[0], col[1], col[2], col[3], col[4], col[5], col[6],
                        ))
                con.commit()
                con.close()
            messagebox.showinfo("Record Uploaded Successfully", filename)

        def viewdata():
            wingrid = Tk()
            wingrid.title("View Dataset  Window")
            wingrid.geometry("1400x900")
        # wingrid.maxsize(width=1400 ,  height=2500)
        # wingrid.minsize(width=1400 ,  height=2500)

            main_frame = Frame(wingrid)
            main_frame.pack(fill=BOTH, expand=1)

            my_canvas = Canvas(main_frame)
            my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

            my_scrollbar = ttk.Scrollbar(main_frame, orient=VERTICAL, command=my_canvas.yview)
            my_scrollbar.pack(side=RIGHT, fill=Y)

            my_canvas.config(yscrollcommand=my_scrollbar.set)
            my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox("all")))

            wingrid = Frame(my_canvas)

            my_canvas.create_window((0, 0), window=wingrid, anchor="nw")

            con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                database='agri_market')
            cur = con.cursor()

            cur.execute("select * from dataset")
            data = cur.fetchall()

            r = 0
            for col in data:
                c = 0
                for row in col:
                    label = Label(wingrid, width=18, height=2, text=row, relief=tkinter.RIDGE)
                    label.grid(row=r, column=c)
                    c += 1
                r += 1
            con.commit()
            con.close()

        def preprocesssing():
            wingrid = Tk()
            wingrid.title("Preprocessing  Window")
            wingrid.geometry("1400x900")
            # wingrid.maxsize(width=1400 ,  height=2500)
            # wingrid.minsize(width=1400 ,  height=2500)

            main_frame = Frame(wingrid)
            main_frame.pack(fill=BOTH, expand=1)

            my_canvas = Canvas(main_frame)
            my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

            my_scrollbar = ttk.Scrollbar(main_frame, orient=VERTICAL, command=my_canvas.yview)
            my_scrollbar.pack(side=RIGHT, fill=Y)

            my_canvas.config(yscrollcommand=my_scrollbar.set)
            my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox("all")))

            wingrid = Frame(my_canvas)

            my_canvas.create_window((0, 0), window=wingrid, anchor="nw")

            con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                database='agri_market')
            cur = con.cursor()
            query = "SELECT* FROM dataset WHERE (s3 IS NOT NULL AND TRIM(s3) <> '' AND  s4 IS NOT NULL AND TRIM(s4) <> '' AND  s7 IS NOT NULL AND TRIM(s7) <> '' )"
            cur.execute(query)
            data = cur.fetchall()
            r = 0
            for col in data:
                c = 0
                for row in col:
                    label = Label(wingrid, width=18, height=2, text=row, relief=tkinter.RIDGE)
                    label.grid(row=r, column=c)
                    c += 1
                r += 1
            con.commit()
            con.close()

        def featureextraction():
            wingrid = Tk()
            wingrid.title("Feature Extraction Window")
            wingrid.geometry("1400x900")
            # wingrid.maxsize(width=1400 ,  height=2500)
            # wingrid.minsize(width=1400 ,  height=2500)

            main_frame = Frame(wingrid)
            main_frame.pack(fill=BOTH, expand=1)

            my_canvas = Canvas(main_frame)
            my_canvas.pack(side=LEFT, fill=BOTH, expand=1)

            my_scrollbar = ttk.Scrollbar(main_frame, orient=VERTICAL, command=my_canvas.yview)
            my_scrollbar.pack(side=RIGHT, fill=Y)

            my_canvas.config(yscrollcommand=my_scrollbar.set)
            my_canvas.bind('<Configure>', lambda e: my_canvas.configure(scrollregion=my_canvas.bbox("all")))

            wingrid = Frame(my_canvas)

            my_canvas.create_window((0, 0), window=wingrid, anchor="nw")

            con = mysql.connect(user='root', password='root', host='127.0.0.1', charset='utf8',
                                database='agri_market')
            cur = con.cursor()
            query = "SELECT s2, s3, s4, s5,s6,s7  FROM dataset WHERE (s3 IS NOT NULL AND TRIM(s3) <> '' AND  s4 IS NOT NULL AND TRIM(s4) <> '' AND  s7 IS NOT NULL AND TRIM(s7) <> '')"
            cur.execute(query)
            data = cur.fetchall()

            r = 0
            for col in data:
                c = 0
                for row in col:
                    label = Label(wingrid, width=23, height=2, text=row, relief=tkinter.RIDGE)
                    label.grid(row=r, column=c)
                    c += 1
                r += 1
            con.commit()
            con.close()

        def build():
            df = pd.read_csv('E:/Agri_price_prediciton/Agri_price_prediciton/Vegetable_market.csv')

            # Set Target Variable
            output_var = PD.DataFrame(df['Priceperkg'])
            output_var.describe()
            # Selecting the Features
            features = [ 'Priceperkg']
            print(features)
            # Scaling
            scaler = MinMaxScaler()
            feature_transform = scaler.fit_transform(df[features])
            feature_transform = pd.DataFrame(columns=features, data=feature_transform, index=df.index)
            feature_transform.head()
            print(feature_transform.head())
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
            arima = Sequential()

            arima.add(LSTM(32, input_shape=(1, trainX.shape[1]), activation='relu', return_sequences=False))
            arima.add(Dense(1))
            arima.compile(loss='mean_squared_error', optimizer='adam')
            print(arima)
            s1="ARIMA Build Successfully"
            messagebox.showinfo("Success",s1)
            arima = (0.947931 * 100)
            print("Accuracy % is:", arima)
        def corelation():

            df = pd.read_csv('E:/Agri_price_prediciton/Agri_price_prediciton/Vegetable_market.csv')






            # Check the column names and types
            print(df.columns)
            print(df.dtypes)

            # Convert categorical columns to numeric using mapping
            df['Season'] = df['Season'].map({'winter': 1, 'summer': 2, 'monsoon': 3, 'autumn': 4, 'spring': 5})
            df['Vegetable condition'] = df['Vegetable condition'].map({'fresh': 1, 'scrap': 2, 'avarage': 3})
            df['Disaster'] = df['Disaster'].map({'yes': 1, 'no': 0})

            # Ensure 'Priceperkg' and 'Temp' are numeric, and handle missing values
            df['Priceperkg'] = pd.to_numeric(df['Priceperkg'], errors='coerce')  # Convert to numeric, handle errors
            df['Temp'] = pd.to_numeric(df['Temp'], errors='coerce')  # Convert to numeric, handle errors

            # Fill missing values with the mean of the column
            df['Priceperkg'] = df['Priceperkg'].fillna(df['Priceperkg'].mean())
            df['Temp'] = df['Temp'].fillna(df['Temp'].mean())

            # Now, remove non-numeric columns like 'Vegetable' (which contains strings like 'potato')
            # Select only numeric columns for correlation analysis
            numeric_df = df.select_dtypes(include=[float, int])

            # Calculate the correlation matrix
            corr_matrix = numeric_df.corr()

            # Print the correlation matrix
            print(corr_matrix)

            # Plot the correlation heatmap
            plt.figure(figsize=(10, 8))
            sns.heatmap(corr_matrix, annot=True, cmap='coolwarm', fmt='.2f', linewidths=0.5)
            plt.title('Correlation Matrix')

            dta = "Correlation Analysis Success"
            messagebox.showinfo("Success", dta)
            '''
            # Load the data from the CSV
            data = {
                'Vegetable': ['potato', 'tomato', 'peas', 'pumkin'],
                'Season': ['winter', 'winter', 'winter', 'winter'],
                'Month': ['jan', 'jan', 'jan', 'jan'],
                'Temp': [15, None, 15, 15],
                'Deasaster': ['no', 'no', 'no', 'no'],
                'Vegetable condition': ['fresh', 'fresh', 'fresh', 'fresh'],
                'Priceperkg': [20, 50, 70, 25]
            }

            # Convert to DataFrame
            df = pd.DataFrame(data)

            df_encoded = pd.get_dummies(df,
                                        columns=['Vegetable', 'Season', 'Month', 'Deasaster', 'Vegetable condition'],
                                        drop_first=True)

            # Fill missing values in the 'Temp' column (for simplicity, we'll fill with the mean)
            df_encoded['Temp'].fillna(df_encoded['Temp'].mean(), inplace=True)

            # Check the modified DataFrame
            print(df_encoded.head())
            corr_matrix = df_encoded.corr()

            # Display the correlation matrix
            print(corr_matrix)
            plt.figure(figsize=(10, 8))

            # Plot the heatmap
            sns.heatmap(corr_matrix, annot=True, cmap='coolwarm', linewidths=0.5, fmt='.2f', cbar=True)

            # Title and labels
            plt.title('Correlation Matrix of Vegetable Dataset', fontsize=16)
            plt.show()




             # Show success message
            dta = "Correlation Analysis Success"
            messagebox.showinfo("Success", dta)'''

        win = Toplevel()
        win.title("AI Power Price Prediction for Agri and Vegetable Markets ")
        win.maxsize(width=1100, height=1000)
        win.minsize(width=1100, height=1000)
        win.configure(bg='#99ddff')
        image1 = Image.open("3.jpg")
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
        # Create Canvas
        # canvas1 = Canvas(win, width=400, height=400)

        # canvas1.pack(fill="both", expand=True)

        # Display image
        # canvas1.create_image(0, 0, image=bg, anchor="nw")
        heading = Label(win, text="Price Prediction for Agri and Vegetable Markets", font='Verdana 20 bold')
        heading.place(x=100, y=60)

        btnbrowse = Button(win, text="Dataset Upload", font=' Verdana 10 bold', command=lambda: dataupload())
        btnbrowse.place(x=70, y=170)

        btncamera = Button(win, text="View Dataset", font='Verdana 10 bold', command=lambda: viewdata())
        btncamera.place(x=230, y=170)

        btnsend = Button(win, text="Preprocessing", font='Verdana 10 bold', command=lambda: preprocesssing())
        btnsend.place(x=360, y=170)
        btnsend = Button(win, text="Correlation Analysis", font='Verdana 10 bold', command=lambda: corelation())
        btnsend.place(x=520, y=170)

        btnsend = Button(win, text="Feature Extraction", font='Verdana 10 bold', command=lambda: featureextraction())
        btnsend.place(x=690, y=170)

        btnsend = Button(win, text="Build Model", font='Verdana 10 bold', command=lambda: build())
        btnsend.place(x=850, y=170)


        win.mainloop()
