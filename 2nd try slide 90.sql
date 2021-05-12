--2nd try slide 90

select *
	from Student
;

select s.Firstname , s.Lastname , c.Section , c.Code
	from Student s

	join class c 
	on s.id = c.id
	order by s.Lastname