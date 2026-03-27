# 🏥 Healthcare RCM Data Platform on GCP

This project demonstrates an **industry-standard end-to-end Data Engineering pipeline** built on **Google Cloud Platform (GCP)** for **Revenue Cycle Management (RCM)** in the healthcare domain.

It simulates real-world healthcare data workflows by ingesting, transforming, and modeling data from multiple sources to enable **analytics, reporting, and operational insights**.

---

## 🚀 Project Overview

Healthcare organizations rely on efficient data pipelines to manage:

- Patient records (EMR)
- Insurance claims processing
- Billing and revenue tracking

This project builds a **scalable data platform** that:

- Centralizes healthcare data
- Transforms raw data into analytics-ready datasets
- Enables KPI reporting for financial and operational insights

---

## 🏗️ Architecture

**Medallion Architecture (Bronze → Silver → Gold):**

- **Bronze Layer:** Raw ingestion from source systems  
- **Silver Layer:** Cleaned and standardized data  
- **Gold Layer:** Business-level aggregated tables for analytics  

---

## ⚙️ Tech Stack

- **Google Cloud Storage (GCS)** → Data Lake (raw & processed data)  
- **BigQuery** → Data Warehouse & analytics engine  
- **Dataproc (Apache Spark)** → Distributed data processing  
- **Cloud Composer (Airflow)** → Workflow orchestration  
- **Cloud SQL (MySQL)** → Transactional EMR data  
- **GitHub + Cloud Build** → CI/CD pipelines  

---

## 🔄 Data Pipeline Flow

1. **Ingestion**
   - EMR data from hospitals
   - Claims data
   - CPT codes
   - NPI datasets

2. **Storage**
   - Raw data stored in GCS (Bronze)

3. **Processing**
   - Dataproc (Spark) transforms data into Silver layer  
   - Data cleaning, normalization, and joins applied  

4. **Modeling**
   - SCD Type 2 implementation for historical tracking  
   - Common Data Model (CDM) applied  

5. **Serving**
   - Gold tables created in BigQuery  
   - Optimized for analytics and BI tools  

6. **Orchestration**
   - Airflow DAGs automate end-to-end workflows  

7. **CI/CD**
   - Automated deployment of pipelines and workflows  

---

## 🧠 Key Data Engineering Concepts

- ✅ Medallion Architecture (Bronze/Silver/Gold)  
- ✅ Slowly Changing Dimensions (SCD Type 2)  
- ✅ Incremental Data Processing  
- ✅ Metadata-Driven Pipelines  
- ✅ Common Data Model (CDM)  
- ✅ Data Quality Checks & Validation  
- ✅ Logging & Monitoring  
- ✅ Error Handling & Retry Mechanisms  
- ✅ CI/CD for Data Pipelines  

---

## 📊 Data Sources

- Electronic Medical Records (EMR)  
- Claims datasets  
- CPT (Procedure Codes)  
- NPI (Provider Data)  

---

## 📈 Expected Outcomes

- Scalable ETL pipelines for healthcare data  
- Clean and structured data warehouse in BigQuery  
- Analytics-ready datasets for:
  - Revenue tracking  
  - Claims processing efficiency  
  - Financial KPIs  

---

---

## 🔧 How to Run (High Level)

1. Set up GCP services (GCS, BigQuery, Dataproc, Composer)  
2. Upload raw data to GCS  
3. Deploy Airflow DAGs (Composer)  
4. Run ETL pipelines  
5. Query Gold tables in BigQuery  

---

## 💼 Why This Project Matters

This project showcases **real-world Data Engineering skills**:

- Building scalable cloud data platforms  
- Designing production-grade ETL pipelines  
- Applying industry best practices used in:
  - FinTech  
  - Healthcare  
  - Big Tech  

---

## 🎯 Who This Is For

- Data Engineers (aspiring & experienced)  
- Software Engineers transitioning to Data Engineering  
- Anyone preparing for Data Engineering interviews  

---

## 🧩 Future Improvements

- Add dbt for transformation layer  
- Integrate streaming (Kafka / PubSub)  
- Add real-time dashboards (Looker / Power BI)  
- Implement data quality frameworks (Great Expectations)  

---

## 👤 Author

**Eric J. Brown**  
Software Engineer | Data Platform & Observability  
GitHub: https://github.com/ericbrown379
