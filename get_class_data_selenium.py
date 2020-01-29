# -*- coding: utf-8 -*-
"""
Created on Thu Jan 16 22:09:35 2020

@author: USER
"""

from selenium import webdriver
import requests
import bs4
from time import sleep
import pandas as pd
import os
from selenium.webdriver.chrome.options import Options
from get_class_data import get_class_data
import csv

#driver = webdriver.Chrome()  #此為方法一


def CCU_login():
    driver = webdriver.Chrome() #此為方法一
    login_url = "https://kiki.ccu.edu.tw/~ccmisp06/cgi-bin/class_new/login.php?m=0"
    driver.get(login_url)
    driver.maximize_window()
    
    #使用絕對路徑(改用相對路徑因此註解掉)
    #user_name_input = driver.find_element_by_xpath(u"/html/body/font/center/form/table/tbody/tr[2]/td[2]/input")
    #user_name_input.send_keys(u"406530026")
    user_name_input = driver.find_element_by_xpath("//input[@name='id']") #相對路徑
    user_name_input.send_keys("406530026")
    
    #password_input = driver.find_element_by_xpath(u"/html/body/font/center/form/table/tbody/tr[3]/td[2]/input")
    #password_input.send_keys(u"yucheng2k")
    user_name_input = driver.find_element_by_xpath("//input[@type='password']") #相對路徑
    user_name_input.send_keys("123456789")
    
    #完成登入
    enter_btn = driver.find_element_by_xpath("//input[@type='submit']") #相對路徑
    enter_btn.click()
    #enter_btn = driver.find_element_by_xpath("/html/body/font/center/form/table/tbody/tr[6]/td/input[1]")
    #enter_btn.click()
    
    #點選查詢開課資料
    open_class_info_btn = driver.find_element_by_xpath("//a[@href='https://kiki.ccu.edu.tw/~ccmisp06/Course/index.html']")
    open_class_info_btn.click()
    
    #迴圈跑出所有系課程href
    driver.get("https://kiki.ccu.edu.tw/~ccmisp06/Course/index.html")
    elems = driver.find_elements_by_xpath("//a[@href]")
    for elem in elems:
        print(elem.get_attribute("href"))
        #print(type(elem.get_attribute))
        for href in elems:
            get_class_data(href)
        
        
    '''
    list_of_hrefs = []
    elems = driver.find_elements_by_tag_name("a")
    for elem in elems:
        list_of_hrefs.append(elem.get_attribute("href"))
    '''
                                   
    #print(list_of_hrefs)
    #list_of_hrefs的資料型態是list
    #print(type(list_of_hrefs))
        #for href in elems:
            #get_class_data(href)  #最後處理這裡
            
    

    
    #下面這兩行不清楚啥意思
    '''
    home_page_url = driver.current_url
    return driver , 
    '''

CCU_login()


'''
def CCU_open_class_info(driver , home_page_url):
    open_class_info_btn = driver.find_element_by_xpath("//a[@href='https://kiki.ccu.edu.tw/~ccmisp06/Course/index.html']")
    open_class_info_btn.click()
    
CCU_open_class_info()
'''    
    
   


#Options.binary_location = "C:\Users\USER\Desktop\專題"
#webdriver_path = 'C:\\chromedriver.exe'
#options = Options()
#driver = webdriver.Chrome(executable_path=webdriver_path, options=options)


'''
driver.get("https://kiki.ccu.edu.tw/~ccmisp06/cgi-bin/class_new/index.php?session_id=O3x0wzJPAiAbieD4j5lAzQmP7N7GotthA548")
home_page_url = driver.current_url
time.sleep(5)
'''


'''
#設定driver屬性
def driver_settings() : 
	options = webdriver.ChromeOptions()
	options.add_argument("user-agent = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'")
	prefs = {"profile.managed_default_content_settings.images": 2}
	options.add_experimental_option('prefs' , prefs)

	return options
''' 

'''
#登入選課系統，回傳driver物件和選課的側邊欄位
def CCU_login(options) : 
	
	driver = webdriver.Chrome(chrome_options = options)

	login_url = "https://kiki.ccu.edu.tw/~ccmisp06/cgi-bin/class_new/login.php?m=0"
	driver.get(login_url)
	driver.maximize_window()

	user_name_input = driver.find_element_by_xpath(u"/html/body/font/center/form/table/tbody/tr[2]/td[2]/input")
	user_name_input.send_keys(u"406530026")
	password_input = driver.find_element_by_xpath(u"/html/body/font/center/form/table/tbody/tr[3]/td[2]/input")
	password_input.send_keys(u"yucheg2k")

	enter_btn = driver.find_element_by_xpath("/html/body/font/center/form/table/tbody/tr[6]/td/input[1]")
	enter_btn.click()
	
	home_page_url = driver.current_url
	
	return driver , home_page_url
'''

#driver.close()