SELECT students.name AS student_name, courses.title AS course_title
FROM registrations
INNER JOIN students ON registrations.student_id = students.id
INNER JOIN courses ON registrations.course_id = courses.id
ORDER BY student_name ASC, course_title ASC;
