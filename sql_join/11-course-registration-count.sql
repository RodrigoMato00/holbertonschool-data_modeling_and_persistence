SELECT courses.title AS course_title, COUNT(registrations.student_id) AS enrollment_count
FROM courses
LEFT JOIN registrations ON courses.id = registrations.course_id
GROUP BY courses.id, courses.title
ORDER BY enrollment_count DESC, course_title ASC;
