SELECT * FROM bank_data LIMIT 10;
SELECT COUNT(*) FROM bank_data;
SELECT y, COUNT(*) AS count FROM bank_data GROUP BY y;
SELECT job, AVG(balance) AS avg_balance FROM bank_data GROUP BY job ORDER BY avg_balance DESC;
SELECT y AS campaign_outcome, COUNT(*) AS count FROM bank_data GROUP BY y;
SELECT job, COUNT(*) AS total FROM bank_data GROUP BY job ORDER BY total DESC;
SELECT education, AVG(balance) AS avg_balance FROM bank_data GROUP BY education ORDER BY avg_balance DESC;
SELECT marital, COUNT(*) AS total_customers, SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) AS successful_campaigns, ROUND(SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS success_rate FROM bank_data GROUP BY marital;
SELECT month, COUNT(*) AS calls FROM bank_data GROUP BY month ORDER BY calls DESC;
SELECT y AS outcome, AVG(duration) AS avg_duration FROM bank_data GROUP BY y;


