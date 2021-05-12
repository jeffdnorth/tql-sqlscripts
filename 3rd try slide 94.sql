--3rd try slide 94

select c.Subject , i.Firstname , i.Lastname
	from Class c
	join Instructor i
	on c.InstructorId = i.id 