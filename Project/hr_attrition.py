#!/usr/bin/env python
# coding: utf-8

# In[3]:


import pandas as pd

# load the uploaded HR dataset
df = pd.read_csv("hr_attrition.csv")  

df.head()


# In[4]:


df.shape       # rows, columns
df.info()      # column types
df.describe()  # summary statistics
df.isnull().sum()  # missing values check


# In[5]:


df['Attrition'].value_counts(normalize=True) * 100


# In[4]:


df.groupby('Department')['Attrition'].value_counts(normalize=True)


# In[ ]:


import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Load dataset
df = pd.read_csv("hr_attrition.csv")   # replace with your actual file name


# In[7]:


# Shape of dataset (rows, columns)
print("Shape:", df.shape)

# Data types & null values
print("\nInfo:")
print(df.info())

# Summary statistics
print("\nSummary:")
print(df.describe())

# Missing values
print("\nMissing Values:")
print(df.isnull().sum())


# In[8]:


# Count Attrition Yes/No
print(df['Attrition'].value_counts())
print("\nAttrition %:")
print(df['Attrition'].value_counts(normalize=True) * 100)

# Plot
sns.countplot(data=df, x='Attrition')
plt.title("Overall Attrition Count")
plt.show()


# In[9]:


print(df.groupby('Department')['Attrition'].value_counts(normalize=True))

sns.countplot(data=df, x='Department', hue='Attrition')
plt.title("Attrition by Department")
plt.xticks(rotation=30)
plt.show()


# In[10]:


print(df.groupby('Gender')['Attrition'].value_counts(normalize=True))

sns.countplot(data=df, x='Gender', hue='Attrition')
plt.title("Attrition by Gender")
plt.show()


# In[11]:


sns.histplot(data=df, x='Age', hue='Attrition', multiple='stack', bins=10)
plt.title("Attrition by Age")
plt.show()


# In[12]:


print(df.groupby('JobRole')['Attrition'].value_counts(normalize=True))

plt.figure(figsize=(10,5))
sns.countplot(data=df, x='JobRole', hue='Attrition')
plt.title("Attrition by Job Role")
plt.xticks(rotation=45)
plt.show()


# In[13]:


plt.figure(figsize=(6,5))
sns.boxplot(data=df, x='Attrition', y='MonthlyIncome')
plt.title("Attrition vs Monthly Income")
plt.show()


# In[9]:


# Save as CSV instead of XLS
df.to_csv("hr_attrition_clean.csv", index=False)


# In[ ]:





# In[ ]:




