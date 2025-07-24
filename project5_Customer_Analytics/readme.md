
---

````markdown
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
- Data cleaning, feature engineering, and EDA
- Visualized class imbalance
- Applied SMOTE for oversampling

![Churn Distribution](https://github.com/Aparna10010/Customer_Analytics_Project/blob/main/Screenshot%202025-07-19%20185325.png)

---

### 2. **Model Training**
- Trained: Logistic Regression, Decision Tree, Random Forest, XGBoost
- Also built a **Feed-Forward Neural Network (FFNN)** using Keras
- Compared model performance before and after SMOTE

---

### 3. **Customer Segmentation**
- Applied **K-Means** and **DBSCAN**
- Used Elbow & Silhouette methods for tuning

---

### 4. **Model Tracking with MLflow**
- Logged experiments, metrics, and model artifacts
- Used MLflow Model Registry

📸 MLflow Screenshots:
![Run Page](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Run%20page.png)
![Model Registry](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Model%20Registry.png)
![Metrics Demo](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/ML-Flow1.png)

---

### 5. **Web App with Gradio**
- Created a lightweight UI with Gradio for predictions

▶ [Launch Gradio App Live](https://c07f471745468683be.gradio.live/)  
📸 [Gradio Screenshot](https://github.com/Aparna10010/Machine-Learning/blob/main/project5_Customer_Analytics/Gradio%20UI.png)

---

### 6. **Docker Containerization**
- Built and tested Docker container locally
- Dockerfile provided

```bash
docker build -t customer-analytics-app .
docker run -p 7860:7860 customer-analytics-app
````

---

### 7. **CI/CD with GitHub Actions**

* Configured GitHub Actions to run on every push
* Steps include:

  * Checkout
  * Python setup
  * Dependency installation
  * App execution

✅ Workflow YAML: `.github/workflows/main.yml`

⚠️ **Current Issue**: Some packages like `cudf`, `colabtools`, and certain `.tar.gz` or platform-specific wheels fail in GitHub-hosted runners.
✅ Filtered installation now works using:

```bash
grep -Ev "cudf|colabtools|\\.tar\\.gz" requirements.txt > filtered-requirements.txt
pip install -r filtered-requirements.txt
```

📸 **GitHub Actions - Failed Run Example:**
![GitHub Action Failed](https://github.com/Aparna10010/Customer_Analytics_Project/blob/main/Screenshot%202025-07-24%20221625.png)

✅ Will update on fix & successful deployment.

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

## 📂 How to Run the Project

```bash
# Clone the repo
git clone https://github.com/Aparna10010/Customer_Analytics_Project.git
cd Customer_Analytics_Project

# Create & activate virtual environment
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\Scripts\activate     # Windows

# Install dependencies (filtered)
grep -Ev "cudf|colabtools|\\.tar\\.gz" requirements.txt > filtered-requirements.txt
pip install -r filtered-requirements.txt

# Run the Gradio app
python app.py
```

---

## ✅ Future Enhancements

* Finalize Docker build & push to Docker Hub
* Deploy on Azure or AWS (currently pending)
* Extend with Streamlit dashboard or BI integrations
* Add monitoring (e.g., Prometheus, Grafana)

---

## 👤 Author

**Aparna Sharma**
*Data Science Enthusiast*
[GitHub](https://github.com/Aparna10010) | [LinkedIn](https://www.linkedin.com/in/apsh) | [Email](mailto:aparnasharma10010@gmail.com)








