

---
# ✈️ Airline Customer Satisfaction Prediction

This project focuses on predicting whether an airline passenger is satisfied with their experience based on various in-flight and service-related features. It combines **SQL-based data exploration**, **feature engineering**, **machine learning**, and **class imbalance handling** using **SMOTE**, all wrapped in a reusable ML pipeline.

---

## 🔍 Overview

- **Goal**: Predict customer satisfaction using airline service data  
- **Tech Stack**: Python, SQL, Pandas, Scikit-learn, Seaborn, Matplotlib  
- **ML Models**: Logistic Regression, Random Forest (with hyperparameter tuning)  
- **Imbalance Handling**: SMOTE  
- **Evaluation Metrics**: Accuracy, F1 Score, AUPRC  
- **Output**: Final model saved using `pickle` for future use or deployment

---

## 📁 Project Structure

```
📦 Airline-Customer-Satisfaction
├── data/
│   └── airline_data.csv              # Original dataset
├── sql/
│   └── queries.sql                   # SQL queries used for data insights
├── notebooks/
│   └── main_analysis.ipynb          # Complete analysis & model building
├── final_rf_pipeline.pkl            # Final trained ML pipeline (Scaler + SMOTE + RF)
├── summary_slides.pptx              # Summary presentation (optional)
└── README.md
```

---

## 📊 Key Highlights

✅ **Data Querying using SQL**:  
Initial filtering, aggregations, and insights using SQL.

✅ **Data Preprocessing**:
- Handling nulls, feature scaling
- Encoding categorical variables (One-Hot Encoding)
- Engineered features: `Total_Delay`, `avg_service_rating`, etc.

✅ **Visualization & Insights**:
- Service rating distributions
- Boxplot: Arrival delay vs Satisfaction
- Satisfaction vs Type of Travel, Gender, and Class

✅ **Modeling & Imbalance Handling**:
- Applied **SMOTE** to tackle imbalanced classes  
- Feature selection using **RFE**
- Compared **Logistic Regression** & **Random Forest**
- Tuned RF with **RandomizedSearchCV**
- Evaluated with **Classification Report** + **AUPRC Curve**

✅ **Final Model**:
- Packaged as a complete pipeline (`Scaler + SMOTE + RF`)
- Exported using `pickle` for future predictions

---

## 📈 Model Performance

| Model                          | Accuracy | F1 Score (Class 1) | AUPRC |
|-------------------------------|----------|---------------------|--------|
| Logistic Regression (SMOTE)   | 84.1%    | 0.59                | 0.79   |
| Random Forest (SMOTE + Tuned) | **95.3%**| **0.84**            | **0.92** |

---

## 🔧 How to Use the Model

```python
# Load the pipeline
with open("final_rf_pipeline.pkl", "rb") as f:
    model = pickle.load(f)

# Predict on new/test data
predictions = model.predict(X_test)
```

---

## 🚀 Future Improvements

- Deploy the model via **Streamlit** or **Flask**
- Integrate with **real-time flight data**
- Experiment with advanced models (e.g., XGBoost, LightGBM)

---

## 📬 Contact

📧 aparnasharma10010@gmail.com
🔗 [LinkedIn](www.linkedin.com/in/apsh)

---












