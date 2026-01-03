**Welcome 👋**

Welcome to my data analytics portfolio project repository. This project is part of my effort to demonstrate end-to-end data analytics skills, from data preparation and transformation to visualization and insight generation.

Each repository in my portfolio represents a complete, business-focused project, designed to reflect real-world analytical scenarios and decision-making. The emphasis is on quality, clarity, and practical impact, rather than the number of projects.

This repository can be used as a reference for how I approach data analysis, structure my work, and communicate insights using tools such as SQL Server, Power BI, and Python.

Thank you for taking the time to review my work.


# Project Background
Our business operates on a subscription-based model, where customers are billed monthly based on their selected services and contract terms. Because revenue is driven by recurring subscriptions, customer retention plays a critical role in maintaining profitability and long-term growth.

Key business metrics tracked include Total Customers, Churn Rate, New Joiners, Monthly Charges, and Customer Tenure. 

The customer churn dataset combines demographic, geographic, service, and billing information to support churn analysis and retention strategies.

Insights and recommendations are provided on the following key areas:

- **Demographic Insights:** Analyze customer characteristics such as gender, age group, and tenure to identify segments with higher churn risk.
- **Geographic Insights:** Examine churn patterns across regions to uncover location-based trends and potential service or competition-related issues.
- **Payment & Account Insights:** Evaluate the impact of contract type, payment method, billing preferences, and monthly charges on customer churn.
- **Service Usage Insights:** Assess how service type, add-ons, and bundling influence customer retention and churn behavior.

The SQL queries used to inspect and clean the data for this analysis can be found here [link].

Targed SQL queries regarding various business questions can be found here [link].

An interactive Tableau dashboard used to report and explore sales trends can be found here [link].



# Data Structure & Initial Checks

The company’s database consists of four core tables with a total of 6,419 records, designed to support customer churn analysis. A description of each table is as follows:

**Table 1** – **Customer Info:** Demographic and geographic details

**Table 2** – **Account & Billing:** Contract, payment, and billing information

**Table 3** – **Services:** Service subscriptions and add-ons

**Table 4** – **Churn Status:** Customer churn indicators

All tables are linked using a unique customer ID.

[Entity Relationship Diagram here]



# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Category 1:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)
