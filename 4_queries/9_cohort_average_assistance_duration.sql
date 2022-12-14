-- Cohort Average Assistance Duration
-- Calculate the average total duration of assistance requests for each cohort.
-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration


SELECT AVG(total_duration) as average_total_duration
FROM 
(SELECT cohorts.name as name, SUM(completed_at - started_at) AS total_duration 
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration) as total_duration;

