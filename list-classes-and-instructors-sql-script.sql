SELECT
 c.id, code, subject, section, CONCAT(firstname,' ' ,  lastname) 'name'
from class c
join instructor i
on c.instructorid = i.Id

where section  between   300 and 399 
order by section asc
