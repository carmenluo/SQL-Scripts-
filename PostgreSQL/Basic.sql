--1. Classify results into buckets: How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? Return the name and monthly maintenance of the facilities in question.
SELECT NAME, CASE WHEN
  (maintenance > 100) then 'expensive'
  else 'cheap'
  end as cost
FROM table

--2. joindate: Timestamp</b> How can you produce a list of members who joined after the start of September 2012? Return the memid, surname, firstname, and joindate of the members in question.
select memid, surname, firstname,joindate
from cd.members
where joindate >= '2012-09-01';

--3.UNION :You, for some reason, want a combined list of all surnames and all facility names. Yes, this is a contrived example :-). Produce that list in the same column
SELECT surname 
	FROM cd.members
UNION
SELECT name
	FROM cd.facilities;
  
--4.Format the names of members
SELECT surname || ', ' || firstname AS name FROM cd.members 
Building strings in sql is similar to other languages, with the exception of the concatenation operator: ||. Some systems (like SQL Server) use +, but || is the SQL standard.
