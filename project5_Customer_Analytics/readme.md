````
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
- Class Imbalance Handling with SMOTE

### 📊 Class Imbalance Visualization
![Churn Distribution](https://github.com/Aparna10010/Customer_Analytics_Project/blob/main/Screenshot%202025-07-19%20185325.png)

> Churn: `1 = Yes`, `0 = No` — imbalance addressed using **SMOTE**

---

### 2. **Baseline Model Training**
- Logistic Regression
- XGBoost
- Evaluated using Confusion Matrix & AUC-ROC

### 3. **Handling Imbalance with SMOTE**
- Applied SMOTE
- Re-trained Logistic Regression, Decision Tree, Random Forest, XGBoost
- Compared model performance before/after balancing

### 4. **Neural Network Modeling**
- Feed-Forward Neural Network (FFNN) using Keras
- Trained on balanced dataset

### 5. **Customer Segmentation**
- K-Means (Elbow Method & Silhouette Score)
- DBSCAN
- Optimal clusters comparison

### 6. **Model Logging with MLflow**
- Logged all models and hyperparameters
- Compared models using MLflow UI

### 7. **Hyperparameter Tuning**
- GridSearchCV (Sklearn models)
- KerasTuner (FFNN)
- Best model registered in MLflow

### 8. **Gradio Web App**
- Built an interactive UI using Gradio
- Integrated model predictions
- Logged app artifact in MLflow

▶ [Launch Gradio App Live](https://c07f471745468683be.gradio.live/)  
📸 [Gradio UI](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Gradio%20UI.png)

### 9. **Docker Containerization**
- Dockerized the entire app
- `Dockerfile` included
- Currently debugging container execution issue

---

### 10. **CI/CD Integration (GitHub Actions)**

Integrated GitHub Actions to automate testing and container build on code push. Status:

| CI/CD Feature        | Status         |
|----------------------|----------------|
| Workflow Setup       | ✔️ Completed   |
| Python Setup         | ❌ Failed initially (wrong version `3.1`) |
| Dependency install   | ✔️ Successful  |
| Docker build         | ❌ Under debugging |
| CI pipeline          | 🚧 In progress |

> GitHub Actions config created and tested multiple times. Workflow reaches Docker build step, but fails due to local path issues and unavailable `.tar.gz` packages. Debugging continues.

#### 📂 Workflow YAML File (`.github/workflows/main.yml`)

```yaml
name: CI/CD Workflow

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout code
      uses: actions/checkout@v3

    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: '3.10'

    - name: Install dependencies
      run: |
        pip install --upgrade pip
        pip install -r requirements.txt

    - name: Run tests
      run: echo "Tests placeholder"

    - name: Build Docker image
      run: docker build -t customer-analytics-app .
````

#### ❌ Failed Workflow Runs

| Attempt | Issue                                       | Screenshot                                                     |
| ------- | ------------------------------------------- | -------------------------------------------------------------- |
| 1       | Python version '3.1' not found              | ![Python version error](.screenshots/python_version_error.png) |
| 2-11    | Docker build failed (missing files / paths) | ![Docker fail](.screenshots/docker_build_error.png)            |

> Screenshots stored under `.screenshots/` for documentation purposes.

---

## 🧰 Tools & Technologies

| Category       | Tools Used                                     |
| -------------- | ---------------------------------------------- |
| Language       | Python                                         |
| ML Libraries   | Scikit-learn, XGBoost, Keras, imbalanced-learn |
| Visualization  | Matplotlib, Seaborn                            |
| Clustering     | K-Means, DBSCAN                                |
| Model Tracking | MLflow                                         |
| Deployment     | Gradio, Docker                                 |
| CI/CD          | GitHub Actions                                 |

---

## 📸 Screenshots

* MLflow Run Page
  ![ML Flow Run](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Run%20page.png)
* MLflow Registry
  ![Model Register](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Model%20Registry.png)
* MLflow Metrics
  ![Metrics](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/ML-Flow1.png)
* MLflow App Artifact
  ![App Artifact](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/ML-Flow5.png)

---

## ⚠️ Known Issues

* Dockerfile execution fails inside GitHub Actions (local context, missing `.tar.gz`)
* CI/CD workflow only partially executes
* Azure deployment not attempted due to verification limits

---

## ✅ Future Enhancements

* Complete Docker containerization and push to DockerHub
* Deploy on Azure or AWS
* Add tests and monitoring tools
* Convert Gradio app into Streamlit dashboard with business metrics

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

---

## 👤 Author

**Aparna Sharma**
*Data Science Enthusiast*
[GitHub](https://github.com/Aparna10010) | [LinkedIn](https://www.linkedin.com/in/apsh) | [Email](mailto:aparnasharma10010@gmail.com)

```



