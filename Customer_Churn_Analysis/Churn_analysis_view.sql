CREATE VIEW vw_ChurnData AS
	SELECT * FROM customer_data WHERE Customer_Status IN ('Churned', 'Stayed');

CREATE VIEW vw_JoinData AS
	SELECT * FROM customer_data WHERE Customer_Status = 'Joined';
