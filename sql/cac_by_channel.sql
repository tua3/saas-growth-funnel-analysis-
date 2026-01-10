SELECT
  u.acquisition_channel,
  COUNT(DISTINCT u.user_id) AS signups,
  m.monthly_spend,
  m.monthly_spend / COUNT(DISTINCT u.user_id) AS cac
FROM saas_users u
JOIN marketing_spend m
  ON u.acquisition_channel = m.channel
GROUP BY u.acquisition_channel, m.monthly_spend;
