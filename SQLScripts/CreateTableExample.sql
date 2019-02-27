--Example to create a table

-- Lets create a table to hold customer login accounts. It should have a customer's customer number, username, password, 
-- customer type (small market, enterprise market), date account was created, date last customer logged in

drop table customerLogin


create table CustomerLogin
(
	id int not null identity(1,1) primary key,
	customernum char(3) not  null,
	username varchar(25) not null,
	[password] varbinary(20) not null,
	customerType varchar(100) null,
	datecreated datetime not null default(getdate()),
	lastloggedin datetime not null 
)




insert into CustomerLogin
(customernum,username,password,lastloggedin)
values
('081', 'arogers01',HASHBYTES('MD2', 'sUp3rS3cr3t1'), getdate())


select * from CustomerLogin

--http://msdn.microsoft.com/en-us/library/ms174415.aspx

-- use varbinary to store this value
SELECT HASHBYTES('MD2', 'sUp3rS3cr3t1')

update CustomerLogin
set lastloggedin = getdate()
where username = 'arogers01'



