-- Write query to get number of graded assignments for each student:
SELECT COUNT(grade) FROM assignments where grade IS NOT NULL GROUP BY student_id;