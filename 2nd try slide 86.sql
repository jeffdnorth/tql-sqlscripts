--2nd try slide 86

select * 
	from Student ;

select s.lastname, s.majorid
	from Student s
	join Major m
	on s.MajorId =  m.Id
