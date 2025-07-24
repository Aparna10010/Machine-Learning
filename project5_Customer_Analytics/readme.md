---

# 🧠 Customer Analytics Project

## 📌 Overview

**Customer Analytics** is a critical component of modern business intelligence. It involves gathering, processing, and analyzing customer data to understand behavior, segment users, and predict future actions. This helps businesses make data-driven decisions, personalize marketing strategies, improve customer retention, and ultimately increase revenue.

This end-to-end project focuses on building a robust **Customer Analytics system** using machine learning and deep learning. It covers the complete data science lifecycle:

* Data preprocessing and visualization
* Model training and evaluation (before and after class balancing)
* Clustering for customer segmentation
* Neural network modeling
* Model logging with MLflow
* App deployment using Gradio
* Containerization using Docker
* CI/CD setup using GitHub Actions

---

## 🧪 Problem Statement

Businesses often struggle with understanding and predicting customer behavior due to:

* Imbalanced datasets
* Lack of robust segmentation
* Ineffective model tracking and deployment

This project solves these problems by:

* Implementing class balancing techniques (SMOTE)
* Using ML and DL models for prediction
* Segmenting customers using clustering algorithms
* Logging and versioning models with MLflow
* Deploying a user-friendly Gradio app
* Enabling containerized deployment (Docker)

---

## 🔁 Full Pipeline Breakdown

### 1. **Data Preprocessing**

* **Load dataset**
* **Clean and transform data**
* **Exploratory Data Analysis (EDA)** to find hidden patterns
* **Data scaling** and **label encoding**

---

### 2. **Initial Modeling (Baseline Models)**

* Trained models on the **imbalanced dataset** using:

  * Logistic Regression
  * XGBoost
* Evaluated performance using:

  * Accuracy, Precision, Recall
  * Confusion Matrix, AUC-ROC Curve

---

### 3. **Class Imbalance Handling**

* Applied **SMOTE (Synthetic Minority Oversampling Technique)** to balance the dataset
* Re-trained the following models on balanced data:

  * Logistic Regression
  * Decision Tree
  * Random Forest
  * XGBoost
* Evaluated all models and visualized results

---

### 4. **Neural Network Training**

* Built a **Feed-Forward Neural Network (FFNN)** using Keras
* Trained and evaluated on SMOTE-balanced data
* Visualized metrics and results

---

### 5. **Customer Segmentation**

* Applied **K-Means Clustering** with Elbow Method & Silhouette Score
* Used **DBSCAN** for density-based clustering
* Mapped K-Means clusters to initialize DBSCAN for comparison
* Saved clustering models for reuse

---

### 6. **Model Logging with MLflow**

* Logged all models using a single reusable function
* Included both baseline and SMOTE-trained models
* Tracked model parameters, metrics, and artifacts

---

### 7. **Hyperparameter Tuning**

* Tuned models using grid/randomized search:

  * Logistic Regression
  * Decision Tree
  * Random Forest
  * XGBoost
  * FFNN (using **Keras Tuner**)
* Logged all tuned models in MLflow
* Verified that tuned models gave similar or better accuracy

---

### 8. **Gradio App Deployment**

* Built a **Gradio-based web app** for predictions
* Deployed and launched from local system
* Logged the app interface and interactions in MLflow
* Registered the final model and its version in the MLflow Model Registry
* Implemented CI/CD pipeline using **GitHub Actions** 

---

### 9. **Docker Containerization**

* Created a custom **Dockerfile**
* Packaged the ML pipeline and Gradio app into a Docker container
* Facing minor execution issue with Dockerfile (under resolution)

---

## 🧰 Tech Stack & Tools

| Category         | Tools Used                              |
| ---------------- | --------------------------------------- |
| Programming      | Python                                  |
| Data Analysis    | Pandas, NumPy                           |
| Visualization    | Matplotlib, Seaborn                     |
| Modeling         | Scikit-learn, XGBoost, TensorFlow/Keras |
| Clustering       | K-Means, DBSCAN                         |
| Balancing        | SMOTE (from imbalanced-learn)           |
| Model Tracking   | MLflow                                  |
| App Deployment   | Gradio                                  |
| Containerization | Docker                                  |
| CI/CD            | GitHub Actions                          |

---

## 📸 Screenshots

* MLflow experiment logs (metrics, artifacts, model versions)
* Gradio UI demo logged in MLflow
* Sample confusion matrices and AUC curves
* GitHub Actions configuration screenshot 

---

## ⚠️ Known Issues

* Dockerfile has a small execution error while launching app (under fix)
* Azure deployment not done due to lack of valid credit card for subscription

---

## ✅ Future Enhancements

* Fix Dockerfile and enable full container launch
* Deploy the app on **Azure** or **AWS EC2**
* Integrate email or webhook alerts from MLflow
* Add a dashboard using Streamlit or Power BI for business users

---

## 📂 How to Run the Project

```bash
# 1. Clone the repository
git clone <repo-url>

# 2. Navigate to the project directory
cd customer-analytics

# 3. Create a virtual environment and activate it
python -m venv venv
source venv/bin/activate  # For Linux/Mac
venv\Scripts\activate     # For Windows

# 4. Install requirements
pip install -r requirements.txt

# 5. Run the Gradio app
python app.py

# 6. (Optional) Build Docker container
docker build -t customer-analytics-app .
docker run -p 7860:7860 customer-analytics-app
```

---

## 🧑‍💻 Author

**Aparna Sharma**
*Data Science or Data Analyst*
| LinkedIn(https://www.linkedin.com/in/apsh?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app) 
| GitHub(https://github.com/Aparna10010)
| Email (aparnasharma10010@gmail.com)

---

