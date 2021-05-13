*/slide-139-update

/*
select *
	from Student
*/

insert into Student (Firstname,Lastname,StateCode,SAT,gpa,	MajorId)
		values ('noah' , 'phense' , 'ga' , '1235' , '3.15', (select id from Major where Description = 'math' ))
/*

*/
update Student set
	Majorid = (select id from Major where Description = 'acct' ) ,
	gpa = 3.51 
	where firstname = 'noah' and lastname = 'phense' and gpa = 3.15

delete from student
	where firstname = 'noah' and lastname = 'phense'



