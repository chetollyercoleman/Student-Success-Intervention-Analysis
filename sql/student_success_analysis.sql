-- Query 1: Overall student-performance distribution
SELECT
   COUNT(*) AS total_students,
   ROUND(AVG(G3), 2) AS average_final_grade,
   MIN(G3) AS lowest_final_grade,
   MAX(G3) AS highest_final_grade
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`;

-- Query 2: Percentage of students that fell below the project’s performance threshold
SELECT
  performance_status,
  COUNT(*) AS student_count,
  ROUND(
      COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
      1
  ) AS percentage_of_students
FROM
  `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
GROUP BY
  performance_status
ORDER BY
  student_count DESC;

-- Query 3: Absences associated with final grades (performance by absence group)
SELECT
   absence_group,
   COUNT(*) AS student_count,
   ROUND(AVG(G3), 2) AS average_final_grade,
   ROUND(AVG(absences), 2) AS average_absences
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
GROUP BY
   absence_group
ORDER BY
   average_absences;

-- Query 4: Statistical relationship between absences and grades
SELECT
   ROUND(CORR(absences, G3), 3) AS absence_grade_correlation
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`;

-- Query 5: Weekly study time related to final performance
SELECT
   studytime,
   studytime_group,
   COUNT(*) AS student_count,
   ROUND(AVG(G3), 2) AS average_final_grade,
   ROUND(
      COUNTIF(performance_status = 'Needs Support') * 100.0 / COUNT(*),
      1
   ) AS percent_needing_support
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
GROUP BY
   studytime,
   studytime_group
ORDER BY
   studytime;

-- Query 6: Previous academic failures related to final performance
SELECT
   failures,
   COUNT(*) AS student_count,
   ROUND(AVG(G3), 2) AS average_final_grade,
   ROUND(
      COUNTIF(performance_status = 'Needs Support') * 100.0 / COUNT(*),
      1
   ) AS percent_needing_support
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
GROUP BY
   failures
ORDER BY
   failures;

-- Query 7: Students receiving educational support demonstrating different outcomes
SELECT
   schoolsup,
   COUNT(*) AS student_count,
   ROUND(AVG(G3), 2) AS average_final_grade,
   ROUND(
      COUNTIF(performance_status = 'Needs Support') * 100.0 / COUNT(*),
      1
   ) AS percent_needing_support
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
GROUP BY
   schoolsup;

-- Query 8: Student populations that leadership should prioritize for further review
SELECT
   school,
   age,
   sex,
   absences,
   studytime_group,
   failures,
   schoolsup,
   famsup,
   G1,
   G2,
   G3,
   performance_status
FROM
   `coursera-new-york-trees-508116.student_success_portfolio.student_performance_clean`
WHERE
   G3 < 10
   OR failures > 0
ORDER BY
   G3 ASC,
   absences DESC;
