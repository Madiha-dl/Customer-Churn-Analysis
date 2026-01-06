#Creating a churn database
CREATE DATABASE churn_db

SELECT * FROM customer_data

#Data Exploration- Check Distinct Values
SELECT Gender, COUNT(Gender) as TotalCount,
	COUNT(Gender) * 100/(SELECT COUNT(*) FROM customer_data) AS Percentage
    FROM customer_data
    GROUP BY Gender;
    
SELECT State, COUNT(State) as TotalCount,
	COUNT(State) * 100/(SELECT COUNT(*) FROM customer_data) AS Percentage
    FROM customer_data
    GROUP BY State 
    ORDER BY Percentage DESC;
    
SELECT Contract, COUNT(Contract) as TotalCount,
	COUNT(Contract) * 100/(SELECT COUNT(*) FROM customer_data) AS Percentage
    FROM customer_data
    GROUP BY Contract 
    ORDER BY Percentage DESC;
    
SELECT Customer_Status, COUNT(Customer_Status) as TotalCount,
	SUM(Total_Revenue) as TotalRevenue,
    SUM(Total_Revenue) *100 /(SELECT SUM(Total_Revenue) FROM customer_data) AS RevPercent
    FROM customer_data
    GROUP BY Customer_Status
    ORDER BY RevPercent DESC;
    
#Data Exploration- Checking Null values in each Column
SELECT 
	SUM(CASE WHEN Customer_ID IS NULL OR TRIM(Customer_ID) = '' THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,
    SUM(CASE WHEN Gender IS NULL OR TRIM(Gender) = '' THEN 1 ELSE 0 END) AS Gender_Null_Count,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,
    SUM(CASE WHEN Married IS NULL OR TRIM(Married) = '' THEN 1 ELSE 0 END) AS Married_Null_Count,
    SUM(CASE WHEN State IS NULL OR TRIM(State) = ''  THEN 1 ELSE 0 END) AS State_Null_Count,
    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,
    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,
    SUM(CASE WHEN Value_Deal IS NULL OR TRIM(Value_Deal) = ''  THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,
    SUM(CASE WHEN Phone_Service IS NULL OR TRIM(Phone_Service) = '' THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,
    SUM(CASE WHEN Multiple_Lines IS NULL OR TRIM(Multiple_Lines) = '' THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,
    SUM(CASE WHEN Internet_Service IS NULL OR TRIM(Internet_Service) = '' THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,
    SUM(CASE WHEN Internet_Type IS NULL OR TRIM(Internet_Type) = '' THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,
    SUM(CASE WHEN Online_Security IS NULL OR TRIM(Online_Security) = '' THEN 1 ELSE 0 END) AS Online_Security_Null_Count,
    SUM(CASE WHEN Online_Backup IS NULL OR TRIM(Online_Backup) = '' THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,
    SUM(CASE WHEN Device_Protection_Plan IS NULL OR TRIM(Device_Protection_Plan) = '' THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,
    SUM(CASE WHEN Premium_Support IS NULL OR TRIM(Premium_Support) = '' THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,
    SUM(CASE WHEN Streaming_TV IS NULL OR TRIM(Streaming_TV) = '' THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,
    SUM(CASE WHEN Streaming_Movies IS NULL OR TRIM(Streaming_Movies) = '' THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,
    SUM(CASE WHEN Streaming_Music IS NULL OR TRIM(Streaming_Music) = '' THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,
    SUM(CASE WHEN Unlimited_Data IS NULL OR TRIM(Unlimited_Data) = '' THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,
    SUM(CASE WHEN Contract IS NULL OR TRIM(Contract) = '' THEN 1 ELSE 0 END) AS Contract_Null_Count,
    SUM(CASE WHEN Paperless_Billing IS NULL OR TRIM(Paperless_Billing) = '' THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,
    SUM(CASE WHEN Payment_Method IS NULL OR TRIM(Payment_Method) = '' THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,
    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,
    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,
    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,
    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,
    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,
    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,
    SUM(CASE WHEN Customer_Status IS NULL OR TRIM(Customer_Status) = '' THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,
    SUM(CASE WHEN Churn_Category IS NULL OR TRIM(Churn_Category) = '' THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,
    SUM(CASE WHEN Churn_Reason IS NULL OR TRIM(Churn_Reason) = '' THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count
FROM customer_data;

#Removing and Inserting Null/Empty Spaces
UPDATE customer_data
SET
    Value_Deal = CASE WHEN TRIM(Value_Deal) = '' THEN 'None' ELSE Value_Deal END,
    Multiple_Lines = CASE WHEN TRIM(Multiple_Lines) = '' THEN 'No' ELSE Multiple_Lines END,
    Internet_Type = CASE WHEN TRIM(Internet_Type) = '' THEN 'None' ELSE Internet_Type END,
    Online_Security = CASE WHEN TRIM(Online_Security) = '' THEN 'No' ELSE Online_Security END,
    Online_Backup = CASE WHEN TRIM(Online_Backup) = '' THEN 'No' ELSE Online_Backup END,
    Device_Protection_Plan = CASE WHEN TRIM(Device_Protection_Plan) = '' THEN 'No' ELSE Device_Protection_Plan END,
    Premium_Support = CASE WHEN TRIM(Premium_Support) = '' THEN 'No' ELSE Premium_Support END,
    Streaming_TV = CASE WHEN TRIM(Streaming_TV) = '' THEN 'No' ELSE Streaming_TV END,
    Streaming_Movies = CASE WHEN TRIM(Streaming_Movies) = '' THEN 'No' ELSE Streaming_Movies END,
    Streaming_Music = CASE WHEN TRIM(Streaming_Music) = '' THEN 'No' ELSE Streaming_Music END,
    Unlimited_Data = CASE WHEN TRIM(Unlimited_Data) = '' THEN 'No' ELSE Unlimited_Data END,
    Churn_Category = CASE WHEN TRIM(Churn_Category) = '' THEN 'Others' ELSE Churn_Category END,
    Churn_Reason = CASE WHEN TRIM(Churn_Reason) = '' THEN 'Others' ELSE Churn_Reason END;

