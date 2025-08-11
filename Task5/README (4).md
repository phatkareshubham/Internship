# Titanic Dataset - Exploratory Data Analysis (EDA)

## Project Overview
This project performs **Exploratory Data Analysis (EDA)** on the Titanic dataset to discover trends, patterns, and relationships in the data.

The analysis includes:
- Data loading and inspection
- Data cleaning and preprocessing
- Univariate, bivariate, and multivariate analysis
- Visualization using Matplotlib and Seaborn
- Summary of insights

##  Files in this Repository
- **Titanic_EDA_Task5.ipynb** → Jupyter Notebook containing the full EDA process
- **README.md** → Project description and instructions

## Dataset
used Seaborn's built-in Titanic dataset, which contains details of passengers such as:
- **pclass**: Passenger class (1 = 1st, 2 = 2nd, 3 = 3rd)
- **sex**: Gender of the passenger
- **age**: Age of the passenger
- **sibsp**: Number of siblings/spouses aboard
- **parch**: Number of parents/children aboard
- **fare**: Ticket fare
- **embarked**: Port of embarkation (C = Cherbourg, Q = Queenstown, S = Southampton)
- **survived**: Survival (0 = No, 1 = Yes)

## How to Run the Notebook
1. Open Jupyter Notebook or Google Colab.
2. Upload `Titanic_EDA_Task5.ipynb`.
3. Run each cell in order.
4. Fill in observations in the designated placeholders.

## Key Visualizations
- Correlation Heatmap
- Pairplot
- Histogram for Age
- Boxplot for Age vs Pclass
- Countplot for Survival vs Gender

## Summary of Findings
- Female passengers had a higher survival rate compared to males.
- First-class passengers were more likely to survive.
- Younger passengers had a higher survival rate.
- There is a positive correlation between passenger class and fare.

---
**Author:** Shubham Milind Phatkare  
**Tools Used:** Python, Pandas, Seaborn, Matplotlib, Jupyter Notebook

## Observations from Titanic Dataset Analysis
1. Gender & Survival
Female passengers had a significantly higher survival rate than males.
Survival rate: ~74% for females vs. ~19% for males.

2. Class & Survival
Passengers in 1st class survived more often than those in 2nd and 3rd class.
1st Class: ~63% survival, 3rd Class: ~24% survival.

3. Age Distribution
Most passengers were between 20–40 years old.
Children under 10 had higher survival rates compared to adults in the same class.

4. Fare & Survival
Higher fare generally correlated with higher survival probability.
Many high-fare passengers were in 1st class.

5. Embarkation Port
Most passengers boarded at Southampton.
Passengers from Cherbourg had the highest survival rate.

6. Family Size
Passengers traveling with small families (1–3 members) survived more often.
Very large families or solo travelers had lower survival rates.

7. Missing Data
Age column had missing values (~20%).
Cabin data was missing for the majority of passengers (~77%).
Embarked had a few missing entries.

8. Correlation Insights
Survival positively correlated with being female, higher fare, and higher class.
Strong negative correlation between survival and being male in 3rd class.
