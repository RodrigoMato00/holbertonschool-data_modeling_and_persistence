SELECT courses.title AS course_title
FROM courses
LEFT JOIN assignments ON courses.id = assignments.course_id
GROUP BY courses.id, courses.title
HAVING COUNT(assignments.id) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(a.id) AS assignment_count
        FROM courses c
        LEFT JOIN assignments a ON c.id = a.course_id
        GROUP BY c.id
    ) AS assignment_stats
)
ORDER BY course_title ASC;
