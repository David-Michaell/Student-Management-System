# Student Management System — SQL Data Analysis Report

## 1. Project Overview

This project analyzes a **Student Management System** built with MySQL. The database captures student information, instructors, courses, enrollments, and academic performance.

The analysis demonstrates the use of **SQL joins, aggregation, filtering, sorting, GROUP BY, HAVING, and subqueries/record selection** to generate actionable academic insights.

## 2. Dataset Summary

| Metric                |    Result |
| --------------------- | --------: |
| Students              |        20 |
| Instructors           |         5 |
| Courses               |         5 |
| Enrollments           |        40 |
| Grades                |        40 |
| Overall Average Score | **81.89** |
| Highest Score         | **96.00** |
| Lowest Score          | **67.50** |
| Scores Above 80       |    **23** |
| Scores Below 50       |     **0** |

The database establishes relational links between students, courses, instructors, enrollments, and grades using primary and foreign keys.

## 3. Key Findings

### Academic Performance

Overall student performance was strong, with an average score of **81.89**. The highest recorded score was **96**, while the lowest was **67.50**.

No student scored below 50, indicating that the dataset contains no critical underperformance based on the SQL project's `< 50` threshold.

### Course Performance

| Course             | Students | Average Score |
| ------------------ | -------: | ------------: |
| SQL Fundamentals   |        9 |     **76.72** |
| Python Programming |        8 |     **83.88** |
| Data Analysis      |        8 |     **82.38** |
| Power BI           |        7 |     **83.43** |
| Machine Learning   |        8 |     **83.88** |

**SQL Fundamentals** has the highest enrollment but the lowest average performance, making it the primary course that may require additional academic support.

**Python Programming** and **Machine Learning** recorded the highest average scores at approximately **83.88**.

The SQL queries specifically calculate course averages and enrollment counts.

<img width="420" height="507" alt="Screenshot 2026-09-22 at 2 16 55 PM" src="https://github.com/user-attachments/assets/c0d420b3-70cc-4873-8918-ffb7099ea46d" />


## 4. Business/Academic Insights

* **Overall performance is strong**, with an 81.89 average score.
* **SQL Fundamentals has the largest enrollment (9 students)** but the lowest course average (76.72).
* **Power BI has the lowest enrollment (7 students)** but maintains a strong average score of 83.43.
* **23 of 40 graded enrollments scored above 80**, representing 57.5% of graded enrollments.
* No scores fall below the project's 50-point intervention threshold.
* The database structure enables analysis of student, instructor, course, enrollment, and performance relationships.

## 5. Recommendations

1. **Review SQL Fundamentals performance** and identify areas where students struggle.
2. Provide additional learning resources or practical exercises for lower-performing students.
3. Investigate whether course enrollment and performance are related.
4. Track instructor-level performance to identify opportunities for teaching improvement.
5. Extend the database with semester, attendance, assessment type, and completion status to support deeper analysis.

## 6. Conclusion

The SQL analysis provides a clear view of **student enrollment and academic performance** across five courses. The strongest opportunity identified is improving performance in **SQL Fundamentals**, while maintaining the strong results observed across the other courses.

The project demonstrates practical SQL skills in **relational database design, data extraction, joins, aggregation, filtering, ranking, and KPI analysis**.
