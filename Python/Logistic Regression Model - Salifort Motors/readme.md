# 📌 Employee Attrition Prediction using Logistic Regression  

## 📝 Project Summary  
This project focuses on building a **logistic regression model** to predict **employee attrition** for **Salifort Motors**, a large fictional consulting firm. The aim is to provide **data-driven insights** to the **Human Resources (HR) department** to help them identify employees who may leave the company.  

By leveraging **machine learning and statistical analysis**, this project delivers insights that can assist in **retention strategies** and **workforce planning**.  

---

## 📊 Dataset Summary  
The dataset contains **HR-related employee records**, including variables such as:  
- **Demographic information** (e.g., age, department)  
- **Employment details** (e.g., job role, salary, years at company)  
- **Performance indicators** (e.g., satisfaction level, last evaluation score)  
- **Engagement factors** (e.g., average monthly hours, work accidents, promotions)  

The target variable (`Attrition`) is a **binary classification problem** where:  
- `1` = Employee left the company  
- `0` = Employee stayed  

---

## 🎯 Objective  
The primary goal is to develop a **predictive model** that helps HR teams:  
✅ **Identify employees at risk of leaving**  
✅ **Understand key factors influencing attrition**  
✅ **Provide actionable recommendations for retention**  

---

## ⚙️ Methodologies Used  
The approach taken in this project includes:  
1. **Data Preparation** – Cleaning and preprocessing the dataset  
2. **Exploratory Data Analysis (EDA)** – Understanding key patterns and correlations  
3. **Model Building** – Implementing **logistic regression** for classification  
4. **Model Execution** – Training and testing the model  
5. **Model Assessment** – Evaluating performance using key metrics  

---

# 🛠 Step-by-Step Implementation  

## 🔹 1. Data Preparation  
### Tasks:  
- Loaded the dataset and checked for **missing values** and **duplicates**  
- Encoded categorical variables (e.g., department, job role)  
- Standardised numerical features to ensure consistency  
- Split the dataset into **training and testing sets**  

### 🔑 Key Findings:  
- No significant missing values were present  
- Certain categorical variables required encoding for compatibility with **logistic regression**  

---

## 📈 2. Data Exploration (EDA)  
### Tasks:  
- Analysed distributions of key features (e.g., satisfaction level, work hours)  
- Visualised correlations between features and attrition  
- Identified the most **impactful predictors**  

### 🔑 Key Findings:  
- **Satisfaction level** had a strong negative correlation with attrition  
- Employees working **longer hours** were more likely to leave  
- Recent promotions and **higher salaries** reduced attrition risk  

---

## 🔨 3. Model Building  
### Tasks:  
- Selected **logistic regression** as the predictive model  
- Defined independent variables (predictors) and dependent variable (attrition)  
- Applied **feature scaling** to standardise numerical values  
- Used **train-test splitting** to separate data for training and evaluation  

### 🔑 Key Findings:  
- Logistic regression was chosen due to its **interpretability and efficiency**  
- Feature selection improved model performance  

---

## 🚀 4. Model Execution  
### Tasks:  
- Trained the **logistic regression model** on the training dataset  
- Used the **test dataset** to make predictions  
- Implemented a **confusion matrix** to evaluate classification results  

### 🔑 Key Findings:  
- The model successfully identified employees who were not at risk of leaving  
- Certain features had higher weight in prediction (e.g., satisfaction level, salary)  

---

## 📊 5. Model Assessment  
### Tasks:  
- Evaluated the model using:  
  ✅ **Accuracy** – Measures overall performance  
  ✅ **Precision & Recall** – Determines prediction reliability  
  ✅ **F1-Score** – Balances precision and recall  
- Plotted the **ROC curve** to visualise model effectiveness  

### 🔑 Key Findings:  
- The model achieved **high accuracy and precision**, confirming its effectiveness in predicting employees whow would not leave. 
- The **ROC curve** indicated a strong predictive capability  
- Identified potential areas for improvement, such as using **ensemble models** for comparison  

---

# 🎯 Final Thoughts & Business Impact  
This project demonstrated how **logistic regression** can be used to predict **employee attrition** with high accuracy. The findings provide **valuable insights** for HR teams to improve **employee retention strategies** by:  
✅ Focusing on **employee satisfaction and engagement**  
✅ Identifying employees at **higher risk of leaving**  
✅ Offering **targeted interventions** to reduce attrition  

By integrating **data science into HR decision-making**, companies can proactively manage their workforce and **reduce turnover costs**.  
