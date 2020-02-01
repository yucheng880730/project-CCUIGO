# -*- coding: utf-8 -*-
"""
Created on Thu Jan 16 20:28:36 2020

@author: USER
"""

import urllib
from bs4 import BeautifulSoup
from selenium import webdriver
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
def get_class_data(url,name):
    df = pd.read_html(url)    #將dataframe儲存成list
    df =df[0]                 #取list中第一個當dataframe操作
    df.drop(["備註","課程大綱"] , axis = 1 , inplace = True)
    df.insert(0,"Department",name)
    df.to_csv(name+'.csv',encoding='utf_8_sig',index = False)
    print(df)
    #print(type(href))
    #url 型態是str


driver = webdriver.Chrome()
driver.get("https://kiki.ccu.edu.tw/~ccmisp06/Course/index.html")

elem_list = []
name_list = []
elems = driver.find_elements_by_xpath("//a[@href]")

for elem in elems:
    elem_list.append(elem.get_attribute("href"))
    name_list.append(elem.text.replace("/","_")) #用_替換/
    #print(href)
driver.close()
    #elem_list.append(href)  

elem_list = elem_list[1:91]
name_list = name_list[1:91]

for i in name_list:
    print(i)


for i in range(len(elem_list)):
    get_class_data(elem_list[i],name_list[i])

    
    
    
'''
for elem in elem_list[1:13]:
    get_class_data(elem)
'''
    
#elem_list資料型態 list
#elem資料型態是 str
'''
for elem in elem_list[1:91]:
    get_class_data(elem)
    #print(type(elem))
'''


#elems_button = driver.find_element_by_xpath("//a[@href]")
#print(type(elems_button))
'''
for elem in elems[1:91]:
    department = driver.find_elements_by_xpath("//a[@href]")
'''
    #get_class_data(department)
    #print(type(department))
    
    
#elems_button[1:91]
#elems_button.click()



#str1 = ''.join(elems)   #把list轉乘string
'''
for elem in elems:
    href = elem.get_attribute("href")
    #print(href)
    
    elem_list.append(href)
print(elem_list[1:91])
 '''   


    #elem_list.append(elem.get_attribute("href"))
    #print(elem_list)
    #elem_list[1:89]
    #print(type(elem.get_attribute("href")))
    #for href in elem_list:
        #get_class_data(href)
       
        
#url = 'https://kiki.ccu.edu.tw/~ccmisp06/Course/1014.html' #中文學院學士班
#url2 = 'https://kiki.ccu.edu.tw/~ccmisp06/Course/1104.html'
#get_class_data(url)



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

