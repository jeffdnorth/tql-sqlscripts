--slide 86 assignment joinviewexample

select lastname , m.Description
	from Student s
	join Major m
	on  s.MajorId = m.Id ;
;

select lastname , m.Description
	from Student s
	left join Major m
	on  s.MajorId = m.Id ;


	






;
select * 
	from Student