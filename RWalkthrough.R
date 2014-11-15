statuses_by_day <- redshift.query(conn, "SELECT DATE(full_request_date) as dated, http_status_code, COUNT(1) as request_count","FROM weblogs","GROUP BY DATE(full_request_date), http_status_code","ORDER BY dated")
statuses_by_day$status <- as.factor(statuses_by_day$status)
