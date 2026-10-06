# Machine Learning-based Late Delivery Risk Prediction in Global Supply Chain Operations

## Project Overview

This project focuses on predicting the risk of late delivery in global supply chain operations using SQL, Python, Machine Learning, and Tableau.

The objective is to identify high-risk orders before shipment so that operations teams can take proactive actions such as prioritization, rerouting, and customer communication.

---

## Business Problem

Late deliveries can lead to:

- SLA breaches
- Increased operational costs
- Customer dissatisfaction
- Penalties
- Customer churn
- Last-minute operational disruptions

The project aims to provide an early-warning system for identifying orders that are likely to be delayed.

---

## Project Objectives

- Clean and prepare supply chain data using SQL
- Perform data analysis using Python and Pandas
- Build machine learning models for late delivery prediction
- Generate late delivery probability for each order
- Classify orders into Low, Medium, and High Risk
- Identify major risk drivers
- Create interactive Tableau dashboards
- Build an operational action queue for high-risk orders

---

## Tools & Technologies

- **SQL** – Data cleaning, validation, and analysis
- **Python**
- **Pandas**
- **NumPy**
- **Scikit-learn**
- **Logistic Regression**
- **Random Forest**
- **Tableau**
- **Jupyter Notebook**

---

## Machine Learning Workflow

1. Data Cleaning
2. Missing Value Check
3. Data Validation
4. Feature Selection
5. Categorical Encoding
6. Train-Test Split
7. Feature Scaling
8. Logistic Regression Model
9. Random Forest Model
10. Model Evaluation
11. Probability Prediction
12. Risk Classification
13. Feature Importance Analysis

---

## Model Performance

### Logistic Regression

- Accuracy: **69.24%**
- Precision: **84.55%**
- Recall: **53.73%**
- F1 Score: **65.70%**
- ROC-AUC: **73.19%**

### Random Forest

- Accuracy: **66.03%**
- Precision: **72.24%**
- Recall: **61.78%**
- F1 Score: **66.60%**
- ROC-AUC: **71.51%**

Random Forest was selected for operational risk scoring because it achieved higher recall and identified more potentially delayed orders.

---

## Risk Classification

Orders were classified based on predicted late-delivery probability:

| Risk Category | Probability |
|---|---|
| Low Risk | 0% – 40% |
| Medium Risk | 40% – 70% |
| High Risk | 70% – 100% |

---

## Key Risk Drivers

The Random Forest model identified several important factors influencing late-delivery risk, including:

- Order Profit Per Order
- Order Item Profit Ratio
- Shipping Mode
- Scheduled Shipping Days
- Order Item Total
- Order Item Discount
- Order Item Discount Rate
- Sales
- Customer Segment

---

## Tableau Dashboard
(https://public.tableau.com/app/profile/rupesh.malkapure5108/viz/MachineLearningbasedLateDeliveryRiskPredictioninGlobalSupplyChainOperations_17912208927980/Dashboard1)

The Tableau dashboard is divided into three sections:

### 1. Overview & Order Risk

- Late Delivery Probability
- High-Risk Order Count
- Risk Category
- Individual Order Risk Score
- Overall Risk Distribution
- Key Risk Drivers

### 2. Region & Mode Risk Analysis

- Risk Heatmap by Region
- Shipping Mode Risk Comparison

### 3. Operations Action Panel

- Orders Requiring Immediate Attention
- High-Risk Order List
- Risk-Based Prioritization

Navigation buttons are used to move between dashboards.

---

## Dashboard Filters

The dashboard includes filters such as:

- Order Region
- Market
- Shipping Mode
- Customer Segment
- Order ID
- Risk Category

---

## Repository Files

This repository contains:

- **SQL File** – Data cleaning and analysis queries
- **Python / Pandas File** – Data preprocessing and machine learning workflow
- **Tableau Workbook (.twb)** – Interactive dashboard
- **CSV Dataset** – Project dataset
- **PDF Report** – Project documentation and findings

---

## Key Outcome

The project creates a data-driven early-warning system that helps supply chain teams identify potentially delayed orders and prioritize operational actions.

The final solution combines:

**SQL → Python / Machine Learning → Risk Scoring → Tableau Dashboard → Operational Decision Support**

---

## Author

**Rupesh Sunilrao Malkapure**

MBA – Agri-Business Management  
B.Sc. Agriculture  

Skills: SQL | Python | Pandas | Tableau | Data Analysis | Machine Learning | Business Analytics
