--slide 90 create student class list

	select s.Firstname , s.Lastname , c.Code , c.Subject , c.Section
from student s

join  class c 
on c.Id = s.Id 



order by Lastname desc

