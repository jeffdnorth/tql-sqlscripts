--2nd try slide 94

select * 
	from class c
;
select * 
	from class c
	join Instructor i
	on c.InstructorId =i.Id
;
select c.id , i.firstname , i.lastname , c.subject
from class c
join Instructor i
on c.InstructorId = i.id
