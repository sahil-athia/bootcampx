SELECT cohorts.name as name, AVG(completed_at - started_at) as average_assiatance_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY average_assiatance_time; 