
import gradio as gr
import pickle
import numpy as np
import pandas as pd

# Load saved components
with open("XGBoost_tuned_compressed.z", "rb") as f:
    model = pickle.load(f)
with open("scaler.pkl", "rb") as f:
    scaler = pickle.load(f)
with open("rfe_selector.pkl", "rb") as f:
    rfe = pickle.load(f)

def predict_churn(
    senior_citizen, tenure, device_protection, tech_support,
    contract, total_charges, payment_method, monthly_charges,
    streaming_movies, partner, internet_service
):
    try:
        # Step 1: Manual encodings to match training
        label_maps = {
            'DeviceProtection': {'No': 0, 'Yes': 1},
            'TechSupport': {'No': 0, 'Yes': 1},
            'Contract': {'Month-to-month': 0, 'One year': 1, 'Two year': 2},
            'PaymentMethod': {
                'Electronic check': 0, 'Mailed check': 1,
                'Bank transfer (automatic)': 2, 'Credit card (automatic)': 3
            },
            'StreamingMovies': {'No': 0, 'Yes': 1},
            'Partner': {'No': 0, 'Yes': 1},
            'InternetService': {'DSL': 0, 'Fiber optic': 1, 'No': 2}
        }

        row = {
            'SeniorCitizen': int(senior_citizen),
            'tenure': float(tenure),
            'DeviceProtection': label_maps['DeviceProtection'][device_protection],
            'TechSupport': label_maps['TechSupport'][tech_support],
            'Contract': label_maps['Contract'][contract],
            'TotalCharges': float(total_charges),
            'PaymentMethod': label_maps['PaymentMethod'][payment_method],
            'MonthlyCharges': float(monthly_charges),
            'StreamingMovies': label_maps['StreamingMovies'][streaming_movies],
            'Partner': label_maps['Partner'][partner],
            'InternetService': label_maps['InternetService'][internet_service]
        }

        # Step 2: Build full input in correct order
        df = pd.DataFrame([row])[[
            'SeniorCitizen','tenure','DeviceProtection','TechSupport','Contract','TotalCharges',
            'PaymentMethod','MonthlyCharges','StreamingMovies','Partner','InternetService'
        ]]

        # Step 3: RFE transform
        selected = rfe.transform(df)

        # Step 4: Scale the selected features
        scaled = scaler.transform(selected)

        # Step 5: Predict
        prediction = random_search_xgb.predict(scaled)[0]

        return "❌ Churn" if prediction == 1 else "✅ Not Churn"

    except Exception as e:
        return f"⚠️ Error: {str(e)}"

demo = gr.Interface(
    fn=predict_churn,
    inputs=[
        gr.Checkbox(label="Senior Citizen"),
        gr.Number(label="Tenure"),
        gr.Dropdown(['No', 'Yes'], label="Device Protection"),
        gr.Dropdown(['No', 'Yes'], label="Tech Support"),
        gr.Dropdown(['Month-to-month', 'One year', 'Two year'], label="Contract"),
        gr.Number(label="Total Charges"),
        gr.Dropdown(['Electronic check', 'Mailed check', 'Bank transfer (automatic)', 'Credit card (automatic)'], label="Payment Method"),
        gr.Number(label="Monthly Charges"),
        gr.Dropdown(['No', 'Yes'], label="Streaming Movies"),
        gr.Dropdown(['No', 'Yes'], label="Partner"),
        gr.Dropdown(['DSL', 'Fiber optic', 'No'], label="Internet Service")
    ],
    outputs="text",
    title="📉 Customer Churn Predictor",
    description="11-input model with RFE + scaler + Trained and Tuned XGBoost"
)

demo.launch()
