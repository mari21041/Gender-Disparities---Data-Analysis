# Gender Disparities Analysis in Latin America – HDI Dataset

## Project Overview
This project analyzes gender disparities in **Latin America** using Human Development Index (HDI) data.  
The work was commissioned as part of a **business case** for the *(fictional)* development agency **SheLeads** to help identify **where to allocate resources** for maximum impact on gender equality in the region.

The goal was to:
- Measure the **gap between female and male values** for various human development indicators.
- Visualize disparities across countries and indicators.
- Identify **priority countries and focus areas** for intervention.

---

## Data Source
The raw data was obtained from Kaggle:  
[Human Development Index Dataset – by iamsouravbanerjee](https://www.kaggle.com/datasets/iamsouravbanerjee/human-development-index-dataset)

---

## Data Processing Workflow
1. **Data Cleaning & Transformation (Python – Jupyter Notebook)**  
   - Removed missing/irrelevant entries.
   - Pivoted and reshaped the dataset for meaningful analysis.
   - Delimited the analysis to the last 10 years available on the data set.
   - Replaced missing values by the mean of the available values for the country in the last 10 years.
   - Prepared the dataset for visualization.

**Database Storage & Modeling (MySQL)**  
   - Created **Entity Relationship Model (ERM)** to define entities, attributes, and relationships.
   - Designed **Entity Relationship Diagram (ERD)** for visual representation of the database schema.
   - Implemented the database in MySQL and imported the cleaned dataset.  
   *(Database was not used directly for analysis in this project, but is part of the data infrastructure.)*

3. **Visualization & Analysis (Power BI)**  
   - Built interactive dashboards for exploration and decision-making.

---

## Dashboards & Visuals
The **Power BI** dashboard includes:
- **Map Visualization** – Geographic distribution of gender disparities.
- **Treemap** – Visual representation of gaps by indicator and country.
- **Bar Charts** – Gender gap per indicator and per country.
- **Heatmap Matrix** – Highlights countries and areas (indicators) requiring urgent intervention.
- **Time Series Analysis** - For the specific countries that would need intervention.

---

## Business Case Context
**Client:** *SheLeads – Development Agency*  
**Objective:** Use data-driven insights to allocate resources for improving gender equality in LATAM.  
The findings guide SheLeads on:
- Which **countries** need the most attention.
- Which **indicators** show the largest gender gaps.
- Where targeted interventions can yield the greatest impact.

---

## Final Deliverables
- **Cleaned & Processed Dataset** (CSV)
- **MySQL Database** with dataset
- **Power BI Dashboard**
- **Google Slides Presentation** summarizing:
  - Key findings
  - Visual insights
  - Actionable recommendations

Presentation link: [Google Slides – Gender Disparities in LATAM](https://docs.google.com/presentation/d/1CbUGACFEyqth5rBKVbayTf_g_Xf6tTc3lATvPJ-INR4/edit?slide=id.g374957d0174_0_1592)

---

## Tools & Technologies
- **Python** (pandas, numpy, matplotlib/seaborn)
- **Jupyter Notebook**
- **MySQL**
- **Power BI**
- **Google Slides**

---

##  How to Use This Repository
1. **Data Preparation**
   - Access `data_cleaning.ipynb` for transformation and cleaning steps.
   - Use `cleaned_data.csv` for further analysis.

2. **Database**
   - Import `schema.sql` into MySQL to recreate the database.
   - Load `cleaned_data.csv` into the database for querying.

3. **Dashboard**
   - Open the Power BI `.pbix` file to explore the interactive dashboards.

4. **Presentation**
   - Review the Google Slides for summarized insights and recommendations.

---

## Key Insights
- Significant disparities exist in certain **education** and **labor market** indicators.
- Some countries consistently show **higher gaps** across multiple indicators.
- Resource allocation should focus on **multi-indicator improvement** in a few high-gap countries.

---

## License
This project is for **educational and analytical purposes** only.  
The dataset is provided under Kaggle’s terms of use.

---

**Developed by:** *[Marianne Filbig]*  
For: **SheLeads Development Agency**
