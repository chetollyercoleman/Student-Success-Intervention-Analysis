# Student-Success-Intervention-Analysis
View the interactive Tableau dashboard: https://public.tableau.com/views/StudentSuccess-PortfolioProject/Dashboard1?:language=en-US&:refresh=no&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
## Executive Summary
  School leaders need to understand which academic and engagement measures may help them identify students who could benefit from additional support. I analyzed 649 Portuguese-language student records from the UCI Student Performance dataset using SQL in BigQuery and created an interactive dashboard in Tableau Public. For this project, I classified a final grade below 10 on the dataset’s 0-20 scale as “Needs Support.”

  Previous class failures showed the clearest difference in support needs: 9.3% of students with no prior failures fell below the project threshold, compared with 45.7% of students with one prior failure. Students reporting more weekly study time generally had higher average final grades and lower support-need rates. Students with more than 10 absences had a lower average final grade than students with no absences, but the overall relationship between absences and final grade was very weak. 

  I recommend that leaders review multiple measures together, explore structured study support, and investigate elevated absences alongside academic performance. These findings identify patterns for further review; they do not establish what caused students’ grades. 

## Business Problem
  School leaders have limited resources for student support and need to understand which factors are associated with lower academic performance. Leadership wants to identify performance patterns, determine which student populations may require additional support, and make evidence-based recommendations for intervention planning.

## Stakeholders
  School leaders, academic intervention teams, and staff responsible for reviewing student performance.

## Business Questions
  What is the overall student-performance distribution?
  What percentage of students fall below the project’s performance threshold?
  How are absences associated with final grades?
  How does weekly study time relate to final performance?
  How do previous academic failures relate to final performance?
  Do students receiving educational support demonstrate different outcomes?
  Which student populations should leadership prioritize for further review?
  What actions could leadership take based on the findings?

## Dataset
  I used the Portuguese-language file (student-por.csv) from the UCI Machine Learning Repository’s Student Performance dataset. It contains 649 student records and 33 original columns. The data concerns students at two secondary schools in Portugal and includes grades, absences, reported study time, previous class failures, and whether students received extra educational support. 

I selected this dataset because those measures allowed me to investigate questions relevant to student support decisions. The dataset is publicly available under a Creative Commons Attribution 4.0 license. 

## Tools Used
  BigQuery and SQL for data checks and analysis; Tableau Public for the interactive dashboard; spreadsheets for documenting quality checks and findings.

## Data Preparation
  I imported the Portuguese-language data into BigQuery and checked the number of records, missing values, obvious duplicate records, and the ranges of key numeric fields. My checks showed 649 records, no missing values, and no obvious duplicate records. I retained all 649 records for analysis. 

  To make the results easier to compare, I grouped absences into 0, 1-5, 6-10, and more than 10, and translated the dataset’s study-time codes into readable weekly time groups. I also created a project-specific performance_status field: a final grade (G3) below 10 was labeled “Needs Support”; a grade of 10 or higher was labeled “Meeting Standard.” This label is an analytical definition for this portfolio project, not an official school intervention designation. 

## SQL Analysis
  I used SQL in BigQuery to calculate student counts, average final grades, and the percentage of students below my support threshold for different groups. I compared results by study time, number of previous failures, absences, and extra educational support. I also calculated the correlation between absences and final grade. I then used Tableau Public to visualize the results and let viewers explore them by school. 

  The analysis answered three main questions: Which measures were associated with lower final grades? Which groups had a larger percentage of students below the project threshold? How could leaders use these patterns to decide what to review more closely? 

## Dashboard
  https://public.tableau.com/views/StudentSuccess-PortfolioProject/Dashboard1?:language=en-US&:refresh=no&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

  Viewers can explore the charts by school. 
  
## Key Findings
  1. Previous class failures were a strong indicator of support need in this dataset.
Among students with no previous failures, 9.3% had a final grade below 10. Among students with one previous failure, that figure was 45.7%. The groups with two or three previous failures were much smaller, so I would interpret their percentages cautiously. 

  2. Reported study time was associated with stronger outcomes. 
Students reporting less than two hours of weekly study time had an average final grade of 10.84, and 23.6% fell below the support threshold. Students reporting five to ten hours had an average grade of 13.23, and 7.2% fell below the threshold. This is an association; the analysis does not show that increasing study time by itself would cause grades to improve. 

  3. High absences warrant review, but absences alone were a weak indicator.
Students with more than 10 absences had an average final grade of 10.65, compared with 12.04 for students with no absences. Across individual records, however, the correlation between absences and final grades was only -0.091, indicating a very weak negative relationship overall. 

## Recommendations
  Review multiple measures together. Leaders could examine previous class failures alongside available earlier grades and other current academic information to decide which students need a closer review. They should verify each student’s circumstances before assigning support. 

  Explore structured study support. Because lower reported study time coincided with greater support need, a school could test options such as supervised study time, tutoring, or study-skills coaching. It should measure student progress to learn whether the support helps. 

  Investigate elevated absences in context. More than 10 absences could prompt an attendance conversation and a review of academic performance. Absences should not be used alone to determine a student’s academic needs.

## Limitations
  This dataset describes students at two secondary schools in Portugal. Its patterns may not apply to other schools or to students in the United States. The analysis is observational, so it cannot establish that study time, absences, previous failures, or school support caused a particular grade. 

  My “Needs Support” label is based on the final grade. It describes an outcome after the fact and cannot function as an early-warning flag before that grade is known. Decisions made earlier in a school year would require information available at that time, such as earlier grades, attendance to date, and direct assessment of student needs. The dataset also lacks the context needed to determine why an individual student performed as they did or whether a particular intervention was effective. 

## Repository Structure
  # README.md
    Project overview, analysis, findings, recommendations, limitations, and dashboard link
  # data/student-por.csv
    Original public Portuguese-language student performance dataset
  # sql/student_success_analysis.sql
    BigQuery SQL used for the data checks and analysis
  # Student_Success_Dashboard_Image_1_and_2
    Screenshot of the completed Tableau dashboard
  # documentation/data_dictionary.md
    Definitions of the dataset fields and fields created for this project
  # Student_Performance_Data_Clean.csv
    Cleaned Portuguese-language student performance dataset
    
## Data Source and Attribution
  Source: Cortez, P. (2008). Student Performance [Dataset]. UCI Machine Learning Repository. https://doi.org/10.24432/C5TG7T. The dataset is provided under CC BY 4.0. This project uses the Portuguese-language file, student-por.csv.
  
## About the Analyst
  I am an educational administrator transitioning into data analytics. My experience using assessment and operational data to guide school decisions informs the questions I ask and the way I communicate findings.
