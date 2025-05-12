SELECT COUNT(*) AS total_customers FROM bank_data;
SELECT ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS conversion_rate FROM bank_data;
SELECT COUNT(*) AS successful_signups FROM bank_data WHERE y = 'yes';
SELECT ROUND(AVG(duration), 2) AS avg_call_duration FROM bank_data;
SELECT ROUND(AVG(duration), 2) AS avg_duration_yes FROM bank_data WHERE y = 'yes';
SELECT month, COUNT(*) AS total_yes FROM bank_data WHERE y = 'yes' GROUP BY month ORDER BY total_yes DESC LIMIT 1;





