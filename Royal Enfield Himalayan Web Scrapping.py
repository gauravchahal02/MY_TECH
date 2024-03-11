#!/usr/bin/env python
# coding: utf-8

# In[1]:


import requests
from bs4 import BeautifulSoup
import pandas as pd
url="https://www.royalenfield.com/in/en/motorcycles/new-himalayan/"


# In[2]:


r=requests.get(url)
htmlcontent=r.content
htmlcontent


# In[3]:


soup=BeautifulSoup(htmlcontent,"html.parser")
soup.prettify


# In[4]:


title=soup.title
title


# In[5]:


colours=soup.find_all("div",class_="bike-color-swatch")
colours


# In[6]:


Price=soup.find_all("div",class_="finc-row d-flex align-items-center flex-column flex-md-row")
Price


# In[7]:


Product_Price=[]
for i in range(0,len(Price)):
    Product_Price.append(Price[i].get_text())
Product_Price
Product_Price_filtered=[]
for i in Product_Price:
    i=i[1:11]
    print(i)
    Product_Price_filtered.append(i)
Product_Price_filtered


# In[8]:


Product_colours=[]
for i in range(0,len(colours)):
    Product_colours.append(colours[i].get_text())
Product_colours
list2=[]
for i in Product_colours:
    a=len(i)
    i=i[2:a-1]
    print(i)


# In[9]:


import pandas as pd
df=pd.DataFrame({"Colour_Type":Product_colours,"Price":Product_Price_filtered})
df=df.replace("\n","",regex=True)
print (df)


# In[12]:


import os
os.getcwd()
df.to_csv("Royal Enfield Himalayan.csv",index=False)
df1=pd.read_csv("Royal Enfield Himalayan.csv")
df1


# In[ ]:





# In[ ]:




