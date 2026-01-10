SELECT
  COUNT(DISTINCT CASE WHEN e.event_name = 'first_publish' THEN u.user_id END) * 1.0
  / COUNT(DISTINCT u.user_id) AS activation_rate
FROM saas_users u
LEFT JOIN saas_events e
  ON u.user_id = e.user_id;
