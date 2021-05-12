--slide 94 list all classes and instructor name if one exists


select * from class c
	join Instructor i
	on  c.InstructorId = i.id

	;
select c.id , i.Firstname , i.Lastname , c.Subject
	from class c
	join Instructor i
	on  c.InstructorId = i.id