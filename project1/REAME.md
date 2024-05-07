## SIMPLIFIED QUERRYING
#### selecting and join many table
-  select * from course join studentcourse using (courseCode) join student using (studentID) join assignment using (courseCode);