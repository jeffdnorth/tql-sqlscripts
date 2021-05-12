--3rd try slide 90

select *
	from Student s
;

select s.Firstname , s.Lastname , c.Code , c.Section , c.Subject
	from student s 
	join Class c
	on s.id = c.Id
	order by c.Subject