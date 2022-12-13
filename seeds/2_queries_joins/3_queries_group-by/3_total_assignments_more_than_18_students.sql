SELECT cohort_name, student_count
FROM cohorts
GROUP BY 
HAVING COUNT(*) >=18

ORDER BY total students 