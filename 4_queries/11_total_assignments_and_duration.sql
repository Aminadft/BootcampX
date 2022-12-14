-- Total Assignments and duration
-- Get each day with the total number of assignments and the total duration of the assignments.
-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.


SELECT day, COUNT(assignments.*) as number_of_assignments, SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;

