
# coding: utf-8

# In[1]:


import pandas as pd
df = pd.read_csv("../data/goodsale.csv")
submit = pd.read_csv("../data/submit_example.csv")
df = df.replace("1,212.00",1212)
print(df.shape)
print(df.head(5))
print(submit.shape)


print(df.sku_id.nunique())
print(df.goods_id.nunique())


t = df.groupby(["sku_id","data_date"],as_index=False)["goods_num"].sum()
print(t.head(10))
print(t.shape)


# In[4]:


t = pd.merge(submit,t,on="sku_id")
print(t.shape)
print(t.head(5))


# In[5]:


t2 = t.groupby(["sku_id"],as_index=False)["goods_num"].mean()
print(t2.shape)
print(t2.head(5))



submit = pd.merge(submit,t2,on="sku_id",how="left")
print(submit.head(5))



for i in ["week1","week2","week3","week4","week5"]:
    submit[i] = submit["goods_num"]*7
print(submit.head(5))    




submit[["sku_id","week1","week2","week3","week4","week5"]].to_csv("../submit/baseline.csv",index=False)





