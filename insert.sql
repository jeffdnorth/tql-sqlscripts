--insert

select *
	from Student



insert into Student (Firstname,Lastname,StateCode,SAT,gpa,	MajorId)
		values ('noah' , 'phense' , 'ga' , '1235' , '3.15', (select id from Major where Description = 'math' ))