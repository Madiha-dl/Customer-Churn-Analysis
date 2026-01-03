**Customer Churn Analysis-Internet Service Provider**

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


# Data Structure & Initial Checks

The company’s database consists of four core tables with a total of 6,419 records, designed to support customer churn analysis. A description of each table is as follows:

**Table 1** – **Customer Info:** Demographic and geographic details

**Table 2** – **Account & Billing:** Contract, payment, and billing information

**Table 3** – **Services:** Service subscriptions and add-ons

**Table 4** – **Churn Status:** Customer churn indicators

All tables are linked using a unique customer ID.

<img width="804" height="1508" alt="ERD2" src="https://github.com/user-attachments/assets/98533712-76f5-42e8-a91d-3fbb8732da6a" />




# Executive Summary

### Overview of Findings

Analysis of ISP customers revealed a total churn of 1,732, resulting in a 27% churn rate. 
The data highlights that month-to-month contract holders, fiber internet users, and customers paying via mailed check are at the highest risk of leaving as competitor had better devices and made better offers.

Churn also varies across demographics and regions: older customers and those in Jammu & Kashmir, Assam, and Jharkhand have higher churn rates, while service adoption and bundling—such as internet service, device protection, and paperless billing—impact retention.

![Churn_analysis_page-0001](https://github.com/user-attachments/assets/e9923e35-b2cf-4fc1-966a-bf5ea055a831)




# Insights Deep Dive
### Overall churn profile:
-Total customers are 6,418, with 1,732 churned customers, giving an overall churn rate of about 27%.
-New joiners are 411, indicating that recent acquisition is not yet offsetting total losses from churn.

* **High Churn Rate.** Overall churn rate is high at 27%, meaning roughly 1 in 4 customers leave, which signals a significant revenue risk if not addressed.
  
* **Retention Initiatives.** The dashboard shows 1,732 churned customers out of 6,418, suggesting that retention initiatives could have a large impact even with modest improvements in churn.
  
* **New Joiners.** New joiners (411 customers) are substantially lower than total churned customers (1,732), so the current customer base would shrink over time without better retention.
  
* **Summary.** The churn summary highlights that both acquisition and retention metrics must be tracked together, because high churn can quickly erode growth from new sign‑ups.

[A high‑level KPI card and summary bar showing total customers, churned customers, new joiners, and overall churn rate.]


### Demographics and Geography:
-Female customers churn more in absolute numbers (around 1,111) than males (around 621), reflecting the underlying customer mix as well as potential segment‑specific issues.
-Top‑5 high‑churn states include Jammu & Kashmir and Assam, with Jammu & Kashmir showing a churn rate close to 57%, much higher than other regions.

* **State Drivers.** Churn is higher in some states, with Jammu & Kashmir reaching about 57% churn, indicating strong location‑specific drivers such as network quality or competitive intensity.
  
* **Gender Distribution.** The gender chart shows more churned females (about 1,111) than males (about 621), which may mirror the overall gender distribution but still flags the need to segment interventions by gender.
  
* **Age Groups.** Churn by age group peaks in the 20–35 and 36–50 bands, where churn rates hover around 23–32%, showing that core working‑age customers are more likely to leave than very young or older groups.
  
* **Summary.** The age‑wise churn pattern suggests targeted offers and better experience for middle age groups could meaningfully reduce overall churn because these groups represent a large share of total customers.
  
[Bar charts for churn by gender, age group, and state, with labels for churn counts and churn rate percentages.]


### Contract, Tenure, and Payment Behavior:
-Month‑to‑month contracts show a churn rate of about 47%, far higher than one‑year (around 11%) and two‑year contracts (around 3%).
-Customers paying by mailed check have a churn rate near 38%, higher than bank withdrawals or credit card payments (around 34% and 15% respectively).

* **Contracts.** Short‑term, month‑to‑month contracts are the riskiest, with churn rates roughly four times higher than one‑year contracts and more than ten times higher than two‑year contracts.
  
* **Tenures.** Longer tenures show slightly lower churn, with churn rates around 26–28% across tenure groups, and the largest customer pool (around 2.1K customers) staying beyond 24 months.
  
* **Payment Method.** Customers who pay by mailed check churn at approximately 38%, which is higher than bank withdrawal and much higher than credit card users at about 15%, suggesting payment friction may be tied to churn.
  
* **Summary.** Combining contract type with payment method helps isolate high‑risk profiles: month‑to‑month customers who also pay via mailed check are likely the most churn‑prone and should be prioritized for retention campaigns.

[Clustered bar or line charts for churn rate by contract type, tenure group, and payment method, highlighting the spike for month‑to‑month and mailed check customers.]


### Products, Services, and Churn Reasons:
-Fiber optic internet users have the highest churn rate at about 41%, compared with cable at 26%, DSL at 19%, and customers with no internet at around 8%.
-​The largest churn category is “Competitor” with 761 churns, followed by “Attitude” and “Dissatisfaction” categories around 300 each, and “Price”‑related churn around 196.

* **Highest Churn Internet Type.** Internet type is a strong churn driver: fiber optic customers churn at about 41%, implying that service quality, competition, or pricing in this segment need urgent attention.
  
* **Frequent Churning Services.** Service‑level features show that customers with no online security or backup churn more often, with “No” responses dominating categories such as OnlineSecurity (about 84.6%) and OnlineBackup (about 71.9%).
  
* **Leading Churn Reasons.** The leading churn reasons are competitor‑related (better devices, better offers, higher speeds, more data), totaling several hundred churns, which confirms strong competitive pressure in this market.
  
* **Smaller Factors.** Attitudinal issues (attitude of support person, attitude of service provider) together contribute over 300 churns, showing that customer experience and support quality are nearly as important as price and network factors.

[Stacked bars for churn by internet type and service add‑ons, plus a bar chart of churn counts by churn reason and churn category (Competitor, Attitude, Dissatisfaction, Price, Other).]



# Recommendations:

Based on the insights and findings above, we would recommend the stakeholder team to consider the following: 

**Contracts: reduce month‑to‑month churn**
* Introduce a "Lock‑in & Save" campaign targeting only month‑to‑month customers with a clear offer such as "Switch to 12‑month and save 10–15% on your bill for the next 6 months".
* Also, add smart upsell prompts in all high‑contact touchpoints (IVR hold messages, app banner, bill email footer) that show the exact savings from moving to 1‑ or 2‑year contracts for that customer’s current usage level.

**Payments: migrate away from mailed checks**
* Detect customers paying by mailed check and push a "Go digital & get rewarded" journey: 1‑time bill credit (e.g., equivalent to 1–2% of monthly charge) for switching to auto‑debit or card payment.
* Simplify sign‑up flows for auto‑pay (QR code on printed bills, deep link in SMS, "1‑click" change in the app) so the friction is minimal.

**Network and plans: fix high fiber‑optic churn**
* Map fiber‑optic churn hotspots by area and time, then prioritize field checks and capacity upgrades where churn and complaints are both high.
* For customers who raise repeated quality complaints, proactively offer temporary speed boosts or a bill discount tied to service‑improvement milestones to prevent them from churning.

**Competition: respond to better offers**
* Design win‑back and save‑offers: e.g., limited‑time upgrade to a higher‑speed plan at the same price or device upgrade vouchers for customers scoring high on churn risk and citing competitors as a reason.
* Systematically capture competitor plan details (price, speed, data, device offers) and maintain a simple internal "match or beat" matrix for front‑line agents to use when a customer mentions a competitor.
* Add exit‑survey logic in app/IVR that triggers a special retention offer if the customer selects a competitor‑related reason, allowing at least one last attempt to keep them.

**Experience: fix attitudinal and service issues**
* Launch mandatory soft‑skills and empathy training for all front‑line staff and tie part of their incentives to post‑interaction and churn outcomes in their portfolio.
* Implement "red‑flag" handling: if a customer gives very low satisfaction on any interaction, route them to a senior team within 24 hours to address issues and offer a small goodwill gesture.

# Assumptions and Caveats:

For this analysis, no additional data assumptions, imputations, or recoding steps were applied beyond the original dataset fields. The results therefore directly reflect the provided customer and churn data without inferred or estimated values.
