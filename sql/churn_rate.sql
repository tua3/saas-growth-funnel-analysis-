SELECT
  COUNT(CASE WHEN status = 'cancelled' THEN 1 END) * 1.0
  / COUNT(*) AS churn_rate
FROM saas_subscriptions;
