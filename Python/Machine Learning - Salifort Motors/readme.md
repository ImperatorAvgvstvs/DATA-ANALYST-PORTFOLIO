# 📌 Employee Attrition Prediction using Logistic Regression and Random Forest  

## 📝 Project Summary  
This project focuses on building **logistic regression, decision tree, and random forest models** to predict **employee attrition** for **Salifort Motors**, a large fictional consulting firm. The aim is to provide **data-driven insights** to the **Human Resources (HR) department** to help them identify employees who may leave the company.  

By leveraging **machine learning and statistical analysis**, this project delivers insights that can assist in **retention strategies** and **workforce planning**.  

---

## 💊 Dataset Summary  
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
3. **Model Building** – Implementing **logistic regression, decision tree, and random forest** for classification  
4. **Model Execution** – Training and testing the models  
5. **Model Assessment** – Evaluating performance using key metrics  

---

# 🛠 Step-by-Step Implementation  

## 🔹 1. Data Preparation  
### Tasks:  
- Loaded the dataset and checked for **missing values** and **duplicates**  
- Encoded categorical variables (e.g. department, job role)  
- Standardised numerical features to ensure consistency  
- Split the dataset into **training and testing sets**  

### 🔑 Key Findings:  
- **Minimal missing values** were found, and appropriate imputation was applied where necessary  
- **Feature engineering** may need to be introduced to create more meaningful variables  
- **Class imbalance** identified, may need to be rectified using **resampling techniques** (undersampling or SMOTE oversampling)  

---

## 📈 2. Data Exploration (EDA)  
### Tasks:  
- Analysed distributions of key features (e.g., satisfaction level, work hours)  
- Visualised correlations between features and attrition  
- Identified the most **impactful predictors**  

### 🔑 Key Findings:  
- **Satisfaction level** appeared the strongest predictor of attrition  
- **Capcity Issue** found: Employees who had higher hours and more projects showed **higher attrition rates**  
- **Job tenure** plays a complex role, with mid-career employees having **higher risk of leaving**  

---

## 🛠 3. Model Building  
### Tasks:  
- Selected **logistic regression, decision tree, and random forest** as the predictive models  
- Applied **feature selection** techniques where apropriate to improve model efficiency  
- Implemented **hyperparameter tuning** to optimise random forest and decision tree model performance  

### 🔑 Key Findings:  
- **Feature selection** reduced model complexity while maintaining high accuracy  
- **Hyperparameter tuning** resulted in a more robust and generalisable models

---

## 🚀 4. Model Execution  
### Tasks:  
- Trained the **logistic regression, decision tree, and random forest models** on the training dataset  
- Used the **test dataset** to make predictions  
- Implemented a **confusion matrix, classification reports and AUC-ROC Curve** to evaluate classification results  

### 🔑 Key Findings:  
- **Random Forest outperformed logistic regression** in predictive power, handling non-linear relationships more effectively and was stronger at predicting leavers
- **Decision Tree provided better interpretability**, but was prone to overfitting  
- **Higher recall scores** were achieved after applying **resampling techniques** such as **SMOTE** for the logistic regression models
- The logistic regression models struggled with **false positives**, indicating room for further refinement  

---

## 📊 5. Model Assessment  
### Tasks:  
- Evaluated the models using:  
  ✅ **Accuracy** – Measures overall performance  
  ✅ **Precision & Recall** – Determines prediction reliability  
  ✅ **F1-Score** – Balances precision and recall  
  ✅ **AUC-ROC Curve** – Evaluates model discrimination ability  
- Plotted the **ROC curve** to visualise model effectiveness  

### 🔑 Key Findings:  
- **Random Forest achieved the highest AUC-ROC score**, indicating strong predictive performance  
- **Decision Tree provided a simple, interpretable model**, but was less robust than Random Forest  
- **Next Steps**: Consider **ensemble methods** (e.g., Gradient Boosting) to further enhance performance  

---
## ⏭ Reccomendations and Next Steps

### Business Reccomendations:

To retain employees, the following recommendations could be presented to the stakeholders:

- Cap the number of projects that employees can work on to limit overworking.
- Consider promoting employees who have been with the company for atleast four years, or conduct further investigation about why four-year tenured employees have not yet been promoted.
- Furthermore offer support for upskilling and further qualifications to develop employees internally and provide a clear career progresion path with aims and goals
- Hold company-wide and within-team discussions to understand and address the company work culture, across the board and in specific contexts.
- High evaluation scores should not be reserved for employees who work longer hours, consider establishing a more rigorous criteria for performance evaluation that is meritocratic and driven by results
- Consider implementing performance based incentives such as bonuses to compound on a more rigorous evaluation system
- To address high turover in specific departments such as Marketing and Management, hold focus group discussions to identify specific greivenaces and offer training to Management in these departments to aid them in this high intensity environment

### Potentia Next Steps:

It is also worth considering whether **predicting employee performance and satisfaction** could be more meaningful than predicting retention directly. If evaluation scores play a **key role in determining attrition** (e.g., low scores lead to job loss or voluntary departure), then modeling performance could allow HR to intervene earlier. Similarly, satisfaction_score may not be a true predictor if it is measured **after an employee has already decided to leave**. If satisfaction is consistently low right before departure, it may function more as a **symptom** rather than a cause of attrition.

- **Performance as a predictor**: If evaluations strongly influence retention, predicting last_evaluation instead may be more useful.
- **Satisfaction score timing**: If satisfaction is measured post-decision, it may reflect attrition rather than predict it.
- **Recommended test**: Compare model performance with and without satisfaction_score to assess its predictive value.

---

# 🌟 Final Thoughts & Business Impact  
This project demonstrated how **logistic regression, decision tree, and random forest** can be used to predict **employee attrition** effectively. The findings provide **valuable insights** for HR teams to improve **employee retention strategies** by:  
✅ Focusing on **employee satisfaction and engagement**  
✅ Identifying employees at **higher risk of leaving**  
✅ Offering **targeted interventions** to reduce attrition  

By integrating **data science into HR decision-making**, companies can proactively manage their workforce and **reduce turnover costs**.  

