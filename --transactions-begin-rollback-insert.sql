--transactions-begin-rollback-insert

begin transaction;

insert Major (code, Description, MinSAT ) values ('uwbw' , 'basket weaving', 400) ;

rollback;

select * from Major