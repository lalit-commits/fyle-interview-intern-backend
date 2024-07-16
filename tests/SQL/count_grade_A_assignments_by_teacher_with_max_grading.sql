-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT COUNT(grade) FROM assignments WHERE grade="A" AND teacher_id = (SELECT teacher_id FROM (SELECT teacher_id, COUNT(*) AS graded_assignment
FROM assignments WHERE grade IS NOT NULL GROUP BY teacher_id ORDER BY graded_assignment DESC LIMIT 1 ) );
