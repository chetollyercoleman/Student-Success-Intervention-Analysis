## school 
School attended by the student,	Categorical/String,	GP = Gabriel Pereira; MS = Mousinho da Silveira,	Yes - school comparisons and dashboard filter
## sex
Student's recorded sex,	Categorical/String,	F = Female; M = Male,	Context only - not used in primary findings
## age 
Student's age in years,	Integer,	15-22 in this dataset,	Context only - not used in primary findings
## address	
Student's home address location type,	Categorical/String,	U = Urban; R = Rural,	No - not used in primary analysis
## studytime
Reported weekly study-time category,	Ordinal Integer,	1 = <2 hours; 2 = 2-5 hours; 3 = 5-10 hours; 4 = >10 hours,	Yes - Query 5
## failures 
Number of previous failures,	Integer,	0-3 in this dataset,	Yes - Queries 6 and 8
## schoolsup	
Whether the student receives extra educational support from the school,	Boolean,	TRUE = Yes; FALSE = No,	Yes - Query 7
## famsup
Whether the student receives educational support from family,	Boolean,	TRUE = Yes; FALSE = No,	Context for priority review
## internet 
Whether the student has internet access at home,	Boolean,	TRUE = Yes; FALSE = No,	Context only
## absences
Number of recorded school absences,	Integer,	0-32 in this dataset,	Yes - Queries 3, 4, and 8
## G1 
First period course grade,	Integer,	0-20 scale; observed values 0-19,	Yes - academic history/context
## G2 
Second period course grade,	Integer,	0-20 scale; observed values 0-19,	Yes - academic history/context
## G3
Final course grade,	Integer,	0-20 scale; observed values 0-19,	Yes - primary performance outcome
## performance_status
Project-defined classification based on final grade,	Categorical/String,	Needs Support = G3 below 10; Meeting Standard = G3 of 10 or higher,	Yes - primary KPI
## absence_group 
Groups students by recorded absence totals,	Categorical/String,	No absences; 1-5; 6-10; More Than 10,	Yes - Query 3
## studytime_group	
Plain-language version of the coded study-time variable,	Categorical/String,	Less Than 2 Hours; 2-5; 5-10; More Than 10,	Yes - Query 5
## priority_category 
Reason a student was included in the priority review population,	Categorical/String,	Low Grade Only; Previous Failure Only; Low Grade + Previous Failure,	Yes - Query 8
