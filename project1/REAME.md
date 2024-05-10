## SIMPLIFIED QUERRYING
#### selecting and join many table
-  select * from course join studentcourse using (courseCode) join student using (studentID) join assignment using (courseCode);

#### PROJECT 45-60
45. select * from course where courseCode not in (select courseCode from assignment);
46. select DISTINCT name from student join studentcourse on student.id=studentcourse.studentID join course using (courseCode) join assignment using (courseCode) where assignment.isSubmitted="T" AND assignment.courseCode="101" ;
47. select DISTINCT name from student join studentcourse on student.id=studentcourse.studentID join course using (courseCode) join assignment using (courseCode) where assignment.isSubmitted="T" AND assignment.courseCode="103" AND assignment.gradeID =5 ;
48. select distinct course.courseName from student join studentcourse on student.id=studentcourse.studentID join course using (courseCode) where studentcourse.gradeid<4;
49. select * from student join student_assignments on student.id=student_assignments.studentID join assignment on assignment.id=student_assignments.assignmentid where dueDate > "2024-01-09" AND isSubmitted="F";
50. select courseCode, count(courseCode) AS freq from student join student_assignments on student.id=student_assignments.studentID join assignment on assignment.id=student_assignments.assignmentid where  isSubmitted="F" group by courseCode;
51. select * from student join student_assignments on student.id=student_assignments.studentID join assignment on assignment.id=student_assignments.assignmentid where  isSubmitted="F" AND assignment.courseCode=101;
52. select name, count(assignment.courseCode) from student join student_assignments on student.id=student_assignments.studentID join assignment on assignment.id=student_assignments.assignmentid where isSubmitted="T" group by name;
53. select assignment.id, score, avg(score) from assignment join grade on assignment.gradeID=grade.id group by assignment.id,score having score=90;
54. select * from student join studentcourse on student.id=studentcourse.studentID where gradeid=1;
55. select courseCode,gradeid, max(gradeid) from course join studentcourse using (courseCode) group by courseCode,gradeid having avg(gradeid)=5;
56. select * from assignment left join course on assignment.courseCode=course.courseCode where assignment.courseCode=null;
57. select distinct * from student left join studentcourse on student.id=studentcourse.studentID left join course on studentcourse.courseCode = course.courseCode left join student_assignments on student_assignments.studentID=student.id where student_assignments.assignmentid !=null;
58. select courseCode, name, count(courseCode) from course join assignment using (courseCode) join student_assignments on id=student_assignments.assignmentid join student on student.id=student_assignments.studentID where courseCode=101 group by courseCode,name having count(courseCode) LIKE (35);
59. SELECT course.courseCode, AVG(grade.score) AS overall_avg_grade
    FROM course
    INNER JOIN studentcourse ON course.courseCode = studentcourse.courseCode
    INNER JOIN grade ON studentcourse.gradeID = grade.id
    GROUP BY course.courseCode
    HAVING AVG(grade.score) > (
    SELECT AVG(grade.score)
    FROM studentcourse
    INNER JOIN grade ON studentcourse.gradeID = grade.id
    INNER JOIN student ON studentcourse.studentID = student.id
    )
60. select distinct name from student join studentcourse on student.id=studentcourse.studentID join course using (courseCode) join assignment on assignment.id=student.id where isSubmitted="F"; 