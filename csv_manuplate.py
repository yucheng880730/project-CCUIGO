# -*- coding: utf-8 -*-
"""
Created on Thu Jan 30 19:01:53 2020

@author: USER
"""
'''
import pandas as pd
import glob
import os
'''
from os import chdir
import glob
import pandas as pd

#合併所有檔案
def produce_one_csv(full_class_data,file_out):
    result_obj = pd.concat([pd.read_csv(file) for file in full_class_data])
    result_obj.to_csv(file_out, index=False, encoding="utf_8_sig")

path = r'C:\Users\USER\Desktop\project\department'
full_class_data = glob.glob(path + "/*.csv")
print(full_class_data)

file_out = "concat_data.csv"
produce_one_csv(full_class_data, file_out)



df_csv = pd.read_csv('concat_data.csv')

#改columns名字
df_csv.columns = ['department','location','period','time','teacher','degree','credit',
                  'grade','class_num','subject','id','optional_course','limit','stu_num','domain']
#把colums做排序
df_csv = df_csv[['department','id','subject','teacher','grade','class_num','period','credit','optional_course',
                 'domain','time','location','stu_num','limit','degree']]
df_csv.drop(["degree"],axis = 1,inplace = True) 
df_csv.to_csv('concat_data.csv',index = False,encoding="utf_8_sig")
print(df_csv)




'''
concat_all_sheets_all_csv = pd.DataFrame()

for csv in full_class_data:
    
    df = pd.read_csv(csv , header = None)
    concat_all_sheets_all_csv = []
    
    concat_all_sheets_single_csv = pd.concat(df,sort=False)
    
    concat_all_sheets_single_csv['full_class_data'] = os.path.basename(csv)
    
    concat_all_sheets_all_csv = concat_all_sheets_all_csv.append(concat_all_sheets_single_csv)
'''   
