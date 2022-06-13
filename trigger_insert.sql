create trigger b
on Users
after insert
as
    declare  @id int
	select @id=id from inserted
	insert into Logs(id_User,time_date,opareation) values(@id,current_timestamp,'insert');