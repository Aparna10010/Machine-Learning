
---

# 🏡 California Housing Price Prediction

This project demonstrates a machine learning workflow using the **California Housing** dataset available from `sklearn.datasets`. The primary objective is to predict housing prices using various regression models, along with data exploration and hyperparameter tuning.

---

## 📚 Project Overview

This repository includes:

* 📊 **Exploratory Data Analysis (EDA)**
* ⚙️ **Model Training with**:

  * Linear Regression
  * Decision Tree Regressor
  * Random Forest Regressor
* 🔧 **Hyperparameter Tuning** (RandomizedSearchCV & GridSearchCV) on the Random Forest model
* 📈 **Performance Evaluation** using metrics such as RMSE, MAE, and R²

---

## 📁 Dataset

* **Name**: California Housing Dataset
* **Source**: `sklearn.datasets.fetch_california_housing()`
* **Features**: 8 numerical features (e.g., median income, average rooms, etc.)
* **Target**: Median house value in California districts

---

## 🔍 EDA Highlights

* Distribution plots of features and target variable
* Correlation heatmap to understand relationships between features
* Scatter plots for key variables like Median Income vs House Value

---

## 🤖 Models Used

| Model                   | Notes                                  |
| ----------------------- | -------------------------------------- |
| Linear Regression       | Simple baseline model                  |
| Decision Tree Regressor | Non-linear, interpretable model        |
| Random Forest Regressor | Ensemble model with better performance |

---

## 🔧 Hyperparameter Tuning

Used **RandomizedSearchCV** and **GridSearchCV** to fine-tune Random Forest parameters like:

* `n_estimators`
* `max_depth`
* `min_samples_split`
* `min_samples_leaf`

---

## 📊 Evaluation Metrics

Each model is evaluated using:

* Mean Absolute Error (MAE)
* Mean Squared Error (MSE)
* Root Mean Squared Error (RMSE)
* R² Score

---

## 🛠️ Tech Stack

* Python 3.x
* scikit-learn
* pandas
* numpy
* matplotlib / seaborn
* Jupyter Notebook

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/your-username/california-housing-ml.git
cd california-housing-ml
```

### 2. Install dependencies

It's recommended to use a virtual environment:

```bash
pip install -r requirements.txt
```

### 3. Run the notebook

```bash
jupyter notebook California_Housing_Modeling.ipynb
```

---

## 📈 Results

The Random Forest model with tuned hyperparameters outperformed other models in predictive accuracy, making it the best choice for this regression task.

---

## 📎 License

This project is licensed under the MIT License.

---

## 🙌 Acknowledgements

* The Scikit-learn team for the dataset and tools
* Open-source contributors for libraries used in this project

---
