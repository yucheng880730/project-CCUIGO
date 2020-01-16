# -*- coding: utf-8 -*-
"""
Created on Thu Jan 16 20:28:36 2020

@author: USER
"""

import urllib
from bs4 import BeautifulSoup
import pandas as pd
import csv

#方法一
'''
html = urllib.request.urlopen("https://kiki.ccu.edu.tw/~ccmisp06/Course/1014.html").read()
print(type(html))


soup = BeautifulSoup(html,'html.parser')
tag = soup.findAll('tr')

for i in tag:
    print(i.text)


def csv_dict_writer(path, fieldnames ,data):
    #write a csv file using Dictwriter

with open('class_data','w',newline = '') as csvFile:
    writer = csv.writer(csvFile)
'''




#方法二
def get_class_data(url):
    df = pd.read_html(url) #將dataframe儲存成list
    df =df[0] #取list中第一個當dataframe操作
    df.drop(["備註","課程大綱"] , axis = 1 , inplace = True)  
    df.to_csv('class_data.csv',encoding='big5' )
    print(df)



url = 'https://kiki.ccu.edu.tw/~ccmisp06/Course/1014.html' #中文學院學士班
#url2 = 'https://kiki.ccu.edu.tw/~ccmisp06/Course/1104.html'
get_class_data(url)



'''
df = pd.read_html("https://kiki.ccu.edu.tw/~ccmisp06/Course/1014.html")
df = df[0] #
'''


'''
df1 = pd.read_html("https://kiki.ccu.edu.tw/~ccmisp06/Course/1104.html")
df1 = df1[0]
'''
#df[i]

#df.drop(["備註","課程大綱"] , axis = 1 , inplace = True) #刪除那些column
'''
df1.drop(["備註"] , axis = 1 , inplace = True) #刪除備註那column
df1.drop(["課程大綱"] , axis = 1 , inplace = True)
'''

'''
for i in df.columns : 
    print(df[i])
'''

#df.to_csv('class_data.csv',encoding='big5' )

#print(df)    
