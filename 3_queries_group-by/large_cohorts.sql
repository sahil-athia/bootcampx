SELECT cohorts.name as cohort_name, count(students.name) as student_count
FROM cohorts
JOIN students on cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY count(students.name)
; 