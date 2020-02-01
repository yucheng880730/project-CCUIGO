# -*- coding: utf-8 -*-
"""
Created on Thu Jan 30 10:48:12 2020

@author: USER
"""

import pymysql
import csv
import pandas as pd


mydb = pymysql.connect(host = '127.0.0.1',user = 'root',passwd = 'yucheng2k14',db = "TestDB")
cursor = mydb.cursor()
csv_data = csv.reader('資管系.csv')

from row in csv_data:
    cursor.execute('INSERT INTO class_data(department,grade,id,class_num,suject,teacher,period,course_credit,option_course,time,classroom,stu_num,tag)''VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)',row)
    
    
mydb.commit()
cursor.close()



'''
def getcon(TestDB):
    conn = pymysql.connect(host = "localhost" , port = 3306 , user = 'root' , passwd = 'yucheng2k14' , db = TestDB , charset = 'utf-8')
    
    #建立游標物件
    cursor1 = conn.cursor()
    return conn,cursor1

#定義讀取檔案`並且匯入資料庫資料sql語句
def insertData(TestDB,class_data):
    conn,cursor1 = getcon(TestDB)
    df = pd.read_csv('資管系.csv')
    counts = 0
    for each in df.values:
        sql = 'insert into' + class_data + 'value('
        for i , n in enumerate(each):
            if i < (len(each) - 1):
                if i <= 4 or i==8 or i ==9:
                    sql = sql + str(n) + ','
                else:
                    sql = sql + '""' + str(n) + '""' + ','
            else:
                sql = sql + '""' + str(n) + '""'
        sql = sql + ');'
        cursor1.execute(sql)
        conn.commit()
        counts += 1
        print('成功添加了' + str(counts) + '條資料')
    return conn,cursor1

def main(TestDB,class_data):
    conn,cursor1 = insertData(TestDB,class_data)
    cursor1.close()
    conn.close()
'''
  
'''
if __name__ == '__main__':
    main('')
'''