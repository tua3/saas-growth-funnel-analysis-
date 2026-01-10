SELECT
  COUNT(DISTINCT u.user_id) AS signups,
  COUNT(DISTINCT CASE WHEN e.event_name = 'editor_opened' THEN u.user_id END) AS editor_opened,
  COUNT(DISTINCT CASE WHEN e.event_name = 'first_publish' THEN u.user_id END) AS first_publish,
  COUNT(DISTINCT CASE WHEN e.event_name = 'first_subscriber' THEN u.user_id END) AS first_subscriber
FROM saas_users u
LEFT JOIN saas_events e
  ON u.user_id = e.user_id;
