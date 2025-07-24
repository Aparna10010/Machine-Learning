# 🧠 Customer Analytics Project

## 📊 Introduction

In today’s data-driven market, understanding customer behavior is critical for improving user experience, increasing engagement, and driving business growth. **Customer Analytics** involves collecting, processing, and analyzing customer data to gain insights into purchasing patterns, segmentation, churn prediction, and targeting strategies.

This end-to-end project showcases a complete machine learning workflow that helps businesses:
- Understand customer behavior using **exploratory data analysis**
- Handle **imbalanced data** with SMOTE
- Train and evaluate various **ML and deep learning models**
- Perform **customer segmentation** using clustering
- Log and track models using **MLflow**
- Build a web interface using **Gradio**
- Containerize the app using **Docker**
- Integrate with **GitHub Actions** for CI/CD

---

## 🧪 Objective

Build a production-ready pipeline for customer analytics that:
1. Predicts customer behavior using multiple ML models
2. Handles class imbalance with oversampling
3. Segments customers using clustering techniques
4. Deploys the model via a user-friendly Gradio interface
5. Supports containerization and version tracking

---

## 🚀 Project Pipeline

### 1. **Data Preparation**
- Loaded dataset
- Data cleaning & feature engineering
- Exploratory Data Analysis (EDA)
- Feature scaling and label encoding
- Data visualization for pattern discovery

### 2. **Baseline Model Training**
- Trained initial models:
  - Logistic Regression
  - XGBoost
- Evaluated using metrics:
  - Confusion Matrix
  - AUC-ROC Curve
- Visualized predictions

### 3. **Handling Imbalance with SMOTE**
- Applied **SMOTE** for oversampling minority class
- Re-trained models:
  - Logistic Regression
  - Decision Tree
  - Random Forest
  - XGBoost
- Compared model performance before and after balancing

### 4. **Neural Network Modeling**
- Built a **Feed-Forward Neural Network (FFNN)** using Keras
- Trained on SMOTE-balanced dataset
- Evaluated and visualized model results

### 5. **Customer Segmentation**
- Applied clustering algorithms:
  - K-Means (with Elbow Method & Silhouette Score)
  - DBSCAN
- Used K-Means to get optimal clusters for DBSCAN comparison
- Saved models for reuse

### 6. **Model Logging with MLflow**
- Created a single reusable function to log:
  - Baseline models
  - SMOTE-balanced models
  - Tuned models
- Tracked model metrics, parameters, and artifacts

### 7. **Hyperparameter Tuning**
- Tuned all models using:
  - Logistic Regression
  - Decision Tree
  - Random Forest
  - XGBoost
  - FFNN (with Keras Tuner)
- Logged and compared results in MLflow

### 8. **Gradio Web App**
- Created an interactive app using **Gradio**
- Launched the app locally
- Logged the app to MLflow with screenshots
- Registered the final model with MLflow Model Registry

### 9. **Docker Containerization**
- Built a **Dockerfile** to package the app
- Created a container for deployment
- (⚠️ Currently debugging a minor Docker run issue)

### 10. **CI/CD Integration**
- Added GitHub Actions for CI/CD
- (✔️ Workflow added, ⚠️ Docker action under debugging)

---

## 🧰 Tools & Technologies

| Category         | Tools Used                                         |
|------------------|----------------------------------------------------|
| Language         | Python                                              |
| ML Libraries     | Scikit-learn, XGBoost, Keras, imbalanced-learn      |
| Visualization    | Matplotlib, Seaborn                                |
| Clustering       | K-Means, DBSCAN                                    |
| Model Tracking   | MLflow                                              |
| Deployment       | Gradio, Docker                                     |
| CI/CD            | GitHub Actions                                     |

---

## 📷 Screenshots

- MLflow Experiments (metrics, models, parameters)
- Gradio App UI
- Dockerfile structure
- GitHub Actions YAML config

---

## ⚠️ Known Issues

- Dockerfile execution bug (under fix)
- Azure deployment not complete due to lack of credit card for validation

---

## ✅ Future Enhancements

- Fix Docker execution and publish to Docker Hub
- Deploy app on Azure / AWS
- Extend with Streamlit dashboard or BI tools
- Add monitoring tools (e.g., Prometheus, Grafana)

---

## 📂 How to Run the Project

```bash
# Clone the repo
git clone <repo-url>

# Navigate to project folder
cd customer-analytics

# Create and activate a virtual environment
python -m venv venv
source venv/bin/activate  # On Linux/Mac
venv\Scripts\activate     # On Windows

# Install dependencies
pip install -r requirements.txt

# Run the Gradio app
python app.py

# To build and run Docker container
docker build -t customer-analytics-app .
docker run -p 7860:7860 customer-analytics-app
```
👤 Author
**Aparna Sharma**
 Data Science Enthusiast
GitHub | LinkedIn | Email

