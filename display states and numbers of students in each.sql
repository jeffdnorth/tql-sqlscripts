--display states and numbers of students in each


select StateCode, COUNT(*) 'count'
from Student 
where Sat < 1000
group by statecode
having  count (*) > 1
order by count (*) desc
  
	

