

create trigger a
on Users
after delete
as
    declare  @id int
	select @id=id from deleted
	insert into Logs(id_User,time_date,opareation) values(@id,current_timestamp,'delete');
