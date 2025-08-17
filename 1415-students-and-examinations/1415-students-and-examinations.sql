# Write your MySQL query statement below
SELECT St.student_id, St.student_name, Sb.subject_name, COUNT(E.subject_name) AS attended_exams 
FROM Students St 
    CROSS JOIN Subjects Sb 
    LEFT JOIN Examinations E 
        ON St.student_id = E.student_id
        AND Sb.subject_name = E.subject_name
GROUP BY St.student_id, St.student_name, Sb.subject_name
ORDER BY St.student_id, Sb.subject_name