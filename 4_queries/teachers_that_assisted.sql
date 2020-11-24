SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;
 -- skip group by w distinct

-- SELECT teachers.name, cohorts.name as name
-- FROM cohorts
-- JOIN students ON cohorts.id = cohort_id
-- JOIN assistance_requests ON students.id = student_id
-- JOIN teachers ON teachers.id = teacher_id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY cohorts.name
-- ORDER BY teachers.name